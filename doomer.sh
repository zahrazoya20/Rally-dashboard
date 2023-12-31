AUTHOR='@Zahra'
VULN_NAME='Nuclei Vulnerability Scan - HTTPS'
FILENAME="$LOOT_DIR/web/nuclei-https-$TARGET-port*.txt"
OUTPUT_NAME=$(echo $VULN_NAME | sed -E 's/[^[:alnum:]]+/_/g')
GREP_OPTIONS='-ih'

rm -f $LOOT_DIR/vulnerabilities/sc0pe-$TARGET-$OUTPUT_NAME.txt 2> /dev/null
MATCH="\[critical\]"
egrep "$GREP_OPTIONS" "$MATCH" $FILENAME 2> /dev/null | awk -v AWK_TARGET="$TARGET" '$50=AWK_TARGET{print "P1 - CRITICAL, Nuclei Vulnerability Scan, " $1 ", " $4 " " $5 " " $6 " " $7 " " $8 " " $9 " " $10 " " $11 " "  $12 " " $13 " " $14 " " $15 " " $16 " " $17 " " $18 " " $19 " " $20 " " $21 " " $22 " " $23 " " $24 " " $25}' 2> /dev/null >> $LOOT_DIR/vulnerabilities/sc0pe-$TARGET-$OUTPUT_NAME.txt 2> /dev/null
MATCH="\[high\]"
egrep "$GREP_OPTIONS" "$MATCH" $FILENAME 2> /dev/null | awk -v AWK_TARGET="$TARGET" '$50=AWK_TARGET{print "P2 - HIGH, Nuclei Vulnerability Scan, " $1 ", " $4 " " $5 " " $6 " " $7 " " $8 " " $9 " " $10 " " $11 " "  $12 " " $13 " " $14 " " $15 " " $16 " " $17 " " $18 " " $19 " " $20 " " $21 " " $22 " " $23 " " $24 " " $25}' 2> /dev/null >> $LOOT_DIR/vulnerabilities/sc0pe-$TARGET-$OUTPUT_NAME.txt 2> /dev/null
MATCH="\[medium\]"
egrep "$GREP_OPTIONS" "$MATCH" $FILENAME 2> /dev/null | awk -v AWK_TARGET="$TARGET" '$50=AWK_TARGET{print "P3 - MEDIUM, Nuclei Vulnerability Scan, " $1 ", " $4 " " $5 " " $6 " " $7 " " $8 " " $9 " " $10 " " $11 " "  $12 " " $13 " " $14 " " $15 " " $16 " " $17 " " $18 " " $19 " " $20 " " $21 " " $22 " " $23 " " $24 " " $25}' 2> /dev/null >> $LOOT_DIR/vulnerabilities/sc0pe-$TARGET-$OUTPUT_NAME.txt 2> /dev/null
MATCH="\[low\]"
egrep "$GREP_OPTIONS" "$MATCH" $FILENAME 2> /dev/null | awk -v AWK_TARGET="$TARGET" '$50=AWK_TARGET{print "P4 - LOW, Nuclei Vulnerability Scan, " $1 ", " $4 " " $5 " " $6 " " $7 " " $8 " " $9 " " $10 " " $11 " "  $12 " " $13 " " $14 " " $15 " " $16 " " $17 " " $18 " " $19 " " $20 " " $21 " " $22 " " $23 " " $24 " " $25}' 2> /dev/null >> $LOOT_DIR/vulnerabilities/sc0pe-$TARGET-$OUTPUT_NAME.txt 2> /dev/null
MATCH="\[info\]"
egrep "$GREP_OPTIONS" "$MATCH" $FILENAME 2> /dev/null | awk -v AWK_TARGET="$TARGET" '$50=AWK_TARGET{print "P5 - INFO, Nuclei Vulnerability Scan, " $1 ", " $4 " " $5 " " $6 " " $7 " " $8 " " $9 " " $10 " " $11 " "  $12 " " $13 " " $14 " " $15 " " $16 " " $17 " " $18 " " $19 " " $20 " " $21 " " $22 " " $23 " " $24 " " $25}' 2> /dev/null >> $LOOT_DIR/vulnerabilities/sc0pe-$TARGET-$OUTPUT_NAME.txt 2> /dev/null

cat $LOOT_DIR/vulnerabilities/sc0pe-$TARGET-$OUTPUT_NAME.txt 2> /dev/null
