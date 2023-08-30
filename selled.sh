if [ "$SSL" = "false" ]; then
	AUTHOR='@Zahra'
	VULN_NAME='Server Header Disclosure - HTTP'
	FILENAME="$LOOT_DIR/web/headers-http-$TARGET-*.txt"
	MATCH="Server\:"
	SEVERITY='P5 - INFO'
	GREP_OPTIONS='-i'
	SEARCH='positive'
	SECONDARY_COMMANDS=''
else
	AUTHOR='@Zahra'
	VULN_NAME='Server Header Disclosure - HTTPS'
	FILENAME="$LOOT_DIR/web/headers-https-$TARGET-*.txt"
	MATCH="Server\:"
	SEVERITY='P5 - INFO'
	GREP_OPTIONS='-i'
	SEARCH='positive'
	SECONDARY_COMMANDS=''
fi
