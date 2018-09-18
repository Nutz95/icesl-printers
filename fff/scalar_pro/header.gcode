G21  ; set units to millimeters
G90  ; use absolute coordinates
M82  ; use absolute distances for extrusion
M107 ; fan off
M109 S<TOOLTEMP> ; wait for temperature to be reached
M190 S<HBPTEMP> ; wait for bed temperature to be reached
G28  ; home all axes
G29  ; AutoBedLeveling
G92 E0

G1 Z15.0 F6000 ;move the platform down 15mm
G92 E0                  ;zero the extruded length
G1 F200 E15              ;extrude 3mm of feed stock
G92 E0                  ;zero the extruded length again
G1 F6000
;Put printing message on LCD screen
M117 Printing...
<ZFADE>