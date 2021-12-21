require import AllCore IntDiv CoreMap List.
from Jasmin require import JModel.

require import Array1 Array2 Array3 Array4 Array5 Array12 Array16 Array32
               Array60 Array64 Array96 Array128 Array192 Array256 Array370
               Array960 Array1536 Array6144 Array12288 Array24576 Array400384
               Array565248 Array568320.
require import WArray3 WArray4 WArray8 WArray12 WArray16 WArray20 WArray32
               WArray60 WArray64 WArray96 WArray128 WArray192 WArray256
               WArray370 WArray960 WArray1536 WArray6144 WArray12288
               WArray24576 WArray400384 WArray565248 WArray568320.



module M = {
  proc gETBIT (aux:W8.t Array12.t, bit_idx:int, base_idx:int) : W8.t = {
    
    var selectedBit:W8.t;
    var total_idx:int;
    var byte_idx:int;
    
    total_idx <- (bit_idx + base_idx);
    byte_idx <- (total_idx %/ 8);
    total_idx <- (total_idx - (total_idx %/ 8));
    selectedBit <- aux.[byte_idx];
    selectedBit <- (selectedBit `>>` (W8.of_int total_idx));
    selectedBit <- (selectedBit `&` (W8.of_int 1));
    return (selectedBit);
  }
  
  proc gETBIT_u32 (x:W32.t, bit_idx:int, t:W8.t) : W8.t = {
    
    var aux:W8.t Array4.t;
    aux <- witness;
    aux =
    Array4.init
    (WArray4.get8 (WArray4.set32 (WArray4.init8 (fun i => aux.[i])) 0 ((x `>>` (W8.of_int bit_idx)) `&` (W32.of_int 1))));
    t <- aux.[3];
    return (t);
  }
  
  proc getBits (array_r:W8.t Array12.t, array_c:W8.t Array12.t, i:int,
                idx0:int, idx1:int) : W8.t * W8.t * W8.t = {
    
    var t0:W8.t;
    var t1:W8.t;
    var t2:W8.t;
    
    t0 <- (W8.of_int 0);
    t1 <- (W8.of_int 0);
    t2 <- (W8.of_int 0);
    return (t0, t1, t2);
  }
  
  proc gETBIT_EXTENDED (aux:W8.t Array32.t, bit_idx:int) : W8.t = {
    
    var selectedBit:W8.t;
    var byte_idx:int;
    
    byte_idx <- (bit_idx %/ 8);
    bit_idx <- (bit_idx - (bit_idx %/ 8));
    selectedBit <- aux.[byte_idx];
    selectedBit <- (selectedBit `>>` (W8.of_int bit_idx));
    selectedBit <- (selectedBit `&` (W8.of_int 1));
    return (selectedBit);
  }
  
  proc sETBIT_u32 (x:W8.t Array12.t, bit_idx:int, bit:W8.t, idx:int) : 
  W8.t Array12.t = {
    
    var byte:int;
    var bit_0:int;
    var a:W8.t;
    
    byte <- (bit_idx %/ 8);
    bit_0 <- (bit_idx - (byte * 8));
    a <- (W8.of_int 1);
    a <- (a `<<` (W8.of_int bit_0));
    if ((bit_0 = 1)) {
      x.[byte] <- (x.[byte] `|` a);
    } else {
      a <- (a `^` (W8.of_int 255));
      x.[byte] <- (x.[byte] `&` a);
    }
    return (x);
  }
  
  proc lEFTROTATE (x:W8.t Array12.t, n:int, y:W8.t Array12.t) : W8.t Array12.t = {
    var aux_0: int;
    
    var aux:W32.t Array1.t;
    var i:int;
    aux <- witness;
    i <- 0;
    while (i < 4) {
      aux.[0] <- (get32 (WArray12.init8 (fun i => x.[i])) 0);
      aux.[0] <-
      ((aux.[0] `<<` (W8.of_int n)) `|` (aux.[0] `>>` (W8.of_int (32 - n))));
      y.[(i * 4)] <- (get8 (WArray4.init32 (fun i => aux.[i])) 0);
      y.[((i * 4) + 1)] <- (get8 (WArray4.init32 (fun i => aux.[i])) 1);
      y.[((i * 4) + 2)] <- (get8 (WArray4.init32 (fun i => aux.[i])) 2);
      y.[((i * 4) + 3)] <- (get8 (WArray4.init32 (fun i => aux.[i])) 3);
      i <- i + 1;
    }
    return (y);
  }
  
  proc rIGHTSHIFT (x:W8.t Array60.t, i:int, z:W8.t Array12.t, pos_hHa:int) : 
  W8.t Array12.t = {
    
    var aux:W32.t Array1.t;
    aux <- witness;
    aux.[0] <- (get32 (WArray60.init8 (fun i => x.[i])) (pos_hHa * 4));
    aux.[0] <- (aux.[0] `>>` (W8.of_int i));
    z.[0] <- (get8 (WArray4.init32 (fun i => aux.[i])) 0);
    z.[1] <- (get8 (WArray4.init32 (fun i => aux.[i])) 1);
    z.[2] <- (get8 (WArray4.init32 (fun i => aux.[i])) 2);
    z.[3] <- (get8 (WArray4.init32 (fun i => aux.[i])) 3);
    aux.[0] <-
    (get32 (WArray60.init8 (fun i => x.[i])) (20 + (pos_hHa * 4)));
    aux.[0] <- (aux.[0] `>>` (W8.of_int i));
    z.[4] <- (get8 (WArray4.init32 (fun i => aux.[i])) 0);
    z.[5] <- (get8 (WArray4.init32 (fun i => aux.[i])) 1);
    z.[6] <- (get8 (WArray4.init32 (fun i => aux.[i])) 2);
    z.[7] <- (get8 (WArray4.init32 (fun i => aux.[i])) 3);
    aux.[0] <-
    (get32 (WArray60.init8 (fun i => x.[i])) (40 + (pos_hHa * 4)));
    aux.[0] <- (aux.[0] `>>` (W8.of_int i));
    z.[8] <- (get8 (WArray4.init32 (fun i => aux.[i])) 0);
    z.[9] <- (get8 (WArray4.init32 (fun i => aux.[i])) 1);
    z.[10] <- (get8 (WArray4.init32 (fun i => aux.[i])) 2);
    z.[11] <- (get8 (WArray4.init32 (fun i => aux.[i])) 3);
    return (z);
  }
  
  proc mpc_words (x:W8.t Array12.t, y:W8.t Array12.t, z:W8.t Array12.t, i:int) : 
  W32.t * W32.t = {
    
    var word_a:W32.t;
    var word_b:W32.t;
    var a:W32.t;
    var b:W32.t;
    var c:W32.t;
    
    a <- (get32 (WArray12.init8 (fun i => x.[i])) i);
    b <- (get32 (WArray12.init8 (fun i => y.[i])) i);
    c <- (get32 (WArray12.init8 (fun i => z.[i])) i);
    word_a <- (a `^` c);
    word_b <- (b `^` c);
    return (word_a, word_b);
  }
  
  proc mpc_xor (x:W8.t Array12.t, y:W8.t Array12.t, z:W8.t Array12.t) : 
  W8.t Array12.t = {
    
    
    
    z =
    Array12.init
    (WArray12.get8 (WArray12.set32 (WArray12.init8 (fun i => z.[i])) 0 (
    (get32 (WArray12.init8 (fun i => x.[i])) 0) `^` (get32
                                                    (WArray12.init8 (fun i => y.[i]))
                                                    0))));
    z =
    Array12.init
    (WArray12.get8 (WArray12.set32 (WArray12.init8 (fun i => z.[i])) 1 (
    (get32 (WArray12.init8 (fun i => x.[i])) 1) `^` (get32
                                                    (WArray12.init8 (fun i => y.[i]))
                                                    1))));
    z =
    Array12.init
    (WArray12.get8 (WArray12.set32 (WArray12.init8 (fun i => z.[i])) 2 (
    (get32 (WArray12.init8 (fun i => x.[i])) 2) `^` (get32
                                                    (WArray12.init8 (fun i => y.[i]))
                                                    2))));
    z =
    Array12.init
    (WArray12.get8 (WArray12.set32 (WArray12.init8 (fun i => z.[i])) 3 (
    (get32 (WArray12.init8 (fun i => x.[i])) 3) `^` (get32
                                                    (WArray12.init8 (fun i => y.[i]))
                                                    3))));
    return (z);
  }
  
  proc mpc_xor_w (w:W8.t Array960.t, y:W8.t Array12.t, z:W8.t Array12.t,
                  pos_w:int) : W8.t Array12.t = {
    var aux: int;
    
    var i:int;
    
    i <- 0;
    while (i < 4) {
      z.[i] <- (w.[(pos_w + i)] `^` y.[i]);
      z.[(4 + i)] <- (w.[((320 + pos_w) + i)] `^` y.[(4 + i)]);
      z.[(8 + i)] <- (w.[((640 + pos_w) + i)] `^` y.[(8 + i)]);
      i <- i + 1;
    }
    return (z);
  }
  
  proc mpc_xor_k (k:W8.t Array4.t, y:W8.t Array12.t, z:W8.t Array12.t) : 
  W8.t Array12.t = {
    var aux: int;
    
    var i:int;
    
    i <- 0;
    while (i < 4) {
      z.[i] <- (k.[i] `^` y.[i]);
      z.[(4 + i)] <- (k.[i] `^` y.[(4 + i)]);
      z.[(8 + i)] <- (k.[i] `^` y.[(8 + i)]);
      i <- i + 1;
    }
    return (z);
  }
  
  proc mpc_xor_hHa (hHa:W8.t Array60.t, y:W8.t Array12.t, z:W8.t Array12.t,
                    pos_hHa:int) : W8.t Array12.t = {
    var aux: int;
    
    var i:int;
    
    i <- 0;
    while (i < 4) {
      z.[i] <- (hHa.[((pos_hHa * 4) + i)] `^` y.[i]);
      z.[(4 + i)] <- (hHa.[((20 + (pos_hHa * 4)) + i)] `^` y.[(4 + i)]);
      z.[(8 + i)] <- (hHa.[((40 + (pos_hHa * 4)) + i)] `^` y.[(8 + i)]);
      i <- i + 1;
    }
    return (z);
  }
  
