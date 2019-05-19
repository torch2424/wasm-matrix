// Convinience functions for our CLI

import { Console } from "./wasa";
import { GREEN, CYAN, RED, RESET, printColor } from "./ansi";

const DEFAULT_LINES = 24;
const DEFAULT_COLUMNS = 80;
const DEFAULT_SPEED = 1;

export function showHelp(): void {
  let REQUIRED = RED + "(REQUIRED)" + RESET;

  Console.log("");
  printColor("wasm-matrix", GREEN);
  Console.log("");

  printColor("USAGE:", CYAN);
  Console.log("");

  Console.log("[wapm run] wasm-matrix -l " + "$LINES" + " -c" + "$COLUMNS");
  Console.log("");

  printColor("FLAGS:", CYAN);
  Console.log("");

  Console.log("-l, --lines " + REQUIRED);
  Console.log("Number of " + "lines (rows)" + " to render the matrix");
  Console.log(
    "Suggested: " +
      "$LINES" +
      " [Bash Variable], Default: " +
      DEFAULT_LINES.toString()
  );
  Console.log("");

  Console.log("-c, --columns " + REQUIRED);
  Console.log("Number of " + "columns" + " to render the matrix");
  Console.log(
    "Suggested: " +
      "$COLUMNS" +
      " [Bash Variable], Default: " +
      DEFAULT_COLUMNS.toString()
  );
  Console.log("");

  Console.log("-s, --speed");
  Console.log("Speed of the matrix");
  Console.log("Suggested: " + "1 , " + "Default: " + DEFAULT_SPEED.toString());
  Console.log("");
}
