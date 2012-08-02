cd "C:\dev\GitHub\BashboredTrackerforPlayBook\bin\appworld\"
del Tracker.*

cd "C:\dev\GitHub\BashboredTrackerforPlayBook\"
del "Tracker.zip"
zip -r Tracker.zip config.xml index.html images scripts stylesheet

cd "C:\Program Files\Research In Motion\BlackBerry WebWorks SDK for TabletOS 2.2.0.5\bbwp"
bbwp "C:\dev\GitHub\BashboredTrackerforPlayBook\Tracker.zip" -g vicious1 -buildId 1 -o "C:\dev\GitHub\BashboredTrackerforPlayBook\bin\appworld"

time /t
date /t

pause
