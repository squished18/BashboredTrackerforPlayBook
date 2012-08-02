cd "C:\dev\GitHub\BashboredTrackerforPlayBook\bin\"
del Tracker.*

cd "C:\dev\GitHub\BashboredTrackerforPlayBook\"
del "Tracker.zip"
zip -r Tracker.zip config.xml index.html images scripts stylesheet

cd "C:\Program Files\Research In Motion\BlackBerry WebWorks SDK for TabletOS 2.2.0.5\bbwp"
bbwp "C:\dev\GitHub\BashboredTrackerforPlayBook\Tracker.zip" -d -o "C:\dev\GitHub\BashboredTrackerforPlayBook\bin" >> c:\dev\GitHub\BashboredTrackerforPlayBook\debugtoken-log.txt

cd "C:\Program Files\Research In Motion\BlackBerry WebWorks SDK for TabletOS 2.2.0.5\bbwp\blackberry-tablet-sdk\bin"
blackberry-deploy -installApp -password test -device 169.254.0.1 -password test -package "c:\dev\GitHub\BashboredTrackerforPlayBook\bin\Tracker.bar" >> c:\dev\GitHub\BashboredTrackerforPlayBook\debugtoken-log.txt


time /t
date /t

pause
