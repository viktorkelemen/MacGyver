-- Window size
tell application "Finder"
	set displayAreaDimensions to bounds of window of desktop
	set leftPosition to item 1 of displayAreaDimensions
	set topPosition to item 2 of displayAreaDimensions
	set widthOfDisplayArea to item 3 of displayAreaDimensions
	set heightOfDisplayArea to item 4 of displayAreaDimensions
end tell

tell application "Terminal"
	activate
	set the bounds of the first window to {leftPosition, topPosition, 920, -200}
end tell

tell application "Google Chrome"
	activate
	set the bounds of the first window to {leftPosition + 920, topPosition, 1920, -200}
end tell


