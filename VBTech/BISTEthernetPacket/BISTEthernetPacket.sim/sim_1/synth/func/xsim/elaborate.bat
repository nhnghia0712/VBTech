@echo off
REM ****************************************************************************
REM Vivado (TM) v2019.2 (64-bit)
REM
REM Filename    : elaborate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for elaborating the compiled design
REM
REM Generated by Vivado on Thu Jun 16 16:18:03 +0700 2022
REM SW Build 2708876 on Wed Nov  6 21:40:23 MST 2019
REM
REM Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
REM
REM usage: elaborate.bat
REM
REM ****************************************************************************
echo "xelab -wto c0676bd3aee244369f6b9c1439c50275 --incr --debug typical --relax --mt 2 -L xil_defaultlib -L unisims_ver -L secureip --snapshot tb_top_ip_func_synth xil_defaultlib.tb_top_ip xil_defaultlib.glbl -log elaborate.log"
call xelab  -wto c0676bd3aee244369f6b9c1439c50275 --incr --debug typical --relax --mt 2 -L xil_defaultlib -L unisims_ver -L secureip --snapshot tb_top_ip_func_synth xil_defaultlib.tb_top_ip xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
