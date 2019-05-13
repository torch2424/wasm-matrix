// All of our character sets

import {
  getRandomNumber
} from './utils';

// Matrix Characters
export const ENGLISH_CHARACTERS: string = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789@#$%^&*()";

// Get a random character from a character set
export function getRandomCharacter(characterSet: string): string {
  let index: i32 = getRandomNumber() % characterSet.length;
  let newCharacter: string = characterSet.slice(index, index + 1);
  return newCharacter;
}