  proc mpc_ADD (x:W8.t Array12.t, y:W8.t Array12.t, z:W8.t Array12.t,
                randomness:W8.t Array565248.t, randCount:int,
                views_y:W8.t Array568320.t, countY:int, mpcRounds:int) : 
  W8.t Array12.t * int * int * W8.t Array568320.t = {
    var aux: int;
    
    var j:int;
    var i:int;
    var c:W8.t Array12.t;
    var r:W8.t Array12.t;
    var word_a:W32.t;
    var word_b:W32.t;
    var t:W8.t;
    var t1:W8.t;
    var a:W8.t Array3.t;
    var b:W8.t Array3.t;
    var t0:W8.t;
    var t2:W8.t;
    a <- witness;
    b <- witness;
    c <- witness;
    r <- witness;
    i <- 0;
    while (i < 3) {
      j <- 0;
      while (j < 4) {
        c.[((i * 4) + j)] <- (W8.of_int 0);
        j <- j + 1;
      }
      i <- i + 1;
    }
    i <- 0;
    while (i < 3) {
      r.[(i * 4)] <- randomness.[(((i * 1472) * mpcRounds) + randCount)];
      r.[((i * 4) + 1)] <-
      randomness.[((((i * 1472) * mpcRounds) + randCount) + 1)];
      r.[((i * 4) + 2)] <-
      randomness.[((((i * 1472) * mpcRounds) + randCount) + 2)];
      r.[((i * 4) + 3)] <-
      randomness.[((((i * 1472) * mpcRounds) + randCount) + 3)];
      i <- i + 1;
    }
    randCount <- (randCount + 4);
    i <- 0;
    while (i < 31) {
      (word_a, word_b) <@ mpc_words (x, y, c, 0);
      t <@ gETBIT_u32 (word_a, i, t);
      t1 <@ gETBIT_u32 (word_b, i, t1);
      a.[0] <- t;
      b.[0] <- t1;
      (word_a, word_b) <@ mpc_words (x, y, c, 1);
      t <@ gETBIT_u32 (word_a, i, t);
      t1 <@ gETBIT_u32 (word_b, i, t1);
      a.[1] <- t;
      b.[1] <- t1;
      (word_a, word_b) <@ mpc_words (x, y, c, 2);
      t <@ gETBIT_u32 (word_a, i, t);
      t1 <@ gETBIT_u32 (word_b, i, t1);
      a.[2] <- t;
      b.[2] <- t1;
      (t0, t1, t2) <@ getBits (r, c, i, 1, 0);
      t <-
      (((((t0 `^` (a.[0] `&` b.[1])) `^` (a.[1] `&` b.[0])) `^` (a.[0] `&` 
      b.[0])) `^` t1) `^` t2);
      c <@ sETBIT_u32 (c, (i + 1), t, 0);
      (t0, t1, t2) <@ getBits (r, c, i, 2, 1);
      t <-
      (((((t0 `^` (a.[1] `&` b.[2])) `^` (a.[2] `&` b.[1])) `^` (a.[1] `&` 
      b.[1])) `^` t1) `^` t2);
      c <@ sETBIT_u32 (c, (i + 1), t, 1);
      (t0, t1, t2) <@ getBits (r, c, i, 0, 2);
      t <-
      (((((t0 `^` (a.[2] `&` b.[0])) `^` (a.[0] `&` b.[2])) `^` (a.[2] `&` 
      b.[2])) `^` t1) `^` t2);
      c <@ sETBIT_u32 (c, (i + 1), t, 2);
      i <- i + 1;
    }
    i <- 0;
    while (i < 3) {
      z.[(i * 4)] <- ((x.[(i * 4)] `^` y.[(i * 4)]) `^` c.[(i * 4)]);
      z.[((i * 4) + 1)] <-
      ((x.[((i * 4) + 1)] `^` y.[((i * 4) + 1)]) `^` c.[((i * 4) + 1)]);
      z.[((i * 4) + 2)] <-
      ((x.[((i * 4) + 2)] `^` y.[((i * 4) + 2)]) `^` c.[((i * 4) + 2)]);
      z.[((i * 4) + 3)] <-
      ((x.[((i * 4) + 3)] `^` y.[((i * 4) + 3)]) `^` c.[((i * 4) + 3)]);
      views_y.[(((i * 1480) * mpcRounds) + countY)] <- c.[(i * 4)];
      views_y.[((((i * 1460) * mpcRounds) + countY) + 1)] <-
      c.[((i * 4) + 1)];
      views_y.[((((i * 1460) * mpcRounds) + countY) + 2)] <-
      c.[((i * 4) + 2)];
      views_y.[((((i * 1460) * mpcRounds) + countY) + 3)] <-
      c.[((i * 4) + 3)];
      i <- i + 1;
    }
    countY <- (countY + 4);
    return (z, randCount, countY, views_y);
  }
  
  proc mpc_ADD_W (w:W8.t Array960.t, y:W8.t Array12.t,
                  randomness:W8.t Array565248.t, randCount:int,
                  views_y:W8.t Array568320.t, countY:int, pos_w:int,
                  mpcRounds:int) : W8.t Array12.t * int * int *
                                   W8.t Array568320.t = {
    var aux_0: int;
    
    var j:int;
    var i:int;
    var c:W8.t Array12.t;
    var r:W8.t Array12.t;
    var aux:W8.t Array12.t;
    var t:W8.t;
    var a:W8.t Array3.t;
    var b:W8.t Array3.t;
    var t0:W8.t;
    var t1:W8.t;
    var t2:W8.t;
    a <- witness;
    aux <- witness;
    b <- witness;
    c <- witness;
    r <- witness;
    i <- 0;
    while (i < 3) {
      j <- 0;
      while (j < 4) {
        c.[((i * 4) + j)] <- (W8.of_int 0);
        j <- j + 1;
      }
      i <- i + 1;
    }
    i <- 0;
    while (i < 3) {
      r.[(i * 4)] <- randomness.[(((i * 16) * mpcRounds) + randCount)];
      r.[((i * 4) + 1)] <-
      randomness.[((((i * 16) * mpcRounds) + randCount) + 1)];
      r.[((i * 4) + 2)] <-
      randomness.[((((i * 16) * mpcRounds) + randCount) + 2)];
      r.[((i * 4) + 3)] <-
      randomness.[((((i * 16) * mpcRounds) + randCount) + 3)];
      i <- i + 1;
    }
    randCount <- (randCount + 4);
    i <- 0;
    while (i < 31) {
      aux <@ mpc_xor_w (w, c, aux, pos_w);
      t <@ gETBIT (aux, i, 0);
      a.[0] <- t;
      t <@ gETBIT (aux, i, 32);
      a.[1] <- t;
      t <@ gETBIT (aux, i, 64);
      a.[2] <- t;
      aux <@ mpc_xor (y, c, aux);
      t <@ gETBIT (aux, i, 0);
      b.[0] <- t;
      t <@ gETBIT (aux, i, 32);
      b.[1] <- t;
      t <@ gETBIT (aux, i, 64);
      b.[2] <- t;
      (t0, t1, t2) <@ getBits (r, c, i, 1, 0);
      t <-
      (((((t0 `^` (a.[0] `&` b.[1])) `^` (a.[1] `&` b.[0])) `^` (a.[0] `&` 
      b.[0])) `^` t1) `^` t2);
      c <@ sETBIT_u32 (c, (i + 1), t, 0);
      (t0, t1, t2) <@ getBits (r, c, i, 2, 1);
      t <-
      (((((t0 `^` (a.[1] `&` b.[2])) `^` (a.[2] `&` b.[1])) `^` (a.[1] `&` 
      b.[1])) `^` t1) `^` t2);
      c <@ sETBIT_u32 (c, (i + 1), t, 1);
      (t0, t1, t2) <@ getBits (r, c, i, 0, 2);
      t <-
      (((((t0 `^` (a.[2] `&` b.[0])) `^` (a.[0] `&` b.[2])) `^` (a.[2] `&` 
      b.[2])) `^` t1) `^` t2);
      c <@ sETBIT_u32 (c, (i + 1), t, 2);
      i <- i + 1;
    }
    i <- 0;
    while (i < 3) {
      y.[(i * 4)] <-
      ((w.[((80 * i) + (pos_w * 4))] `^` y.[(i * 4)]) `^` c.[(i * 4)]);
      y.[((i * 4) + 1)] <-
      ((w.[(((80 * i) + (pos_w * 4)) + 1)] `^` y.[((i * 4) + 1)]) `^` 
      c.[((i * 4) + 1)]);
      y.[((i * 4) + 2)] <-
      ((w.[(((80 * i) + (pos_w * 4)) + 2)] `^` y.[((i * 4) + 2)]) `^` 
      c.[((i * 4) + 2)]);
      y.[((i * 4) + 3)] <-
      ((w.[(((80 * i) + (pos_w * 4)) + 3)] `^` y.[((i * 4) + 3)]) `^` 
      c.[((i * 4) + 3)]);
      views_y.[(((i * 1480) * mpcRounds) + countY)] <- c.[(i * 4)];
      views_y.[((((i * 1480) * mpcRounds) + countY) + 1)] <-
      c.[((i * 4) + 1)];
      views_y.[((((i * 1480) * mpcRounds) + countY) + 2)] <-
      c.[((i * 4) + 2)];
      views_y.[((((i * 1480) * mpcRounds) + countY) + 3)] <-
      c.[((i * 4) + 3)];
      i <- i + 1;
    }
    countY <- (countY + 4);
    return (y, randCount, countY, views_y);
  }
  
