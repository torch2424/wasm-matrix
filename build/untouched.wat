(module
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$vii (func (param i32 i32)))
 (type $FUNCSIG$viii (func (param i32 i32 i32)))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$iiiii (func (param i32 i32 i32 i32) (result i32)))
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$viiiii (func (param i32 i32 i32 i32 i32)))
 (type $FUNCSIG$iiiiii (func (param i32 i32 i32 i32 i32) (result i32)))
 (type $FUNCSIG$dii (func (param i32 i32) (result f64)))
 (type $FUNCSIG$i (func (result i32)))
 (type $FUNCSIG$iiji (func (param i32 i64 i32) (result i32)))
 (import "wasi_unstable" "fd_write" (func $~lib/bindings/wasi_unstable/fd_write (param i32 i32 i32 i32) (result i32)))
 (import "wasi_unstable" "args_sizes_get" (func $~lib/bindings/wasi_unstable/args_sizes_get (param i32 i32) (result i32)))
 (import "wasi_unstable" "args_get" (func $~lib/bindings/wasi_unstable/args_get (param i32 i32) (result i32)))
 (import "wasi_unstable" "random_get" (func $~lib/bindings/wasi_unstable/random_get (param i32 i32) (result i32)))
 (import "wasi_unstable" "clock_time_get" (func $~lib/bindings/wasi_unstable/clock_time_get (param i32 i64 i32) (result i32)))
 (memory $0 1)
 (data (i32.const 8) "\02\00\00\00\1b\00[\00")
 (data (i32.const 16) "\03\00\00\003\002\00m\00")
 (data (i32.const 32) "\04\00\00\00n\00u\00l\00l\00")
 (data (i32.const 48) "\0e\00\00\00~\00l\00i\00b\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s\00")
 (data (i32.const 80) "\00\00\00\00")
 (data (i32.const 88) "\17\00\00\00~\00l\00i\00b\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s\00")
 (data (i32.const 144) "\03\00\00\003\007\00m\00")
 (data (i32.const 160) "\03\00\00\003\001\00m\00")
 (data (i32.const 176) "\03\00\00\003\006\00m\00")
 (data (i32.const 192) "\02\00\00\000\00m\00")
 (data (i32.const 200) "\04\00\00\00?\002\005\00h\00")
 (data (i32.const 216) "\00\00\00\00\00\00\00\00")
 (data (i32.const 224) "\d8\00\00\00\00\00\00\00")
 (data (i32.const 232) "\0d\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s\00")
 (data (i32.const 264) "\1c\00\00\00~\00l\00i\00b\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s\00")
 (data (i32.const 328) "\0b\00\00\00w\00a\00s\00m\00-\00m\00a\00t\00r\00i\00x\00")
 (data (i32.const 360) "\06\00\00\00U\00S\00A\00G\00E\00:\00")
 (data (i32.const 376) ",\00\00\00[\00w\00a\00p\00m\00 \00r\00u\00n\00]\00 \00w\00a\00s\00m\00-\00m\00a\00t\00r\00i\00x\00 \00-\00l\00 \00$\00L\00I\00N\00E\00S\00 \00-\00c\00 \00$\00C\00O\00L\00U\00M\00N\00S\00")
 (data (i32.const 472) "\06\00\00\00F\00L\00A\00G\00S\00:\00")
 (data (i32.const 488) "\0c\00\00\00-\00l\00,\00 \00-\00-\00l\00i\00n\00e\00s\00 \00")
 (data (i32.const 520) "\n\00\00\00(\00R\00E\00Q\00U\00I\00R\00E\00D\00)\00")
 (data (i32.const 544) "+\00\00\00N\00u\00m\00b\00e\00r\00 \00o\00f\00 \00l\00i\00n\00e\00s\00 \00(\00r\00o\00w\00s\00)\00 \00t\00o\00 \00r\00e\00n\00d\00e\00r\00 \00t\00h\00e\00 \00m\00a\00t\00r\00i\00x\00")
 (data (i32.const 640) ".\00\00\00S\00u\00g\00g\00e\00s\00t\00e\00d\00:\00 \00$\00L\00I\00N\00E\00S\00 \00[\00B\00a\00s\00h\00 \00V\00a\00r\00i\00a\00b\00l\00e\00]\00,\00 \00D\00e\00f\00a\00u\00l\00t\00:\00 \002\004\00")
 (data (i32.const 736) "\0e\00\00\00-\00c\00,\00 \00-\00-\00c\00o\00l\00u\00m\00n\00s\00 \00")
 (data (i32.const 768) "&\00\00\00N\00u\00m\00b\00e\00r\00 \00o\00f\00 \00c\00o\00l\00u\00m\00n\00s\00 \00t\00o\00 \00r\00e\00n\00d\00e\00r\00 \00t\00h\00e\00 \00m\00a\00t\00r\00i\00x\00")
 (data (i32.const 848) "0\00\00\00S\00u\00g\00g\00e\00s\00t\00e\00d\00:\00 \00$\00C\00O\00L\00U\00M\00N\00S\00 \00[\00B\00a\00s\00h\00 \00V\00a\00r\00i\00a\00b\00l\00e\00]\00,\00 \00D\00e\00f\00a\00u\00l\00t\00:\00 \008\000\00")
 (data (i32.const 952) "\0b\00\00\00-\00s\00,\00 \00-\00-\00s\00p\00e\00e\00d\00")
 (data (i32.const 984) "\13\00\00\00S\00p\00e\00e\00d\00 \00o\00f\00 \00t\00h\00e\00 \00m\00a\00t\00r\00i\00x\00")
 (data (i32.const 1032) "\18\00\00\00S\00u\00g\00g\00e\00s\00t\00e\00d\00:\00 \001\00,\00 \00D\00e\00f\00a\00u\00l\00t\00:\00 \001\00")
 (data (i32.const 1088) "\02\00\00\00-\00l\00")
 (data (i32.const 1096) "\07\00\00\00-\00-\00l\00i\00n\00e\00s\00")
 (data (i32.const 1120) "&\00\00\00P\00l\00e\00a\00s\00e\00 \00e\00n\00t\00e\00r\00 \00a\00 \00l\00i\00n\00e\00s\00 \00g\00r\00e\00a\00t\00e\00r\00 \00t\00h\00a\00n\00 \00z\00e\00r\00o\00")
 (data (i32.const 1200) "\02\00\00\00-\00c\00")
 (data (i32.const 1208) "\t\00\00\00-\00-\00c\00o\00l\00u\00m\00n\00s\00")
 (data (i32.const 1232) "\'\00\00\00P\00l\00e\00a\00s\00e\00 \00e\00n\00t\00e\00r\00 \00a\00 \00c\00o\00l\00u\00m\00n\00 \00g\00r\00e\00a\00t\00e\00r\00 \00t\00h\00a\00n\00 \00z\00e\00r\00o\00")
 (data (i32.const 1320) "\02\00\00\00-\00s\00")
 (data (i32.const 1328) "\07\00\00\00-\00-\00s\00p\00e\00e\00d\00")
 (data (i32.const 1352) "\"\00\00\00P\00l\00e\00a\00s\00e\00 \00e\00n\00t\00e\00r\00 \00a\00 \00s\00p\00e\00e\00d\00 \00>\00=\001\00 \00a\00n\00d\00 \00<\00=\00 \002\000\00")
 (data (i32.const 1424) "\02\00\00\00-\00h\00")
 (data (i32.const 1432) "\06\00\00\00-\00-\00h\00e\00l\00p\00")
 (data (i32.const 1448) "\02\00\00\002\00J\00")
 (data (i32.const 1456) "\01\00\00\000\00")
 (data (i32.const 1464) "\90\01\00\00\00\00\00\000\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1976) "\b8\05\00\00d\00\00\00")
 (data (i32.const 1984) "\01\00\00\00;\00")
 (data (i32.const 1992) "\01\00\00\00H\00")
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $assembly/ansi/ESC i32 (i32.const 8))
 (global $assembly/ansi/GREEN (mut i32) (i32.const 0))
 (global $assembly/ansi/WHITE (mut i32) (i32.const 0))
 (global $assembly/ansi/RED (mut i32) (i32.const 0))
 (global $assembly/ansi/CYAN (mut i32) (i32.const 0))
 (global $assembly/ansi/RESET (mut i32) (i32.const 0))
 (global $assembly/ansi/HIDE_CURSOR (mut i32) (i32.const 0))
 (global $assembly/utils/randomBytePointer (mut i32) (i32.const 0))
 (global $assembly/utils/timeCounterPointer (mut i32) (i32.const 0))
 (global $assembly/characters/ENGLISH_CHARACTER_CODE_START i32 (i32.const 33))
 (global $assembly/characters/ENGLISH_CHARACTER_CODE_END i32 (i32.const 126))
 (global $~lib/ASC_SHRINK_LEVEL i32 (i32.const 0))
 (global $~lib/memory/HEAP_BASE i32 (i32.const 2000))
 (global $~lib/argc (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "_start" (func $assembly/index/_start))
 (export "_setargc" (func $~lib/setargc))
 (export "wasiabort" (func $assembly/env/wasiabort|trampoline))
 (start $start)
 (func $start:~lib/allocator/arena (; 5 ;) (type $FUNCSIG$v)
  global.get $~lib/memory/HEAP_BASE
  i32.const 7
  i32.add
  i32.const 7
  i32.const -1
  i32.xor
  i32.and
  global.set $~lib/allocator/arena/startOffset
  global.get $~lib/allocator/arena/startOffset
  global.set $~lib/allocator/arena/offset
 )
 (func $~lib/string/String#get:lengthUTF8 (; 6 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 1
  local.set $1
  i32.const 0
  local.set $2
  local.get $0
  i32.load
  local.set $3
  block $break|0
   loop $continue|0
    local.get $2
    local.get $3
    i32.lt_u
    if
     block
      local.get $0
      local.get $2
      i32.const 1
      i32.shl
      i32.add
      i32.load16_u offset=4
      local.set $4
      local.get $4
      i32.const 128
      i32.lt_u
      if
       local.get $1
       i32.const 1
       i32.add
       local.set $1
       local.get $2
       i32.const 1
       i32.add
       local.set $2
      else       
       local.get $4
       i32.const 2048
       i32.lt_u
       if
        local.get $1
        i32.const 2
        i32.add
        local.set $1
        local.get $2
        i32.const 1
        i32.add
        local.set $2
       else        
        local.get $4
        i32.const 64512
        i32.and
        i32.const 55296
        i32.eq
        local.tee $5
        if (result i32)
         local.get $2
         i32.const 1
         i32.add
         local.get $3
         i32.lt_u
        else         
         local.get $5
        end
        local.tee $5
        if (result i32)
         local.get $0
         local.get $2
         i32.const 1
         i32.add
         i32.const 1
         i32.shl
         i32.add
         i32.load16_u offset=4
         i32.const 64512
         i32.and
         i32.const 56320
         i32.eq
        else         
         local.get $5
        end
        if
         local.get $1
         i32.const 4
         i32.add
         local.set $1
         local.get $2
         i32.const 2
         i32.add
         local.set $2
        else         
         local.get $1
         i32.const 3
         i32.add
         local.set $1
         local.get $2
         i32.const 1
         i32.add
         local.set $2
        end
       end
      end
     end
     br $continue|0
    end
   end
  end
  local.get $1
 )
 (func $~lib/allocator/arena/__memory_allocate (; 7 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.const 1073741824
  i32.gt_u
  if
   unreachable
  end
  global.get $~lib/allocator/arena/offset
  local.set $1
  local.get $1
  local.get $0
  local.tee $2
  i32.const 1
  local.tee $3
  local.get $2
  local.get $3
  i32.gt_u
  select
  i32.add
  i32.const 7
  i32.add
  i32.const 7
  i32.const -1
  i32.xor
  i32.and
  local.set $4
  current_memory
  local.set $5
  local.get $4
  local.get $5
  i32.const 16
  i32.shl
  i32.gt_u
  if
   local.get $4
   local.get $1
   i32.sub
   i32.const 65535
   i32.add
   i32.const 65535
   i32.const -1
   i32.xor
   i32.and
   i32.const 16
   i32.shr_u
   local.set $2
   local.get $5
   local.tee $3
   local.get $2
   local.tee $6
   local.get $3
   local.get $6
   i32.gt_s
   select
   local.set $3
   local.get $3
   grow_memory
   i32.const 0
   i32.lt_s
   if
    local.get $2
    grow_memory
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
  end
  local.get $4
  global.set $~lib/allocator/arena/offset
  local.get $1
 )
 (func $~lib/string/String#toUTF8 (; 8 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  block $~lib/memory/memory.allocate|inlined.0 (result i32)
   local.get $0
   call $~lib/string/String#get:lengthUTF8
   local.set $1
   local.get $1
   call $~lib/allocator/arena/__memory_allocate
   br $~lib/memory/memory.allocate|inlined.0
  end
  local.set $2
  i32.const 0
  local.set $3
  local.get $0
  i32.load
  local.set $4
  i32.const 0
  local.set $5
  block $break|0
   loop $continue|0
    local.get $3
    local.get $4
    i32.lt_u
    if
     block
      local.get $0
      local.get $3
      i32.const 1
      i32.shl
      i32.add
      i32.load16_u offset=4
      local.set $1
      local.get $1
      i32.const 128
      i32.lt_u
      if
       local.get $2
       local.get $5
       i32.add
       local.get $1
       i32.store8
       local.get $5
       i32.const 1
       i32.add
       local.set $5
       local.get $3
       i32.const 1
       i32.add
       local.set $3
      else       
       local.get $1
       i32.const 2048
       i32.lt_u
       if
        local.get $2
        local.get $5
        i32.add
        local.set $6
        local.get $6
        local.get $1
        i32.const 6
        i32.shr_u
        i32.const 192
        i32.or
        i32.store8
        local.get $6
        local.get $1
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.store8 offset=1
        local.get $5
        i32.const 2
        i32.add
        local.set $5
        local.get $3
        i32.const 1
        i32.add
        local.set $3
       else        
        local.get $2
        local.get $5
        i32.add
        local.set $6
        local.get $1
        i32.const 64512
        i32.and
        i32.const 55296
        i32.eq
        local.tee $7
        if (result i32)
         local.get $3
         i32.const 1
         i32.add
         local.get $4
         i32.lt_u
        else         
         local.get $7
        end
        if
         local.get $0
         local.get $3
         i32.const 1
         i32.add
         i32.const 1
         i32.shl
         i32.add
         i32.load16_u offset=4
         local.set $7
         local.get $7
         i32.const 64512
         i32.and
         i32.const 56320
         i32.eq
         if
          i32.const 65536
          local.get $1
          i32.const 1023
          i32.and
          i32.const 10
          i32.shl
          i32.add
          local.get $7
          i32.const 1023
          i32.and
          i32.add
          local.set $1
          local.get $6
          local.get $1
          i32.const 18
          i32.shr_u
          i32.const 240
          i32.or
          i32.store8
          local.get $6
          local.get $1
          i32.const 12
          i32.shr_u
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=1
          local.get $6
          local.get $1
          i32.const 6
          i32.shr_u
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=2
          local.get $6
          local.get $1
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=3
          local.get $5
          i32.const 4
          i32.add
          local.set $5
          local.get $3
          i32.const 2
          i32.add
          local.set $3
          br $continue|0
         end
        end
        local.get $6
        local.get $1
        i32.const 12
        i32.shr_u
        i32.const 224
        i32.or
        i32.store8
        local.get $6
        local.get $1
        i32.const 6
        i32.shr_u
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.store8 offset=1
        local.get $6
        local.get $1
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.store8 offset=2
        local.get $5
        i32.const 3
        i32.add
        local.set $5
        local.get $3
        i32.const 1
        i32.add
        local.set $3
       end
      end
     end
     br $continue|0
    end
   end
  end
  local.get $2
  local.get $5
  i32.add
  i32.const 0
  i32.store8
  local.get $2
 )
 (func $~lib/allocator/arena/__memory_free (; 9 ;) (type $FUNCSIG$vi) (param $0 i32)
  nop
 )
 (func $assembly/wasa/IO.writeStringLn (; 10 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $1
  call $~lib/string/String#get:lengthUTF8
  i32.const 1
  i32.sub
  local.set $2
  local.get $1
  call $~lib/string/String#toUTF8
  local.set $3
  block $~lib/memory/memory.allocate|inlined.1 (result i32)
   i32.const 4
   i32.const 4
   i32.mul
   local.set $4
   local.get $4
   call $~lib/allocator/arena/__memory_allocate
   br $~lib/memory/memory.allocate|inlined.1
  end
  local.set $4
  local.get $4
  local.get $3
  i32.store
  local.get $4
  i32.const 4
  i32.add
  local.get $2
  i32.store
  block $~lib/memory/memory.allocate|inlined.2 (result i32)
   i32.const 1
   local.set $5
   local.get $5
   call $~lib/allocator/arena/__memory_allocate
   br $~lib/memory/memory.allocate|inlined.2
  end
  local.set $5
  local.get $5
  i32.const 10
  i32.store8
  local.get $4
  i32.const 4
  i32.const 2
  i32.mul
  i32.add
  local.get $5
  i32.store
  local.get $4
  i32.const 4
  i32.const 3
  i32.mul
  i32.add
  i32.const 1
  i32.store
  block $~lib/memory/memory.allocate|inlined.3 (result i32)
   i32.const 4
   local.set $6
   local.get $6
   call $~lib/allocator/arena/__memory_allocate
   br $~lib/memory/memory.allocate|inlined.3
  end
  local.set $6
  local.get $0
  local.get $4
  i32.const 2
  local.get $6
  call $~lib/bindings/wasi_unstable/fd_write
  drop
  block $~lib/memory/memory.free|inlined.0
   local.get $6
   local.set $7
   local.get $7
   call $~lib/allocator/arena/__memory_free
   br $~lib/memory/memory.free|inlined.0
  end
  block $~lib/memory/memory.free|inlined.1
   local.get $3
   local.set $7
   local.get $7
   call $~lib/allocator/arena/__memory_free
   br $~lib/memory/memory.free|inlined.1
  end
  block $~lib/memory/memory.free|inlined.2
   local.get $4
   local.set $7
   local.get $7
   call $~lib/allocator/arena/__memory_free
   br $~lib/memory/memory.free|inlined.2
  end
  block $~lib/memory/memory.free|inlined.3
   local.get $5
   local.set $7
   local.get $7
   call $~lib/allocator/arena/__memory_free
   br $~lib/memory/memory.free|inlined.3
  end
 )
 (func $assembly/wasa/IO.writeString (; 11 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $2
  i32.const 0
  i32.ne
  if
   local.get $0
   local.get $1
   call $assembly/wasa/IO.writeStringLn
   return
  end
  local.get $1
  call $~lib/string/String#get:lengthUTF8
  i32.const 1
  i32.sub
  local.set $3
  local.get $1
  call $~lib/string/String#toUTF8
  local.set $4
  block $~lib/memory/memory.allocate|inlined.4 (result i32)
   i32.const 2
   i32.const 4
   i32.mul
   local.set $5
   local.get $5
   call $~lib/allocator/arena/__memory_allocate
   br $~lib/memory/memory.allocate|inlined.4
  end
  local.set $5
  local.get $5
  local.get $4
  i32.store
  local.get $5
  i32.const 4
  i32.add
  local.get $3
  i32.store
  block $~lib/memory/memory.allocate|inlined.5 (result i32)
   i32.const 4
   local.set $6
   local.get $6
   call $~lib/allocator/arena/__memory_allocate
   br $~lib/memory/memory.allocate|inlined.5
  end
  local.set $6
  local.get $0
  local.get $5
  i32.const 1
  local.get $6
  call $~lib/bindings/wasi_unstable/fd_write
  drop
  block $~lib/memory/memory.free|inlined.4
   local.get $6
   local.set $7
   local.get $7
   call $~lib/allocator/arena/__memory_free
   br $~lib/memory/memory.free|inlined.4
  end
  block $~lib/memory/memory.free|inlined.5
   local.get $4
   local.set $7
   local.get $7
   call $~lib/allocator/arena/__memory_free
   br $~lib/memory/memory.free|inlined.5
  end
  block $~lib/memory/memory.free|inlined.6
   local.get $5
   local.set $7
   local.get $7
   call $~lib/allocator/arena/__memory_free
   br $~lib/memory/memory.free|inlined.6
  end
 )
 (func $assembly/wasa/Console.error (; 12 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  i32.const 2
  local.get $0
  local.get $1
  call $assembly/wasa/IO.writeString
 )
 (func $assembly/env/wasiabort (; 13 ;) (type $FUNCSIG$viiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  local.get $0
  i32.const 1
  call $assembly/wasa/Console.error
 )
 (func $~lib/internal/string/allocateUnsafe (; 14 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.const 0
  i32.gt_s
  local.tee $1
  if (result i32)
   local.get $0
   i32.const 536870910
   i32.le_s
  else   
   local.get $1
  end
  i32.eqz
  if
   i32.const 0
   i32.const 88
   i32.const 14
   i32.const 2
   call $assembly/env/wasiabort
   unreachable
  end
  block $~lib/memory/memory.allocate|inlined.6 (result i32)
   i32.const 4
   local.get $0
   i32.const 1
   i32.shl
   i32.add
   local.set $1
   local.get $1
   call $~lib/allocator/arena/__memory_allocate
   br $~lib/memory/memory.allocate|inlined.6
  end
  local.set $2
  local.get $2
  local.get $0
  i32.store
  local.get $2
 )
 (func $~lib/internal/memory/memcpy (; 15 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $break|0
   loop $continue|0
    local.get $2
    if (result i32)
     local.get $1
     i32.const 3
     i32.and
    else     
     local.get $2
    end
    if
     block
      block (result i32)
       local.get $0
       local.tee $5
       i32.const 1
       i32.add
       local.set $0
       local.get $5
      end
      block (result i32)
       local.get $1
       local.tee $5
       i32.const 1
       i32.add
       local.set $1
       local.get $5
      end
      i32.load8_u
      i32.store8
      local.get $2
      i32.const 1
      i32.sub
      local.set $2
     end
     br $continue|0
    end
   end
  end
  local.get $0
  i32.const 3
  i32.and
  i32.const 0
  i32.eq
  if
   block $break|1
    loop $continue|1
     local.get $2
     i32.const 16
     i32.ge_u
     if
      block
       local.get $0
       local.get $1
       i32.load
       i32.store
       local.get $0
       i32.const 4
       i32.add
       local.get $1
       i32.const 4
       i32.add
       i32.load
       i32.store
       local.get $0
       i32.const 8
       i32.add
       local.get $1
       i32.const 8
       i32.add
       i32.load
       i32.store
       local.get $0
       i32.const 12
       i32.add
       local.get $1
       i32.const 12
       i32.add
       i32.load
       i32.store
       local.get $1
       i32.const 16
       i32.add
       local.set $1
       local.get $0
       i32.const 16
       i32.add
       local.set $0
       local.get $2
       i32.const 16
       i32.sub
       local.set $2
      end
      br $continue|1
     end
    end
   end
   local.get $2
   i32.const 8
   i32.and
   if
    local.get $0
    local.get $1
    i32.load
    i32.store
    local.get $0
    i32.const 4
    i32.add
    local.get $1
    i32.const 4
    i32.add
    i32.load
    i32.store
    local.get $0
    i32.const 8
    i32.add
    local.set $0
    local.get $1
    i32.const 8
    i32.add
    local.set $1
   end
   local.get $2
   i32.const 4
   i32.and
   if
    local.get $0
    local.get $1
    i32.load
    i32.store
    local.get $0
    i32.const 4
    i32.add
    local.set $0
    local.get $1
    i32.const 4
    i32.add
    local.set $1
   end
   local.get $2
   i32.const 2
   i32.and
   if
    local.get $0
    local.get $1
    i32.load16_u
    i32.store16
    local.get $0
    i32.const 2
    i32.add
    local.set $0
    local.get $1
    i32.const 2
    i32.add
    local.set $1
   end
   local.get $2
   i32.const 1
   i32.and
   if
    block (result i32)
     local.get $0
     local.tee $5
     i32.const 1
     i32.add
     local.set $0
     local.get $5
    end
    block (result i32)
     local.get $1
     local.tee $5
     i32.const 1
     i32.add
     local.set $1
     local.get $5
    end
    i32.load8_u
    i32.store8
   end
   return
  end
  local.get $2
  i32.const 32
  i32.ge_u
  if
   block $break|2
    block $case2|2
     block $case1|2
      block $case0|2
       local.get $0
       i32.const 3
       i32.and
       local.set $5
       local.get $5
       i32.const 1
       i32.eq
       br_if $case0|2
       local.get $5
       i32.const 2
       i32.eq
       br_if $case1|2
       local.get $5
       i32.const 3
       i32.eq
       br_if $case2|2
       br $break|2
      end
      block
       local.get $1
       i32.load
       local.set $3
       block (result i32)
        local.get $0
        local.tee $5
        i32.const 1
        i32.add
        local.set $0
        local.get $5
       end
       block (result i32)
        local.get $1
        local.tee $5
        i32.const 1
        i32.add
        local.set $1
        local.get $5
       end
       i32.load8_u
       i32.store8
       block (result i32)
        local.get $0
        local.tee $5
        i32.const 1
        i32.add
        local.set $0
        local.get $5
       end
       block (result i32)
        local.get $1
        local.tee $5
        i32.const 1
        i32.add
        local.set $1
        local.get $5
       end
       i32.load8_u
       i32.store8
       block (result i32)
        local.get $0
        local.tee $5
        i32.const 1
        i32.add
        local.set $0
        local.get $5
       end
       block (result i32)
        local.get $1
        local.tee $5
        i32.const 1
        i32.add
        local.set $1
        local.get $5
       end
       i32.load8_u
       i32.store8
       local.get $2
       i32.const 3
       i32.sub
       local.set $2
       block $break|3
        loop $continue|3
         local.get $2
         i32.const 17
         i32.ge_u
         if
          block
           local.get $1
           i32.const 1
           i32.add
           i32.load
           local.set $4
           local.get $0
           local.get $3
           i32.const 24
           i32.shr_u
           local.get $4
           i32.const 8
           i32.shl
           i32.or
           i32.store
           local.get $1
           i32.const 5
           i32.add
           i32.load
           local.set $3
           local.get $0
           i32.const 4
           i32.add
           local.get $4
           i32.const 24
           i32.shr_u
           local.get $3
           i32.const 8
           i32.shl
           i32.or
           i32.store
           local.get $1
           i32.const 9
           i32.add
           i32.load
           local.set $4
           local.get $0
           i32.const 8
           i32.add
           local.get $3
           i32.const 24
           i32.shr_u
           local.get $4
           i32.const 8
           i32.shl
           i32.or
           i32.store
           local.get $1
           i32.const 13
           i32.add
           i32.load
           local.set $3
           local.get $0
           i32.const 12
           i32.add
           local.get $4
           i32.const 24
           i32.shr_u
           local.get $3
           i32.const 8
           i32.shl
           i32.or
           i32.store
           local.get $1
           i32.const 16
           i32.add
           local.set $1
           local.get $0
           i32.const 16
           i32.add
           local.set $0
           local.get $2
           i32.const 16
           i32.sub
           local.set $2
          end
          br $continue|3
         end
        end
       end
       br $break|2
       unreachable
      end
      unreachable
     end
     block
      local.get $1
      i32.load
      local.set $3
      block (result i32)
       local.get $0
       local.tee $5
       i32.const 1
       i32.add
       local.set $0
       local.get $5
      end
      block (result i32)
       local.get $1
       local.tee $5
       i32.const 1
       i32.add
       local.set $1
       local.get $5
      end
      i32.load8_u
      i32.store8
      block (result i32)
       local.get $0
       local.tee $5
       i32.const 1
       i32.add
       local.set $0
       local.get $5
      end
      block (result i32)
       local.get $1
       local.tee $5
       i32.const 1
       i32.add
       local.set $1
       local.get $5
      end
      i32.load8_u
      i32.store8
      local.get $2
      i32.const 2
      i32.sub
      local.set $2
      block $break|4
       loop $continue|4
        local.get $2
        i32.const 18
        i32.ge_u
        if
         block
          local.get $1
          i32.const 2
          i32.add
          i32.load
          local.set $4
          local.get $0
          local.get $3
          i32.const 16
          i32.shr_u
          local.get $4
          i32.const 16
          i32.shl
          i32.or
          i32.store
          local.get $1
          i32.const 6
          i32.add
          i32.load
          local.set $3
          local.get $0
          i32.const 4
          i32.add
          local.get $4
          i32.const 16
          i32.shr_u
          local.get $3
          i32.const 16
          i32.shl
          i32.or
          i32.store
          local.get $1
          i32.const 10
          i32.add
          i32.load
          local.set $4
          local.get $0
          i32.const 8
          i32.add
          local.get $3
          i32.const 16
          i32.shr_u
          local.get $4
          i32.const 16
          i32.shl
          i32.or
          i32.store
          local.get $1
          i32.const 14
          i32.add
          i32.load
          local.set $3
          local.get $0
          i32.const 12
          i32.add
          local.get $4
          i32.const 16
          i32.shr_u
          local.get $3
          i32.const 16
          i32.shl
          i32.or
          i32.store
          local.get $1
          i32.const 16
          i32.add
          local.set $1
          local.get $0
          i32.const 16
          i32.add
          local.set $0
          local.get $2
          i32.const 16
          i32.sub
          local.set $2
         end
         br $continue|4
        end
       end
      end
      br $break|2
      unreachable
     end
     unreachable
    end
    block
     local.get $1
     i32.load
     local.set $3
     block (result i32)
      local.get $0
      local.tee $5
      i32.const 1
      i32.add
      local.set $0
      local.get $5
     end
     block (result i32)
      local.get $1
      local.tee $5
      i32.const 1
      i32.add
      local.set $1
      local.get $5
     end
     i32.load8_u
     i32.store8
     local.get $2
     i32.const 1
     i32.sub
     local.set $2
     block $break|5
      loop $continue|5
       local.get $2
       i32.const 19
       i32.ge_u
       if
        block
         local.get $1
         i32.const 3
         i32.add
         i32.load
         local.set $4
         local.get $0
         local.get $3
         i32.const 8
         i32.shr_u
         local.get $4
         i32.const 24
         i32.shl
         i32.or
         i32.store
         local.get $1
         i32.const 7
         i32.add
         i32.load
         local.set $3
         local.get $0
         i32.const 4
         i32.add
         local.get $4
         i32.const 8
         i32.shr_u
         local.get $3
         i32.const 24
         i32.shl
         i32.or
         i32.store
         local.get $1
         i32.const 11
         i32.add
         i32.load
         local.set $4
         local.get $0
         i32.const 8
         i32.add
         local.get $3
         i32.const 8
         i32.shr_u
         local.get $4
         i32.const 24
         i32.shl
         i32.or
         i32.store
         local.get $1
         i32.const 15
         i32.add
         i32.load
         local.set $3
         local.get $0
         i32.const 12
         i32.add
         local.get $4
         i32.const 8
         i32.shr_u
         local.get $3
         i32.const 24
         i32.shl
         i32.or
         i32.store
         local.get $1
         i32.const 16
         i32.add
         local.set $1
         local.get $0
         i32.const 16
         i32.add
         local.set $0
         local.get $2
         i32.const 16
         i32.sub
         local.set $2
        end
        br $continue|5
       end
      end
     end
     br $break|2
     unreachable
    end
    unreachable
   end
  end
  local.get $2
  i32.const 16
  i32.and
  if
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 8
  i32.and
  if
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 4
  i32.and
  if
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 2
  i32.and
  if
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 1
  i32.and
  if
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
  end
 )
 (func $~lib/internal/memory/memmove (; 16 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $0
  local.get $1
  i32.eq
  if
   return
  end
  local.get $1
  local.get $2
  i32.add
  local.get $0
  i32.le_u
  local.tee $3
  if (result i32)
   local.get $3
  else   
   local.get $0
   local.get $2
   i32.add
   local.get $1
   i32.le_u
  end
  if
   local.get $0
   local.get $1
   local.get $2
   call $~lib/internal/memory/memcpy
   return
  end
  local.get $0
  local.get $1
  i32.lt_u
  if
   local.get $1
   i32.const 7
   i32.and
   local.get $0
   i32.const 7
   i32.and
   i32.eq
   if
    block $break|0
     loop $continue|0
      local.get $0
      i32.const 7
      i32.and
      if
       block
        local.get $2
        i32.eqz
        if
         return
        end
        local.get $2
        i32.const 1
        i32.sub
        local.set $2
        block (result i32)
         local.get $0
         local.tee $3
         i32.const 1
         i32.add
         local.set $0
         local.get $3
        end
        block (result i32)
         local.get $1
         local.tee $3
         i32.const 1
         i32.add
         local.set $1
         local.get $3
        end
        i32.load8_u
        i32.store8
       end
       br $continue|0
      end
     end
    end
    block $break|1
     loop $continue|1
      local.get $2
      i32.const 8
      i32.ge_u
      if
       block
        local.get $0
        local.get $1
        i64.load
        i64.store
        local.get $2
        i32.const 8
        i32.sub
        local.set $2
        local.get $0
        i32.const 8
        i32.add
        local.set $0
        local.get $1
        i32.const 8
        i32.add
        local.set $1
       end
       br $continue|1
      end
     end
    end
   end
   block $break|2
    loop $continue|2
     local.get $2
     if
      block
       block (result i32)
        local.get $0
        local.tee $3
        i32.const 1
        i32.add
        local.set $0
        local.get $3
       end
       block (result i32)
        local.get $1
        local.tee $3
        i32.const 1
        i32.add
        local.set $1
        local.get $3
       end
       i32.load8_u
       i32.store8
       local.get $2
       i32.const 1
       i32.sub
       local.set $2
      end
      br $continue|2
     end
    end
   end
  else   
   local.get $1
   i32.const 7
   i32.and
   local.get $0
   i32.const 7
   i32.and
   i32.eq
   if
    block $break|3
     loop $continue|3
      local.get $0
      local.get $2
      i32.add
      i32.const 7
      i32.and
      if
       block
        local.get $2
        i32.eqz
        if
         return
        end
        local.get $0
        local.get $2
        i32.const 1
        i32.sub
        local.tee $2
        i32.add
        local.get $1
        local.get $2
        i32.add
        i32.load8_u
        i32.store8
       end
       br $continue|3
      end
     end
    end
    block $break|4
     loop $continue|4
      local.get $2
      i32.const 8
      i32.ge_u
      if
       block
        local.get $2
        i32.const 8
        i32.sub
        local.set $2
        local.get $0
        local.get $2
        i32.add
        local.get $1
        local.get $2
        i32.add
        i64.load
        i64.store
       end
       br $continue|4
      end
     end
    end
   end
   block $break|5
    loop $continue|5
     local.get $2
     if
      local.get $0
      local.get $2
      i32.const 1
      i32.sub
      local.tee $2
      i32.add
      local.get $1
      local.get $2
      i32.add
      i32.load8_u
      i32.store8
      br $continue|5
     end
    end
   end
  end
 )
 (func $~lib/internal/string/copyUnsafe (; 17 ;) (type $FUNCSIG$viiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  i32.const 4
  i32.add
  local.set $5
  local.get $2
  local.get $3
  i32.const 1
  i32.shl
  i32.add
  i32.const 4
  i32.add
  local.set $6
  local.get $4
  i32.const 1
  i32.shl
  local.set $7
  local.get $5
  local.get $6
  local.get $7
  call $~lib/internal/memory/memmove
 )
 (func $~lib/string/String#concat (; 18 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 48
   i32.const 110
   i32.const 4
   call $assembly/env/wasiabort
   unreachable
  end
  local.get $1
  i32.const 0
  i32.eq
  if
   i32.const 32
   local.set $1
  end
  local.get $0
  i32.load
  local.set $2
  local.get $1
  i32.load
  local.set $3
  local.get $2
  local.get $3
  i32.add
  local.set $4
  local.get $4
  i32.const 0
  i32.eq
  if
   i32.const 80
   return
  end
  local.get $4
  call $~lib/internal/string/allocateUnsafe
  local.set $5
  local.get $5
  i32.const 0
  local.get $0
  i32.const 0
  local.get $2
  call $~lib/internal/string/copyUnsafe
  local.get $5
  local.get $2
  local.get $1
  i32.const 0
  local.get $3
  call $~lib/internal/string/copyUnsafe
  local.get $5
 )
 (func $~lib/string/String.__concat (; 19 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 32
   local.set $0
  end
  local.get $0
  local.get $1
  call $~lib/string/String#concat
 )
 (func $start:assembly/ansi (; 20 ;) (type $FUNCSIG$v)
  i32.const 8
  i32.const 16
  call $~lib/string/String.__concat
  global.set $assembly/ansi/GREEN
  i32.const 8
  i32.const 144
  call $~lib/string/String.__concat
  global.set $assembly/ansi/WHITE
  i32.const 8
  i32.const 160
  call $~lib/string/String.__concat
  global.set $assembly/ansi/RED
  i32.const 8
  i32.const 176
  call $~lib/string/String.__concat
  global.set $assembly/ansi/CYAN
  i32.const 8
  i32.const 192
  call $~lib/string/String.__concat
  global.set $assembly/ansi/RESET
  i32.const 8
  i32.const 200
  call $~lib/string/String.__concat
  global.set $assembly/ansi/HIDE_CURSOR
 )
 (func $start:assembly/cli (; 21 ;) (type $FUNCSIG$v)
  call $start:assembly/ansi
 )
 (func $start:assembly/utils (; 22 ;) (type $FUNCSIG$v)
  (local $0 i32)
  block $~lib/memory/memory.allocate|inlined.7 (result i32)
   i32.const 1
   local.set $0
   local.get $0
   call $~lib/allocator/arena/__memory_allocate
   br $~lib/memory/memory.allocate|inlined.7
  end
  global.set $assembly/utils/randomBytePointer
  block $~lib/memory/memory.allocate|inlined.8 (result i32)
   i32.const 8
   local.set $0
   local.get $0
   call $~lib/allocator/arena/__memory_allocate
   br $~lib/memory/memory.allocate|inlined.8
  end
  global.set $assembly/utils/timeCounterPointer
 )
 (func $start:assembly/droplet (; 23 ;) (type $FUNCSIG$v)
  call $start:assembly/utils
 )
 (func $start:assembly/index (; 24 ;) (type $FUNCSIG$v)
  call $start:~lib/allocator/arena
  call $start:assembly/cli
  call $start:assembly/droplet
 )
 (func $~lib/memory/memory.allocate (; 25 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/allocator/arena/__memory_allocate
  return
 )
 (func $~lib/string/String.fromUTF8 (; 26 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $1
  i32.const 1
  i32.lt_u
  if
   i32.const 80
   return
  end
  i32.const 0
  local.set $2
  block $~lib/memory/memory.allocate|inlined.12 (result i32)
   local.get $1
   i32.const 1
   i32.shl
   local.set $3
   local.get $3
   call $~lib/allocator/arena/__memory_allocate
   br $~lib/memory/memory.allocate|inlined.12
  end
  local.set $4
  i32.const 0
  local.set $5
  block $break|0
   loop $continue|0
    local.get $2
    local.get $1
    i32.lt_u
    if
     block
      local.get $0
      block (result i32)
       local.get $2
       local.tee $3
       i32.const 1
       i32.add
       local.set $2
       local.get $3
      end
      i32.add
      i32.load8_u
      local.set $3
      local.get $3
      i32.const 128
      i32.lt_u
      if
       local.get $4
       local.get $5
       i32.add
       local.get $3
       i32.store16
       local.get $5
       i32.const 2
       i32.add
       local.set $5
      else       
       local.get $3
       i32.const 191
       i32.gt_u
       local.tee $6
       if (result i32)
        local.get $3
        i32.const 224
        i32.lt_u
       else        
        local.get $6
       end
       if
        local.get $2
        i32.const 1
        i32.add
        local.get $1
        i32.le_u
        i32.eqz
        if
         i32.const 0
         i32.const 48
         i32.const 512
         i32.const 8
         call $assembly/env/wasiabort
         unreachable
        end
        local.get $4
        local.get $5
        i32.add
        local.get $3
        i32.const 31
        i32.and
        i32.const 6
        i32.shl
        local.get $0
        block (result i32)
         local.get $2
         local.tee $6
         i32.const 1
         i32.add
         local.set $2
         local.get $6
        end
        i32.add
        i32.load8_u
        i32.const 63
        i32.and
        i32.or
        i32.store16
        local.get $5
        i32.const 2
        i32.add
        local.set $5
       else        
        local.get $3
        i32.const 239
        i32.gt_u
        local.tee $6
        if (result i32)
         local.get $3
         i32.const 365
         i32.lt_u
        else         
         local.get $6
        end
        if
         local.get $2
         i32.const 3
         i32.add
         local.get $1
         i32.le_u
         i32.eqz
         if
          i32.const 0
          i32.const 48
          i32.const 516
          i32.const 8
          call $assembly/env/wasiabort
          unreachable
         end
         local.get $3
         i32.const 7
         i32.and
         i32.const 18
         i32.shl
         local.get $0
         block (result i32)
          local.get $2
          local.tee $6
          i32.const 1
          i32.add
          local.set $2
          local.get $6
         end
         i32.add
         i32.load8_u
         i32.const 63
         i32.and
         i32.const 12
         i32.shl
         i32.or
         local.get $0
         block (result i32)
          local.get $2
          local.tee $6
          i32.const 1
          i32.add
          local.set $2
          local.get $6
         end
         i32.add
         i32.load8_u
         i32.const 63
         i32.and
         i32.const 6
         i32.shl
         i32.or
         local.get $0
         block (result i32)
          local.get $2
          local.tee $6
          i32.const 1
          i32.add
          local.set $2
          local.get $6
         end
         i32.add
         i32.load8_u
         i32.const 63
         i32.and
         i32.or
         i32.const 65536
         i32.sub
         local.set $3
         local.get $4
         local.get $5
         i32.add
         i32.const 55296
         local.get $3
         i32.const 10
         i32.shr_u
         i32.add
         i32.store16
         local.get $5
         i32.const 2
         i32.add
         local.set $5
         local.get $4
         local.get $5
         i32.add
         i32.const 56320
         local.get $3
         i32.const 1023
         i32.and
         i32.add
         i32.store16
         local.get $5
         i32.const 2
         i32.add
         local.set $5
        else         
         local.get $2
         i32.const 2
         i32.add
         local.get $1
         i32.le_u
         i32.eqz
         if
          i32.const 0
          i32.const 48
          i32.const 528
          i32.const 8
          call $assembly/env/wasiabort
          unreachable
         end
         local.get $4
         local.get $5
         i32.add
         local.get $3
         i32.const 15
         i32.and
         i32.const 12
         i32.shl
         local.get $0
         block (result i32)
          local.get $2
          local.tee $6
          i32.const 1
          i32.add
          local.set $2
          local.get $6
         end
         i32.add
         i32.load8_u
         i32.const 63
         i32.and
         i32.const 6
         i32.shl
         i32.or
         local.get $0
         block (result i32)
          local.get $2
          local.tee $6
          i32.const 1
          i32.add
          local.set $2
          local.get $6
         end
         i32.add
         i32.load8_u
         i32.const 63
         i32.and
         i32.or
         i32.store16
         local.get $5
         i32.const 2
         i32.add
         local.set $5
        end
       end
      end
     end
     br $continue|0
    end
   end
  end
  local.get $2
  local.get $1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 48
   i32.const 537
   i32.const 4
   call $assembly/env/wasiabort
   unreachable
  end
  local.get $5
  i32.const 1
  i32.shr_u
  call $~lib/internal/string/allocateUnsafe
  local.set $7
  block $~lib/memory/memory.copy|inlined.1
   local.get $7
   i32.const 4
   i32.add
   local.set $3
   local.get $4
   local.set $6
   local.get $5
   local.set $8
   local.get $3
   local.get $6
   local.get $8
   call $~lib/internal/memory/memmove
  end
  block $~lib/memory/memory.free|inlined.7
   local.get $4
   local.set $8
   local.get $8
   call $~lib/allocator/arena/__memory_free
   br $~lib/memory/memory.free|inlined.7
  end
  local.get $7
 )
 (func $assembly/wasa/StringUtils.fromCString (; 27 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  i32.const 0
  local.set $1
  block $break|0
   loop $continue|0
    local.get $0
    local.get $1
    i32.add
    i32.load8_u
    i32.const 0
    i32.ne
    if
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $continue|0
    end
   end
  end
  local.get $0
  local.get $1
  call $~lib/string/String.fromUTF8
 )
 (func $~lib/internal/arraybuffer/computeSize (; 28 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 1
  i32.const 32
  local.get $0
  i32.const 8
  i32.add
  i32.const 1
  i32.sub
  i32.clz
  i32.sub
  i32.shl
 )
 (func $~lib/internal/arraybuffer/allocateUnsafe (; 29 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.const 1073741816
  i32.le_u
  i32.eqz
  if
   i32.const 0
   i32.const 264
   i32.const 26
   i32.const 2
   call $assembly/env/wasiabort
   unreachable
  end
  block $~lib/memory/memory.allocate|inlined.13 (result i32)
   local.get $0
   call $~lib/internal/arraybuffer/computeSize
   local.set $2
   local.get $2
   call $~lib/allocator/arena/__memory_allocate
   br $~lib/memory/memory.allocate|inlined.13
  end
  local.set $1
  local.get $1
  local.get $0
  i32.store
  local.get $1
 )
 (func $~lib/internal/memory/memset (; 30 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  local.get $2
  i32.eqz
  if
   return
  end
  local.get $0
  local.get $1
  i32.store8
  local.get $0
  local.get $2
  i32.add
  i32.const 1
  i32.sub
  local.get $1
  i32.store8
  local.get $2
  i32.const 2
  i32.le_u
  if
   return
  end
  local.get $0
  i32.const 1
  i32.add
  local.get $1
  i32.store8
  local.get $0
  i32.const 2
  i32.add
  local.get $1
  i32.store8
  local.get $0
  local.get $2
  i32.add
  i32.const 2
  i32.sub
  local.get $1
  i32.store8
  local.get $0
  local.get $2
  i32.add
  i32.const 3
  i32.sub
  local.get $1
  i32.store8
  local.get $2
  i32.const 6
  i32.le_u
  if
   return
  end
  local.get $0
  i32.const 3
  i32.add
  local.get $1
  i32.store8
  local.get $0
  local.get $2
  i32.add
  i32.const 4
  i32.sub
  local.get $1
  i32.store8
  local.get $2
  i32.const 8
  i32.le_u
  if
   return
  end
  i32.const 0
  local.get $0
  i32.sub
  i32.const 3
  i32.and
  local.set $3
  local.get $0
  local.get $3
  i32.add
  local.set $0
  local.get $2
  local.get $3
  i32.sub
  local.set $2
  local.get $2
  i32.const -4
  i32.and
  local.set $2
  i32.const -1
  i32.const 255
  i32.div_u
  local.get $1
  i32.const 255
  i32.and
  i32.mul
  local.set $4
  local.get $0
  local.get $4
  i32.store
  local.get $0
  local.get $2
  i32.add
  i32.const 4
  i32.sub
  local.get $4
  i32.store
  local.get $2
  i32.const 8
  i32.le_u
  if
   return
  end
  local.get $0
  i32.const 4
  i32.add
  local.get $4
  i32.store
  local.get $0
  i32.const 8
  i32.add
  local.get $4
  i32.store
  local.get $0
  local.get $2
  i32.add
  i32.const 12
  i32.sub
  local.get $4
  i32.store
  local.get $0
  local.get $2
  i32.add
  i32.const 8
  i32.sub
  local.get $4
  i32.store
  local.get $2
  i32.const 24
  i32.le_u
  if
   return
  end
  local.get $0
  i32.const 12
  i32.add
  local.get $4
  i32.store
  local.get $0
  i32.const 16
  i32.add
  local.get $4
  i32.store
  local.get $0
  i32.const 20
  i32.add
  local.get $4
  i32.store
  local.get $0
  i32.const 24
  i32.add
  local.get $4
  i32.store
  local.get $0
  local.get $2
  i32.add
  i32.const 28
  i32.sub
  local.get $4
  i32.store
  local.get $0
  local.get $2
  i32.add
  i32.const 24
  i32.sub
  local.get $4
  i32.store
  local.get $0
  local.get $2
  i32.add
  i32.const 20
  i32.sub
  local.get $4
  i32.store
  local.get $0
  local.get $2
  i32.add
  i32.const 16
  i32.sub
  local.get $4
  i32.store
  i32.const 24
  local.get $0
  i32.const 4
  i32.and
  i32.add
  local.set $3
  local.get $0
  local.get $3
  i32.add
  local.set $0
  local.get $2
  local.get $3
  i32.sub
  local.set $2
  local.get $4
  i64.extend_i32_u
  local.get $4
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  local.set $5
  block $break|0
   loop $continue|0
    local.get $2
    i32.const 32
    i32.ge_u
    if
     block
      local.get $0
      local.get $5
      i64.store
      local.get $0
      i32.const 8
      i32.add
      local.get $5
      i64.store
      local.get $0
      i32.const 16
      i32.add
      local.get $5
      i64.store
      local.get $0
      i32.const 24
      i32.add
      local.get $5
      i64.store
      local.get $2
      i32.const 32
      i32.sub
      local.set $2
      local.get $0
      i32.const 32
      i32.add
      local.set $0
     end
     br $continue|0
    end
   end
  end
 )
 (func $~lib/internal/arraybuffer/reallocateUnsafe (; 31 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.load
  local.set $2
  local.get $1
  local.get $2
  i32.gt_s
  if
   local.get $1
   i32.const 1073741816
   i32.le_s
   i32.eqz
   if
    i32.const 0
    i32.const 264
    i32.const 40
    i32.const 4
    call $assembly/env/wasiabort
    unreachable
   end
   local.get $1
   local.get $2
   call $~lib/internal/arraybuffer/computeSize
   i32.const 8
   i32.sub
   i32.le_s
   if
    local.get $0
    local.get $1
    i32.store
   else    
    local.get $1
    call $~lib/internal/arraybuffer/allocateUnsafe
    local.set $3
    block $~lib/memory/memory.copy|inlined.2
     local.get $3
     i32.const 8
     i32.add
     local.set $4
     local.get $0
     i32.const 8
     i32.add
     local.set $5
     local.get $2
     local.set $6
     local.get $4
     local.get $5
     local.get $6
     call $~lib/internal/memory/memmove
    end
    block $~lib/memory/memory.free|inlined.8
     local.get $0
     local.set $6
     local.get $6
     call $~lib/allocator/arena/__memory_free
     br $~lib/memory/memory.free|inlined.8
    end
    local.get $3
    local.set $0
   end
   block $~lib/memory/memory.fill|inlined.0
    local.get $0
    i32.const 8
    i32.add
    local.get $2
    i32.add
    local.set $3
    i32.const 0
    local.set $6
    local.get $1
    local.get $2
    i32.sub
    local.set $5
    local.get $3
    local.get $6
    local.get $5
    call $~lib/internal/memory/memset
   end
  else   
   local.get $1
   local.get $2
   i32.lt_s
   if
    local.get $1
    i32.const 0
    i32.ge_s
    i32.eqz
    if
     i32.const 0
     i32.const 264
     i32.const 62
     i32.const 4
     call $assembly/env/wasiabort
     unreachable
    end
    local.get $0
    local.get $1
    i32.store
   end
  end
  local.get $0
 )
 (func $~lib/array/Array<~lib/string/String>#push (; 32 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  local.get $0
  i32.load offset=4
  local.set $2
  local.get $0
  i32.load
  local.set $3
  local.get $3
  i32.load
  i32.const 2
  i32.shr_u
  local.set $4
  local.get $2
  i32.const 1
  i32.add
  local.set $5
  local.get $2
  local.get $4
  i32.ge_u
  if
   local.get $2
   i32.const 268435454
   i32.ge_u
   if
    i32.const 0
    i32.const 232
    i32.const 182
    i32.const 42
    call $assembly/env/wasiabort
    unreachable
   end
   local.get $3
   local.get $5
   i32.const 2
   i32.shl
   call $~lib/internal/arraybuffer/reallocateUnsafe
   local.set $3
   local.get $0
   local.get $3
   i32.store
  end
  local.get $0
  local.get $5
  i32.store offset=4
  block $~lib/internal/arraybuffer/STORE<~lib/string/String,~lib/string/String>|inlined.0
   local.get $3
   local.set $6
   local.get $2
   local.set $7
   local.get $1
   local.set $8
   i32.const 0
   local.set $9
   local.get $6
   local.get $7
   i32.const 2
   i32.shl
   i32.add
   local.get $9
   i32.add
   local.get $8
   i32.store offset=8
  end
  local.get $5
 )
 (func $assembly/wasa/CommandLine#constructor (; 33 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  block (result i32)
   local.get $0
   i32.eqz
   if
    i32.const 4
    call $~lib/memory/memory.allocate
    local.set $0
   end
   local.get $0
   i32.const 0
   i32.store
   local.get $0
  end
  i32.const 224
  i32.store
  block $~lib/memory/memory.allocate|inlined.9 (result i32)
   i32.const 2
   i32.const 4
   i32.mul
   local.set $1
   local.get $1
   call $~lib/allocator/arena/__memory_allocate
   br $~lib/memory/memory.allocate|inlined.9
  end
  local.set $1
  local.get $1
  local.get $1
  i32.const 4
  i32.add
  call $~lib/bindings/wasi_unstable/args_sizes_get
  local.set $2
  local.get $2
  i32.const 65535
  i32.and
  i32.const 0
  i32.ne
  if
   i32.const 80
   i32.const 80
   i32.const 0
   i32.const 0
   call $assembly/env/wasiabort
  end
  local.get $1
  i32.load
  local.set $3
  local.get $1
  i32.const 4
  i32.add
  i32.load
  local.set $4
  block $~lib/memory/memory.allocate|inlined.10 (result i32)
   local.get $3
   i32.const 1
   i32.add
   i32.const 4
   i32.mul
   local.set $5
   local.get $5
   call $~lib/allocator/arena/__memory_allocate
   br $~lib/memory/memory.allocate|inlined.10
  end
  local.set $5
  block $~lib/memory/memory.allocate|inlined.11 (result i32)
   local.get $4
   local.set $6
   local.get $6
   call $~lib/allocator/arena/__memory_allocate
   br $~lib/memory/memory.allocate|inlined.11
  end
  local.set $6
  local.get $5
  local.get $6
  call $~lib/bindings/wasi_unstable/args_get
  i32.const 65535
  i32.and
  i32.const 0
  i32.ne
  if
   i32.const 80
   i32.const 80
   i32.const 0
   i32.const 0
   call $assembly/env/wasiabort
  end
  block $break|0
   i32.const 0
   local.set $7
   loop $repeat|0
    local.get $7
    local.get $3
    i32.lt_u
    i32.eqz
    br_if $break|0
    block
     local.get $5
     local.get $7
     i32.const 4
     i32.mul
     i32.add
     i32.load
     local.set $8
     local.get $8
     call $assembly/wasa/StringUtils.fromCString
     local.set $9
     local.get $0
     i32.load
     local.get $9
     call $~lib/array/Array<~lib/string/String>#push
     drop
    end
    local.get $7
    i32.const 1
    i32.add
    local.set $7
    br $repeat|0
    unreachable
   end
   unreachable
  end
  block $~lib/memory/memory.free|inlined.9
   local.get $6
   local.set $7
   local.get $7
   call $~lib/allocator/arena/__memory_free
   br $~lib/memory/memory.free|inlined.9
  end
  block $~lib/memory/memory.free|inlined.10
   local.get $5
   local.set $7
   local.get $7
   call $~lib/allocator/arena/__memory_free
   br $~lib/memory/memory.free|inlined.10
  end
  block $~lib/memory/memory.free|inlined.11
   local.get $1
   local.set $7
   local.get $7
   call $~lib/allocator/arena/__memory_free
   br $~lib/memory/memory.free|inlined.11
  end
  local.get $0
 )
 (func $assembly/wasa/CommandLine#all (; 34 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load
 )
 (func $assembly/wasa/Console.write (; 35 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  i32.const 1
  local.get $0
  local.get $1
  call $assembly/wasa/IO.writeString
 )
 (func $assembly/wasa/Console.log (; 36 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  i32.const 1
  call $assembly/wasa/Console.write
 )
 (func $assembly/ansi/printColor (; 37 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $1
  local.get $0
  call $~lib/string/String.__concat
  global.get $assembly/ansi/RESET
  call $~lib/string/String.__concat
  i32.const 0
  call $assembly/wasa/Console.write
 )
 (func $assembly/cli/showHelp (; 38 ;) (type $FUNCSIG$v)
  i32.const 80
  call $assembly/wasa/Console.log
  i32.const 328
  global.get $assembly/ansi/GREEN
  call $assembly/ansi/printColor
  i32.const 80
  call $assembly/wasa/Console.log
  i32.const 360
  global.get $assembly/ansi/CYAN
  call $assembly/ansi/printColor
  i32.const 80
  call $assembly/wasa/Console.log
  i32.const 376
  call $assembly/wasa/Console.log
  i32.const 80
  call $assembly/wasa/Console.log
  i32.const 472
  global.get $assembly/ansi/CYAN
  call $assembly/ansi/printColor
  i32.const 80
  call $assembly/wasa/Console.log
  i32.const 488
  global.get $assembly/ansi/RED
  call $~lib/string/String.__concat
  i32.const 520
  call $~lib/string/String.__concat
  global.get $assembly/ansi/RESET
  call $~lib/string/String.__concat
  call $assembly/wasa/Console.log
  i32.const 544
  call $assembly/wasa/Console.log
  i32.const 640
  call $assembly/wasa/Console.log
  i32.const 80
  call $assembly/wasa/Console.log
  i32.const 736
  global.get $assembly/ansi/RED
  call $~lib/string/String.__concat
  i32.const 520
  call $~lib/string/String.__concat
  global.get $assembly/ansi/RESET
  call $~lib/string/String.__concat
  call $assembly/wasa/Console.log
  i32.const 768
  call $assembly/wasa/Console.log
  i32.const 848
  call $assembly/wasa/Console.log
  i32.const 80
  call $assembly/wasa/Console.log
  i32.const 952
  call $assembly/wasa/Console.log
  i32.const 984
  call $assembly/wasa/Console.log
  i32.const 1032
  call $assembly/wasa/Console.log
  i32.const 80
  call $assembly/wasa/Console.log
 )
 (func $~lib/array/Array<~lib/string/String>#__get (; 39 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load
  local.set $2
  local.get $1
  local.get $2
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   local.get $2
   local.set $3
   local.get $1
   local.set $4
   i32.const 0
   local.set $5
   local.get $3
   local.get $4
   i32.const 2
   i32.shl
   i32.add
   local.get $5
   i32.add
   i32.load offset=8
  else   
   unreachable
  end
 )
 (func $~lib/internal/string/compareUnsafe (; 40 ;) (type $FUNCSIG$iiiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  i32.const 0
  local.set $5
  local.get $0
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  local.set $6
  local.get $2
  local.get $3
  i32.const 1
  i32.shl
  i32.add
  local.set $7
  block $break|0
   loop $continue|0
    local.get $4
    if (result i32)
     local.get $6
     i32.load16_u offset=4
     local.get $7
     i32.load16_u offset=4
     i32.sub
     local.tee $5
     i32.eqz
    else     
     local.get $4
    end
    if
     block
      local.get $4
      i32.const 1
      i32.sub
      local.set $4
      local.get $6
      i32.const 2
      i32.add
      local.set $6
      local.get $7
      i32.const 2
      i32.add
      local.set $7
     end
     br $continue|0
    end
   end
  end
  local.get $5
 )
 (func $~lib/string/String.__eq (; 41 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  local.get $1
  i32.eq
  if
   i32.const 1
   return
  end
  local.get $0
  i32.const 0
  i32.eq
  local.tee $2
  if (result i32)
   local.get $2
  else   
   local.get $1
   i32.const 0
   i32.eq
  end
  if
   i32.const 0
   return
  end
  local.get $0
  i32.load
  local.set $3
  local.get $3
  local.get $1
  i32.load
  i32.ne
  if
   i32.const 0
   return
  end
  local.get $0
  i32.const 0
  local.get $1
  i32.const 0
  local.get $3
  call $~lib/internal/string/compareUnsafe
  i32.eqz
 )
 (func $~lib/internal/string/parse<f64> (; 42 ;) (type $FUNCSIG$dii) (param $0 i32) (param $1 i32) (result f64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 f64)
  (local $6 i32)
  (local $7 f64)
  local.get $0
  i32.load
  local.set $2
  local.get $2
  i32.eqz
  if
   f64.const nan:0x8000000000000
   return
  end
  local.get $0
  local.set $3
  local.get $3
  i32.load16_u offset=4
  local.set $4
  local.get $4
  i32.const 45
  i32.eq
  if
   local.get $2
   i32.const 1
   i32.sub
   local.tee $2
   i32.eqz
   if
    f64.const nan:0x8000000000000
    return
   end
   local.get $3
   i32.const 2
   i32.add
   local.tee $3
   i32.load16_u offset=4
   local.set $4
   f64.const -1
   local.set $5
  else   
   local.get $4
   i32.const 43
   i32.eq
   if
    local.get $2
    i32.const 1
    i32.sub
    local.tee $2
    i32.eqz
    if
     f64.const nan:0x8000000000000
     return
    end
    local.get $3
    i32.const 2
    i32.add
    local.tee $3
    i32.load16_u offset=4
    local.set $4
    f64.const 1
    local.set $5
   else    
    f64.const 1
    local.set $5
   end
  end
  local.get $1
  i32.eqz
  if
   local.get $4
   i32.const 48
   i32.eq
   local.tee $6
   if (result i32)
    local.get $2
    i32.const 2
    i32.gt_s
   else    
    local.get $6
   end
   if
    block $break|0
     block $case6|0
      block $case5|0
       block $case4|0
        block $case3|0
         block $case2|0
          block $case1|0
           block $case0|0
            local.get $3
            i32.const 2
            i32.add
            i32.load16_u offset=4
            local.set $6
            local.get $6
            i32.const 66
            i32.eq
            br_if $case0|0
            local.get $6
            i32.const 98
            i32.eq
            br_if $case1|0
            local.get $6
            i32.const 79
            i32.eq
            br_if $case2|0
            local.get $6
            i32.const 111
            i32.eq
            br_if $case3|0
            local.get $6
            i32.const 88
            i32.eq
            br_if $case4|0
            local.get $6
            i32.const 120
            i32.eq
            br_if $case5|0
            br $case6|0
           end
          end
          block
           local.get $3
           i32.const 4
           i32.add
           local.set $3
           local.get $2
           i32.const 2
           i32.sub
           local.set $2
           i32.const 2
           local.set $1
           br $break|0
           unreachable
          end
          unreachable
         end
        end
        block
         local.get $3
         i32.const 4
         i32.add
         local.set $3
         local.get $2
         i32.const 2
         i32.sub
         local.set $2
         i32.const 8
         local.set $1
         br $break|0
         unreachable
        end
        unreachable
       end
      end
      block
       local.get $3
       i32.const 4
       i32.add
       local.set $3
       local.get $2
       i32.const 2
       i32.sub
       local.set $2
       i32.const 16
       local.set $1
       br $break|0
       unreachable
      end
      unreachable
     end
     i32.const 10
     local.set $1
    end
   else    
    i32.const 10
    local.set $1
   end
  else   
   local.get $1
   i32.const 2
   i32.lt_s
   local.tee $6
   if (result i32)
    local.get $6
   else    
    local.get $1
    i32.const 36
    i32.gt_s
   end
   if
    f64.const nan:0x8000000000000
    return
   end
  end
  f64.const 0
  local.set $7
  block $break|1
   loop $continue|1
    block (result i32)
     local.get $2
     local.tee $6
     i32.const 1
     i32.sub
     local.set $2
     local.get $6
    end
    if
     block
      local.get $3
      i32.load16_u offset=4
      local.set $4
      local.get $4
      i32.const 48
      i32.ge_s
      local.tee $6
      if (result i32)
       local.get $4
       i32.const 57
       i32.le_s
      else       
       local.get $6
      end
      if
       local.get $4
       i32.const 48
       i32.sub
       local.set $4
      else       
       local.get $4
       i32.const 65
       i32.ge_s
       local.tee $6
       if (result i32)
        local.get $4
        i32.const 90
        i32.le_s
       else        
        local.get $6
       end
       if
        local.get $4
        i32.const 65
        i32.const 10
        i32.sub
        i32.sub
        local.set $4
       else        
        local.get $4
        i32.const 97
        i32.ge_s
        local.tee $6
        if (result i32)
         local.get $4
         i32.const 122
         i32.le_s
        else         
         local.get $6
        end
        if
         local.get $4
         i32.const 97
         i32.const 10
         i32.sub
         i32.sub
         local.set $4
        else         
         br $break|1
        end
       end
      end
      local.get $4
      local.get $1
      i32.ge_s
      if
       br $break|1
      end
      local.get $7
      local.get $1
      f64.convert_i32_s
      f64.mul
      local.get $4
      f64.convert_i32_s
      f64.add
      local.set $7
      local.get $3
      i32.const 2
      i32.add
      local.set $3
     end
     br $continue|1
    end
   end
  end
  local.get $5
  local.get $7
  f64.mul
 )
 (func $~lib/string/parseInt (; 43 ;) (type $FUNCSIG$dii) (param $0 i32) (param $1 i32) (result f64)
  local.get $0
  local.get $1
  call $~lib/internal/string/parse<f64>
 )
 (func $~lib/array/Array<assembly/droplet/Droplet>#constructor (; 44 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  i32.const 268435454
  i32.gt_u
  if
   i32.const 0
   i32.const 232
   i32.const 45
   i32.const 39
   call $assembly/env/wasiabort
   unreachable
  end
  local.get $1
  i32.const 2
  i32.shl
  local.set $2
  local.get $2
  call $~lib/internal/arraybuffer/allocateUnsafe
  local.set $3
  block (result i32)
   local.get $0
   i32.eqz
   if
    i32.const 8
    call $~lib/memory/memory.allocate
    local.set $0
   end
   local.get $0
   i32.const 0
   i32.store
   local.get $0
   i32.const 0
   i32.store offset=4
   local.get $0
  end
  local.get $3
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  block $~lib/memory/memory.fill|inlined.1
   local.get $3
   i32.const 8
   i32.add
   local.set $4
   i32.const 0
   local.set $5
   local.get $2
   local.set $6
   local.get $4
   local.get $5
   local.get $6
   call $~lib/internal/memory/memset
  end
  local.get $0
 )
 (func $assembly/droplet/Droplet#constructor (; 45 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 20
   call $~lib/memory/memory.allocate
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $0
  i32.const 0
  i32.store offset=16
  local.get $0
 )
 (func $assembly/utils/getRandomNumber (; 46 ;) (type $FUNCSIG$i) (result i32)
  global.get $assembly/utils/randomBytePointer
  i32.const 1
  call $~lib/bindings/wasi_unstable/random_get
  i32.const 65535
  i32.and
  i32.const 0
  i32.ne
  if
   i32.const 80
   i32.const 80
   i32.const 0
   i32.const 0
   call $assembly/env/wasiabort
  end
  global.get $assembly/utils/randomBytePointer
  i32.load8_u
 )
 (func $~lib/array/Array<u8>#constructor (; 47 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  i32.const 1073741816
  i32.gt_u
  if
   i32.const 0
   i32.const 232
   i32.const 45
   i32.const 39
   call $assembly/env/wasiabort
   unreachable
  end
  local.get $1
  i32.const 0
  i32.shl
  local.set $2
  local.get $2
  call $~lib/internal/arraybuffer/allocateUnsafe
  local.set $3
  block (result i32)
   local.get $0
   i32.eqz
   if
    i32.const 8
    call $~lib/memory/memory.allocate
    local.set $0
   end
   local.get $0
   i32.const 0
   i32.store
   local.get $0
   i32.const 0
   i32.store offset=4
   local.get $0
  end
  local.get $3
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  block $~lib/memory/memory.fill|inlined.2
   local.get $3
   i32.const 8
   i32.add
   local.set $4
   i32.const 0
   local.set $5
   local.get $2
   local.set $6
   local.get $4
   local.get $5
   local.get $6
   call $~lib/internal/memory/memset
  end
  local.get $0
 )
 (func $assembly/characters/getRandomCharacterCode (; 48 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  local.get $0
  i32.sub
  local.tee $2
  i32.const 31
  i32.shr_s
  local.tee $3
  local.get $2
  i32.add
  local.get $3
  i32.xor
  local.set $2
  call $assembly/utils/getRandomNumber
  local.get $2
  i32.rem_s
  local.get $0
  i32.add
 )
 (func $~lib/array/Array<u8>#__set (; 49 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  i32.load
  local.set $3
  local.get $3
  i32.load
  i32.const 0
  i32.shr_u
  local.set $4
  local.get $1
  local.get $4
  i32.ge_u
  if
   local.get $1
   i32.const 1073741816
   i32.ge_u
   if
    i32.const 0
    i32.const 232
    i32.const 107
    i32.const 41
    call $assembly/env/wasiabort
    unreachable
   end
   local.get $3
   local.get $1
   i32.const 1
   i32.add
   i32.const 0
   i32.shl
   call $~lib/internal/arraybuffer/reallocateUnsafe
   local.set $3
   local.get $0
   local.get $3
   i32.store
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   i32.store offset=4
  end
  block $~lib/internal/arraybuffer/STORE<u8,u8>|inlined.0
   local.get $3
   local.set $5
   local.get $1
   local.set $6
   local.get $2
   local.set $7
   i32.const 0
   local.set $8
   local.get $5
   local.get $6
   i32.const 0
   i32.shl
   i32.add
   local.get $8
   i32.add
   local.get $7
   i32.store8 offset=8
  end
 )
 (func $assembly/droplet/createDroplet (; 50 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 0
  call $assembly/droplet/Droplet#constructor
  local.set $2
  local.get $2
  local.get $0
  i32.store
  local.get $2
  call $assembly/utils/getRandomNumber
  local.get $1
  i32.rem_s
  i32.store offset=4
  local.get $2
  call $assembly/utils/getRandomNumber
  local.get $1
  i32.const 2
  i32.div_s
  i32.rem_s
  i32.const 3
  i32.add
  i32.store offset=16
  local.get $2
  call $assembly/utils/getRandomNumber
  i32.const 2
  i32.rem_s
  i32.const 1
  i32.add
  i32.store offset=12
  local.get $2
  i32.const 0
  local.get $2
  i32.load offset=16
  call $~lib/array/Array<u8>#constructor
  i32.store offset=8
  block $break|0
   i32.const 0
   local.set $3
   loop $repeat|0
    local.get $3
    local.get $2
    i32.load offset=16
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $2
    i32.load offset=8
    local.get $3
    global.get $assembly/characters/ENGLISH_CHARACTER_CODE_START
    global.get $assembly/characters/ENGLISH_CHARACTER_CODE_END
    call $assembly/characters/getRandomCharacterCode
    call $~lib/array/Array<u8>#__set
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $repeat|0
    unreachable
   end
   unreachable
  end
  local.get $2
 )
 (func $~lib/array/Array<assembly/droplet/Droplet>#__set (; 51 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  i32.load
  local.set $3
  local.get $3
  i32.load
  i32.const 2
  i32.shr_u
  local.set $4
  local.get $1
  local.get $4
  i32.ge_u
  if
   local.get $1
   i32.const 268435454
   i32.ge_u
   if
    i32.const 0
    i32.const 232
    i32.const 107
    i32.const 41
    call $assembly/env/wasiabort
    unreachable
   end
   local.get $3
   local.get $1
   i32.const 1
   i32.add
   i32.const 2
   i32.shl
   call $~lib/internal/arraybuffer/reallocateUnsafe
   local.set $3
   local.get $0
   local.get $3
   i32.store
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   i32.store offset=4
  end
  block $~lib/internal/arraybuffer/STORE<assembly/droplet/Droplet,assembly/droplet/Droplet>|inlined.0
   local.get $3
   local.set $5
   local.get $1
   local.set $6
   local.get $2
   local.set $7
   i32.const 0
   local.set $8
   local.get $5
   local.get $6
   i32.const 2
   i32.shl
   i32.add
   local.get $8
   i32.add
   local.get $7
   i32.store offset=8
  end
 )
 (func $~lib/array/Array<assembly/droplet/Droplet>#__get (; 52 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load
  local.set $2
  local.get $1
  local.get $2
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   local.get $2
   local.set $3
   local.get $1
   local.set $4
   i32.const 0
   local.set $5
   local.get $3
   local.get $4
   i32.const 2
   i32.shl
   i32.add
   local.get $5
   i32.add
   i32.load offset=8
  else   
   unreachable
  end
 )
 (func $~lib/array/Array<u8>#__get (; 53 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load
  local.set $2
  local.get $1
  local.get $2
  i32.load
  i32.const 0
  i32.shr_u
  i32.lt_u
  if (result i32)
   local.get $2
   local.set $3
   local.get $1
   local.set $4
   i32.const 0
   local.set $5
   local.get $3
   local.get $4
   i32.const 0
   i32.shl
   i32.add
   local.get $5
   i32.add
   i32.load8_u offset=8
  else   
   unreachable
  end
 )
 (func $assembly/utils/rotateArrayRight (; 54 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  block $break|0
   i32.const 0
   local.set $1
   loop $repeat|0
    local.get $1
    block $~lib/array/Array<u8>#get:length|inlined.1 (result i32)
     local.get $0
     local.set $2
     local.get $2
     i32.load offset=4
    end
    i32.const 1
    i32.sub
    i32.lt_s
    i32.eqz
    br_if $break|0
    block
     local.get $0
     local.get $1
     i32.const 1
     i32.add
     call $~lib/array/Array<u8>#__get
     local.set $2
     local.get $0
     local.get $1
     i32.const 1
     i32.add
     local.get $0
     local.get $1
     call $~lib/array/Array<u8>#__get
     call $~lib/array/Array<u8>#__set
     local.get $0
     local.get $1
     local.get $2
     call $~lib/array/Array<u8>#__set
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $repeat|0
    unreachable
   end
   unreachable
  end
 )
 (func $assembly/droplet/updateDroplet (; 55 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load offset=12
  i32.add
  i32.store offset=4
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load offset=16
  local.get $1
  i32.add
  i32.ge_s
  if
   local.get $0
   i32.const 0
   local.get $0
   i32.load offset=16
   i32.sub
   i32.store offset=4
  end
  block $break|0
   i32.const 0
   local.set $2
   loop $repeat|0
    local.get $2
    local.get $0
    i32.load offset=12
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $0
    i32.load offset=8
    call $assembly/utils/rotateArrayRight
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $repeat|0
    unreachable
   end
   unreachable
  end
  block $break|1
   i32.const 0
   local.set $2
   loop $repeat|1
    local.get $2
    local.get $0
    i32.load offset=12
    i32.lt_s
    i32.eqz
    br_if $break|1
    local.get $0
    i32.load offset=8
    local.get $2
    global.get $assembly/characters/ENGLISH_CHARACTER_CODE_START
    global.get $assembly/characters/ENGLISH_CHARACTER_CODE_END
    call $assembly/characters/getRandomCharacterCode
    call $~lib/array/Array<u8>#__set
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $repeat|1
    unreachable
   end
   unreachable
  end
 )
 (func $assembly/ansi/flushConsole (; 56 ;) (type $FUNCSIG$v)
  global.get $assembly/ansi/ESC
  i32.const 1448
  call $~lib/string/String.__concat
  i32.const 0
  call $assembly/wasa/Console.write
 )
 (func $~lib/internal/number/decimalCount32 (; 57 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 100000
  i32.lt_u
  if
   local.get $0
   i32.const 100
   i32.lt_u
   if
    i32.const 1
    i32.const 2
    local.get $0
    i32.const 10
    i32.lt_u
    select
    return
   else    
    i32.const 4
    i32.const 5
    local.get $0
    i32.const 10000
    i32.lt_u
    select
    local.set $1
    i32.const 3
    local.get $1
    local.get $0
    i32.const 1000
    i32.lt_u
    select
    return
   end
   unreachable
   unreachable
  else   
   local.get $0
   i32.const 10000000
   i32.lt_u
   if
    i32.const 6
    i32.const 7
    local.get $0
    i32.const 1000000
    i32.lt_u
    select
    return
   else    
    i32.const 9
    i32.const 10
    local.get $0
    i32.const 1000000000
    i32.lt_u
    select
    local.set $1
    i32.const 8
    local.get $1
    local.get $0
    i32.const 100000000
    i32.lt_u
    select
    return
   end
   unreachable
   unreachable
  end
  unreachable
  unreachable
 )
 (func $~lib/internal/number/utoa32_lut (; 58 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i64)
  (local $12 i64)
  i32.const 1976
  i32.load
  local.set $3
  block $break|0
   loop $continue|0
    local.get $1
    i32.const 10000
    i32.ge_u
    if
     block
      local.get $1
      i32.const 10000
      i32.div_u
      local.set $4
      local.get $1
      i32.const 10000
      i32.rem_u
      local.set $5
      local.get $4
      local.set $1
      local.get $5
      i32.const 100
      i32.div_u
      local.set $6
      local.get $5
      i32.const 100
      i32.rem_u
      local.set $7
      block $~lib/internal/arraybuffer/LOAD<u32,u64>|inlined.0 (result i64)
       local.get $3
       local.set $8
       local.get $6
       local.set $9
       i32.const 0
       local.set $10
       local.get $8
       local.get $9
       i32.const 2
       i32.shl
       i32.add
       local.get $10
       i32.add
       i64.load32_u offset=8
      end
      local.set $11
      block $~lib/internal/arraybuffer/LOAD<u32,u64>|inlined.1 (result i64)
       local.get $3
       local.set $10
       local.get $7
       local.set $9
       i32.const 0
       local.set $8
       local.get $10
       local.get $9
       i32.const 2
       i32.shl
       i32.add
       local.get $8
       i32.add
       i64.load32_u offset=8
      end
      local.set $12
      local.get $2
      i32.const 4
      i32.sub
      local.set $2
      local.get $0
      local.get $2
      i32.const 1
      i32.shl
      i32.add
      local.get $11
      local.get $12
      i64.const 32
      i64.shl
      i64.or
      i64.store offset=4
     end
     br $continue|0
    end
   end
  end
  local.get $1
  i32.const 100
  i32.ge_u
  if
   local.get $1
   i32.const 100
   i32.div_u
   local.set $7
   local.get $1
   i32.const 100
   i32.rem_u
   local.set $6
   local.get $7
   local.set $1
   local.get $2
   i32.const 2
   i32.sub
   local.set $2
   block $~lib/internal/arraybuffer/LOAD<u32,u32>|inlined.0 (result i32)
    local.get $3
    local.set $5
    local.get $6
    local.set $4
    i32.const 0
    local.set $8
    local.get $5
    local.get $4
    i32.const 2
    i32.shl
    i32.add
    local.get $8
    i32.add
    i32.load offset=8
   end
   local.set $8
   local.get $0
   local.get $2
   i32.const 1
   i32.shl
   i32.add
   local.get $8
   i32.store offset=4
  end
  local.get $1
  i32.const 10
  i32.ge_u
  if
   local.get $2
   i32.const 2
   i32.sub
   local.set $2
   block $~lib/internal/arraybuffer/LOAD<u32,u32>|inlined.1 (result i32)
    local.get $3
    local.set $8
    local.get $1
    local.set $6
    i32.const 0
    local.set $7
    local.get $8
    local.get $6
    i32.const 2
    i32.shl
    i32.add
    local.get $7
    i32.add
    i32.load offset=8
   end
   local.set $7
   local.get $0
   local.get $2
   i32.const 1
   i32.shl
   i32.add
   local.get $7
   i32.store offset=4
  else   
   local.get $2
   i32.const 1
   i32.sub
   local.set $2
   i32.const 48
   local.get $1
   i32.add
   local.set $7
   local.get $0
   local.get $2
   i32.const 1
   i32.shl
   i32.add
   local.get $7
   i32.store16 offset=4
  end
 )
 (func $~lib/internal/number/itoa32 (; 59 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.eqz
  if
   i32.const 1456
   return
  end
  local.get $0
  i32.const 0
  i32.lt_s
  local.set $1
  local.get $1
  if
   i32.const 0
   local.get $0
   i32.sub
   local.set $0
  end
  local.get $0
  call $~lib/internal/number/decimalCount32
  local.get $1
  i32.add
  local.set $2
  local.get $2
  call $~lib/internal/string/allocateUnsafe
  local.set $3
  block $~lib/internal/number/utoa32_core|inlined.0
   local.get $3
   local.set $4
   local.get $0
   local.set $5
   local.get $2
   local.set $6
   local.get $4
   local.get $5
   local.get $6
   call $~lib/internal/number/utoa32_lut
  end
  local.get $1
  if
   local.get $3
   i32.const 45
   i32.store16 offset=4
  end
  local.get $3
 )
 (func $~lib/internal/number/itoa<i32> (; 60 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/internal/number/itoa32
  return
 )
 (func $~lib/number/I32#toString (; 61 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/internal/number/itoa<i32>
 )
 (func $assembly/ansi/moveCursorToPosition (; 62 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  global.get $assembly/ansi/ESC
  local.get $1
  call $~lib/number/I32#toString
  call $~lib/string/String.__concat
  i32.const 1984
  call $~lib/string/String.__concat
  local.get $0
  call $~lib/number/I32#toString
  call $~lib/string/String.__concat
  i32.const 1992
  call $~lib/string/String.__concat
  local.set $2
  local.get $2
  i32.const 0
  call $assembly/wasa/Console.write
  global.get $assembly/ansi/HIDE_CURSOR
  i32.const 0
  call $assembly/wasa/Console.write
 )
 (func $~lib/string/String.fromCharCode (; 63 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  i32.const 1
  call $~lib/internal/string/allocateUnsafe
  local.set $1
  local.get $1
  local.get $0
  i32.store16 offset=4
  local.get $1
 )
 (func $assembly/droplet/drawDroplet (; 64 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $break|0
   i32.const 0
   local.set $2
   loop $repeat|0
    local.get $2
    block $~lib/array/Array<u8>#get:length|inlined.3 (result i32)
     local.get $0
     i32.load offset=8
     local.set $3
     local.get $3
     i32.load offset=4
    end
    i32.lt_s
    i32.eqz
    br_if $break|0
    block
     local.get $0
     i32.load offset=4
     local.get $2
     i32.add
     local.set $3
     local.get $3
     i32.const 0
     i32.ge_s
     local.tee $4
     if (result i32)
      local.get $3
      local.get $1
      i32.le_s
     else      
      local.get $4
     end
     if
      local.get $0
      i32.load
      local.get $3
      call $assembly/ansi/moveCursorToPosition
      global.get $assembly/ansi/GREEN
      local.set $4
      local.get $2
      block $~lib/array/Array<u8>#get:length|inlined.5 (result i32)
       local.get $0
       i32.load offset=8
       local.set $5
       local.get $5
       i32.load offset=4
      end
      i32.const 1
      i32.sub
      i32.eq
      if
       global.get $assembly/ansi/WHITE
       local.set $4
      end
      local.get $0
      i32.load offset=8
      local.get $2
      call $~lib/array/Array<u8>#__get
      i32.const 255
      i32.and
      call $~lib/string/String.fromCharCode
      local.get $4
      call $assembly/ansi/printColor
     end
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $repeat|0
    unreachable
   end
   unreachable
  end
 )
 (func $assembly/utils/getTimeCounter (; 65 ;) (type $FUNCSIG$i) (result i32)
  (local $0 i64)
  i32.const 0
  i64.const 1000
  global.get $assembly/utils/timeCounterPointer
  call $~lib/bindings/wasi_unstable/clock_time_get
  drop
  global.get $assembly/utils/timeCounterPointer
  i64.load
  local.set $0
  local.get $0
  i64.const 10000000
  i64.div_u
  i32.wrap_i64
 )
 (func $assembly/utils/sleep (; 66 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  call $assembly/utils/getTimeCounter
  local.set $1
  i32.const 1
  local.set $2
  block $break|0
   loop $continue|0
    local.get $2
    if
     block
      call $assembly/utils/getTimeCounter
      local.set $3
      local.get $1
      local.get $3
      i32.sub
      local.tee $4
      i32.const 31
      i32.shr_s
      local.tee $5
      local.get $4
      i32.add
      local.get $5
      i32.xor
      local.get $0
      i32.gt_s
      if
       i32.const 0
       local.set $2
      end
     end
     br $continue|0
    end
   end
  end
 )
 (func $assembly/index/_start (; 67 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  i32.const 80
  local.set $0
  i32.const 24
  local.set $1
  i32.const 10
  local.set $2
  i32.const 0
  call $assembly/wasa/CommandLine#constructor
  local.set $3
  local.get $3
  call $assembly/wasa/CommandLine#all
  local.set $4
  block $~lib/array/Array<~lib/string/String>#get:length|inlined.1 (result i32)
   local.get $4
   local.set $5
   local.get $5
   i32.load offset=4
  end
  i32.const 1
  i32.le_s
  if
   call $assembly/cli/showHelp
   return
  end
  block $break|0
   i32.const 0
   local.set $5
   loop $repeat|0
    local.get $5
    block $~lib/array/Array<~lib/string/String>#get:length|inlined.3 (result i32)
     local.get $4
     local.set $6
     local.get $6
     i32.load offset=4
    end
    i32.lt_s
    i32.eqz
    br_if $break|0
    block
     local.get $4
     local.get $5
     call $~lib/array/Array<~lib/string/String>#__get
     local.set $6
     local.get $6
     i32.const 1088
     call $~lib/string/String.__eq
     local.tee $7
     if (result i32)
      local.get $7
     else      
      local.get $6
      i32.const 1096
      call $~lib/string/String.__eq
     end
     if
      local.get $4
      local.get $5
      i32.const 1
      i32.add
      call $~lib/array/Array<~lib/string/String>#__get
      i32.const 0
      call $~lib/string/parseInt
      i32.trunc_f64_s
      local.set $1
      local.get $5
      i32.const 1
      i32.add
      local.set $5
      local.get $1
      i32.const 1
      i32.lt_s
      if
       i32.const 1120
       global.get $assembly/ansi/RED
       call $assembly/ansi/printColor
       return
      end
     else      
      local.get $6
      i32.const 1200
      call $~lib/string/String.__eq
      local.tee $7
      if (result i32)
       local.get $7
      else       
       local.get $6
       i32.const 1208
       call $~lib/string/String.__eq
      end
      if
       local.get $4
       local.get $5
       i32.const 1
       i32.add
       call $~lib/array/Array<~lib/string/String>#__get
       i32.const 0
       call $~lib/string/parseInt
       i32.trunc_f64_s
       local.set $0
       local.get $5
       i32.const 1
       i32.add
       local.set $5
       local.get $0
       i32.const 1
       i32.lt_s
       if
        i32.const 1232
        global.get $assembly/ansi/RED
        call $assembly/ansi/printColor
        return
       end
      else       
       local.get $6
       i32.const 1320
       call $~lib/string/String.__eq
       local.tee $7
       if (result i32)
        local.get $7
       else        
        local.get $6
        i32.const 1328
        call $~lib/string/String.__eq
       end
       if
        local.get $4
        local.get $5
        i32.const 1
        i32.add
        call $~lib/array/Array<~lib/string/String>#__get
        i32.const 0
        call $~lib/string/parseInt
        i32.trunc_f64_s
        local.set $2
        local.get $5
        i32.const 1
        i32.add
        local.set $5
        local.get $2
        i32.const 1
        i32.lt_s
        local.tee $7
        if (result i32)
         local.get $7
        else         
         local.get $2
         i32.const 20
         i32.gt_s
        end
        if
         i32.const 1352
         global.get $assembly/ansi/RED
         call $assembly/ansi/printColor
         return
        end
       else        
        local.get $6
        i32.const 1424
        call $~lib/string/String.__eq
        local.tee $7
        if (result i32)
         local.get $7
        else         
         local.get $6
         i32.const 1432
         call $~lib/string/String.__eq
        end
        if
         call $assembly/cli/showHelp
         return
        end
       end
      end
     end
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $repeat|0
    unreachable
   end
   unreachable
  end
  i32.const 0
  local.get $0
  call $~lib/array/Array<assembly/droplet/Droplet>#constructor
  local.set $5
  block $break|1
   i32.const 0
   local.set $6
   loop $repeat|1
    local.get $6
    local.get $0
    i32.lt_s
    i32.eqz
    br_if $break|1
    local.get $5
    local.get $6
    local.get $6
    local.get $1
    call $assembly/droplet/createDroplet
    call $~lib/array/Array<assembly/droplet/Droplet>#__set
    local.get $6
    i32.const 1
    i32.add
    local.set $6
    br $repeat|1
    unreachable
   end
   unreachable
  end
  block $break|2
   loop $continue|2
    i32.const 1
    if
     block
      block $break|3
       i32.const 0
       local.set $6
       loop $repeat|3
        local.get $6
        block $~lib/array/Array<assembly/droplet/Droplet>#get:length|inlined.1 (result i32)
         local.get $5
         local.set $7
         local.get $7
         i32.load offset=4
        end
        i32.lt_s
        i32.eqz
        br_if $break|3
        local.get $5
        local.get $6
        call $~lib/array/Array<assembly/droplet/Droplet>#__get
        local.get $1
        call $assembly/droplet/updateDroplet
        local.get $6
        i32.const 1
        i32.add
        local.set $6
        br $repeat|3
        unreachable
       end
       unreachable
      end
      call $assembly/ansi/flushConsole
      block $break|4
       i32.const 0
       local.set $6
       loop $repeat|4
        local.get $6
        block $~lib/array/Array<assembly/droplet/Droplet>#get:length|inlined.3 (result i32)
         local.get $5
         local.set $7
         local.get $7
         i32.load offset=4
        end
        i32.lt_s
        i32.eqz
        br_if $break|4
        local.get $5
        local.get $6
        call $~lib/array/Array<assembly/droplet/Droplet>#__get
        local.get $1
        call $assembly/droplet/drawDroplet
        local.get $6
        i32.const 1
        i32.add
        local.set $6
        br $repeat|4
        unreachable
       end
       unreachable
      end
      i32.const 20
      local.get $2
      i32.sub
      call $assembly/utils/sleep
     end
     br $continue|2
    end
   end
  end
 )
 (func $start (; 68 ;) (type $FUNCSIG$v)
  call $start:assembly/index
 )
 (func $null (; 69 ;) (type $FUNCSIG$v)
 )
 (func $assembly/env/wasiabort|trampoline (; 70 ;) (type $FUNCSIG$viiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  block $4of4
   block $3of4
    block $2of4
     block $1of4
      block $0of4
       block $outOfRange
        global.get $~lib/argc
        br_table $0of4 $1of4 $2of4 $3of4 $4of4 $outOfRange
       end
       unreachable
      end
      i32.const 80
      local.set $0
     end
     i32.const 80
     local.set $1
    end
    i32.const 0
    local.set $2
   end
   i32.const 0
   local.set $3
  end
  local.get $0
  local.get $1
  local.get $2
  local.get $3
  call $assembly/env/wasiabort
 )
 (func $~lib/setargc (; 71 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  global.set $~lib/argc
 )
)
