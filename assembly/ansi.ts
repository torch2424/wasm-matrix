// Ansi Sequences and convenience functions

import { Console } from "./wasa";

// ANSI Escape
const ESC = "\u001b[";
const FLUSH = "\u001b[2J";

// Ansi Color Codes
export const GREEN = "\u001b[32m";
export const WHITE = "\u001b[37m";
export const RED = "\u001b[31m";
export const CYAN = "\u001b[36m";
export const RESET = "\u001b[0m";

// Ansi Cursor Codes
export const HIDE_CURSOR = "\u001b[?25h";

export function printColor(value: string, color: string): void {
  Console.write(color + value + RESET, false);
}

@inline
export function flushConsole(): void {
  Console.write(FLUSH, false);
}

// https://github.com/nojvek/matrix-rain/blob/master/ansi.js
export function moveCursorToPosition(column: i32, row: i32): void {
  var cursorPosition = ESC + row.toString() + ";" + column.toString() + "H";
  Console.write(cursorPosition, false);

  // Hide the cursor
  Console.write(HIDE_CURSOR, false);
}
