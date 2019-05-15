// Any Env overrides

import { Console } from "./wasa";

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
