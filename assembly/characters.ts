// All of our character sets

import { getRandomNumber } from "./utils";

// Character code indexes
// Not extracting from a string, to save memory
// And make up for lack of garbage collection
// http://www.asciitable.com/
export const ENGLISH_CHARACTER_CODE_START: i32 = 33;
export const ENGLISH_CHARACTER_CODE_END: i32 = 126;

// Get a random character from a character set
export function getRandomCharacter(characterSet: string): string {
  let index: i32 = getRandomNumber() % characterSet.length;
  let newCharacter: string = characterSet.slice(index, index + 1);
  return newCharacter;
}

export function getRandomCharacterCode(start: i32, end: i32): u8 {
  let length = abs(end - start);
  return ((getRandomNumber() % length) + start) as u8;
}
