@echo off

REM Open GitExtensions in current directory

set location=%cd%

call cd C:\Program Files (x86)\GitExtensions
start GitExtensions.exe browse %location%

call cd %location%