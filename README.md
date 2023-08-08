# Close Process By Name

The `close-process-by-name` script provides a straightforward way to terminate processes by matching specific words or phrases from their command line, making it versatile for targeting browser profiles, applications, and various command arguments.

## Prerequisites

- Windows Operating System
- PowerShell (typically pre-installed on Windows)

## Usage

1. **Edit the Script**:
   - Save the content as `close-process-by-name.ps1`.
   - Open the file in a text editor or PowerShell ISE.
   - Locate the `INSERT_HERE` placeholder within the `-match` condition.
   - Replace `INSERT_HERE` with the specific word or phrase you're looking for in the command line of the process you wish to terminate. Ensure the desired match is enclosed in double quotes (`" "`).

     ```powershell
     $getprocesses = gwmi win32_process | select Handle, CommandLine
     $getpid = $getprocesses | Where-Object {$_.CommandLine -match "YOUR_WORD_OR_PHRASE_HERE"} | select -ExpandProperty Handle
     foreach ($process in $getpid)
     {
         Stop-Process -Id $process
     }
     ```

2. **Execute the Script**:
   - Navigate to the directory containing the script.
   - Run the script using PowerShell:

     ```bash
     .\close-process-by-name.ps1
     ```

## Caution

Be mindful when terminating processes, as inadvertently closing essential system processes may cause instability. Always test the script in a controlled setting before deploying it broadly.

