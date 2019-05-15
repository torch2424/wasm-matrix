// THIS CODE IS FROM ANOTHER PROJECT!!!
// Slightly modified for specific uses
// https://github.com/jedisct1/wasa 
// This is a slimmed down version of their code
// To help with module size, compilation errors,
// and ease of use.

import {
  errno,
  clockid,
  fd_write,
  fd_read,
  random_get,
  clock_time_get,
  clock_res_get,
  proc_exit,
  environ_sizes_get,
  environ_get,
  args_sizes_get,
  args_get,
  path_open,
  oflags,
  rights,
  lookupflags,
  fd,
  fdflags,
  fd_close,
} from 'bindings/wasi';

export type Descriptor = fd;

export class IO {
  /**
   * Close a file descriptor
   * @param fd file descriptor
   */
  static close(fd: Descriptor): void {
    fd_close(fd);
  }

  /**
   * Write data to a file descriptor
   * @param fd file descriptor
   * @param data data
   */
  static write(fd: Descriptor, data: Array<u8>): void {
    let data_buf_len = data.length;
    let data_buf = memory.allocate(data_buf_len);
    for (let i = 0; i < data_buf_len; i++) {
      store<u8>(data_buf + i, unchecked(data[i]));
    }
    let iov = memory.allocate(2 * sizeof<usize>());
    store<u32>(iov, data_buf);
    store<u32>(iov + sizeof<usize>(), data_buf_len);
    let written_ptr = memory.allocate(sizeof<usize>());
    fd_write(fd, iov, 1, written_ptr);
    memory.free(written_ptr);
    memory.free(data_buf);
    memory.free(iov);
  }

  /**
   * Write a string to a file descriptor, after encoding it to UTF8
   * @param fd file descriptor
   * @param s string
   * @param newline `true` to add a newline after the string
   */
  static writeString(fd: Descriptor, s: string, newline: bool = false): void {
    if (newline) {
      this.writeStringLn(fd, s);
      return;
    }
    let s_utf8_len: usize = s.lengthUTF8 - 1;
    let s_utf8 = s.toUTF8();
    let iov = memory.allocate(2 * sizeof<usize>());
    store<u32>(iov, s_utf8);
    store<u32>(iov + sizeof<usize>(), s_utf8_len);
    let written_ptr = memory.allocate(sizeof<usize>());
    fd_write(fd, iov, 1, written_ptr);
    memory.free(written_ptr);
    memory.free(s_utf8);
    memory.free(iov);
  }

  /**
   * Write a string to a file descriptor, after encoding it to UTF8, with a newline
   * @param fd file descriptor
   * @param s string
   */
  static writeStringLn(fd: Descriptor, s: string): void {
    let s_utf8_len: usize = s.lengthUTF8 - 1;
    let s_utf8 = s.toUTF8();
    let iov = memory.allocate(4 * sizeof<usize>());
    store<u32>(iov, s_utf8);
    store<u32>(iov + sizeof<usize>(), s_utf8_len);
    let lf = memory.allocate(1);
    store<u8>(lf, 10);
    store<u32>(iov + sizeof<usize>() * 2, lf);
    store<u32>(iov + sizeof<usize>() * 3, 1);
    let written_ptr = memory.allocate(sizeof<usize>());
    fd_write(fd, iov, 2, written_ptr);
    memory.free(written_ptr);
    memory.free(s_utf8);
    memory.free(iov);
    memory.free(lf);
  }

  /**
   * Read data from a file descriptor
   * @param fd file descriptor
   * @param data existing array to push data to
   * @param chunk_size chunk size (default: 4096)
   */
  static read(fd: Descriptor, data: Array<u8> = [], chunk_size: usize = 4096): Array<u8> | null {
    let data_partial_len = chunk_size;
    let data_partial = memory.allocate(data_partial_len);
    let iov = memory.allocate(2 * sizeof<usize>());
    store<u32>(iov, data_partial);
    store<u32>(iov + sizeof<usize>(), data_partial_len);
    let read_ptr = memory.allocate(sizeof<usize>());
    fd_read(fd, iov, 1, read_ptr);
    let read = load<usize>(read_ptr);
    if (read > 0) {
      for (let i: usize = 0; i < read; i++) {
        data.push(load<u8>(data_partial + i));
      }
    }
    memory.free(read_ptr);
    memory.free(data_partial);
    memory.free(iov);

    if (read <= 0) {
      return null;
    }
    return data;
  }

