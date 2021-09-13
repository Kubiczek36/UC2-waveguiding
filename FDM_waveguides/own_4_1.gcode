M73 P0 R1
M73 Q0 S1
M201 X1000 Y1000 Z200 E5000 ; sets maximum accelerations, mm/sec^2
M203 X200 Y200 Z12 E120 ; sets maximum feedrates, mm/sec
M204 P1250 R1250 T1250 ; sets acceleration (P, T) and retract acceleration (R), mm/sec^2
M205 X8.00 Y8.00 Z0.40 E4.50 ; sets the jerk limits, mm/sec
M205 S0 T0 ; sets the minimum extruding and travel feed rate, mm/sec
M107
M862.3 P "MK3S" ; printer model check
M862.1 P0.4 ; nozzle diameter check
G90 ; use absolute coordinates
M83 ; extruder relative mode
M104 S265 ; set extruder temp
M140 S80 ; set bed temx p
M109 S265 ; wait for extruder temp
M190 S80 ; wait for bed temp
M104 S250 ; set extruder temp
G28 W ; home all without mesh bed level
G80 ; mesh bed leveling
G1 Y-3.0 F1000.0 ; go outside print area
G92 E0.0
G1 X60.0 E5.0 F1000.0 ; intro line
M73 P10 R1
M73 Q10 S1
G1 X100.0 E12.5 F1000.0 ; intro line
G92 E0.0
M221 S95
; Don't change E values below. Excessive value can damage the printer.
M907 E430 ; set extruder motor current
G21 ; set units to millimeters
G90 ; use absolute coordinates
M83 ; use relative distances for extrusion
M900 K0.05 ; Filament gcode LA 1.5
M900 K30 ; Filament gcode LA 1.0
G1 E-0.80000 F2100.000
M73 Q17 S1
G1 Z0.400 F10800.000

; -------------------
G1 F8640.000
G1 X16 Y0.0 Z5.0
G1 X16 Y18.0 Z5.0 
; getting near to the coverslip
G1 X16 Y19.0 Z1.0
G1 F500.000
G1 X16 Y19.0 Z0.6 
G1 X16 Y20.0 Z0.6 E0.25
G4 P500
G1 X16 Y23.0 Z0.5 
G1 X16 Y24.0 Z0.7 ;new 
G1 F1100.000
G1 X16 Y27.0 Z0.7 
G1 X16 Y35.0 Z1.7 
G1 X16 Y39.0 Z0.8 
G1 X16 Y41.0 Z0.5 
G1 X16 Y43.0 Z0.5 E0.05
G4 P500
G1 F2000.000
G1 X16 Y58.0 Z0.5
G1 F2000.000
G1 X16 Y150.0 Z5.0
G1 F1500.000
G1 X16 Y170.0 Z3.0
G1 X16 Y180.0 Z2.0
G1 X16 Y190.0 Z0.1
G1 F500.000
G1 X16 Y193.0 Z0.1
G1 X16 Y193.0 Z40
G1 E-0.5
M104 S220 ; set extruder temp
