#!/bin/awk -f

BEGIN {
 OFS = "\t";
}

/^File:/ {
  file = $2;
  n = split(file,parts,/\./); 
  type = parts[1];
  lang = parts[n];
  version = n>2?parts[n-1]:".";
}


/^(real|user|sys)/ {
  split($2, parts, /[ms]/);
  time[$1] = parts[1]*60 + parts[2];
}

/^sys/ {
  time["cpu"] = time["user"]+time["sys"]
  printf "%-6s %s %-19s | %.3f = %.3f + %.3f [%.3f]\n", lang, version, type, time["cpu"], time["user"], time["sys"], time["real"]; 
}
