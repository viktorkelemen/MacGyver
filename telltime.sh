timezones=( "Asia/Tokyo" "America/Los_Angeles" "America/New_York" "America/Chicago" "Europe/London" "Europe/Madrid" "Asia/Dubai" )

if [ "$*" ]
then
	for name in ${timezones[@]}
	do
	  TZ=$name date -v$1
	  echo ""
	done
else
	echo "Current time in different timezones"
	for name in ${timezones[@]}
	do
	  TZ=$name date
	done
fi