  proc mpc_ADD_K (x:W8.t Array12.t, k:W8.t Array4.t,
                  randomness:W8.t Array565248.t, randCount:int,
                  views_y:W8.t Array568320.t, countY:int, mpcRounds:int) : 
  W8.t Array12.t * int * int * W8.t Array568320.t = {
    var aux_0: int;
    
    var j:int;
    var i:int;
    var c:W8.t Array12.t;
    var r:W8.t Array12.t;
    var aux:W8.t Array12.t;
    var t:W8.t;
    var a:W8.t Array3.t;
    var b:W8.t Array3.t;
    var t0:W8.t;
    var t1:W8.t;
    var t2:W8.t;
    a <- witness;
    aux <- witness;
    b <- witness;
    c <- witness;
    r <- witness;
    i <- 0;
    while (i < 3) {
      j <- 0;
      while (j < 4) {
        c.[((i * 4) + j)] <- (W8.of_int 0);
        j <- j + 1;
      }
      i <- i + 1;
    }
    i <- 0;
    while (i < 3) {
      r.[(i * 4)] <- randomness.[(((i * 16) * mpcRounds) + randCount)];
      r.[((i * 4) + 1)] <-
      randomness.[((((i * 16) * mpcRounds) + randCount) + 1)];
      r.[((i * 4) + 2)] <-
      randomness.[((((i * 16) * mpcRounds) + randCount) + 2)];
      r.[((i * 4) + 3)] <-
      randomness.[((((i * 16) * mpcRounds) + randCount) + 3)];
      i <- i + 1;
    }
    randCount <- (randCount + 4);
    i <- 0;
    while (i < 31) {
      aux <@ mpc_xor (x, c, aux);
      t <@ gETBIT (aux, i, 0);
      a.[0] <- t;
      t <@ gETBIT (aux, i, 32);
      a.[1] <- t;
      t <@ gETBIT (aux, i, 64);
      a.[2] <- t;
      aux <@ mpc_xor_k (k, c, aux);
      t <@ gETBIT (aux, i, 0);
      b.[0] <- t;
      t <@ gETBIT (aux, i, 32);
      b.[1] <- t;
      t <@ gETBIT (aux, i, 64);
      b.[2] <- t;
      (t0, t1, t2) <@ getBits (r, c, i, 1, 0);
      t <-
      (((((t0 `^` (a.[0] `&` b.[1])) `^` (a.[1] `&` b.[0])) `^` (a.[0] `&` 
      b.[0])) `^` t1) `^` t2);
      c <@ sETBIT_u32 (c, (i + 1), t, 0);
      (t0, t1, t2) <@ getBits (r, c, i, 2, 1);
      t <-
      (((((t0 `^` (a.[1] `&` b.[2])) `^` (a.[2] `&` b.[1])) `^` (a.[1] `&` 
      b.[1])) `^` t1) `^` t2);
      c <@ sETBIT_u32 (c, (i + 1), t, 1);
      (t0, t1, t2) <@ getBits (r, c, i, 0, 2);
      t <-
      (((((t0 `^` (a.[2] `&` b.[0])) `^` (a.[0] `&` b.[2])) `^` (a.[2] `&` 
      b.[2])) `^` t1) `^` t2);
      c <@ sETBIT_u32 (c, (i + 1), t, 2);
      i <- i + 1;
    }
    i <- 0;
    while (i < 3) {
      x.[(i * 4)] <- ((x.[(i * 4)] `^` k.[0]) `^` c.[(i * 4)]);
      x.[((i * 4) + 1)] <-
      ((x.[((i * 4) + 1)] `^` k.[1]) `^` c.[((i * 4) + 1)]);
      x.[((i * 4) + 2)] <-
      ((x.[((i * 4) + 2)] `^` k.[2]) `^` c.[((i * 4) + 2)]);
      x.[((i * 4) + 3)] <-
      ((x.[((i * 4) + 3)] `^` k.[3]) `^` c.[((i * 4) + 3)]);
      views_y.[(((i * 1480) * mpcRounds) + countY)] <- c.[(i * 4)];
      views_y.[((((i * 1480) * mpcRounds) + countY) + 1)] <-
      c.[((i * 4) + 1)];
      views_y.[((((i * 1480) * mpcRounds) + countY) + 2)] <-
      c.[((i * 4) + 2)];
      views_y.[((((i * 1480) * mpcRounds) + countY) + 3)] <-
      c.[((i * 4) + 3)];
      i <- i + 1;
    }
    countY <- (countY + 4);
    return (x, randCount, countY, views_y);
  }
  
  proc mpc_ADD_hHa (x:W8.t Array60.t, y:W8.t Array12.t, z:W8.t Array60.t,
                    randomness:W8.t Array565248.t, randCount:int,
                    views_y:W8.t Array568320.t, countY:int, pos_hHa:int,
                    mpcRounds:int) : W8.t Array60.t * int * int *
                                     W8.t Array568320.t = {
    var aux_0: int;
    
    var j:int;
    var i:int;
    var c:W8.t Array12.t;
    var r:W8.t Array12.t;
    var aux:W8.t Array12.t;
    var t:W8.t;
    var a:W8.t Array3.t;
    var b:W8.t Array3.t;
    var t0:W8.t;
    var t1:W8.t;
    var t2:W8.t;
    a <- witness;
    aux <- witness;
    b <- witness;
    c <- witness;
    r <- witness;
    i <- 0;
    while (i < 3) {
      j <- 0;
      while (j < 4) {
        c.[((i * 4) + j)] <- (W8.of_int 0);
        j <- j + 1;
      }
      i <- i + 1;
    }
    i <- 0;
    while (i < 3) {
      r.[(i * 4)] <- randomness.[(((i * 16) * mpcRounds) + randCount)];
      r.[((i * 4) + 1)] <-
      randomness.[((((i * 16) * mpcRounds) + randCount) + 1)];
      r.[((i * 4) + 2)] <-
      randomness.[((((i * 16) * mpcRounds) + randCount) + 2)];
      r.[((i * 4) + 3)] <-
      randomness.[((((i * 16) * mpcRounds) + randCount) + 3)];
      i <- i + 1;
    }
    randCount <- (randCount + 4);
    i <- 0;
    while (i < 31) {
      aux <@ mpc_xor_hHa (x, c, aux, pos_hHa);
      t <@ gETBIT (aux, i, 0);
      a.[0] <- t;
      t <@ gETBIT (aux, i, 32);
      a.[1] <- t;
      t <@ gETBIT (aux, i, 64);
      a.[2] <- t;
      aux <@ mpc_xor (y, c, aux);
      t <@ gETBIT (aux, i, 0);
      b.[0] <- t;
      t <@ gETBIT (aux, i, 32);
      b.[1] <- t;
      t <@ gETBIT (aux, i, 64);
      b.[2] <- t;
      (t0, t1, t2) <@ getBits (r, c, i, 1, 0);
      t <-
      (((((t0 `^` (a.[0] `&` b.[1])) `^` (a.[1] `&` b.[0])) `^` (a.[0] `&` 
      b.[0])) `^` t1) `^` t2);
      c <@ sETBIT_u32 (c, (i + 1), t, 0);
      (t0, t1, t2) <@ getBits (r, c, i, 2, 1);
      t <-
      (((((t0 `^` (a.[1] `&` b.[2])) `^` (a.[2] `&` b.[1])) `^` (a.[1] `&` 
      b.[1])) `^` t1) `^` t2);
      c <@ sETBIT_u32 (c, (i + 1), t, 1);
      (t0, t1, t2) <@ getBits (r, c, i, 0, 2);
      t <-
      (((((t0 `^` (a.[2] `&` b.[0])) `^` (a.[0] `&` b.[2])) `^` (a.[2] `&` 
      b.[2])) `^` t1) `^` t2);
      c <@ sETBIT_u32 (c, (i + 1), t, 2);
      i <- i + 1;
    }
    i <- 0;
    while (i < 3) {
      z.[((20 * i) + (pos_hHa * 4))] <-
      ((x.[((20 * i) + (pos_hHa * 4))] `^` y.[(i * 4)]) `^` c.[(i * 4)]);
      z.[(((20 * i) + (pos_hHa * 4)) + 1)] <-
      ((x.[(((20 * i) + (pos_hHa * 4)) + 1)] `^` y.[((i * 4) + 1)]) `^` 
      c.[((i * 4) + 1)]);
      z.[(((20 * i) + (pos_hHa * 4)) + 2)] <-
      ((x.[(((20 * i) + (pos_hHa * 4)) + 2)] `^` y.[((i * 4) + 2)]) `^` 
      c.[((i * 4) + 2)]);
      z.[(((20 * i) + (pos_hHa * 4)) + 3)] <-
      ((x.[(((20 * i) + (pos_hHa * 4)) + 3)] `^` y.[((i * 4) + 3)]) `^` 
      c.[((i * 4) + 3)]);
      views_y.[(((i * 1480) * mpcRounds) + countY)] <- c.[(i * 4)];
      views_y.[((((i * 1480) * mpcRounds) + countY) + 1)] <-
      c.[((i * 4) + 1)];
      views_y.[((((i * 1480) * mpcRounds) + countY) + 2)] <-
      c.[((i * 4) + 2)];
      views_y.[((((i * 1480) * mpcRounds) + countY) + 3)] <-
      c.[((i * 4) + 3)];
      i <- i + 1;
    }
    countY <- (countY + 4);
    return (z, randCount, countY, views_y);
  }
  
  proc mpc_AND (x:W8.t Array12.t, y:W8.t Array12.t, z:W8.t Array12.t,
                randomness:W8.t Array565248.t, randCount:int,
                views_y:W8.t Array568320.t, countY:int, mpcRounds:int) : 
  W8.t Array12.t * int * int * W8.t Array568320.t = {
    var aux: int;
    
    var i:int;
    var r:W8.t Array12.t;
    r <- witness;
    i <- 0;
    while (i < 3) {
      r.[(i * 4)] <- randomness.[(((i * 16) * mpcRounds) + randCount)];
      r.[((i * 4) + 1)] <-
      randomness.[((((i * 16) * mpcRounds) + randCount) + 1)];
      r.[((i * 4) + 2)] <-
      randomness.[((((i * 16) * mpcRounds) + randCount) + 2)];
      r.[((i * 4) + 3)] <-
      randomness.[((((i * 16) * mpcRounds) + randCount) + 3)];
      i <- i + 1;
    }
    randCount <- (randCount + 4);
    z.[0] <-
    (((((x.[0] `&` y.[4]) `^` (x.[4] `&` y.[0])) `^` (x.[0] `&` y.[0])) `^` 
    r.[0]) `^` r.[4]);
    z.[1] <-
    (((((x.[1] `&` y.[5]) `^` (x.[5] `&` y.[1])) `^` (x.[1] `&` y.[1])) `^` 
    r.[1]) `^` r.[5]);
    z.[2] <-
    (((((x.[2] `&` y.[6]) `^` (x.[6] `&` y.[2])) `^` (x.[2] `&` y.[2])) `^` 
    r.[2]) `^` r.[6]);
    z.[3] <-
    (((((x.[3] `&` y.[7]) `^` (x.[7] `&` y.[3])) `^` (x.[3] `&` y.[3])) `^` 
    r.[3]) `^` r.[7]);
    z.[4] <-
    (((((x.[4] `&` y.[8]) `^` (x.[8] `&` y.[4])) `^` (x.[4] `&` y.[4])) `^` 
    r.[4]) `^` r.[8]);
    z.[5] <-
    (((((x.[5] `&` y.[9]) `^` (x.[9] `&` y.[5])) `^` (x.[5] `&` y.[5])) `^` 
    r.[5]) `^` r.[9]);
    z.[6] <-
    (((((x.[6] `&` y.[10]) `^` (x.[10] `&` y.[6])) `^` (x.[6] `&` y.[6])) `^` 
    r.[6]) `^` r.[10]);
    z.[7] <-
    (((((x.[7] `&` y.[11]) `^` (x.[11] `&` y.[7])) `^` (x.[7] `&` y.[7])) `^` 
    r.[7]) `^` r.[11]);
    z.[8] <-
    (((((x.[8] `&` y.[0]) `^` (x.[0] `&` y.[8])) `^` (x.[8] `&` y.[8])) `^` 
    r.[8]) `^` r.[0]);
    z.[9] <-
    (((((x.[9] `&` y.[1]) `^` (x.[1] `&` y.[9])) `^` (x.[9] `&` y.[9])) `^` 
    r.[9]) `^` r.[1]);
    z.[10] <-
    (((((x.[10] `&` y.[2]) `^` (x.[2] `&` y.[10])) `^` (x.[10] `&` y.[10])) `^` 
    r.[10]) `^` r.[2]);
    z.[11] <-
    (((((x.[11] `&` y.[3]) `^` (x.[3] `&` y.[11])) `^` (x.[11] `&` y.[11])) `^` 
    r.[11]) `^` r.[3]);
    i <- 0;
    while (i < 3) {
      views_y.[(((i * 1480) * mpcRounds) + countY)] <- y.[(i * 4)];
      views_y.[((((i * 1480) * mpcRounds) + countY) + 1)] <-
      y.[((i * 4) + 1)];
      views_y.[((((i * 1480) * mpcRounds) + countY) + 2)] <-
      y.[((i * 4) + 2)];
      views_y.[((((i * 1480) * mpcRounds) + countY) + 3)] <-
      y.[((i * 4) + 3)];
      i <- i + 1;
    }
    countY <- (countY + 4);
    return (z, randCount, countY, views_y);
  }
  