  /**
   * Read from a file descriptor until the end of the stream
   * @param fd file descriptor
   * @param data existing array to push data to
   * @param chunk_size chunk size (default: 4096)
   */
  static readAll(fd: Descriptor, data: Array<u8> = [], chunk_size: usize = 4096): Array<u8> | null {
    let data_partial_len = chunk_size;
    let data_partial = memory.allocate(data_partial_len);
    let iov = memory.allocate(2 * sizeof<usize>());
    store<u32>(iov, data_partial);
    store<u32>(iov + sizeof<usize>(), data_partial_len);
    let read_ptr = memory.allocate(sizeof<usize>());
    let read: usize = 0;
    for (; ;) {
      if (fd_read(fd, iov, 1, read_ptr) != errno.SUCCESS) {
        break;
      }
      read = load<usize>(read_ptr);
      if (read <= 0) {
        break;
      }
      for (let i: usize = 0; i < read; i++) {
        data.push(load<u8>(data_partial + i));
      }
    }
    memory.free(read_ptr);
    memory.free(data_partial);
    memory.free(iov);

    if (read < 0) {
      return null;
    }
    return data;
  }

  /**
   * Read an UTF8 string from a file descriptor, convert it to a native string
   * @param fd file descriptor
   * @param chunk_size chunk size (default: 4096)
   */
  static readString(fd: Descriptor, chunk_size: usize = 4096): string | null {
    let s_utf8_ = IO.readAll(fd);
    if (s_utf8_ === null) {
      return null;
    }
    let s_utf8 = s_utf8_!;
    let s_utf8_len = s_utf8.length;
    let s_utf8_buf = memory.allocate(s_utf8_len);
    for (let i = 0; i < s_utf8_len; i++) {
      store<u8>(s_utf8_buf + i, s_utf8[i]);
    }
    let s = String.fromUTF8(s_utf8_buf, s_utf8.length);
    memory.free(s_utf8_buf);

    return s;
  }
}

@global
export class Console {
  /**
   * Write a string to the console
   * @param s string
   * @param newline `false` to avoid inserting a newline after the string
   */
  static write(s: string, newline: bool = true): void {
    IO.writeString(1, s, newline);
  }

  /**
   * Read an UTF8 string from the console, convert it to a native string
   */
  static readAll(): string | null {
    return IO.readString(0);
  }

  /**
   * Alias for `Console.write()`
   */
  static log(s: string): void {
    this.write(s);
  }

  /**
   * Write an error to the console
   * @param s string
   * @param newline `false` to avoid inserting a newline after the string
   */
  static error(s: string, newline: bool = true): void {
    IO.writeString(2, s, newline);
  }
}

// Our recycled random byte pointer
let randomBytePointer = memory.allocate(1);
export class Random {
  /**
   * Fill a buffer with random data
   * @param buffer An array buffer
   */
  static randomFill(buffer: ArrayBuffer): void {
    let len = buffer.byteLength;
    let ptr = buffer.data;
    while (len > 0) {
      let chunk = min(len, 256);
      if (random_get(ptr, chunk) != errno.SUCCESS) {
        abort();
      }
      len -= chunk;
      ptr += chunk;
    }
  }

  /**
   * Return an array of random bytes
   * @param len length
   */
  static randomBytes(len: usize): Uint8Array {
    let array = new Uint8Array(len);
    this.randomFill(array.buffer);
    return array;
  }

  /**
   * Return a single random byte
   */
  static randomByte(): u8 {
    if (random_get(randomBytePointer, 1) != errno.SUCCESS) {
      abort();
    }
    
    return load<u8>(randomBytePointer)
  }
}

// Our recycled time pointer
let time_ptr = memory.allocate(8);
export class Date {
  /**
   * Return the current timestamp, as a number of milliseconds since the epoch
   */
  static now(): f64 {
    clock_time_get(clockid.REALTIME, 1000, time_ptr);
    let unix_ts = load<u64>(time_ptr);
    return unix_ts as f64 / 1000.0;
  }
}

class StringUtils {
  static fromCString(cstring: usize): string {
    let size = 0;
    while (load<u8>(cstring + size) != 0) {
      size++;
    }
    return String.fromUTF8(cstring, size);
  }
}

export class CommandLine {
  args: Array<String>;

  constructor() {
    this.args = [];
    let count_and_size = memory.allocate(2 * sizeof<usize>());
    let ret = args_sizes_get(count_and_size, count_and_size + 4);
    if (ret != errno.SUCCESS) {
      abort();
    }
    let count = load<usize>(count_and_size);
    let size = load<usize>(count_and_size + sizeof<usize>());
    let env_ptrs = memory.allocate((count + 1) * sizeof<usize>());
    let buf = memory.allocate(size);
    if (args_get(env_ptrs, buf) != errno.SUCCESS) {
      abort();
    }
    for (let i: usize = 0; i < count; i++) {
      let env_ptr = load<usize>(env_ptrs + i * sizeof<usize>());
      let arg = StringUtils.fromCString(env_ptr);
      this.args.push(arg);
    }
    memory.free(buf);
    memory.free(env_ptrs);
    memory.free(count_and_size);
  }

  /**
   * Return all the command-line arguments
   */
  all(): Array<String> {
    return this.args;
  }

  /**
   * Return the i-th command-ine argument
   * @param i index
   */
  get(i: usize): string | null {
    let args_len: usize = this.args[0].length;
    if (i < args_len) {
      return this.args[i];
    }
    return null;
  }
}

