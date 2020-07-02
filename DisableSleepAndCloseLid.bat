
@echo off

:loop

::Desativa sleep
powercfg -x -standby-timeout-ac 0
powercfg -x -standby-timeout-dc 0
echo sleep desat.

::Do nothing when you close the lid
powercfg -setacvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 4f971e89-eebd-4455-a8de-9e59040e7347 5ca83367-6e45-459f-a27b-476b1d01c936 0
powercfg -setdcvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e 4f971e89-eebd-4455-a8de-9e59040e7347 5ca83367-6e45-459f-a27b-476b1d01c936 0
echo lid desat.

timeout 1800 > NUL

goto loop