  proc mpc_MAJ (a:W8.t Array12.t, b:W8.t Array12.t, c:W8.t Array12.t,
                z:W8.t Array12.t, randomness:W8.t Array565248.t,
                randCount:int, views_y:W8.t Array568320.t, countY:int,
                mpcRounds:int) : W8.t Array12.t * int * int *
                                 W8.t Array568320.t = {
    
    var t0:W8.t Array12.t;
    var t1:W8.t Array12.t;
    var aux:W8.t Array12.t;
    aux <- witness;
    t0 <- witness;
    t1 <- witness;
    t0 <@ mpc_xor (a, b, t0);
    t1 <@ mpc_xor (a, c, t1);
    (z, randCount, countY, views_y) <@ mpc_AND (t0, t1, z, randomness,
    randCount, views_y, countY, mpcRounds);
    aux <- z;
    z <@ mpc_xor (aux, a, z);
    return (z, randCount, countY, views_y);
  }
  
  proc mpc_SHA1 (results:W8.t Array96.t, inputs:W8.t Array6144.t,
                 numBits:int, randomness:W8.t Array565248.t,
                 views_x:W8.t Array24576.t, views_y:W8.t Array568320.t,
                 countY:int, mpcRounds:int) : W8.t Array96.t *
                                              W8.t Array24576.t *
                                              W8.t Array568320.t * int = {
    var aux_0: int;
    
    var hA:W32.t Array5.t;
    var j:int;
    var hHa:W8.t Array60.t;
    var randCount:int;
    var chars:int;
    var i:int;
    var chunks:W8.t Array192.t;
    var w:W8.t Array960.t;
    var temp:W8.t Array12.t;
    var aux:W8.t Array12.t;
    var a:W8.t Array12.t;
    var b:W8.t Array12.t;
    var c:W8.t Array12.t;
    var d:W8.t Array12.t;
    var e:W8.t Array12.t;
    var f:W8.t Array12.t;
    var k_aux:W32.t Array1.t;
    var k:W8.t Array4.t;
    var hHa_aux:W8.t Array60.t;
    var t0:W8.t Array12.t;
    a <- witness;
    aux <- witness;
    b <- witness;
    c <- witness;
    chunks <- witness;
    d <- witness;
    e <- witness;
    f <- witness;
    hA <- witness;
    hHa <- witness;
    hHa_aux <- witness;
    k <- witness;
    k_aux <- witness;
    t0 <- witness;
    temp <- witness;
    w <- witness;
    hA.[0] <- (W32.of_int 1732584193);
    hA.[1] <- (W32.of_int 4023233417);
    hA.[2] <- (W32.of_int 2562383102);
    hA.[3] <- (W32.of_int 271733878);
    hA.[4] <- (W32.of_int 3285377520);
    j <- 0;
    while (j < 5) {
      hHa.[(j * 4)] <- (get8 (WArray20.init32 (fun i => hA.[i])) (j * 4));
      hHa.[((j * 4) + 1)] <-
      (get8 (WArray20.init32 (fun i => hA.[i])) ((j * 4) + 1));
      hHa.[((j * 4) + 2)] <-
      (get8 (WArray20.init32 (fun i => hA.[i])) ((j * 4) + 2));
      hHa.[((j * 4) + 3)] <-
      (get8 (WArray20.init32 (fun i => hA.[i])) ((j * 4) + 3));
      hHa.[(20 + (j * 4))] <-
      (get8 (WArray20.init32 (fun i => hA.[i])) (j * 4));
      hHa.[((20 + (j * 4)) + 1)] <-
      (get8 (WArray20.init32 (fun i => hA.[i])) ((j * 4) + 1));
      hHa.[((20 + (j * 4)) + 2)] <-
      (get8 (WArray20.init32 (fun i => hA.[i])) ((j * 4) + 2));
      hHa.[((20 + (j * 4)) + 3)] <-
      (get8 (WArray20.init32 (fun i => hA.[i])) ((j * 4) + 3));
      hHa.[(40 + (j * 4))] <-
      (get8 (WArray20.init32 (fun i => hA.[i])) (j * 4));
      hHa.[((40 + (j * 4)) + 1)] <-
      (get8 (WArray20.init32 (fun i => hA.[i])) ((j * 4) + 1));
      hHa.[((40 + (j * 4)) + 2)] <-
      (get8 (WArray20.init32 (fun i => hA.[i])) ((j * 4) + 2));
      hHa.[((40 + (j * 4)) + 3)] <-
      (get8 (WArray20.init32 (fun i => hA.[i])) ((j * 4) + 3));
      j <- j + 1;
    }
    randCount <- 0;
    chars <- (W256.to_uint ((W256.of_int numBits) `>>` (W8.of_int 3)));
    i <- 0;
    while (i < 3) {
      j <- 0;
      while (j < 16) {
        chunks.[((i * 64) + j)] <-
        inputs.[((((i * 3) * 16) + (i * 16)) + j)];
        j <- j + 1;
      }
      chunks.[((i * 64) + chars)] <- (W8.of_int 128);
      chunks.[((i * 64) + 62)] <-
      (truncateu8 ((W256.of_int numBits) `>>` (W8.of_int 8)));
      chunks.[((i * 64) + 63)] <- (W8.of_int numBits);
      j <- 0;
      while (j < 64) {
        views_x.[(((i * 3) * 64) + j)] <- chunks.[((i * 64) + j)];
        j <- j + 1;
      }
      j <- 0;
      while (j < 16) {
        w.[((i * 320) + (j * 4))] <-
        (chunks.[((i * 64) + (j * 4))] `<<` (W8.of_int 24));
        w.[(((i * 320) + (j * 4)) + 1)] <-
        (chunks.[(((i * 64) + (j * 4)) + 1)] `<<` (W8.of_int 16));
        w.[(((i * 320) + (j * 4)) + 2)] <-
        (chunks.[(((i * 64) + (j * 4)) + 2)] `<<` (W8.of_int 8));
        w.[(((i * 320) + (j * 4)) + 3)] <-
        chunks.[(((i * 64) + (j * 4)) + 3)];
        j <- j + 1;
      }
      i <- i + 1;
    }
    j <- 16;
    while (j < 80) {
      i <- 0;
      while (i < 3) {
        temp.[0] <-
        (w.[(((i * 320) + (j * 4)) - 12)] `^` w.[(((i * 320) + (j * 4)) - 40)]);
        temp.[1] <-
        (w.[(((i * 320) + (j * 4)) - 11)] `^` w.[(((i * 320) + (j * 4)) - 39)]);
        temp.[2] <-
        (w.[(((i * 320) + (j * 4)) - 10)] `^` w.[(((i * 320) + (j * 4)) - 38)]);
        temp.[3] <-
        (w.[(((i * 320) + (j * 4)) - 9)] `^` w.[(((i * 320) + (j * 4)) - 37)]);
        temp.[0] <- (temp.[0] `^` w.[(((i * 320) + (j * 4)) - 56)]);
        temp.[1] <- (temp.[1] `^` w.[(((i * 320) + (j * 4)) - 55)]);
        temp.[2] <- (temp.[2] `^` w.[(((i * 320) + (j * 4)) - 54)]);
        temp.[3] <- (temp.[3] `^` w.[(((i * 320) + (j * 4)) - 53)]);
        temp.[0] <- (temp.[0] `^` w.[(((i * 320) + (j * 4)) - 64)]);
        temp.[1] <- (temp.[1] `^` w.[(((i * 320) + (j * 4)) - 63)]);
        temp.[2] <- (temp.[2] `^` w.[(((i * 320) + (j * 4)) - 62)]);
        temp.[3] <- (temp.[3] `^` w.[(((i * 320) + (j * 4)) - 61)]);
        aux <@ lEFTROTATE (temp, 1, aux);
        w.[((i * 320) + (j * 4))] <- aux.[0];
        w.[(((i * 320) + (j * 4)) + 1)] <- aux.[1];
        w.[(((i * 320) + (j * 4)) + 2)] <- aux.[2];
        w.[(((i * 320) + (j * 4)) + 3)] <- aux.[3];
        i <- i + 1;
      }
      j <- j + 1;
    }
    i <- 0;
    while (i < 3) {
      a.[(i * 4)] <- (get8 (WArray20.init32 (fun i => hA.[i])) 0);
      a.[((i * 4) + 1)] <- (get8 (WArray20.init32 (fun i => hA.[i])) 1);
      a.[((i * 4) + 2)] <- (get8 (WArray20.init32 (fun i => hA.[i])) 2);
      a.[((i * 4) + 3)] <- (get8 (WArray20.init32 (fun i => hA.[i])) 3);
      b.[(i * 4)] <- (get8 (WArray20.init32 (fun i => hA.[i])) 5);
      b.[((i * 4) + 1)] <- (get8 (WArray20.init32 (fun i => hA.[i])) 6);
      b.[((i * 4) + 2)] <- (get8 (WArray20.init32 (fun i => hA.[i])) 7);
      b.[((i * 4) + 3)] <- (get8 (WArray20.init32 (fun i => hA.[i])) 8);
      c.[(i * 4)] <- (get8 (WArray20.init32 (fun i => hA.[i])) 0);
      c.[((i * 4) + 1)] <- (get8 (WArray20.init32 (fun i => hA.[i])) 10);
      c.[((i * 4) + 2)] <- (get8 (WArray20.init32 (fun i => hA.[i])) 11);
      c.[((i * 4) + 3)] <- (get8 (WArray20.init32 (fun i => hA.[i])) 12);
      d.[(i * 4)] <- (get8 (WArray20.init32 (fun i => hA.[i])) 13);
      d.[((i * 4) + 1)] <- (get8 (WArray20.init32 (fun i => hA.[i])) 14);
      d.[((i * 4) + 2)] <- (get8 (WArray20.init32 (fun i => hA.[i])) 15);
      d.[((i * 4) + 3)] <- (get8 (WArray20.init32 (fun i => hA.[i])) 16);
      e.[(i * 4)] <- (get8 (WArray20.init32 (fun i => hA.[i])) 17);
      e.[((i * 4) + 1)] <- (get8 (WArray20.init32 (fun i => hA.[i])) 18);
      e.[((i * 4) + 2)] <- (get8 (WArray20.init32 (fun i => hA.[i])) 19);
      e.[((i * 4) + 3)] <- (get8 (WArray20.init32 (fun i => hA.[i])) 20);
      i <- i + 1;
    }
    j <- 0;
    while (j < 80) {
      if ((j <= 19)) {
        i <- 0;
        while (i < 3) {
          f.[(i * 4)] <- (c.[(i * 4)] `^` d.[(i * 4)]);
          f.[((i * 4) + 1)] <- (c.[((i * 4) + 1)] `^` d.[((i * 4) + 1)]);
          f.[((i * 4) + 2)] <- (c.[((i * 4) + 2)] `^` d.[((i * 4) + 2)]);
          f.[((i * 4) + 3)] <- (c.[((i * 4) + 3)] `^` d.[((i * 4) + 3)]);
          i <- i + 1;
        }
        aux <- f;
        (f, randCount, countY, views_y) <@ mpc_AND (b, aux, f, randomness,
        randCount, views_y, countY, mpcRounds);
        i <- 0;
        while (i < 3) {
          f.[(i * 4)] <- (d.[(i * 4)] `^` f.[(i * 4)]);
          f.[((i * 4) + 1)] <- (d.[((i * 4) + 1)] `^` f.[((i * 4) + 1)]);
          f.[((i * 4) + 2)] <- (d.[((i * 4) + 2)] `^` f.[((i * 4) + 2)]);
          f.[((i * 4) + 3)] <- (d.[((i * 4) + 3)] `^` f.[((i * 4) + 3)]);
          i <- i + 1;
        }
        k_aux.[0] <- (W32.of_int 1518500249);
        k.[0] <- (get8 (WArray4.init32 (fun i => k_aux.[i])) 0);
        k.[1] <- (get8 (WArray4.init32 (fun i => k_aux.[i])) 1);
        k.[2] <- (get8 (WArray4.init32 (fun i => k_aux.[i])) 2);
        k.[3] <- (get8 (WArray4.init32 (fun i => k_aux.[i])) 3);
      } else {
        
      }
      if ((j <= 39)) {
        i <- 0;
        while (i < 3) {
          f.[(i * 4)] <- (b.[(i * 4)] `^` c.[(i * 4)]);
          f.[((i * 4) + 1)] <- (b.[((i * 4) + 1)] `^` c.[((i * 4) + 1)]);
          f.[((i * 4) + 2)] <- (b.[((i * 4) + 2)] `^` c.[((i * 4) + 2)]);
          f.[((i * 4) + 3)] <- (b.[((i * 4) + 3)] `^` c.[((i * 4) + 3)]);
          f.[(i * 4)] <- (d.[(i * 4)] `^` f.[(i * 4)]);
          f.[((i * 4) + 1)] <- (d.[((i * 4) + 1)] `^` f.[((i * 4) + 1)]);
          f.[((i * 4) + 2)] <- (d.[((i * 4) + 2)] `^` f.[((i * 4) + 2)]);
          f.[((i * 4) + 3)] <- (d.[((i * 4) + 3)] `^` f.[((i * 4) + 3)]);
          i <- i + 1;
        }
        k_aux.[0] <- (W32.of_int 1859775393);
        k.[0] <- (get8 (WArray4.init32 (fun i => k_aux.[i])) 0);
        k.[1] <- (get8 (WArray4.init32 (fun i => k_aux.[i])) 1);
        k.[2] <- (get8 (WArray4.init32 (fun i => k_aux.[i])) 2);
        k.[3] <- (get8 (WArray4.init32 (fun i => k_aux.[i])) 3);
      } else {
        
      }
      if ((j <= 59)) {
        (f, randCount, countY, views_y) <@ mpc_MAJ (b, c, d, f, randomness,
        randCount, views_y, countY, mpcRounds);
        k_aux.[0] <- (W32.of_int 2400959708);
        k.[0] <- (get8 (WArray4.init32 (fun i => k_aux.[i])) 0);
        k.[1] <- (get8 (WArray4.init32 (fun i => k_aux.[i])) 1);
        k.[2] <- (get8 (WArray4.init32 (fun i => k_aux.[i])) 2);
        k.[3] <- (get8 (WArray4.init32 (fun i => k_aux.[i])) 3);
      } else {
        i <- 0;
        while (i < 3) {
          f.[(i * 4)] <- (b.[(i * 4)] `^` c.[(i * 4)]);
          f.[((i * 4) + 1)] <- (b.[((i * 4) + 1)] `^` c.[((i * 4) + 1)]);
          f.[((i * 4) + 2)] <- (b.[((i * 4) + 2)] `^` c.[((i * 4) + 2)]);
          f.[((i * 4) + 3)] <- (b.[((i * 4) + 3)] `^` c.[((i * 4) + 3)]);
          f.[(i * 4)] <- (d.[(i * 4)] `^` f.[(i * 4)]);
          f.[((i * 4) + 1)] <- (d.[((i * 4) + 1)] `^` f.[((i * 4) + 1)]);
          f.[((i * 4) + 2)] <- (d.[((i * 4) + 2)] `^` f.[((i * 4) + 2)]);
          f.[((i * 4) + 3)] <- (d.[((i * 4) + 3)] `^` f.[((i * 4) + 3)]);
          i <- i + 1;
        }
        k_aux.[0] <- (W32.of_int 3395469782);
        k.[0] <- (get8 (WArray4.init32 (fun i => k_aux.[i])) 0);
        k.[1] <- (get8 (WArray4.init32 (fun i => k_aux.[i])) 1);
        k.[2] <- (get8 (WArray4.init32 (fun i => k_aux.[i])) 2);
        k.[3] <- (get8 (WArray4.init32 (fun i => k_aux.[i])) 3);
      }
      temp <@ lEFTROTATE (a, 5, temp);
      aux <- temp;
      (temp, randCount, countY, views_y) <@ mpc_ADD (f, aux, temp,
      randomness, randCount, views_y, countY, mpcRounds);
      aux <- temp;
      (temp, randCount, countY, views_y) <@ mpc_ADD (e, aux, temp,
      randomness, randCount, views_y, countY, mpcRounds);
      (temp, randCount, countY, views_y) <@ mpc_ADD_K (temp, k, randomness,
      randCount, views_y, countY, mpcRounds);
      (temp, randCount, countY, views_y) <@ mpc_ADD_W (w, temp, randomness,
      randCount, views_y, countY, i, mpcRounds);
      i <- 0;
      while (i < 3) {
        e.[(i * 4)] <- d.[(i * 4)];
        e.[((i * 4) + 1)] <- d.[((i * 4) + 1)];
        e.[((i * 4) + 2)] <- d.[((i * 4) + 2)];
        e.[((i * 4) + 3)] <- d.[((i * 4) + 3)];
        d.[(i * 4)] <- c.[(i * 4)];
        d.[((i * 4) + 1)] <- c.[((i * 4) + 1)];
        d.[((i * 4) + 2)] <- c.[((i * 4) + 2)];
        d.[((i * 4) + 3)] <- c.[((i * 4) + 3)];
        aux <- c;
        c <@ lEFTROTATE (aux, 30, c);
        b.[(i * 4)] <- a.[(i * 4)];
        b.[((i * 4) + 1)] <- a.[((i * 4) + 1)];
        b.[((i * 4) + 2)] <- a.[((i * 4) + 2)];
        b.[((i * 4) + 3)] <- a.[((i * 4) + 3)];
        a.[(i * 4)] <- temp.[(i * 4)];
        a.[((i * 4) + 1)] <- temp.[((i * 4) + 1)];
        a.[((i * 4) + 2)] <- temp.[((i * 4) + 2)];
        a.[((i * 4) + 3)] <- temp.[((i * 4) + 3)];
        i <- i + 1;
      }
      j <- j + 1;
    }
    hHa_aux <- hHa;
    (hHa, randCount, countY, views_y) <@ mpc_ADD_hHa (hHa_aux, a, hHa,
    randomness, randCount, views_y, countY, 0, mpcRounds);
    hHa_aux <- hHa;
    (hHa, randCount, countY, views_y) <@ mpc_ADD_hHa (hHa_aux, b, hHa,
    randomness, randCount, views_y, countY, 1, mpcRounds);
    hHa_aux <- hHa;
    (hHa, randCount, countY, views_y) <@ mpc_ADD_hHa (hHa_aux, c, hHa,
    randomness, randCount, views_y, countY, 2, mpcRounds);
    hHa_aux <- hHa;
    (hHa, randCount, countY, views_y) <@ mpc_ADD_hHa (hHa_aux, d, hHa,
    randomness, randCount, views_y, countY, 3, mpcRounds);
    hHa_aux <- hHa;
    (hHa, randCount, countY, views_y) <@ mpc_ADD_hHa (hHa_aux, e, hHa,
    randomness, randCount, views_y, countY, 4, mpcRounds);
    i <- 0;
    while (i < 5) {
      t0 <@ rIGHTSHIFT (hHa, 24, t0, i);
      j <- 0;
      while (j < 3) {
        results.[((j * 32) + (i * 4))] <- t0.[(j * 4)];
        results.[(((j * 32) + (i * 4)) + 1)] <- t0.[((j * 4) + 1)];
        results.[(((j * 32) + (i * 4)) + 2)] <- t0.[((j * 4) + 2)];
        results.[(((j * 32) + (i * 4)) + 3)] <- t0.[((j * 4) + 3)];
        j <- j + 1;
      }
      t0 <@ rIGHTSHIFT (hHa, 16, t0, i);
      j <- 0;
      while (j < 3) {
        results.[((j * 32) + ((i + 1) * 4))] <- t0.[(j * 4)];
        results.[(((j * 32) + ((i + 1) * 4)) + 1)] <- t0.[((j * 4) + 1)];
        results.[(((j * 32) + ((i + 1) * 4)) + 2)] <- t0.[((j * 4) + 2)];
        results.[(((j * 32) + ((i + 1) * 4)) + 3)] <- t0.[((j * 4) + 3)];
        j <- j + 1;
      }
      t0 <@ rIGHTSHIFT (hHa, 8, t0, i);
      j <- 0;
      while (j < 3) {
        results.[((j * 32) + ((i + 2) * 4))] <- t0.[(j * 4)];
        results.[(((j * 32) + ((i + 2) * 4)) + 1)] <- t0.[((j * 4) + 1)];
        results.[(((j * 32) + ((i + 2) * 4)) + 2)] <- t0.[((j * 4) + 2)];
        results.[(((j * 32) + ((i + 2) * 4)) + 3)] <- t0.[((j * 4) + 3)];
        j <- j + 1;
      }
      j <- 0;
      while (j < 3) {
        results.[((j * 32) + ((i + 3) * 4))] <- hHa.[((j * 20) + (i * 4))];
        results.[(((j * 32) + ((i + 3) * 4)) + 1)] <-
        hHa.[(((j * 20) + (i * 4)) + 1)];
        results.[(((j * 32) + ((i + 3) * 4)) + 2)] <-
        hHa.[(((j * 20) + (i * 4)) + 2)];
        results.[(((j * 32) + ((i + 3) * 4)) + 3)] <-
        hHa.[(((j * 20) + (i * 4)) + 3)];
        j <- j + 1;
      }
      i <- i + 1;
    }
    return (results, views_x, views_y, countY);
  }
  
