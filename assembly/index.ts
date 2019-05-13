// The entry file of your WebAssembly module.

// https://github.com/WebAssembly/WASI/issues/19

import "allocator/arena";
import {Console, IO, Random, Date, CommandLine} from './wasa';

// ANSI Escape
let ESC: string = "\u001b["; 

// Ansi Color Codes
let GREEN: string = ESC + "32m";
let WHITE: string = ESC + "37m";
let RED: string = ESC + "31m";
let CYAN: string = ESC + "36m";
let RESET: string = ESC + "0m";

// Ansi Cursor Codes
let HIDE_CURSOR: string = ESC + "?25h";

// Matrix Characters
let CHARACTERS: string = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789@#$%^&*()";

// https://github.com/AssemblyScript/assemblyscript/blob/master/std/assembly/env.ts
// https://github.com/AssemblyScript/assemblyscript/issues/388
@global
export function wasiabort(
  message: string | null = "",
  fileName: string | null = "",
  lineNumber: u32 = 0,
  columnNumber: u32 = 0
): void {
  Console.error(message);
}

class Droplet {
  column: i32;
  row: i32;
  characterString: string;
  speed: i32;
  height: i32;
}

const droplets: Droplet[] = [];

export function _start(): void {
  
  // Set to the default linux terminal size
  let columns: i32 = 80;
  let lines: i32 = 24;
  let speed: i32 = 1;
  
  // Parse command line arguments
  let commandLine = new CommandLine();
  let args: Array<string> = commandLine.all();

  if (args.length <= 1) {
    showHelp();
    return;
  }

  for(let i = 0; i < args.length; i++) {
    
    let arg: string = args[i];
    
    if (arg == "-l" || arg == "--lines") {
      lines = parseInt(args[i + 1]) as i32;
      i++;

      if (lines < 1) {
        Console.error(RED + "Please enter a lines greater than zero" + RESET);
        return;
      }
    } else if (arg == "-c" || arg == "--columns") {
      columns = parseInt(args[i + 1]) as i32;
      i++;

      if (columns < 1) {
        Console.error(RED + "Please enter a column greater than zero" + RESET);
        return;
      }
    } else if (arg == "-s" || arg == "--speed") {
      speed = parseInt(args[i + 1]) as i32;
      i++;

      if (speed < 1 || speed > 10) {
        Console.error(RED + "Please enter a speed >=1 and <= 10" + RESET);
        return;
      }
    } else if (arg == "-h" || arg == "--help") {
      showHelp();
      return;
    }
  }

  // Create all of our droplets
  for (let i = 0; i < columns; i++) {
    droplets.push(createDroplet(i, speed, lines));
  }

  while (true) {

    // Update our droplets
    for (let i = 0; i < droplets.length; i++) {
      updateDroplet(droplets[i], lines);
    }

    // Clear the screen
    flushConsole();

    // Draw the droplets
    for (let i = 0; i < droplets.length; i++) {
      drawDroplet(droplets[i], lines);
    }

    sleep(11);

    // Done!
  }
}

function showHelp(): void {
  Console.log("");
  Console.log(GREEN + "wasm-matrix" + RESET);
  Console.log("");

  Console.log(CYAN + "USAGE:" + RESET);
  Console.log("");

  Console.log("[wapm run] wasm-matrix -l $LINES -c $COLUMNS")
  Console.log("");

  Console.log(CYAN + "FLAGS:" + RESET)
  Console.log("");

  Console.log("-l, --lines " + RED + "(REQUIRED)" + RESET);
  Console.log("Number of lines (rows) to render the matrix");
  Console.log("Suggested: $LINES [Bash Variable], Default: 24");
  Console.log("");

  Console.log("-c, --columns " + RED + "(REQUIRED)" + RESET);
  Console.log("Number of columns to render the matrix");
  Console.log("Suggested: $COLUMNS [Bash Variable], Default: 80");
  Console.log("");

  Console.log("-s, --speed");
  Console.log("Speed of the matrix");
  Console.log("Suggested: 1, Default: 1");
  Console.log("");
}

function printColor(value: string, color: string): void {
  Console.write(color + value + RESET, false);
}

function flushConsole(): void {
  Console.write("\u001b[2J", false)
}

function createDroplet(column: i32, speed: i32, lines: i32): Droplet {
  let droplet: Droplet = new Droplet();
  droplet.column = column;
  droplet.row = (getRandomNumber() % lines);
  droplet.height = (getRandomNumber() % (lines / 2)) + 3;
  droplet.speed = (getRandomNumber() % (2 * speed)) + speed;

  droplet.characterString = "";
  for (let i = 0; i < droplet.height; i++) {
    droplet.characterString += getRandomCharacter();
  }

  return droplet;
}

function updateDroplet(droplet: Droplet, lines: i32): void {

  // Increase the droplet row
  droplet.row += droplet.speed;

  if (droplet.row >= droplet.height + lines) {
    droplet.row = 0 - droplet.height;
  }

  // Remove the the moved characters
  droplet.characterString = droplet.characterString.slice(droplet.speed, droplet.characterString.length);

  // pop on a new character
  for (let i = droplet.characterString.length; i < droplet.height; i++) {
    droplet.characterString += getRandomCharacter();
  }
}

function drawDroplet(droplet: Droplet, lines: i32): void {

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

// https://github.com/nojvek/matrix-rain/blob/master/ansi.js
function moveCursorToPosition(column: i32, row: i32): void {
  let cursorPosition: string = ESC + row.toString() + ";" + column.toString() + "H";
  Console.write(cursorPosition, false);

  // Hide the cursor
  Console.write(HIDE_CURSOR, false);
}

function getRandomNumber(): i32 {
  return Random.randomBytes(1)[0];
}

function getRandomCharacter(): string {
  let index: i32 = getRandomNumber() % CHARACTERS.length;
  let newCharacter: string = CHARACTERS.slice(index, index + 1);
  return newCharacter;
}

function getTimeCounter(): i32 {
  return floor<f64>(Date.now() / 10000) as i32;
}

function sleep(sleepTicks: i32): void {
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
