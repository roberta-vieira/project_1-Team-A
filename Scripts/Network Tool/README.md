# Network Monitor Tool

This file contains Powershell script to monitor and identify devices in the network, and automatically creates a log file with the results in the same directory as the script.

## Contents

- `network_tool.ps1`: Scans the network for devices and logs the results into a file.

## Pre-requisites

- Before running the script, nmap needs to be installed on the machine, if not, go to https://nmap.org/download.html#windows and download the latest version compatible with windows.

## How to use

- Run powershell with admin privileges.
- Navigate to the directory that the script is in, type ".\network_tool.ps1" and press enter to start the scan.
- When the scan is complete, you can see the results on screen and the log file with details of the scan is created on the same directory where the script is.
- Any following scans are going to be appended, instead of overwritten.

## Notes 

- If unable to run the script, type "Set-ExecutionPolicy RemoteSigned -Scope CurrentUser" before running the script and when prompted, type "yes".

