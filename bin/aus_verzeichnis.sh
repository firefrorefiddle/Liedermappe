ls *.sng | cut -d'.' -f1 | awk '{printf ("\\input{lieder/%s}\n",$0);}'
