// Matrix Droplets

import {
  getRandomNumber
} from './utils';
import {
  ENGLISH_CHARACTERS,
  getRandomCharacter
} from './characters';
import {
  GREEN,
  WHITE,
  printColor,
  moveCursorToPosition
} from './ansi';

// Our Drople Class
export class Droplet {
  column: i32;
  row: i32;
  characterString: string;
  speed: i32;
  height: i32;
}

// Function to create a droplet
export function createDroplet(column: i32, speed: i32, lines: i32): Droplet {
  // Create the droplet
  let droplet: Droplet = new Droplet();

  // Populate the droplet values
  droplet.column = column;
  droplet.row = (getRandomNumber() % lines);
  droplet.height = (getRandomNumber() % (lines / 2)) + 3;
  droplet.speed = (getRandomNumber() % (2 * speed)) + speed;

  // Create our initial string
  droplet.characterString = "";
  for (let i = 0; i < droplet.height; i++) {
    droplet.characterString += getRandomCharacter(ENGLISH_CHARACTERS);
  }

  return droplet;
}

// "Moves" a droplet down the screen
export function updateDroplet(droplet: Droplet, lines: i32): void {

  // Increase the droplet row
  droplet.row += droplet.speed;

  if (droplet.row >= droplet.height + lines) {
    droplet.row = 0 - droplet.height;
  }

  // Remove the the moved characters
  droplet.characterString = droplet.characterString.slice(droplet.speed, droplet.characterString.length);

  // pop on a new character
  for (let i = droplet.characterString.length; i < droplet.height; i++) {
    droplet.characterString += getRandomCharacter(ENGLISH_CHARACTERS);
  }
}

// Places a droplet (and its characters) onto the screen
export function drawDroplet(droplet: Droplet, lines: i32): void {

  for(let i = 0; i < droplet.characterString.length; i++) {

    let cursorRow = droplet.row + i;

    if (cursorRow >= 0 && cursorRow <= lines) {
      // Move the cursor to the correct position
      moveCursorToPosition(droplet.column, cursorRow);


      // Get our color
      let color: string = GREEN;
      if (i === droplet.characterString.length - 1) {
        color = WHITE;
      }

      // Draw the character
      printColor(droplet.characterString.slice(i, i + 1), color);
    }
  }
}


