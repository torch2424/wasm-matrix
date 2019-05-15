// The entry file of your WebAssembly module.

// Import our Allocator
import "allocator/arena";

// Export our env overrides
export {
  wasiabort
} from './env';

// Import all of our utils and things
import {
  showHelp
} from './cli';
import {
  RED,
  printColor,
  flushConsole
} from './ansi';
import {
  Droplet,
  createDroplet,
  updateDroplet,
  drawDroplet
} from './droplet';
import {
  sleep
} from './utils';

// Import our CommandLine for grabbing args
import {CommandLine} from './wasa';

// Entry point into WASI Module
// _start may be renamed
// https://github.com/WebAssembly/WASI/issues/19
export function _start(): void {

  // Set to the default linux terminal size
  let columns: i32 = 80;
  let lines: i32 = 24;

  // Set to the default speed
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

    if (arg === "-l" || arg === "--lines") {
      lines = parseInt(args[i + 1]) as i32;
      i++;

      if (lines < 1) {
        printColor("Please enter a lines greater than zero", RED);
        return;
      }
    } else if (arg === "-c" || arg === "--columns") {
      columns = parseInt(args[i + 1]) as i32;
      i++;

      if (columns < 1) {
        printColor("Please enter a column greater than zero", RED);
        return;
      }
    } else if (arg === "-s" || arg === "--speed") {
      speed = parseInt(args[i + 1]) as i32;
      i++;

      if (speed < 1 || speed > 10) {
        printColor("Please enter a speed >=1 and <= 10", RED);
        return;
      }
    } else if (arg === "-h" || arg === "--help") {
      showHelp();
      return;
    }
  }

  // Create all of our droplets
  const droplets: Droplet[] = new Array<Droplet>(columns);
  for (let i = 0; i < columns; i++) {
    droplets[i] = createDroplet(i, speed, lines);
  } 

  while(true) {

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

