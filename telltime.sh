if [ "$*" ]
then
	TZ=Asia/Tokyo date -v$1
	echo ""
	TZ=America/Los_Angeles date -v$1
	echo ""
	TZ=America/New_York date -v$1
	echo ""
	TZ=America/Chicago date -v$1
	echo ""
	TZ=Europe/London date -v$1
	echo ""
	TZ=Europe/Budapest date -v$1
	echo ""
else
	echo "Telling the current time in different timezones"
	echo ""
	TZ=Asia/Tokyo date
	echo ""
	TZ=America/Los_Angeles date
	echo ""
	TZ=America/New_York date
	echo ""
	TZ=America/Chicago date
	echo ""
	TZ=Europe/London date
	echo ""
	TZ=Europe/Budapest date
	echo ""
fi