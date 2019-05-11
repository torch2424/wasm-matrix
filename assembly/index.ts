// The entry file of your WebAssembly module.

// https://github.com/WebAssembly/WASI/issues/19

import {Console} from './wasa';

export function _start(): void {
  printGreen();
  Console.log("Hello World!");
  printReset();
}

function printGreen(): void {
  Console.log("\u001b[32m");
}

function printReset(): void {
  Console.log("\u001b[0m");
}
