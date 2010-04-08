-- Window size
tell application "Finder"
	set displayAreaDimensions to bounds of window of desktop
	set leftPosition to item 1 of displayAreaDimensions
	set topPosition to item 2 of displayAreaDimensions
	set w to item 3 of displayAreaDimensions
	set h to item 4 of displayAreaDimensions
end tell

-- Positioning the apps
tell application "iTunes"
	set the bounds of the first window to {leftPosition, topPosition, w, h}
end tell

tell application "Terminal"
	set the bounds of the first window to {leftPosition, topPosition, w, h}
end tell

tell application "Google Chrome"
	set the bounds of the first window to {leftPosition, topPosition, w, h}
end tell