--confirms your browser is the front application
tell application "Google Chrome"
 activate
end tell

tell application "System Events"
	tell process "Google Chrome"
		keystroke "r" using {command down}
	end tell
end tell