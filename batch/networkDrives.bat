@echo off
REM THIS SCRIPT IS TO BE RUN AT STARTUP

REM create development directory
IF NOT EXIST C:\dev mkdir C:\dev

@REM Assign network paths to virtual drive letters
net use w: \\localhost\c$\dev
net use g: \\arena.gnd.upv.es\g
net use n: \\nasupv.upv.es\alumnos\a\abricla

@REM End script
end
