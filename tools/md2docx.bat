@ECHO OFF
setlocal enabledelayedexpansion
for /f "tokens=*" %%i in ('DIR/b  ') do (
	echo %%i | findstr ".md">nul
	if !errorlevel! == 0 ( 
		set tmp_str=%%i
		set video_str=!tmp_str:.md=.docx!
		pandoc -s !tmp_str! -o !video_str!
		echo pandoc -s !tmp_str! -o !video_str! OK!!!	
	)
)
pause