  proc commits (numBits:int, shares:W8.t Array6144.t,
                randomness:W8.t Array565248.t, views_x:W8.t Array24576.t,
                views_y:W8.t Array568320.t, countY:int,
                a_yp:W8.t Array12288.t, mpc_idx:int, mpcRounds:int) : 
  W8.t Array24576.t * W8.t Array568320.t * int * W8.t Array12288.t = {
    var aux: int;
    
    var hashes:W8.t Array96.t;
    var j:int;
    var i:int;
    hashes <- witness;
    (hashes, views_x, views_y, countY) <@ mpc_SHA1 (hashes, shares, numBits,
    randomness, views_x, views_y, countY, mpcRounds);
    j <- 0;
    while (j < 5) {
      i <- 0;
      while (i < 3) {
        views_y.[(((1480 * mpcRounds) * i) + countY)] <-
        hashes.[((32 * i) + (j * 4))];
        views_y.[((((1480 * mpcRounds) * i) + countY) + 1)] <-
        hashes.[(((32 * i) + (j * 4)) + 1)];
        views_y.[((((1480 * mpcRounds) * i) + countY) + 2)] <-
        hashes.[(((32 * i) + (j * 4)) + 2)];
        views_y.[((((1480 * mpcRounds) * i) + countY) + 3)] <-
        hashes.[(((32 * i) + (j * 4)) + 3)];
        i <- i + 1;
      }
      countY <- (countY + 4);
      j <- j + 1;
    }
    j <- 20;
    
    while ((0 < j)) {
      a_yp.[((32 * mpc_idx) + j)] <- views_y.[(countY - j)];
      a_yp.[((32 + (32 * mpc_idx)) + j)] <- views_y.[((1480 + countY) - j)];
      a_yp.[((64 + (32 * mpc_idx)) + j)] <- views_y.[((2960 + countY) - j)];
    }
    return (views_x, views_y, countY, a_yp);
  }
  
