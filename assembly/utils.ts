// Some util functions

import { clockid, clock_time_get, random_get, errno } from "bindings/wasi";

// Our recycled random byte pointer
let randomBytePointer = memory.allocate(sizeof<u8>());
export function randomByte(): i32 {
  if (random_get(randomBytePointer, 1) != errno.SUCCESS) {
    abort();
  }
  return load<u8>(randomBytePointer) as i32;
}

export function rotateArrayRight(data: u8[]): void {
  for (let i = 0, len = data.length - 1; i < len; i++) {
    let rightElement = data[i + 1];
    data[i + 1] = data[i];
    data[i] = rightElement;
  }
}

export function sleep(sleepTicks: i32): void {
  let lastTime = now();
  while (true) {
    if (abs(lastTime - now()) > sleepTicks) return;
  }
}

// Recycle a time pointer to save memory
let timeCounterPointer = memory.allocate(sizeof<u64>());
function now(): i32 {
  clock_time_get(clockid.REALTIME, 1000, timeCounterPointer);
  let timestamp = load<u64>(timeCounterPointer);
  // Divide by a large number here to get a reasonable counter
  // As the timestamp is very large
  return (timestamp / 10000000) as i32;
}
