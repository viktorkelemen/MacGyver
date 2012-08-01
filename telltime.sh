timezones=( "Asia/Tokyo" "America/Los_Angeles" "America/New_York" "America/Chicago" "Europe/London" "Europe/Madrid")

if [ "$*" ]
then
	for name in ${timezones[@]}
	do
	  TZ=$name date -v$1
	  echo ""
	done
else
	echo "Telling the current time in different timezones"
	echo ""
	for name in ${timezones[@]}
	do
	  TZ=$name date
	  echo ""
	done
fi
