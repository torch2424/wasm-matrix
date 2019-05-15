// Some util functions

import {
  Random,
  Date
} from './wasa';

export function getRandomNumber(): i32 {
  return Random.randomByte();
}

export function rotateArrayLeft(data: Array<u8>): void {
  for (let i: i32 = data.length - 1; i > 0; i--) {
    let leftElement: u8 = data[i - 1];
    data[i - 1] = data[i];
    data[i] = leftElement;
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

function getTimeCounter(): i32 {
  return floor<f64>(Date.now() / 10000) as i32;
}

