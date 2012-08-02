cd "C:\dev\GitHub\BashboredTrackerforPlayBook\bin\"
del Tracker.*

cd "C:\dev\GitHub\BashboredTrackerforPlayBook\"
del "Tracker.zip"
zip -r Tracker.zip config.xml index.html images scripts stylesheet

cd "C:\Program Files\Research In Motion\BlackBerry WebWorks SDK for TabletOS 2.2.0.5\bbwp"
bbwp "C:\dev\GitHub\BashboredTrackerforPlayBook\Tracker.zip" -d -o "C:\dev\GitHub\BashboredTrackerforPlayBook\bin"

time /t
date /t

rem pause

cd "C:\Program Files\Research In Motion\BlackBerry WebWorks SDK for TabletOS 2.2.0.5\bbwp\blackberry-tablet-sdk\bin"

blackberry-deploy -installApp -device 192.168.158.128 -package "C:\dev\GitHub\BashboredTrackerforPlayBook\bin\Tracker.bar"

pause
