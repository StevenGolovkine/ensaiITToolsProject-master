# ENSAI: IT Tools Project

## Steven Golovkine

- Some explanation on how to launch the project.

    1. Send the file **extract_xml.py** to the Hortonworks sandbox using the command `scp -P 2222 /path/to/file/extract_xml.py root@localhost:/`.
    2. Lauch the script **load.sh** to load the archive data into the sandbox.
    3. Run the first three scripts in the notebook.
    4. (Optional) Launch the script **daily.sh** to load the daily data into the sandbox.
    5. (Optional) Run the fourth and fifth scripts in the notebook.
    6. Launch the other scripts in the notebook.
    
N.B: The steps 3 and 4 must be started every day to have an up-to-date database.