  proc rOTRIGHT (a:W32.t, b:int) : W32.t = {
    
    var aux:W32.t;
    
    aux <- ((a `>>` (W8.of_int b)) `|` (a `<<` (W8.of_int (32 - b))));
    return (aux);
  }
  
  proc eP0 (x:W8.t Array4.t) : W32.t = {
    
    var aux0:W32.t;
    var aux:W32.t;
    var aux1:W32.t;
    var aux2:W32.t;
    
    aux <- (get32 (WArray4.init8 (fun i => x.[i])) 0);
    aux0 <@ rOTRIGHT (aux, 2);
    aux1 <@ rOTRIGHT (aux, 13);
    aux2 <@ rOTRIGHT (aux, 22);
    aux0 <- (aux0 `^` (aux1 `^` aux2));
    return (aux0);
  }
  
  proc eP1 (x:W8.t Array4.t) : W32.t = {
    
    var aux0:W32.t;
    var aux:W32.t;
    var aux1:W32.t;
    var aux2:W32.t;
    
    aux <- (get32 (WArray4.init8 (fun i => x.[i])) 0);
    aux0 <@ rOTRIGHT (aux, 6);
    aux1 <@ rOTRIGHT (aux, 11);
    aux2 <@ rOTRIGHT (aux, 25);
    aux0 <- (aux0 `^` (aux1 `^` aux2));
    return (aux0);
  }
  
  proc sIG0 (x:W32.t) : W32.t = {
    
    var aux:W32.t;
    var aux0:W32.t;
    var aux1:W32.t;
    var aux2:W32.t;
    
    aux0 <@ rOTRIGHT (x, 7);
    aux1 <@ rOTRIGHT (x, 18);
    aux2 <- (x `>>` (W8.of_int 3));
    aux <- ((aux0 `^` aux1) `^` aux2);
    return (aux);
  }
  
  proc sIG1 (x:W32.t) : W32.t = {
    
    var aux:W32.t;
    var aux0:W32.t;
    var aux1:W32.t;
    
    aux0 <@ rOTRIGHT (x, 17);
    aux1 <@ rOTRIGHT (x, 19);
    aux <- ((aux0 `^` aux1) `^` (x `>>` (W8.of_int 10)));
    return (aux);
  }
  
  proc cH (x:W8.t Array4.t, y:W8.t Array4.t, z:W8.t Array4.t) : W32.t = {
    
    var aux:W32.t;
    
    aux <-
    (((get32 (WArray4.init8 (fun i => x.[i])) 0) `&` (get32
                                                     (WArray4.init8 (fun i => y.[i]))
                                                     0)) `^` (((get32
                                                               (WArray4.init8 (fun i => x.[i]))
                                                               0) `^` (W32.of_int 255)) `&` 
    (get32 (WArray4.init8 (fun i => z.[i])) 0)));
    return (aux);
  }
  
  proc mAJ (x:W8.t Array4.t, y:W8.t Array4.t, z:W8.t Array4.t) : W32.t = {
    
    var aux:W32.t;
    var i:int;
    
    aux <-
    ((((get32 (WArray4.init8 (fun i => x.[i])) i) `&` (get32
                                                      (WArray4.init8 (fun i => y.[i]))
                                                      i)) `^` ((get32
                                                               (WArray4.init8 (fun i => x.[i]))
                                                               i) `&` 
    (get32 (WArray4.init8 (fun i => z.[i])) i))) `^` ((get32
                                                      (WArray4.init8 (fun i => y.[i]))
                                                      i) `&` (get32
                                                             (WArray4.init8 (fun i => z.[i]))
                                                             i)));
    return (aux);
  }
  
  proc initializeK (k:W32.t Array64.t) : W32.t Array64.t = {
    
    
    
    k.[0] <- (W32.of_int 1116352408);
    k.[1] <- (W32.of_int 1899447441);
    k.[2] <- (W32.of_int 3049323471);
    k.[3] <- (W32.of_int 3921009573);
    k.[4] <- (W32.of_int 961987163);
    k.[5] <- (W32.of_int 1508970993);
    k.[6] <- (W32.of_int 2453635748);
    k.[7] <- (W32.of_int 2870763221);
    k.[8] <- (W32.of_int 3624381080);
    k.[9] <- (W32.of_int 310598401);
    k.[10] <- (W32.of_int 607225278);
    k.[11] <- (W32.of_int 1426881987);
    k.[12] <- (W32.of_int 1925078388);
    k.[13] <- (W32.of_int 2162078206);
    k.[14] <- (W32.of_int 2614888103);
    k.[15] <- (W32.of_int 3248222580);
    k.[16] <- (W32.of_int 3835390401);
    k.[17] <- (W32.of_int 4022224774);
    k.[18] <- (W32.of_int 264347078);
    k.[19] <- (W32.of_int 604807628);
    k.[20] <- (W32.of_int 770255983);
    k.[21] <- (W32.of_int 1249150122);
    k.[22] <- (W32.of_int 1555081692);
    k.[23] <- (W32.of_int 1996064986);
    k.[24] <- (W32.of_int 2554220882);
    k.[25] <- (W32.of_int 2821834349);
    k.[26] <- (W32.of_int 2952996808);
    k.[27] <- (W32.of_int 3210313671);
    k.[28] <- (W32.of_int 3336571891);
    k.[29] <- (W32.of_int 3584528711);
    k.[30] <- (W32.of_int 113926993);
    k.[31] <- (W32.of_int 338241895);
    k.[32] <- (W32.of_int 666307205);
    k.[33] <- (W32.of_int 773529912);
    k.[34] <- (W32.of_int 1294757372);
    k.[35] <- (W32.of_int 1396182291);
    k.[36] <- (W32.of_int 1695183700);
    k.[37] <- (W32.of_int 1986661051);
    k.[38] <- (W32.of_int 2177026350);
    k.[39] <- (W32.of_int 2456956037);
    k.[40] <- (W32.of_int 2730485921);
    k.[41] <- (W32.of_int 2820302411);
    k.[42] <- (W32.of_int 3259730800);
    k.[43] <- (W32.of_int 3345764771);
    k.[44] <- (W32.of_int 3516065817);
    k.[45] <- (W32.of_int 3600352804);
    k.[46] <- (W32.of_int 4094571909);
    k.[47] <- (W32.of_int 275423344);
    k.[48] <- (W32.of_int 430227734);
    k.[49] <- (W32.of_int 506948616);
    k.[50] <- (W32.of_int 659060556);
    k.[51] <- (W32.of_int 883997877);
    k.[52] <- (W32.of_int 958139571);
    k.[53] <- (W32.of_int 1322822218);
    k.[54] <- (W32.of_int 1537002063);
    k.[55] <- (W32.of_int 1747873779);
    k.[56] <- (W32.of_int 1955562222);
    k.[57] <- (W32.of_int 2024104815);
    k.[58] <- (W32.of_int 2227730452);
    k.[59] <- (W32.of_int 2361852424);
    k.[60] <- (W32.of_int 2428436474);
    k.[61] <- (W32.of_int 2756734187);
    k.[62] <- (W32.of_int 3204031479);
    k.[63] <- (W32.of_int 3329325298);
    return (k);
  }
  
