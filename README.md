# wasm-matrix

A Matrix Effect in your terminal using AssemblyScript 🚀 and WASI 🧩 . Deployed to WAPM 📦 .

Uses the [AssemblyScript WASI bindings](https://github.com/AssemblyScript/assemblyscript/blob/master/std/assembly/bindings/wasi_unstable.ts), with some help from [Wasa](https://github.com/jedisct1/wasa).

<img alt="What if I told you Wasm is not web or assembly?" width="auto" height="300px" src="https://github.com/torch2424/wasm-matrix/raw/master/docs_assets/matrix-meme.jpg"> <img alt="wasm matrix demo gif" width="auto" height="300px" src="https://github.com/torch2424/wasm-matrix/raw/master/docs_assets/matrix.gif">

# Table of Contents

# Usage

Install using [WAPM](https://wapm.io/):

`wapm install -g torch2424/wasm-matrix`

And then run `wasm-matrix`:

`wapm run wasm-matrix -l $LINES -c $COLUMNS`

# Caveats

Currently, in version `0.0.1` this isn't using the clock subscription, and using an old school `while(true)` loop to run the matrix. Thus, this will peg a core of CPU, wouldn't suggest running this on a cheap single core droplet (server). 🙂

# Contributing

Feel free to fork and submit PRs! Opening an issue is reccomended before starting any development, as a discussion would be nice on the idea / feature before writing code. Any help is much appreciated, and would be a ton of fun! 🎉

## Setup

This project's setup is meant to follow a standard Node app. Install Node with [nvm](https://github.com/creationix/nvm), `git clone` the project, and `npm install`, and you should be good to go!

Build your changes with: `npm run build`.

Run the project with the standard usage: `wapm run wasm-matrix -l $LINES -c $COLUMNS`.

# Resources

- [AssemblyScript](https://github.com/AssemblyScript/assemblyscript) - Typescript(-ish) to WebAssembly Compiler.

- [Wasa](https://github.com/jedisct1/wasa) - An AssemblyScript API layer for WASI system calls [WIP].

- [Wasi](https://wasi.dev/) - System interface for WebAssembly

- [WAPM](https://wapm.io/) - A WebAssembly package manager built on top of [Wasmer](https://github.com/wasmerio/wasmer).

# Special Thanks

- [jedisct1](https://github.com/jedisct1) - For building wasa. Was a huge help!

- [Binji](https://twitter.com/binjimint) - For inspiring this project on one of our hack days. Check out their [hack day wasm project](https://twitter.com/binjimint/status/1127421365139587072)!

- [Colin Eberhardt](https://twitter.com/ColinEberhardt) - For [joining in on the Wasm Hacking fun](https://twitter.com/ColinEberhardt/status/1128701985757253632)!
