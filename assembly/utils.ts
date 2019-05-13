// Some util functions

import {
  Random,
  Date
} from './wasa';

export function getRandomNumber(): i32 {
  return Random.randomBytes(1)[0];
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

function getTimeCounter(): i32 {
  return floor<f64>(Date.now() / 10000) as i32;
}

