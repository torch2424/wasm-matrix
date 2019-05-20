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

export function rotateArrayLeft(data: u8[]): void {
  let first = unchecked(data[0]);
  let lastIndex = data.length - 1;
  for (let i = 0; i <= lastIndex; i++) unchecked((data[i] = data[i + 1]));
  unchecked((data[lastIndex] = first));
}

export function sleep(sleepTicks: i32): void {
  let lastTime = now();
  while (now() - lastTime <= sleepTicks);
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
