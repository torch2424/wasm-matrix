// All of our character sets

import { randomByte } from "./utils";

// Character code indexes
// Not extracting from a string, to save memory
// And make up for lack of garbage collection
// http://www.asciitable.com/
export const ENGLISH_CHARACTER_CODE_START = 33;
export const ENGLISH_CHARACTER_CODE_END = 126;

export function getRandomCharacterCode(start: i32, end: i32): u8 {
  return ((randomByte() % (end - start)) + start) as u8;
}
