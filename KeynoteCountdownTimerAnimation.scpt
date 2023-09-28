property theTimer : 60

tell application "Keynote"
	activate
	
	display dialog "For optimal results, create a template slide. The base slide should contain ONLY the timer placeholder as a text element with the desired font settings." buttons {"Continue Generation", "Cancel Generation"} default button "Continue Generation"
	if button returned of result is "Cancel Generation" then
		error "Generation Cancelled by User"
	end if
	
	set timerDuration to text returned of (display dialog "Enter the countdown duration in seconds:" default answer "60")
	set theTimer to timerDuration as integer
	
	set theDoc to the front document
	set baseSlide to slide 1 of theDoc
	
	repeat with i from theTimer to 0 by -1
		set mins to i div 60
		set secs to i mod 60
		set theTime to (mins as string) & ":" & text -2 thru -1 of ("0" & secs as string)
		
		duplicate baseSlide to end of slides of theDoc
		set object text of text item 1 of (last slide of theDoc) to theTime
		delay 0.01
	end repeat
end tell