  proc sha256_transform (ctx_state:W8.t Array32.t, ctx_data:W8.t Array64.t) : 
  W8.t Array32.t = {
    var aux: int;
    
    var k:W32.t Array64.t;
    var j:int;
    var m:W8.t Array256.t;
    var i:int;
    var aux0:W32.t;
    var aux1:W32.t;
    var sig0:W32.t;
    var sig1:W32.t;
    var a:W8.t Array4.t;
    var b:W8.t Array4.t;
    var c:W8.t Array4.t;
    var d:W8.t Array4.t;
    var e:W8.t Array4.t;
    var f:W8.t Array4.t;
    var g:W8.t Array4.t;
    var h_0:W8.t Array4.t;
    var t1:W8.t Array4.t;
    var t2:W8.t Array4.t;
    a <- witness;
    b <- witness;
    c <- witness;
    d <- witness;
    e <- witness;
    f <- witness;
    g <- witness;
    h_0 <- witness;
    k <- witness;
    m <- witness;
    t1 <- witness;
    t2 <- witness;
    k <@ initializeK (k);
    j <- 0;
    i <- 0;
    while (i < 16) {
      m.[j] <- ctx_data.[j];
      m.[(j + 1)] <- ctx_data.[(j + 1)];
      m.[(j + 2)] <- ctx_data.[(j + 2)];
      m.[(j + 3)] <- ctx_data.[(j + 3)];
      j <- (j + 4);
      i <- i + 1;
    }
    i <- 16;
    while (i < 64) {
      aux0 <- (get32 (WArray256.init8 (fun i => m.[i])) (i - 15));
      aux1 <- (get32 (WArray256.init8 (fun i => m.[i])) (i - 2));
      sig0 <@ sIG0 (aux0);
      sig1 <@ sIG1 (aux1);
      m.[i] <-
      ((((truncateu8 sig1) + m.[(i - 7)]) + (truncateu8 sig0)) + m.[(i - 16)]);
      i <- i + 1;
    }
    i <- 0;
    while (i < 4) {
      a.[i] <- ctx_state.[i];
      b.[i] <- ctx_state.[(4 + i)];
      c.[i] <- ctx_state.[(8 + i)];
      d.[i] <- ctx_state.[(12 + i)];
      e.[i] <- ctx_state.[(16 + i)];
      f.[i] <- ctx_state.[(20 + i)];
      g.[i] <- ctx_state.[(24 + i)];
      h_0.[i] <- ctx_state.[(28 + i)];
      i <- i + 1;
    }
    i <- 0;
    while (i < 64) {
      sig0 <@ eP1 (e);
      sig1 <@ cH (e, f, g);
      t1 =
      Array4.init
      (WArray4.get8 (WArray4.set32 (WArray4.init8 (fun i => t1.[i])) 0 ((((
      (get32 (WArray4.init8 (fun i => h_0.[i])) 0) + sig0) + sig1) + 
      k.[i]) + (get32 (WArray256.init8 (fun i => m.[i])) i))));
      sig0 <@ eP0 (a);
      sig1 <@ mAJ (a, b, c);
      t2 =
      Array4.init
      (WArray4.get8 (WArray4.set32 (WArray4.init8 (fun i => t2.[i])) 0 (sig0 + sig1)));
      h_0 <- g;
      g <- f;
      f <- e;
      e =
      Array4.init
      (WArray4.get8 (WArray4.set32 (WArray4.init8 (fun i => e.[i])) 0 (
      (get32 (WArray4.init8 (fun i => d.[i])) 0) + (get32
                                                   (WArray4.init8 (fun i => t1.[i]))
                                                   0))));
      d <- c;
      c <- b;
      b <- a;
      a =
      Array4.init
      (WArray4.get8 (WArray4.set32 (WArray4.init8 (fun i => a.[i])) 0 (
      (get32 (WArray4.init8 (fun i => t1.[i])) 0) + (get32
                                                    (WArray4.init8 (fun i => t2.[i]))
                                                    0))));
      i <- i + 1;
    }
    i <- 0;
    while (i < 4) {
      ctx_state.[i] <- (ctx_state.[i] + a.[i]);
      ctx_state.[(4 + i)] <- (ctx_state.[(4 + i)] + b.[i]);
      ctx_state.[(8 + i)] <- (ctx_state.[(8 + i)] + c.[i]);
      ctx_state.[(12 + i)] <- (ctx_state.[(12 + i)] + d.[i]);
      ctx_state.[(16 + i)] <- (ctx_state.[(16 + i)] + e.[i]);
      ctx_state.[(20 + i)] <- (ctx_state.[(20 + i)] + f.[i]);
      ctx_state.[(24 + i)] <- (ctx_state.[(24 + i)] + g.[i]);
      ctx_state.[(28 + i)] <- (ctx_state.[(28 + i)] + h_0.[i]);
      i <- i + 1;
    }
    return (ctx_state);
  }
  
  proc sha256_init (ctx_state:W8.t Array32.t, ctx_datalen:W32.t,
                    ctx_bitlen:W64.t) : W8.t Array32.t * W32.t * W64.t = {
    
    
    
    ctx_datalen <- (W32.of_int 0);
    ctx_bitlen <- (W64.of_int 0);
    ctx_state =
    Array32.init
    (WArray32.get8 (WArray32.set32 (WArray32.init8 (fun i => ctx_state.[i])) 0 (W32.of_int 1779033703)));
    ctx_state =
    Array32.init
    (WArray32.get8 (WArray32.set32 (WArray32.init8 (fun i => ctx_state.[i])) 1 (W32.of_int 3144134277)));
    ctx_state =
    Array32.init
    (WArray32.get8 (WArray32.set32 (WArray32.init8 (fun i => ctx_state.[i])) 2 (W32.of_int 1013904242)));
    ctx_state =
    Array32.init
    (WArray32.get8 (WArray32.set32 (WArray32.init8 (fun i => ctx_state.[i])) 3 (W32.of_int 2773480762)));
    ctx_state =
    Array32.init
    (WArray32.get8 (WArray32.set32 (WArray32.init8 (fun i => ctx_state.[i])) 4 (W32.of_int 1359893119)));
    ctx_state =
    Array32.init
    (WArray32.get8 (WArray32.set32 (WArray32.init8 (fun i => ctx_state.[i])) 5 (W32.of_int 2600822924)));
    ctx_state =
    Array32.init
    (WArray32.get8 (WArray32.set32 (WArray32.init8 (fun i => ctx_state.[i])) 6 (W32.of_int 528734635)));
    ctx_state =
    Array32.init
    (WArray32.get8 (WArray32.set32 (WArray32.init8 (fun i => ctx_state.[i])) 7 (W32.of_int 1541459225)));
    return (ctx_state, ctx_datalen, ctx_bitlen);
  }
  
  proc h (keys:W8.t Array6144.t, views_x:W8.t Array24576.t,
          views_y:W8.t Array568320.t, rs:W8.t Array1536.t,
          a_h:W8.t Array12288.t, mpcRounds:int) : W8.t Array12288.t = {
    var aux: int;
    
    var ctx_state:W8.t Array32.t;
    var ctx_datalen:W32.t;
    var ctx_bitlen:W64.t;
    var i:int;
    var j:int;
    var z:int;
    var keys_aux:W8.t Array16.t;
    var viewsX_aux:W8.t Array64.t;
    var rs_aux:W8.t Array12.t;
    var viewsY_aux:W8.t Array370.t;
    ctx_state <- witness;
    keys_aux <- witness;
    rs_aux <- witness;
    viewsX_aux <- witness;
    viewsY_aux <- witness;
    aux <- mpcRounds;
    i <- 0;
    while (i < aux) {
      j <- 0;
      while (j < 3) {
        (ctx_state, ctx_datalen, ctx_bitlen) <@ sha256_init (ctx_state,
        ctx_datalen, ctx_bitlen);
        z <- 0;
        while (z < 16) {
          keys_aux.[z] <- keys.[(((j * 16) * mpcRounds) + (i * 16))];
          viewsX_aux.[(z * 4)] <-
          views_x.[((((j * 64) * mpcRounds) + (i * 64)) + (z * 4))];
          viewsX_aux.[((z * 4) + 1)] <-
          views_x.[(((((j * 64) * mpcRounds) + (i * 64)) + (z * 4)) + 1)];
          viewsX_aux.[((z * 4) + 2)] <-
          views_x.[(((((j * 64) * mpcRounds) + (i * 64)) + (z * 4)) + 2)];
          viewsX_aux.[((z * 4) + 3)] <-
          views_x.[(((((j * 64) * mpcRounds) + (i * 64)) + (z * 4)) + 3)];
          if ((z < 12)) {
            rs_aux.[z] <- rs.[((((j * 4) * mpcRounds) + (i * 12)) + z)];
          } else {
            
          }
          z <- z + 1;
        }
        z <- 0;
        while (z < 370) {
          viewsY_aux.[z] <-
          views_y.[((((j * 1480) * mpcRounds) + (i * 370)) + z)];
          z <- z + 1;
        }
        j <- j + 1;
      }
      i <- i + 1;
    }
    return (a_h);
  }
  
  proc sha256_update5 (ctx_state:W8.t Array32.t, ctx_data:W8.t Array64.t,
                       ctx_datalen:W32.t, ctx_bitlen:W64.t,
                       data:W8.t Array32.t, len:int) : W8.t Array32.t *
                                                       W32.t * W64.t = {
    var aux: int;
    
    var i:int;
    
    aux <- len;
    i <- 0;
    while (i < aux) {
      ctx_data.[(W32.to_uint ctx_datalen)] <- data.[i];
      ctx_datalen <- (ctx_datalen + (W32.of_int 1));
      if ((ctx_datalen = (W32.of_int 64))) {
        ctx_state <@ sha256_transform (ctx_state, ctx_data);
        ctx_bitlen <- (ctx_bitlen + (W64.of_int 512));
        ctx_datalen <- (W32.of_int 0);
      } else {
        
      }
      i <- i + 1;
    }
    return (ctx_state, ctx_datalen, ctx_bitlen);
  }
  
  proc sha256_update6 (ctx_state:W8.t Array32.t, ctx_data:W8.t Array64.t,
                       ctx_datalen:W32.t, ctx_bitlen:W64.t,
                       data:W8.t Array12288.t, len:int) : W8.t Array32.t *
                                                          W32.t * W64.t = {
    var aux: int;
    
    var i:int;
    
    aux <- len;
    i <- 0;
    while (i < aux) {
      ctx_data.[(W32.to_uint ctx_datalen)] <- data.[i];
      ctx_datalen <- (ctx_datalen + (W32.of_int 1));
      if ((ctx_datalen = (W32.of_int 64))) {
        ctx_state <@ sha256_transform (ctx_state, ctx_data);
        ctx_bitlen <- (ctx_bitlen + (W64.of_int 512));
        ctx_datalen <- (W32.of_int 0);
      } else {
        
      }
      i <- i + 1;
    }
    return (ctx_state, ctx_datalen, ctx_bitlen);
  }
  
  proc sha256_final1 (ctx_state:W8.t Array32.t, ctx_data:W8.t Array64.t,
                      ctx_datalen:W32.t, ctx_bitlen:W64.t,
                      hash:W8.t Array32.t) : W8.t Array32.t = {
    var aux: int;
    
    var i:int;
    var datalen_aux:W32.t Array2.t;
    datalen_aux <- witness;
    i <- (W32.to_uint ctx_datalen);
    if ((ctx_datalen \ult (W32.of_int 56))) {
      ctx_data.[i] <- (W8.of_int 128);
      i <- (i + 1);
      
      while ((i < 56)) {
        ctx_data.[i] <- (W8.of_int 0);
        i <- (i + 1);
      }
    } else {
      ctx_data.[i] <- (W8.of_int 128);
      i <- (i + 1);
      
      while ((i < 64)) {
        ctx_data.[i] <- (W8.of_int 0);
        i <- (i + 1);
      }
      ctx_state <@ sha256_transform (ctx_state, ctx_data);
      i <- 0;
      while (i < 56) {
        ctx_data.[i] <- (W8.of_int 0);
        i <- i + 1;
      }
    }
    datalen_aux.[0] <- (W32.of_int 0);
    datalen_aux.[1] <- ctx_datalen;
    ctx_bitlen <-
    (ctx_bitlen + ((get64 (WArray8.init32 (fun i => datalen_aux.[i])) 0) * (W64.of_int 8)));
    ctx_data =
    Array64.init
    (WArray64.get8 (WArray64.set64 (WArray64.init8 (fun i => ctx_data.[i])) 7 ctx_bitlen));
    ctx_state <@ sha256_transform (ctx_state, ctx_data);
    i <- 0;
    while (i < 4) {
      hash.[i] <- (ctx_state.[i] `&` (W8.of_int 255));
      hash.[(i + 4)] <- (ctx_state.[(i + 4)] `&` (W8.of_int 255));
      hash.[(i + 8)] <- (ctx_state.[(i + 8)] `&` (W8.of_int 255));
      hash.[(i + 12)] <- (ctx_state.[(i + 12)] `&` (W8.of_int 255));
      hash.[(i + 16)] <- (ctx_state.[(i + 16)] `&` (W8.of_int 255));
      hash.[(i + 20)] <- (ctx_state.[(i + 20)] `&` (W8.of_int 255));
      hash.[(i + 24)] <- (ctx_state.[(i + 24)] `&` (W8.of_int 255));
      hash.[(i + 28)] <- (ctx_state.[(i + 28)] `&` (W8.of_int 255));
      i <- i + 1;
    }
    return (hash);
  }
  
