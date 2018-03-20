@echo off:: Adapted from https://forums.techguy.org/threads/random-numbers-and-letters.803268/#post-6519677:: Recieves desired Password Legnth:: Generates semi-random alphanumeric character, upper/lower case A-z and 0-9
Setlocal EnableDelayedExpansion
:: VariablesSet _Alphanumeric=ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789Set _Str=%_Alphanumeric%987654321
:_LenLoopIF NOT "%_Str:~18%"=="" SET _Str=%_Str:~9%& SET /A _Len+=9& GOTO :_LenLoopSET _tmp=%_Str:~9,1%SET /A _Len=_Len+_tmpSet _count=0SET _RndAlphaNum=:_loopSet /a _count+=1SET _RND=%Random%Set /A _RND=_RND%%%_Len%SET _RndAlphaNum=!_RndAlphaNum!!_Alphanumeric:~%_RND%,1!If !_count! lss %1 goto _loopendlocal&set _pass=%_RndAlphaNum%
  

dfg
