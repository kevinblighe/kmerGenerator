#! /usr/bin/awk
BEGIN{
  srand(565447);
  do {
    seq = substr("ATGC",int(1+rand()*4),1)substr("ATGC",int(1+rand()*4),1)substr("ATGC",int(1+rand()*4),1)substr("ATGC",int(1+rand()*4),1)
    if (!(seq in motifs)) {
      print seq
      motifs[seq] = 1
      count++
    }
  } while (count < 256)
}
