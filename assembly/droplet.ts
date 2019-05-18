// Matrix Droplets

import { randomByte, rotateArrayRight } from "./utils";
import {
  ENGLISH_CHARACTER_CODE_START,
  ENGLISH_CHARACTER_CODE_END,
  getRandomCharacterCode
} from "./characters";
import { GREEN, WHITE, printColor, moveCursorToPosition } from "./ansi";

// Our Droplet Class
export class Droplet {
  column: i32;
  row: i32;
  // Going to use a character code array here
  // instead of a string to fix memory issues
  characterCodeArray: u8[];
  speed: i32;
  height: i32;
}

// Function to create a droplet
export function createDroplet(column: i32, lines: i32): Droplet {
  // Create the droplet
  let droplet = new Droplet();

  // Populate the droplet values
  droplet.column = column;
  droplet.row = randomByte() % lines;
  droplet.height = (randomByte() % (lines >>> 1)) + 3;
  droplet.speed = (randomByte() & 1) + 1;

  // Create our initial string
  droplet.characterCodeArray = new Array<u8>(droplet.height);
  for (let i = 0; i < droplet.height; i++) {
    droplet.characterCodeArray[i] = getRandomCharacterCode(
      ENGLISH_CHARACTER_CODE_START,
      ENGLISH_CHARACTER_CODE_END
    );
  }

  return droplet;
}

// "Moves" a droplet down the screen
export function updateDroplet(droplet: Droplet, lines: i32): void {
  var speed = droplet.speed;
  // Increase the droplet row
  droplet.row += speed;

  // Wrap the rows so it comes back from up top
  if (droplet.row >= droplet.height + lines) {
    droplet.row = -droplet.height;
  }

  // Rotate down the old characters
  // How many characters to rotate
  for (let i = 0; i < speed; i++) {
    rotateArrayRight(droplet.characterCodeArray);
  }

  // Add some new characters
  // To replace the old rotated ones
  for (let i = 0; i < speed; i++) {
    droplet.characterCodeArray[i] = getRandomCharacterCode(
      ENGLISH_CHARACTER_CODE_START,
      ENGLISH_CHARACTER_CODE_END
    );
  }
}

// Places a droplet (and its characters) onto the screen
export function drawDroplet(droplet: Droplet, lines: i32): void {
  // Loop over our characters
  for (let i = 0, len = droplet.characterCodeArray.length; i < len; i++) {
    let cursorRow = droplet.row + i;

    if (cursorRow >= 0 && cursorRow <= lines) {
      // Move the cursor to the correct position
      moveCursorToPosition(droplet.column, cursorRow);

      // Get our color
      let color = i === len - 1 ? WHITE : GREEN;

      // Draw the character
      // TODO: Optimize this, and try to remove generating / manipulating.
      // Perhpas write the character Codes Array directly?
      printColor(String.fromCharCode(droplet.characterCodeArray[i]), color);
    }
  }
}
