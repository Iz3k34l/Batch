::Author: Travis Smith 
::Contact: tsmith@nrc1.org or ext.105
::Date:2-19-2013
::Purpose: To reset Print spooler every night
::Revision: 1.00
::Last Revision Date:


@echo off
call net stop spooler

::The line below creates a timer which pauses the command
::waits 10 seconds and runs the next command *time is in milliseconds*
@ping 1.1.1.1 -n 2 -w 10000 > nul
call net start spooler