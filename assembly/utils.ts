// Some util functions

import { clockid, clock_time_get, random_get, errno } from "bindings/wasi";

// Our recycled random byte pointer
let randomBytePointer = memory.allocate(1);
export function getRandomNumber(): i32 {
  if (random_get(randomBytePointer, 1) != errno.SUCCESS) {
    abort();
  }
  return load<u8>(randomBytePointer) as i32;
}

export function rotateArrayRight(data: Array<u8>): void {
  for (let i: i32 = 0; i < data.length - 1; i++) {
    let rightElement: u8 = data[i + 1];
    data[i + 1] = data[i];
    data[i] = rightElement;
  }
}

export function sleep(sleepTicks: i32): void {
  let lastTime: i32 = getTimeCounter();

  let shouldLoop: boolean = true;

  while (shouldLoop) {
    let currentTime: i32 = getTimeCounter();

    // See if it is time to update
    if (abs(lastTime - currentTime) > sleepTicks) {
      shouldLoop = false;
    }
  }
}

// Recycle a time pointer to save memory
let timeCounterPointer = memory.allocate(8);
function getTimeCounter(): i32 {
  clock_time_get(clockid.REALTIME, 1000, timeCounterPointer);
  let timestamp = load<u64>(timeCounterPointer);
  // Divide by a large number here to get a reasonable counter
  // As the timestamp is very large
  return (timestamp / 10000000) as i32;
}
