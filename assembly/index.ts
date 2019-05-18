// The entry file of your WebAssembly module.

// Import our Allocator
import "allocator/arena";

// Export our env overrides
export { wasiabort } from "./env";

// Import all of our utils and things
import { showHelp } from "./cli";
import { RED, printColor, flushConsole } from "./ansi";
import { Droplet, createDroplet, updateDroplet, drawDroplet } from "./droplet";
import { sleep } from "./utils";

// Import our CommandLine for grabbing args
import { CommandLine } from "./wasa";

// Entry point into WASI Module
// _start may be renamed
// https://github.com/WebAssembly/WASI/issues/19
export function _start(): void {
  // Set to the default linux terminal size
  let columns = 80;
  let lines = 24;

  // Set to the default speed
  let speed = 10;

  // Parse command line arguments
  let commandLine = new CommandLine();
  let args = commandLine.all() as string[];

  if (args.length <= 1) {
    showHelp();
    return;
  }

  for (let i = 0, len = args.length; i < len; i++) {
    let arg = args[i];

    if (arg == "-l" || arg == "--lines") {
      lines = parseInt(args[i + 1]) as i32;
      i++;

      if (lines < 1) {
        printColor("Please enter a lines greater than zero", RED);
        return;
      }
    } else if (arg == "-c" || arg == "--columns") {
      columns = parseInt(args[i + 1]) as i32;
      i++;

      if (columns < 1) {
        printColor("Please enter a column greater than zero", RED);
        return;
      }
    } else if (arg == "-s" || arg == "--speed") {
      speed = parseInt(args[i + 1]) as i32;
      i++;

      if (speed < 1 || speed > 20) {
        printColor("Please enter a speed >=1 and <= 20", RED);
        return;
      }
    } else if (arg == "-h" || arg == "--help") {
      showHelp();
      return;
    }
  }

  // Create all of our droplets
  let droplets = new Array<Droplet>(columns);
  for (let i = 0; i < columns; i++) {
    droplets[i] = createDroplet(i, lines);
  }

  while (true) {
    // Update our droplets
    for (let i = 0; i < columns; i++) {
      updateDroplet(droplets[i], lines);
    }

    // Clear the screen
    flushConsole();

    // Draw the droplets
    for (let i = 0; i < columns; i++) {
      drawDroplet(droplets[i], lines);
    }

    sleep(20 - speed);

    // Done!
  }
}