  proc h3 (y:W8.t Array32.t, a_yp:W8.t Array12288.t, a_h:W8.t Array12288.t,
           s:int, es:W8.t Array128.t) : W8.t Array128.t = {
    
    var ctx_state:W8.t Array32.t;
    var ctx_datalen:W32.t;
    var ctx_bitlen:W64.t;
    var ctx_data:W8.t Array64.t;
    var hash:W8.t Array32.t;
    var i:int;
    var bitTracker:int;
    var b1:W8.t;
    var b2:W8.t;
    ctx_data <- witness;
    ctx_state <- witness;
    hash <- witness;
    (ctx_state, ctx_datalen, ctx_bitlen) <@ sha256_init (ctx_state,
    ctx_datalen, ctx_bitlen);
    (ctx_state, ctx_datalen, ctx_bitlen) <@ sha256_update5 (ctx_state,
    ctx_data, ctx_datalen, ctx_bitlen, y, 20);
    (ctx_state, ctx_datalen, ctx_bitlen) <@ sha256_update6 (ctx_state,
    ctx_data, ctx_datalen, ctx_bitlen, a_yp, 12288);
    (ctx_state, ctx_datalen, ctx_bitlen) <@ sha256_update6 (ctx_state,
    ctx_data, ctx_datalen, ctx_bitlen, a_h, 12288);
    hash <@ sha256_final1 (ctx_state, ctx_data, ctx_datalen, ctx_bitlen,
    hash);
    i <- 0;
    bitTracker <- 0;
    
    while ((i < s)) {
      if ((256 <= bitTracker)) {
        (ctx_state, ctx_datalen, ctx_bitlen) <@ sha256_init (ctx_state,
        ctx_datalen, ctx_bitlen);
        (ctx_state, ctx_datalen, ctx_bitlen) <@ sha256_update5 (ctx_state,
        ctx_data, ctx_datalen, ctx_bitlen, hash, 32);
        hash <@ sha256_final1 (ctx_state, ctx_data, ctx_datalen, ctx_bitlen,
        hash);
        bitTracker <- 0;
      } else {
        
      }
      b1 <@ gETBIT_EXTENDED (hash, bitTracker);
      b2 <@ gETBIT_EXTENDED (hash, bitTracker);
      if ((b1 = (W8.of_int 0))) {
        if ((b2 = (W8.of_int 0))) {
          es.[i] <- (W8.of_int 0);
          bitTracker <- (bitTracker + 2);
          i <- (i + 1);
        } else {
          es.[i] <- (W8.of_int 1);
          bitTracker <- (bitTracker + 2);
          i <- (i + 1);
        }
      } else {
        if ((b2 = (W8.of_int 0))) {
          es.[i] <- (W8.of_int 2);
          bitTracker <- (bitTracker + 2);
          i <- (i + 1);
        } else {
          bitTracker <- (bitTracker + 2);
        }
      }
    }
    return (es);
  }
  
  proc prove (es:W8.t Array128.t, keys:W8.t Array6144.t, rs:W8.t Array1536.t,
              views_x:W8.t Array24576.t, views_y:W8.t Array568320.t,
              zs:W8.t Array400384.t, mpcRounds:int) : W8.t Array400384.t = {
    var aux: int;
    
    var i:int;
    var player:int;
    var j:int;
    
    aux <- mpcRounds;
    i <- 0;
    while (i < aux) {
      player <- (W8.to_uint ((es.[i] + (W8.of_int 1)) \umod (W8.of_int 3)));
      j <- 0;
      while (j < 16) {
        zs.[((i * 3128) + j)] <-
        keys.[(((((W8.to_uint es.[i]) * 16) * mpcRounds) + (i * 16)) + j)];
        zs.[(((i * 3128) + 16) + j)] <-
        keys.[((((player * 16) * mpcRounds) + (i * 16)) + j)];
        j <- j + 1;
      }
      j <- 0;
      while (j < 64) {
        zs.[(((i * 3128) + 32) + j)] <-
        views_x.[(((((W8.to_uint es.[i]) * 64) * mpcRounds) + (i * 64)) + j)];
        j <- j + 1;
      }
      j <- 0;
      while (j < 1480) {
        zs.[(((i * 3128) + 96) + j)] <-
        views_y.[(((((W8.to_uint es.[i]) * 1480) * mpcRounds) + (i * 1480)) + j)];
        j <- j + 1;
      }
      j <- 0;
      while (j < 64) {
        zs.[(((i * 3128) + 15761) + j)] <-
        views_x.[((((player * 64) * mpcRounds) + (i * 64)) + j)];
        j <- j + 1;
      }
      j <- 0;
      while (j < 1480) {
        zs.[(((i * 3128) + 1640) + j)] <-
        views_y.[((((player * 1480) * mpcRounds) + (i * 1480)) + j)];
        j <- j + 1;
      }
      j <- 0;
      while (j < 4) {
        zs.[(((i * 3128) + 3120) + j)] <-
        rs.[(((((W8.to_uint es.[i]) * 4) * mpcRounds) + (i * 4)) + j)];
        zs.[(((i * 3128) + 3124) + j)] <-
        rs.[((((player * 4) * mpcRounds) + (i * 4)) + j)];
        j <- j + 1;
      }
      i <- i + 1;
    }
    return (zs);
  }
  
  proc genKeys (publicKey:W8.t Array16.t, privateKey:W8.t Array16.t) : 
  W8.t Array16.t * W8.t Array16.t = {
    var aux: int;
    
    var i:int;
    
    i <- 0;
    while (i < 16) {
      publicKey.[i] <- (W8.of_int i);
      privateKey.[i] <- (W8.of_int i);
      i <- i + 1;
    }
    return (publicKey, privateKey);
  }
  
  proc genRandomValues1 (array:W8.t Array6144.t, mpcRounds:int) : W8.t Array6144.t = {
    var aux: int;
    
    var x:int;
    var i:int;
    var j:int;
    
    j <- 0;
    while (j < 3) {
      aux <- mpcRounds;
      i <- 0;
      while (i < aux) {
        x <- 0;
        while (x < 16) {
          array.[((((j * 16) * mpcRounds) + (i * 16)) + x)] <- (W8.of_int x);
          x <- x + 1;
        }
        i <- i + 1;
      }
      j <- j + 1;
    }
    return (array);
  }
  
  proc genRandomValues2 (array:W8.t Array1536.t, mpcRounds:int) : W8.t Array1536.t = {
    var aux: int;
    
    var x:int;
    var i:int;
    var j:int;
    
    j <- 0;
    while (j < 3) {
      aux <- mpcRounds;
      i <- 0;
      while (i < aux) {
        x <- 0;
        while (x < 16) {
          array.[((((j * 4) * mpcRounds) + (i * 4)) + x)] <- (W8.of_int x);
          x <- x + 1;
        }
        i <- i + 1;
      }
      j <- j + 1;
    }
    return (array);
  }
  
  proc genRandomness (randomness:W8.t Array565248.t, keys:W8.t Array6144.t,
                      mpcRounds:int) : W8.t Array565248.t = {
    var aux: int;
    
    var x:int;
    var i:int;
    var j:int;
    var rand_idx:int;
    
    j <- 0;
    while (j < 3) {
      aux <- mpcRounds;
      i <- 0;
      while (i < aux) {
        rand_idx <- 0;
        while (rand_idx < 96) {
          x <- 0;
          while (x < 16) {
            randomness.[(((((j * 1472) * mpcRounds) + (i * 1472)) + (rand_idx * 16)) + x)] <-
            keys.[((((j * 16) * mpcRounds) + (i * 16)) + x)];
            x <- x + 1;
          }
          rand_idx <- rand_idx + 1;
        }
        i <- i + 1;
      }
      j <- j + 1;
    }
    return (randomness);
  }
  
  proc sample_key_shares (privateKey:W8.t Array16.t, shares:W8.t Array6144.t,
                          i:int) : W8.t Array6144.t = {
    var aux: int;
    
    var j:int;
    
    j <- 0;
    while (j < 16) {
      shares.[((((i * 16) * 3) + (2 * 16)) + j)] <-
      ((privateKey.[j] `^` shares.[(((i * 16) * 3) + j)]) `^` shares.[((((i * 16) * 3) + 16) + j)]);
      j <- j + 1;
    }
    return (shares);
  }
  
  proc preparationZKBoo () : unit = {
    var aux: int;
    
    var mpcRounds:int;
    var numBytes:int;
    var countY:int;
    var publicKey:W8.t Array16.t;
    var privateKey:W8.t Array16.t;
    var keys:W8.t Array6144.t;
    var shares:W8.t Array6144.t;
    var rs:W8.t Array1536.t;
    var randomValues:W8.t Array565248.t;
    var i:int;
    var views_x:W8.t Array24576.t;
    var views_y:W8.t Array568320.t;
    var a_yp:W8.t Array12288.t;
    var a_h:W8.t Array12288.t;
    var j:int;
    var finalHash:W8.t Array32.t;
    var es:W8.t Array128.t;
    var zs:W8.t Array400384.t;
    a_h <- witness;
    a_yp <- witness;
    es <- witness;
    finalHash <- witness;
    keys <- witness;
    privateKey <- witness;
    publicKey <- witness;
    randomValues <- witness;
    rs <- witness;
    shares <- witness;
    views_x <- witness;
    views_y <- witness;
    zs <- witness;
    mpcRounds <- 128;
    numBytes <- 16;
    countY <- 0;
    (publicKey, privateKey) <@ genKeys (publicKey, privateKey);
    keys <@ genRandomValues1 (keys, mpcRounds);
    shares <@ genRandomValues1 (shares, mpcRounds);
    rs <@ genRandomValues2 (rs, mpcRounds);
    randomValues <@ genRandomness (randomValues, keys, mpcRounds);
    aux <- mpcRounds;
    i <- 0;
    while (i < aux) {
      shares <@ sample_key_shares (privateKey, shares, i);
      (views_x, views_y, countY, a_yp) <@ commits ((numBytes * 8), shares,
      randomValues, views_x, views_y, countY, a_yp, i, mpcRounds);
      a_h <@ h (keys, views_x, views_y, rs, a_h, mpcRounds);
      i <- i + 1;
    }
    j <- 0;
    while (j < 32) {
      finalHash.[j] <-
      ((a_yp.[j] `^` a_yp.[(4096 + j)]) `^` a_yp.[(8192 + j)]);
      j <- j + 1;
    }
    es <@ h3 (finalHash, a_yp, a_h, mpcRounds, es);
    zs <@ prove (es, keys, rs, views_x, views_y, zs, mpcRounds);
    return ();
  }
}.

