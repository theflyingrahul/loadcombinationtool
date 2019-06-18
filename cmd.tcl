set lst1 [split "1.573, 1.5815, 0.0, 0.0, 0.0, 0.0, 22.0, 0.0, 0.0, 0.0, 0.0, 0.9512, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 6.0493, 8.9379, 12.769, 8.9379, 8.9379, 8.9379, 8.9379, 8.9379, 8.9379, 8.9379, 8.9379, 8.9379, 5.0828, 8.9379, 0.0, 0.0, 0.0, 0.0" ","]
set lst2 [split "1.573, 1.5815, 0.0, 0.0, 0.0, 3.0, 0.0, 0.0, 0.0, 33.0, 0.0, 0.9512, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 6.0493, 8.9379, 12.769, 8.9379, 8.9379, 8.9379, 8.9379, 8.9379, 8.9379, 8.9379, 8.9379, 8.9379, 5.0828, 8.9379, 0.0, 0.0, 0.0, 0.0" ","]
set lst3 [split "55.7, 0.0, 55.7, -55.7, 0.0, 0.0, 0.0, 0.0, 53.0, 0.0, 0.0, 0.0, 16.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 92.2, 169.962, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0" ","]
set lst4 [split "12.0, 3.0, 2.0, 33.0, 0.0, 0.0, 2.0, 0.0, 34.0, 0.0, 0.0, 0.0, 33.0, 0.0, 23.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 92.2, 132.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0" ","]
set name FAT1
set j [expr 1+900]
set k 4
*startnotehistorystate {Created loadcollector $name}
*collectorcreate loadcols $name "" 11
*createmark loadcols 2 $name
*dictionaryload loadcols 2 "C:/Program Files/Altair/2017/templates/feoutput/optistruct/optistruct" "LOADADD"
*startnotehistorystate {Attached attributes to loadcol $name}
*attributeupdateint loadcols $j 3240 1 2 0 1
*attributeupdatedouble loadcols $j 379 1 2 0 1
*attributeupdateint loadcols $j 3236 1 0 0 1
*createdoublearray 1 0
*attributeupdatedoublearray loadcols $j 380 1 2 0 1 1
*createarray 1 0
*attributeupdateentityidarray loadcols $j 383 1 2 0 loadcols 1 1
*endnotehistorystate {Attached attributes to loadcol $name}
*startnotehistorystate {Attached attributes to loadcol $name}
*attributeupdateint loadcols $j 3236 1 0 0 $k
set load1 [lindex $lst1 [expr 1-1]]
set load2 [lindex $lst2 [expr 1-1]]
set load3 [lindex $lst3 [expr 1-1]]
set load4 [lindex $lst4 [expr 1-1]]
*createdoublearray $k $load1 $load2 $load3 $load4
*attributeupdatedoublearray loadcols $j 380 1 2 0 1 $k
*createarray $k 121 200 32 112
*attributeupdateentityidarray loadcols $j 383 1 2 0 loadcols 1 $k
*endnotehistorystate {Attached attributes to loadcol $name}
*endnotehistorystate {Created loadcollector $name}
#iteration 1 ends
set name FAT2
set j [expr 2+900]
set k 3
*startnotehistorystate {Created loadcollector $name}
*collectorcreate loadcols $name "" 11
*createmark loadcols 2 $name
*dictionaryload loadcols 2 "C:/Program Files/Altair/2017/templates/feoutput/optistruct/optistruct" "LOADADD"
*startnotehistorystate {Attached attributes to loadcol $name}
*attributeupdateint loadcols $j 3240 1 2 0 1
*attributeupdatedouble loadcols $j 379 1 2 0 1
*attributeupdateint loadcols $j 3236 1 0 0 1
*createdoublearray 1 0
*attributeupdatedoublearray loadcols $j 380 1 2 0 1 1
*createarray 1 0
*attributeupdateentityidarray loadcols $j 383 1 2 0 loadcols 1 1
*endnotehistorystate {Attached attributes to loadcol $name}
*startnotehistorystate {Attached attributes to loadcol $name}
*attributeupdateint loadcols $j 3236 1 0 0 $k
set load1 [lindex $lst1 [expr 2-1]]
set load2 [lindex $lst2 [expr 2-1]]
set load3 [lindex $lst4 [expr 2-1]]
*createdoublearray $k $load1 $load2 $load3
*attributeupdatedoublearray loadcols $j 380 1 2 0 1 $k
*createarray $k 121 200 112
*attributeupdateentityidarray loadcols $j 383 1 2 0 loadcols 1 $k
*endnotehistorystate {Attached attributes to loadcol $name}
*endnotehistorystate {Created loadcollector $name}
#iteration 2 ends
set name FAT3
set j [expr 3+900]
set k 2
*startnotehistorystate {Created loadcollector $name}
*collectorcreate loadcols $name "" 11
*createmark loadcols 2 $name
*dictionaryload loadcols 2 "C:/Program Files/Altair/2017/templates/feoutput/optistruct/optistruct" "LOADADD"
*startnotehistorystate {Attached attributes to loadcol $name}
*attributeupdateint loadcols $j 3240 1 2 0 1
*attributeupdatedouble loadcols $j 379 1 2 0 1
*attributeupdateint loadcols $j 3236 1 0 0 1
*createdoublearray 1 0
*attributeupdatedoublearray loadcols $j 380 1 2 0 1 1
*createarray 1 0
*attributeupdateentityidarray loadcols $j 383 1 2 0 loadcols 1 1
*endnotehistorystate {Attached attributes to loadcol $name}
*startnotehistorystate {Attached attributes to loadcol $name}
*attributeupdateint loadcols $j 3236 1 0 0 $k
set load1 [lindex $lst3 [expr 3-1]]
set load2 [lindex $lst4 [expr 3-1]]
*createdoublearray $k $load1 $load2
*attributeupdatedoublearray loadcols $j 380 1 2 0 1 $k
*createarray $k 32 112
*attributeupdateentityidarray loadcols $j 383 1 2 0 loadcols 1 $k
*endnotehistorystate {Attached attributes to loadcol $name}
*endnotehistorystate {Created loadcollector $name}
#iteration 3 ends
set name FAT4
set j [expr 4+900]
set k 2
*startnotehistorystate {Created loadcollector $name}
*collectorcreate loadcols $name "" 11
*createmark loadcols 2 $name
*dictionaryload loadcols 2 "C:/Program Files/Altair/2017/templates/feoutput/optistruct/optistruct" "LOADADD"
*startnotehistorystate {Attached attributes to loadcol $name}
*attributeupdateint loadcols $j 3240 1 2 0 1
*attributeupdatedouble loadcols $j 379 1 2 0 1
*attributeupdateint loadcols $j 3236 1 0 0 1
*createdoublearray 1 0
*attributeupdatedoublearray loadcols $j 380 1 2 0 1 1
*createarray 1 0
*attributeupdateentityidarray loadcols $j 383 1 2 0 loadcols 1 1
*endnotehistorystate {Attached attributes to loadcol $name}
*startnotehistorystate {Attached attributes to loadcol $name}
*attributeupdateint loadcols $j 3236 1 0 0 $k
set load1 [lindex $lst3 [expr 4-1]]
set load2 [lindex $lst4 [expr 4-1]]
*createdoublearray $k $load1 $load2
*attributeupdatedoublearray loadcols $j 380 1 2 0 1 $k
*createarray $k 32 112
*attributeupdateentityidarray loadcols $j 383 1 2 0 loadcols 1 $k
*endnotehistorystate {Attached attributes to loadcol $name}
*endnotehistorystate {Created loadcollector $name}
#iteration 4 ends
set name FAT6
set j [expr 5+900]
set k 0
*startnotehistorystate {Created loadcollector $name}
*collectorcreate loadcols $name "" 11
*createmark loadcols 2 $name
*dictionaryload loadcols 2 "C:/Program Files/Altair/2017/templates/feoutput/optistruct/optistruct" "LOADADD"
*startnotehistorystate {Attached attributes to loadcol $name}
*attributeupdateint loadcols $j 3240 1 2 0 1
*attributeupdatedouble loadcols $j 379 1 2 0 1
*attributeupdateint loadcols $j 3236 1 0 0 1
*createdoublearray 1 0
*attributeupdatedoublearray loadcols $j 380 1 2 0 1 1
*createarray 1 0
*attributeupdateentityidarray loadcols $j 383 1 2 0 loadcols 1 1
*endnotehistorystate {Attached attributes to loadcol $name}
*startnotehistorystate {Attached attributes to loadcol $name}
*attributeupdateint loadcols $j 3236 1 0 0 $k
*createdoublearray $k 
*attributeupdatedoublearray loadcols $j 380 1 2 0 1 $k
*createarray $k 
*attributeupdateentityidarray loadcols $j 383 1 2 0 loadcols 1 $k
*endnotehistorystate {Attached attributes to loadcol $name}
*endnotehistorystate {Created loadcollector $name}
#iteration 5 ends
set name FAT7
set j [expr 6+900]
set k 1
*startnotehistorystate {Created loadcollector $name}
*collectorcreate loadcols $name "" 11
*createmark loadcols 2 $name
*dictionaryload loadcols 2 "C:/Program Files/Altair/2017/templates/feoutput/optistruct/optistruct" "LOADADD"
*startnotehistorystate {Attached attributes to loadcol $name}
*attributeupdateint loadcols $j 3240 1 2 0 1
*attributeupdatedouble loadcols $j 379 1 2 0 1
*attributeupdateint loadcols $j 3236 1 0 0 1
*createdoublearray 1 0
*attributeupdatedoublearray loadcols $j 380 1 2 0 1 1
*createarray 1 0
*attributeupdateentityidarray loadcols $j 383 1 2 0 loadcols 1 1
*endnotehistorystate {Attached attributes to loadcol $name}
*startnotehistorystate {Attached attributes to loadcol $name}
*attributeupdateint loadcols $j 3236 1 0 0 $k
set load1 [lindex $lst2 [expr 6-1]]
*createdoublearray $k $load1
*attributeupdatedoublearray loadcols $j 380 1 2 0 1 $k
*createarray $k 200
*attributeupdateentityidarray loadcols $j 383 1 2 0 loadcols 1 $k
*endnotehistorystate {Attached attributes to loadcol $name}
*endnotehistorystate {Created loadcollector $name}
#iteration 6 ends
set name FAT8
set j [expr 7+900]
set k 2
*startnotehistorystate {Created loadcollector $name}
*collectorcreate loadcols $name "" 11
*createmark loadcols 2 $name
*dictionaryload loadcols 2 "C:/Program Files/Altair/2017/templates/feoutput/optistruct/optistruct" "LOADADD"
*startnotehistorystate {Attached attributes to loadcol $name}
*attributeupdateint loadcols $j 3240 1 2 0 1
*attributeupdatedouble loadcols $j 379 1 2 0 1
*attributeupdateint loadcols $j 3236 1 0 0 1
*createdoublearray 1 0
*attributeupdatedoublearray loadcols $j 380 1 2 0 1 1
*createarray 1 0
*attributeupdateentityidarray loadcols $j 383 1 2 0 loadcols 1 1
*endnotehistorystate {Attached attributes to loadcol $name}
*startnotehistorystate {Attached attributes to loadcol $name}
*attributeupdateint loadcols $j 3236 1 0 0 $k
set load1 [lindex $lst1 [expr 7-1]]
set load2 [lindex $lst4 [expr 7-1]]
*createdoublearray $k $load1 $load2
*attributeupdatedoublearray loadcols $j 380 1 2 0 1 $k
*createarray $k 121 112
*attributeupdateentityidarray loadcols $j 383 1 2 0 loadcols 1 $k
*endnotehistorystate {Attached attributes to loadcol $name}
*endnotehistorystate {Created loadcollector $name}
#iteration 7 ends
set name FAT9
set j [expr 8+900]
set k 0
*startnotehistorystate {Created loadcollector $name}
*collectorcreate loadcols $name "" 11
*createmark loadcols 2 $name
*dictionaryload loadcols 2 "C:/Program Files/Altair/2017/templates/feoutput/optistruct/optistruct" "LOADADD"
*startnotehistorystate {Attached attributes to loadcol $name}
*attributeupdateint loadcols $j 3240 1 2 0 1
*attributeupdatedouble loadcols $j 379 1 2 0 1
*attributeupdateint loadcols $j 3236 1 0 0 1
*createdoublearray 1 0
*attributeupdatedoublearray loadcols $j 380 1 2 0 1 1
*createarray 1 0
*attributeupdateentityidarray loadcols $j 383 1 2 0 loadcols 1 1
*endnotehistorystate {Attached attributes to loadcol $name}
*startnotehistorystate {Attached attributes to loadcol $name}
*attributeupdateint loadcols $j 3236 1 0 0 $k
*createdoublearray $k 
*attributeupdatedoublearray loadcols $j 380 1 2 0 1 $k
*createarray $k 
*attributeupdateentityidarray loadcols $j 383 1 2 0 loadcols 1 $k
*endnotehistorystate {Attached attributes to loadcol $name}
*endnotehistorystate {Created loadcollector $name}
#iteration 8 ends
set name FAT10
set j [expr 9+900]
set k 2
*startnotehistorystate {Created loadcollector $name}
*collectorcreate loadcols $name "" 11
*createmark loadcols 2 $name
*dictionaryload loadcols 2 "C:/Program Files/Altair/2017/templates/feoutput/optistruct/optistruct" "LOADADD"
*startnotehistorystate {Attached attributes to loadcol $name}
*attributeupdateint loadcols $j 3240 1 2 0 1
*attributeupdatedouble loadcols $j 379 1 2 0 1
*attributeupdateint loadcols $j 3236 1 0 0 1
*createdoublearray 1 0
*attributeupdatedoublearray loadcols $j 380 1 2 0 1 1
*createarray 1 0
*attributeupdateentityidarray loadcols $j 383 1 2 0 loadcols 1 1
*endnotehistorystate {Attached attributes to loadcol $name}
*startnotehistorystate {Attached attributes to loadcol $name}
*attributeupdateint loadcols $j 3236 1 0 0 $k
set load1 [lindex $lst3 [expr 9-1]]
set load2 [lindex $lst4 [expr 9-1]]
*createdoublearray $k $load1 $load2
*attributeupdatedoublearray loadcols $j 380 1 2 0 1 $k
*createarray $k 32 112
*attributeupdateentityidarray loadcols $j 383 1 2 0 loadcols 1 $k
*endnotehistorystate {Attached attributes to loadcol $name}
*endnotehistorystate {Created loadcollector $name}
#iteration 9 ends
set name FAT11
set j [expr 10+900]
set k 1
*startnotehistorystate {Created loadcollector $name}
*collectorcreate loadcols $name "" 11
*createmark loadcols 2 $name
*dictionaryload loadcols 2 "C:/Program Files/Altair/2017/templates/feoutput/optistruct/optistruct" "LOADADD"
*startnotehistorystate {Attached attributes to loadcol $name}
*attributeupdateint loadcols $j 3240 1 2 0 1
*attributeupdatedouble loadcols $j 379 1 2 0 1
*attributeupdateint loadcols $j 3236 1 0 0 1
*createdoublearray 1 0
*attributeupdatedoublearray loadcols $j 380 1 2 0 1 1
*createarray 1 0
*attributeupdateentityidarray loadcols $j 383 1 2 0 loadcols 1 1
*endnotehistorystate {Attached attributes to loadcol $name}
*startnotehistorystate {Attached attributes to loadcol $name}
*attributeupdateint loadcols $j 3236 1 0 0 $k
set load1 [lindex $lst2 [expr 10-1]]
*createdoublearray $k $load1
*attributeupdatedoublearray loadcols $j 380 1 2 0 1 $k
*createarray $k 200
*attributeupdateentityidarray loadcols $j 383 1 2 0 loadcols 1 $k
*endnotehistorystate {Attached attributes to loadcol $name}
*endnotehistorystate {Created loadcollector $name}
#iteration 10 ends
set name FAT12
set j [expr 11+900]
set k 0
*startnotehistorystate {Created loadcollector $name}
*collectorcreate loadcols $name "" 11
*createmark loadcols 2 $name
*dictionaryload loadcols 2 "C:/Program Files/Altair/2017/templates/feoutput/optistruct/optistruct" "LOADADD"
*startnotehistorystate {Attached attributes to loadcol $name}
*attributeupdateint loadcols $j 3240 1 2 0 1
*attributeupdatedouble loadcols $j 379 1 2 0 1
*attributeupdateint loadcols $j 3236 1 0 0 1
*createdoublearray 1 0
*attributeupdatedoublearray loadcols $j 380 1 2 0 1 1
*createarray 1 0
*attributeupdateentityidarray loadcols $j 383 1 2 0 loadcols 1 1
*endnotehistorystate {Attached attributes to loadcol $name}
*startnotehistorystate {Attached attributes to loadcol $name}
*attributeupdateint loadcols $j 3236 1 0 0 $k
*createdoublearray $k 
*attributeupdatedoublearray loadcols $j 380 1 2 0 1 $k
*createarray $k 
*attributeupdateentityidarray loadcols $j 383 1 2 0 loadcols 1 $k
*endnotehistorystate {Attached attributes to loadcol $name}
*endnotehistorystate {Created loadcollector $name}
#iteration 11 ends
set name FAT14
set j [expr 12+900]
set k 2
*startnotehistorystate {Created loadcollector $name}
*collectorcreate loadcols $name "" 11
*createmark loadcols 2 $name
*dictionaryload loadcols 2 "C:/Program Files/Altair/2017/templates/feoutput/optistruct/optistruct" "LOADADD"
*startnotehistorystate {Attached attributes to loadcol $name}
*attributeupdateint loadcols $j 3240 1 2 0 1
*attributeupdatedouble loadcols $j 379 1 2 0 1
*attributeupdateint loadcols $j 3236 1 0 0 1
*createdoublearray 1 0
*attributeupdatedoublearray loadcols $j 380 1 2 0 1 1
*createarray 1 0
*attributeupdateentityidarray loadcols $j 383 1 2 0 loadcols 1 1
*endnotehistorystate {Attached attributes to loadcol $name}
*startnotehistorystate {Attached attributes to loadcol $name}
*attributeupdateint loadcols $j 3236 1 0 0 $k
set load1 [lindex $lst1 [expr 12-1]]
set load2 [lindex $lst2 [expr 12-1]]
*createdoublearray $k $load1 $load2
*attributeupdatedoublearray loadcols $j 380 1 2 0 1 $k
*createarray $k 121 200
*attributeupdateentityidarray loadcols $j 383 1 2 0 loadcols 1 $k
*endnotehistorystate {Attached attributes to loadcol $name}
*endnotehistorystate {Created loadcollector $name}
#iteration 12 ends
set name FAT15
set j [expr 13+900]
set k 2
*startnotehistorystate {Created loadcollector $name}
*collectorcreate loadcols $name "" 11
*createmark loadcols 2 $name
*dictionaryload loadcols 2 "C:/Program Files/Altair/2017/templates/feoutput/optistruct/optistruct" "LOADADD"
*startnotehistorystate {Attached attributes to loadcol $name}
*attributeupdateint loadcols $j 3240 1 2 0 1
*attributeupdatedouble loadcols $j 379 1 2 0 1
*attributeupdateint loadcols $j 3236 1 0 0 1
*createdoublearray 1 0
*attributeupdatedoublearray loadcols $j 380 1 2 0 1 1
*createarray 1 0
*attributeupdateentityidarray loadcols $j 383 1 2 0 loadcols 1 1
*endnotehistorystate {Attached attributes to loadcol $name}
*startnotehistorystate {Attached attributes to loadcol $name}
*attributeupdateint loadcols $j 3236 1 0 0 $k
set load1 [lindex $lst3 [expr 13-1]]
set load2 [lindex $lst4 [expr 13-1]]
*createdoublearray $k $load1 $load2
*attributeupdatedoublearray loadcols $j 380 1 2 0 1 $k
*createarray $k 32 112
*attributeupdateentityidarray loadcols $j 383 1 2 0 loadcols 1 $k
*endnotehistorystate {Attached attributes to loadcol $name}
*endnotehistorystate {Created loadcollector $name}
#iteration 13 ends
set name FAT17
set j [expr 14+900]
set k 0
*startnotehistorystate {Created loadcollector $name}
*collectorcreate loadcols $name "" 11
*createmark loadcols 2 $name
*dictionaryload loadcols 2 "C:/Program Files/Altair/2017/templates/feoutput/optistruct/optistruct" "LOADADD"
*startnotehistorystate {Attached attributes to loadcol $name}
*attributeupdateint loadcols $j 3240 1 2 0 1
*attributeupdatedouble loadcols $j 379 1 2 0 1
*attributeupdateint loadcols $j 3236 1 0 0 1
*createdoublearray 1 0
*attributeupdatedoublearray loadcols $j 380 1 2 0 1 1
*createarray 1 0
*attributeupdateentityidarray loadcols $j 383 1 2 0 loadcols 1 1
*endnotehistorystate {Attached attributes to loadcol $name}
*startnotehistorystate {Attached attributes to loadcol $name}
*attributeupdateint loadcols $j 3236 1 0 0 $k
*createdoublearray $k 
*attributeupdatedoublearray loadcols $j 380 1 2 0 1 $k
*createarray $k 
*attributeupdateentityidarray loadcols $j 383 1 2 0 loadcols 1 $k
*endnotehistorystate {Attached attributes to loadcol $name}
*endnotehistorystate {Created loadcollector $name}
#iteration 14 ends
set name FAT18
set j [expr 15+900]
set k 1
*startnotehistorystate {Created loadcollector $name}
*collectorcreate loadcols $name "" 11
*createmark loadcols 2 $name
*dictionaryload loadcols 2 "C:/Program Files/Altair/2017/templates/feoutput/optistruct/optistruct" "LOADADD"
*startnotehistorystate {Attached attributes to loadcol $name}
*attributeupdateint loadcols $j 3240 1 2 0 1
*attributeupdatedouble loadcols $j 379 1 2 0 1
*attributeupdateint loadcols $j 3236 1 0 0 1
*createdoublearray 1 0
*attributeupdatedoublearray loadcols $j 380 1 2 0 1 1
*createarray 1 0
*attributeupdateentityidarray loadcols $j 383 1 2 0 loadcols 1 1
*endnotehistorystate {Attached attributes to loadcol $name}
*startnotehistorystate {Attached attributes to loadcol $name}
*attributeupdateint loadcols $j 3236 1 0 0 $k
set load1 [lindex $lst4 [expr 15-1]]
*createdoublearray $k $load1
*attributeupdatedoublearray loadcols $j 380 1 2 0 1 $k
*createarray $k 112
*attributeupdateentityidarray loadcols $j 383 1 2 0 loadcols 1 $k
*endnotehistorystate {Attached attributes to loadcol $name}
*endnotehistorystate {Created loadcollector $name}
#iteration 15 ends
set name FAT19
set j [expr 16+900]
set k 0
*startnotehistorystate {Created loadcollector $name}
*collectorcreate loadcols $name "" 11
*createmark loadcols 2 $name
*dictionaryload loadcols 2 "C:/Program Files/Altair/2017/templates/feoutput/optistruct/optistruct" "LOADADD"
*startnotehistorystate {Attached attributes to loadcol $name}
*attributeupdateint loadcols $j 3240 1 2 0 1
*attributeupdatedouble loadcols $j 379 1 2 0 1
*attributeupdateint loadcols $j 3236 1 0 0 1
*createdoublearray 1 0
*attributeupdatedoublearray loadcols $j 380 1 2 0 1 1
*createarray 1 0
*attributeupdateentityidarray loadcols $j 383 1 2 0 loadcols 1 1
*endnotehistorystate {Attached attributes to loadcol $name}
*startnotehistorystate {Attached attributes to loadcol $name}
*attributeupdateint loadcols $j 3236 1 0 0 $k
*createdoublearray $k 
*attributeupdatedoublearray loadcols $j 380 1 2 0 1 $k
*createarray $k 
*attributeupdateentityidarray loadcols $j 383 1 2 0 loadcols 1 $k
*endnotehistorystate {Attached attributes to loadcol $name}
*endnotehistorystate {Created loadcollector $name}
#iteration 16 ends
set name FAT20
set j [expr 17+900]
set k 0
*startnotehistorystate {Created loadcollector $name}
*collectorcreate loadcols $name "" 11
*createmark loadcols 2 $name
*dictionaryload loadcols 2 "C:/Program Files/Altair/2017/templates/feoutput/optistruct/optistruct" "LOADADD"
*startnotehistorystate {Attached attributes to loadcol $name}
*attributeupdateint loadcols $j 3240 1 2 0 1
*attributeupdatedouble loadcols $j 379 1 2 0 1
*attributeupdateint loadcols $j 3236 1 0 0 1
*createdoublearray 1 0
*attributeupdatedoublearray loadcols $j 380 1 2 0 1 1
*createarray 1 0
*attributeupdateentityidarray loadcols $j 383 1 2 0 loadcols 1 1
*endnotehistorystate {Attached attributes to loadcol $name}
*startnotehistorystate {Attached attributes to loadcol $name}
*attributeupdateint loadcols $j 3236 1 0 0 $k
*createdoublearray $k 
*attributeupdatedoublearray loadcols $j 380 1 2 0 1 $k
*createarray $k 
*attributeupdateentityidarray loadcols $j 383 1 2 0 loadcols 1 $k
*endnotehistorystate {Attached attributes to loadcol $name}
*endnotehistorystate {Created loadcollector $name}
#iteration 17 ends
set name FAT21
set j [expr 18+900]
set k 0
*startnotehistorystate {Created loadcollector $name}
*collectorcreate loadcols $name "" 11
*createmark loadcols 2 $name
*dictionaryload loadcols 2 "C:/Program Files/Altair/2017/templates/feoutput/optistruct/optistruct" "LOADADD"
*startnotehistorystate {Attached attributes to loadcol $name}
*attributeupdateint loadcols $j 3240 1 2 0 1
*attributeupdatedouble loadcols $j 379 1 2 0 1
*attributeupdateint loadcols $j 3236 1 0 0 1
*createdoublearray 1 0
*attributeupdatedoublearray loadcols $j 380 1 2 0 1 1
*createarray 1 0
*attributeupdateentityidarray loadcols $j 383 1 2 0 loadcols 1 1
*endnotehistorystate {Attached attributes to loadcol $name}
*startnotehistorystate {Attached attributes to loadcol $name}
*attributeupdateint loadcols $j 3236 1 0 0 $k
*createdoublearray $k 
*attributeupdatedoublearray loadcols $j 380 1 2 0 1 $k
*createarray $k 
*attributeupdateentityidarray loadcols $j 383 1 2 0 loadcols 1 $k
*endnotehistorystate {Attached attributes to loadcol $name}
*endnotehistorystate {Created loadcollector $name}
#iteration 18 ends
set name FAT22
set j [expr 19+900]
set k 0
*startnotehistorystate {Created loadcollector $name}
*collectorcreate loadcols $name "" 11
*createmark loadcols 2 $name
*dictionaryload loadcols 2 "C:/Program Files/Altair/2017/templates/feoutput/optistruct/optistruct" "LOADADD"
*startnotehistorystate {Attached attributes to loadcol $name}
*attributeupdateint loadcols $j 3240 1 2 0 1
*attributeupdatedouble loadcols $j 379 1 2 0 1
*attributeupdateint loadcols $j 3236 1 0 0 1
*createdoublearray 1 0
*attributeupdatedoublearray loadcols $j 380 1 2 0 1 1
*createarray 1 0
*attributeupdateentityidarray loadcols $j 383 1 2 0 loadcols 1 1
*endnotehistorystate {Attached attributes to loadcol $name}
*startnotehistorystate {Attached attributes to loadcol $name}
*attributeupdateint loadcols $j 3236 1 0 0 $k
*createdoublearray $k 
*attributeupdatedoublearray loadcols $j 380 1 2 0 1 $k
*createarray $k 
*attributeupdateentityidarray loadcols $j 383 1 2 0 loadcols 1 $k
*endnotehistorystate {Attached attributes to loadcol $name}
*endnotehistorystate {Created loadcollector $name}
#iteration 19 ends
set name FAT23
set j [expr 20+900]
set k 2
*startnotehistorystate {Created loadcollector $name}
*collectorcreate loadcols $name "" 11
*createmark loadcols 2 $name
*dictionaryload loadcols 2 "C:/Program Files/Altair/2017/templates/feoutput/optistruct/optistruct" "LOADADD"
*startnotehistorystate {Attached attributes to loadcol $name}
*attributeupdateint loadcols $j 3240 1 2 0 1
*attributeupdatedouble loadcols $j 379 1 2 0 1
*attributeupdateint loadcols $j 3236 1 0 0 1
*createdoublearray 1 0
*attributeupdatedoublearray loadcols $j 380 1 2 0 1 1
*createarray 1 0
*attributeupdateentityidarray loadcols $j 383 1 2 0 loadcols 1 1
*endnotehistorystate {Attached attributes to loadcol $name}
*startnotehistorystate {Attached attributes to loadcol $name}
*attributeupdateint loadcols $j 3236 1 0 0 $k
set load1 [lindex $lst1 [expr 20-1]]
set load2 [lindex $lst2 [expr 20-1]]
*createdoublearray $k $load1 $load2
*attributeupdatedoublearray loadcols $j 380 1 2 0 1 $k
*createarray $k 121 200
*attributeupdateentityidarray loadcols $j 383 1 2 0 loadcols 1 $k
*endnotehistorystate {Attached attributes to loadcol $name}
*endnotehistorystate {Created loadcollector $name}
#iteration 20 ends
set name YLC_01a
set j [expr 21+900]
set k 2
*startnotehistorystate {Created loadcollector $name}
*collectorcreate loadcols $name "" 11
*createmark loadcols 2 $name
*dictionaryload loadcols 2 "C:/Program Files/Altair/2017/templates/feoutput/optistruct/optistruct" "LOADADD"
*startnotehistorystate {Attached attributes to loadcol $name}
*attributeupdateint loadcols $j 3240 1 2 0 1
*attributeupdatedouble loadcols $j 379 1 2 0 1
*attributeupdateint loadcols $j 3236 1 0 0 1
*createdoublearray 1 0
*attributeupdatedoublearray loadcols $j 380 1 2 0 1 1
*createarray 1 0
*attributeupdateentityidarray loadcols $j 383 1 2 0 loadcols 1 1
*endnotehistorystate {Attached attributes to loadcol $name}
*startnotehistorystate {Attached attributes to loadcol $name}
*attributeupdateint loadcols $j 3236 1 0 0 $k
set load1 [lindex $lst1 [expr 21-1]]
set load2 [lindex $lst2 [expr 21-1]]
*createdoublearray $k $load1 $load2
*attributeupdatedoublearray loadcols $j 380 1 2 0 1 $k
*createarray $k 121 200
*attributeupdateentityidarray loadcols $j 383 1 2 0 loadcols 1 $k
*endnotehistorystate {Attached attributes to loadcol $name}
*endnotehistorystate {Created loadcollector $name}
#iteration 21 ends
set name YLC_01b
set j [expr 22+900]
set k 2
*startnotehistorystate {Created loadcollector $name}
*collectorcreate loadcols $name "" 11
*createmark loadcols 2 $name
*dictionaryload loadcols 2 "C:/Program Files/Altair/2017/templates/feoutput/optistruct/optistruct" "LOADADD"
*startnotehistorystate {Attached attributes to loadcol $name}
*attributeupdateint loadcols $j 3240 1 2 0 1
*attributeupdatedouble loadcols $j 379 1 2 0 1
*attributeupdateint loadcols $j 3236 1 0 0 1
*createdoublearray 1 0
*attributeupdatedoublearray loadcols $j 380 1 2 0 1 1
*createarray 1 0
*attributeupdateentityidarray loadcols $j 383 1 2 0 loadcols 1 1
*endnotehistorystate {Attached attributes to loadcol $name}
*startnotehistorystate {Attached attributes to loadcol $name}
*attributeupdateint loadcols $j 3236 1 0 0 $k
set load1 [lindex $lst1 [expr 22-1]]
set load2 [lindex $lst2 [expr 22-1]]
*createdoublearray $k $load1 $load2
*attributeupdatedoublearray loadcols $j 380 1 2 0 1 $k
*createarray $k 121 200
*attributeupdateentityidarray loadcols $j 383 1 2 0 loadcols 1 $k
*endnotehistorystate {Attached attributes to loadcol $name}
*endnotehistorystate {Created loadcollector $name}
#iteration 22 ends
set name YLC_02a
set j [expr 23+900]
set k 4
*startnotehistorystate {Created loadcollector $name}
*collectorcreate loadcols $name "" 11
*createmark loadcols 2 $name
*dictionaryload loadcols 2 "C:/Program Files/Altair/2017/templates/feoutput/optistruct/optistruct" "LOADADD"
*startnotehistorystate {Attached attributes to loadcol $name}
*attributeupdateint loadcols $j 3240 1 2 0 1
*attributeupdatedouble loadcols $j 379 1 2 0 1
*attributeupdateint loadcols $j 3236 1 0 0 1
*createdoublearray 1 0
*attributeupdatedoublearray loadcols $j 380 1 2 0 1 1
*createarray 1 0
*attributeupdateentityidarray loadcols $j 383 1 2 0 loadcols 1 1
*endnotehistorystate {Attached attributes to loadcol $name}
*startnotehistorystate {Attached attributes to loadcol $name}
*attributeupdateint loadcols $j 3236 1 0 0 $k
set load1 [lindex $lst1 [expr 23-1]]
set load2 [lindex $lst2 [expr 23-1]]
set load3 [lindex $lst3 [expr 23-1]]
set load4 [lindex $lst4 [expr 23-1]]
*createdoublearray $k $load1 $load2 $load3 $load4
*attributeupdatedoublearray loadcols $j 380 1 2 0 1 $k
*createarray $k 121 200 32 112
*attributeupdateentityidarray loadcols $j 383 1 2 0 loadcols 1 $k
*endnotehistorystate {Attached attributes to loadcol $name}
*endnotehistorystate {Created loadcollector $name}
#iteration 23 ends
set name YLC_02b
set j [expr 24+900]
set k 4
*startnotehistorystate {Created loadcollector $name}
*collectorcreate loadcols $name "" 11
*createmark loadcols 2 $name
*dictionaryload loadcols 2 "C:/Program Files/Altair/2017/templates/feoutput/optistruct/optistruct" "LOADADD"
*startnotehistorystate {Attached attributes to loadcol $name}
*attributeupdateint loadcols $j 3240 1 2 0 1
*attributeupdatedouble loadcols $j 379 1 2 0 1
*attributeupdateint loadcols $j 3236 1 0 0 1
*createdoublearray 1 0
*attributeupdatedoublearray loadcols $j 380 1 2 0 1 1
*createarray 1 0
*attributeupdateentityidarray loadcols $j 383 1 2 0 loadcols 1 1
*endnotehistorystate {Attached attributes to loadcol $name}
*startnotehistorystate {Attached attributes to loadcol $name}
*attributeupdateint loadcols $j 3236 1 0 0 $k
set load1 [lindex $lst1 [expr 24-1]]
set load2 [lindex $lst2 [expr 24-1]]
set load3 [lindex $lst3 [expr 24-1]]
set load4 [lindex $lst4 [expr 24-1]]
*createdoublearray $k $load1 $load2 $load3 $load4
*attributeupdatedoublearray loadcols $j 380 1 2 0 1 $k
*createarray $k 121 200 32 112
*attributeupdateentityidarray loadcols $j 383 1 2 0 loadcols 1 $k
*endnotehistorystate {Attached attributes to loadcol $name}
*endnotehistorystate {Created loadcollector $name}
#iteration 24 ends
set name YLC_03a
set j [expr 25+900]
set k 2
*startnotehistorystate {Created loadcollector $name}
*collectorcreate loadcols $name "" 11
*createmark loadcols 2 $name
*dictionaryload loadcols 2 "C:/Program Files/Altair/2017/templates/feoutput/optistruct/optistruct" "LOADADD"
*startnotehistorystate {Attached attributes to loadcol $name}
*attributeupdateint loadcols $j 3240 1 2 0 1
*attributeupdatedouble loadcols $j 379 1 2 0 1
*attributeupdateint loadcols $j 3236 1 0 0 1
*createdoublearray 1 0
*attributeupdatedoublearray loadcols $j 380 1 2 0 1 1
*createarray 1 0
*attributeupdateentityidarray loadcols $j 383 1 2 0 loadcols 1 1
*endnotehistorystate {Attached attributes to loadcol $name}
*startnotehistorystate {Attached attributes to loadcol $name}
*attributeupdateint loadcols $j 3236 1 0 0 $k
set load1 [lindex $lst1 [expr 25-1]]
set load2 [lindex $lst2 [expr 25-1]]
*createdoublearray $k $load1 $load2
*attributeupdatedoublearray loadcols $j 380 1 2 0 1 $k
*createarray $k 121 200
*attributeupdateentityidarray loadcols $j 383 1 2 0 loadcols 1 $k
*endnotehistorystate {Attached attributes to loadcol $name}
*endnotehistorystate {Created loadcollector $name}
#iteration 25 ends
set name YLC_04a
set j [expr 26+900]
set k 2
*startnotehistorystate {Created loadcollector $name}
*collectorcreate loadcols $name "" 11
*createmark loadcols 2 $name
*dictionaryload loadcols 2 "C:/Program Files/Altair/2017/templates/feoutput/optistruct/optistruct" "LOADADD"
*startnotehistorystate {Attached attributes to loadcol $name}
*attributeupdateint loadcols $j 3240 1 2 0 1
*attributeupdatedouble loadcols $j 379 1 2 0 1
*attributeupdateint loadcols $j 3236 1 0 0 1
*createdoublearray 1 0
*attributeupdatedoublearray loadcols $j 380 1 2 0 1 1
*createarray 1 0
*attributeupdateentityidarray loadcols $j 383 1 2 0 loadcols 1 1
*endnotehistorystate {Attached attributes to loadcol $name}
*startnotehistorystate {Attached attributes to loadcol $name}
*attributeupdateint loadcols $j 3236 1 0 0 $k
set load1 [lindex $lst1 [expr 26-1]]
set load2 [lindex $lst2 [expr 26-1]]
*createdoublearray $k $load1 $load2
*attributeupdatedoublearray loadcols $j 380 1 2 0 1 $k
*createarray $k 121 200
*attributeupdateentityidarray loadcols $j 383 1 2 0 loadcols 1 $k
*endnotehistorystate {Attached attributes to loadcol $name}
*endnotehistorystate {Created loadcollector $name}
#iteration 26 ends
set name YLC_04b_1
set j [expr 27+900]
set k 2
*startnotehistorystate {Created loadcollector $name}
*collectorcreate loadcols $name "" 11
*createmark loadcols 2 $name
*dictionaryload loadcols 2 "C:/Program Files/Altair/2017/templates/feoutput/optistruct/optistruct" "LOADADD"
*startnotehistorystate {Attached attributes to loadcol $name}
*attributeupdateint loadcols $j 3240 1 2 0 1
*attributeupdatedouble loadcols $j 379 1 2 0 1
*attributeupdateint loadcols $j 3236 1 0 0 1
*createdoublearray 1 0
*attributeupdatedoublearray loadcols $j 380 1 2 0 1 1
*createarray 1 0
*attributeupdateentityidarray loadcols $j 383 1 2 0 loadcols 1 1
*endnotehistorystate {Attached attributes to loadcol $name}
*startnotehistorystate {Attached attributes to loadcol $name}
*attributeupdateint loadcols $j 3236 1 0 0 $k
set load1 [lindex $lst1 [expr 27-1]]
set load2 [lindex $lst2 [expr 27-1]]
*createdoublearray $k $load1 $load2
*attributeupdatedoublearray loadcols $j 380 1 2 0 1 $k
*createarray $k 121 200
*attributeupdateentityidarray loadcols $j 383 1 2 0 loadcols 1 $k
*endnotehistorystate {Attached attributes to loadcol $name}
*endnotehistorystate {Created loadcollector $name}
#iteration 27 ends
set name YLC_04b_2
set j [expr 28+900]
set k 2
*startnotehistorystate {Created loadcollector $name}
*collectorcreate loadcols $name "" 11
*createmark loadcols 2 $name
*dictionaryload loadcols 2 "C:/Program Files/Altair/2017/templates/feoutput/optistruct/optistruct" "LOADADD"
*startnotehistorystate {Attached attributes to loadcol $name}
*attributeupdateint loadcols $j 3240 1 2 0 1
*attributeupdatedouble loadcols $j 379 1 2 0 1
*attributeupdateint loadcols $j 3236 1 0 0 1
*createdoublearray 1 0
*attributeupdatedoublearray loadcols $j 380 1 2 0 1 1
*createarray 1 0
*attributeupdateentityidarray loadcols $j 383 1 2 0 loadcols 1 1
*endnotehistorystate {Attached attributes to loadcol $name}
*startnotehistorystate {Attached attributes to loadcol $name}
*attributeupdateint loadcols $j 3236 1 0 0 $k
set load1 [lindex $lst1 [expr 28-1]]
set load2 [lindex $lst2 [expr 28-1]]
*createdoublearray $k $load1 $load2
*attributeupdatedoublearray loadcols $j 380 1 2 0 1 $k
*createarray $k 121 200
*attributeupdateentityidarray loadcols $j 383 1 2 0 loadcols 1 $k
*endnotehistorystate {Attached attributes to loadcol $name}
*endnotehistorystate {Created loadcollector $name}
#iteration 28 ends
set name YLC_04c
set j [expr 29+900]
set k 2
*startnotehistorystate {Created loadcollector $name}
*collectorcreate loadcols $name "" 11
*createmark loadcols 2 $name
*dictionaryload loadcols 2 "C:/Program Files/Altair/2017/templates/feoutput/optistruct/optistruct" "LOADADD"
*startnotehistorystate {Attached attributes to loadcol $name}
*attributeupdateint loadcols $j 3240 1 2 0 1
*attributeupdatedouble loadcols $j 379 1 2 0 1
*attributeupdateint loadcols $j 3236 1 0 0 1
*createdoublearray 1 0
*attributeupdatedoublearray loadcols $j 380 1 2 0 1 1
*createarray 1 0
*attributeupdateentityidarray loadcols $j 383 1 2 0 loadcols 1 1
*endnotehistorystate {Attached attributes to loadcol $name}
*startnotehistorystate {Attached attributes to loadcol $name}
*attributeupdateint loadcols $j 3236 1 0 0 $k
set load1 [lindex $lst1 [expr 29-1]]
set load2 [lindex $lst2 [expr 29-1]]
*createdoublearray $k $load1 $load2
*attributeupdatedoublearray loadcols $j 380 1 2 0 1 $k
*createarray $k 121 200
*attributeupdateentityidarray loadcols $j 383 1 2 0 loadcols 1 $k
*endnotehistorystate {Attached attributes to loadcol $name}
*endnotehistorystate {Created loadcollector $name}
#iteration 29 ends
set name YLC_04d
set j [expr 30+900]
set k 2
*startnotehistorystate {Created loadcollector $name}
*collectorcreate loadcols $name "" 11
*createmark loadcols 2 $name
*dictionaryload loadcols 2 "C:/Program Files/Altair/2017/templates/feoutput/optistruct/optistruct" "LOADADD"
*startnotehistorystate {Attached attributes to loadcol $name}
*attributeupdateint loadcols $j 3240 1 2 0 1
*attributeupdatedouble loadcols $j 379 1 2 0 1
*attributeupdateint loadcols $j 3236 1 0 0 1
*createdoublearray 1 0
*attributeupdatedoublearray loadcols $j 380 1 2 0 1 1
*createarray 1 0
*attributeupdateentityidarray loadcols $j 383 1 2 0 loadcols 1 1
*endnotehistorystate {Attached attributes to loadcol $name}
*startnotehistorystate {Attached attributes to loadcol $name}
*attributeupdateint loadcols $j 3236 1 0 0 $k
set load1 [lindex $lst1 [expr 30-1]]
set load2 [lindex $lst2 [expr 30-1]]
*createdoublearray $k $load1 $load2
*attributeupdatedoublearray loadcols $j 380 1 2 0 1 $k
*createarray $k 121 200
*attributeupdateentityidarray loadcols $j 383 1 2 0 loadcols 1 $k
*endnotehistorystate {Attached attributes to loadcol $name}
*endnotehistorystate {Created loadcollector $name}
#iteration 30 ends
set name YLC_05a
set j [expr 31+900]
set k 2
*startnotehistorystate {Created loadcollector $name}
*collectorcreate loadcols $name "" 11
*createmark loadcols 2 $name
*dictionaryload loadcols 2 "C:/Program Files/Altair/2017/templates/feoutput/optistruct/optistruct" "LOADADD"
*startnotehistorystate {Attached attributes to loadcol $name}
*attributeupdateint loadcols $j 3240 1 2 0 1
*attributeupdatedouble loadcols $j 379 1 2 0 1
*attributeupdateint loadcols $j 3236 1 0 0 1
*createdoublearray 1 0
*attributeupdatedoublearray loadcols $j 380 1 2 0 1 1
*createarray 1 0
*attributeupdateentityidarray loadcols $j 383 1 2 0 loadcols 1 1
*endnotehistorystate {Attached attributes to loadcol $name}
*startnotehistorystate {Attached attributes to loadcol $name}
*attributeupdateint loadcols $j 3236 1 0 0 $k
set load1 [lindex $lst1 [expr 31-1]]
set load2 [lindex $lst2 [expr 31-1]]
*createdoublearray $k $load1 $load2
*attributeupdatedoublearray loadcols $j 380 1 2 0 1 $k
*createarray $k 121 200
*attributeupdateentityidarray loadcols $j 383 1 2 0 loadcols 1 $k
*endnotehistorystate {Attached attributes to loadcol $name}
*endnotehistorystate {Created loadcollector $name}
#iteration 31 ends
set name YLC_05b
set j [expr 32+900]
set k 2
*startnotehistorystate {Created loadcollector $name}
*collectorcreate loadcols $name "" 11
*createmark loadcols 2 $name
*dictionaryload loadcols 2 "C:/Program Files/Altair/2017/templates/feoutput/optistruct/optistruct" "LOADADD"
*startnotehistorystate {Attached attributes to loadcol $name}
*attributeupdateint loadcols $j 3240 1 2 0 1
*attributeupdatedouble loadcols $j 379 1 2 0 1
*attributeupdateint loadcols $j 3236 1 0 0 1
*createdoublearray 1 0
*attributeupdatedoublearray loadcols $j 380 1 2 0 1 1
*createarray 1 0
*attributeupdateentityidarray loadcols $j 383 1 2 0 loadcols 1 1
*endnotehistorystate {Attached attributes to loadcol $name}
*startnotehistorystate {Attached attributes to loadcol $name}
*attributeupdateint loadcols $j 3236 1 0 0 $k
set load1 [lindex $lst1 [expr 32-1]]
set load2 [lindex $lst2 [expr 32-1]]
*createdoublearray $k $load1 $load2
*attributeupdatedoublearray loadcols $j 380 1 2 0 1 $k
*createarray $k 121 200
*attributeupdateentityidarray loadcols $j 383 1 2 0 loadcols 1 $k
*endnotehistorystate {Attached attributes to loadcol $name}
*endnotehistorystate {Created loadcollector $name}
#iteration 32 ends
set name YLC_06a
set j [expr 33+900]
set k 2
*startnotehistorystate {Created loadcollector $name}
*collectorcreate loadcols $name "" 11
*createmark loadcols 2 $name
*dictionaryload loadcols 2 "C:/Program Files/Altair/2017/templates/feoutput/optistruct/optistruct" "LOADADD"
*startnotehistorystate {Attached attributes to loadcol $name}
*attributeupdateint loadcols $j 3240 1 2 0 1
*attributeupdatedouble loadcols $j 379 1 2 0 1
*attributeupdateint loadcols $j 3236 1 0 0 1
*createdoublearray 1 0
*attributeupdatedoublearray loadcols $j 380 1 2 0 1 1
*createarray 1 0
*attributeupdateentityidarray loadcols $j 383 1 2 0 loadcols 1 1
*endnotehistorystate {Attached attributes to loadcol $name}
*startnotehistorystate {Attached attributes to loadcol $name}
*attributeupdateint loadcols $j 3236 1 0 0 $k
set load1 [lindex $lst1 [expr 33-1]]
set load2 [lindex $lst2 [expr 33-1]]
*createdoublearray $k $load1 $load2
*attributeupdatedoublearray loadcols $j 380 1 2 0 1 $k
*createarray $k 121 200
*attributeupdateentityidarray loadcols $j 383 1 2 0 loadcols 1 $k
*endnotehistorystate {Attached attributes to loadcol $name}
*endnotehistorystate {Created loadcollector $name}
#iteration 33 ends
set name YLC_09a
set j [expr 34+900]
set k 0
*startnotehistorystate {Created loadcollector $name}
*collectorcreate loadcols $name "" 11
*createmark loadcols 2 $name
*dictionaryload loadcols 2 "C:/Program Files/Altair/2017/templates/feoutput/optistruct/optistruct" "LOADADD"
*startnotehistorystate {Attached attributes to loadcol $name}
*attributeupdateint loadcols $j 3240 1 2 0 1
*attributeupdatedouble loadcols $j 379 1 2 0 1
*attributeupdateint loadcols $j 3236 1 0 0 1
*createdoublearray 1 0
*attributeupdatedoublearray loadcols $j 380 1 2 0 1 1
*createarray 1 0
*attributeupdateentityidarray loadcols $j 383 1 2 0 loadcols 1 1
*endnotehistorystate {Attached attributes to loadcol $name}
*startnotehistorystate {Attached attributes to loadcol $name}
*attributeupdateint loadcols $j 3236 1 0 0 $k
*createdoublearray $k 
*attributeupdatedoublearray loadcols $j 380 1 2 0 1 $k
*createarray $k 
*attributeupdateentityidarray loadcols $j 383 1 2 0 loadcols 1 $k
*endnotehistorystate {Attached attributes to loadcol $name}
*endnotehistorystate {Created loadcollector $name}
#iteration 34 ends
set name YLC_09b
set j [expr 35+900]
set k 0
*startnotehistorystate {Created loadcollector $name}
*collectorcreate loadcols $name "" 11
*createmark loadcols 2 $name
*dictionaryload loadcols 2 "C:/Program Files/Altair/2017/templates/feoutput/optistruct/optistruct" "LOADADD"
*startnotehistorystate {Attached attributes to loadcol $name}
*attributeupdateint loadcols $j 3240 1 2 0 1
*attributeupdatedouble loadcols $j 379 1 2 0 1
*attributeupdateint loadcols $j 3236 1 0 0 1
*createdoublearray 1 0
*attributeupdatedoublearray loadcols $j 380 1 2 0 1 1
*createarray 1 0
*attributeupdateentityidarray loadcols $j 383 1 2 0 loadcols 1 1
*endnotehistorystate {Attached attributes to loadcol $name}
*startnotehistorystate {Attached attributes to loadcol $name}
*attributeupdateint loadcols $j 3236 1 0 0 $k
*createdoublearray $k 
*attributeupdatedoublearray loadcols $j 380 1 2 0 1 $k
*createarray $k 
*attributeupdateentityidarray loadcols $j 383 1 2 0 loadcols 1 $k
*endnotehistorystate {Attached attributes to loadcol $name}
*endnotehistorystate {Created loadcollector $name}
#iteration 35 ends
set name YLC_10a
set j [expr 36+900]
set k 0
*startnotehistorystate {Created loadcollector $name}
*collectorcreate loadcols $name "" 11
*createmark loadcols 2 $name
*dictionaryload loadcols 2 "C:/Program Files/Altair/2017/templates/feoutput/optistruct/optistruct" "LOADADD"
*startnotehistorystate {Attached attributes to loadcol $name}
*attributeupdateint loadcols $j 3240 1 2 0 1
*attributeupdatedouble loadcols $j 379 1 2 0 1
*attributeupdateint loadcols $j 3236 1 0 0 1
*createdoublearray 1 0
*attributeupdatedoublearray loadcols $j 380 1 2 0 1 1
*createarray 1 0
*attributeupdateentityidarray loadcols $j 383 1 2 0 loadcols 1 1
*endnotehistorystate {Attached attributes to loadcol $name}
*startnotehistorystate {Attached attributes to loadcol $name}
*attributeupdateint loadcols $j 3236 1 0 0 $k
*createdoublearray $k 
*attributeupdatedoublearray loadcols $j 380 1 2 0 1 $k
*createarray $k 
*attributeupdateentityidarray loadcols $j 383 1 2 0 loadcols 1 $k
*endnotehistorystate {Attached attributes to loadcol $name}
*endnotehistorystate {Created loadcollector $name}
#iteration 36 ends
set name YLC_10b
set j [expr 37+900]
set k 0
*startnotehistorystate {Created loadcollector $name}
*collectorcreate loadcols $name "" 11
*createmark loadcols 2 $name
*dictionaryload loadcols 2 "C:/Program Files/Altair/2017/templates/feoutput/optistruct/optistruct" "LOADADD"
*startnotehistorystate {Attached attributes to loadcol $name}
*attributeupdateint loadcols $j 3240 1 2 0 1
*attributeupdatedouble loadcols $j 379 1 2 0 1
*attributeupdateint loadcols $j 3236 1 0 0 1
*createdoublearray 1 0
*attributeupdatedoublearray loadcols $j 380 1 2 0 1 1
*createarray 1 0
*attributeupdateentityidarray loadcols $j 383 1 2 0 loadcols 1 1
*endnotehistorystate {Attached attributes to loadcol $name}
*startnotehistorystate {Attached attributes to loadcol $name}
*attributeupdateint loadcols $j 3236 1 0 0 $k
*createdoublearray $k 
*attributeupdatedoublearray loadcols $j 380 1 2 0 1 $k
*createarray $k 
*attributeupdateentityidarray loadcols $j 383 1 2 0 loadcols 1 $k
*endnotehistorystate {Attached attributes to loadcol $name}
*endnotehistorystate {Created loadcollector $name}
#iteration 37 ends
*startnotehistorystate {Created loadcollector "NLPARM"}
*collectorcreate loadcols "NLPARM" "" 11
*createmark loadcols 2 "NLPARM"
*dictionaryload loadcols 2 "C:/Program Files/Altair/2017/templates/feoutput/optistruct/optistruct" "NLPARM"
*startnotehistorystate {Attached attributes to loadcol "NLPARM"}
*attributeupdateint loadcols 938 3240 1 2 0 1
*attributeupdateint loadcols 938 4113 1 0 0 10
*attributeupdatedouble loadcols 938 4232 1 2 0 0
*attributeupdateint loadcols 938 4234 1 0 0 6
*attributeupdateint loadcols 938 4088 1 0 0 25
*attributeupdatestring loadcols 938 4089 1 0 0 "UPW"
*attributeupdatedouble loadcols 938 4090 1 0 0 0.001
*attributeupdatedouble loadcols 938 4091 1 0 0 0.001
*attributeupdatedouble loadcols 938 4092 1 0 0 1e-007
*attributeupdateint loadcols 938 4238 1 0 0 20
*attributeupdatedouble loadcols 938 4240 1 0 0 0.001
*attributeupdatedouble loadcols 938 10201 1 0 0 1
*attributeupdateint loadcols 938 10614 1 2 0 1
*endnotehistorystate {Attached attributes to loadcol "NLPARM"}
*startnotehistorystate {Attached attributes to loadcol "NLPARM"}
*attributeupdateint loadcols 938 4113 1 1 0 10
*endnotehistorystate {Attached attributes to loadcol "NLPARM"}
*endnotehistorystate {Created loadcollector "NLPARM"}
*startnotehistorystate {LoadSteps Creation}
*createmark loadcols 1
*createmark outputblocks 1
*createmark groups 1
*loadstepscreate "Pretension" 1
*attributeupdateint loadsteps 1 4143 1 1 0 1
*attributeupdateint loadsteps 1 4709 1 1 0 1
*attributeupdateentity loadsteps 1 4145 1 1 0 loadcols 917
*attributeupdateint loadsteps 1 3800 1 1 0 0
*attributeupdateint loadsteps 1 707 1 1 0 0
*attributeupdateint loadsteps 1 2396 1 1 0 0
*attributeupdateint loadsteps 1 8134 1 1 0 0
*attributeupdateentity loadsteps 1 2159 1 1 0 loadcols 150
*attributeupdateint loadsteps 1 2160 1 1 0 0
*attributeupdateint loadsteps 1 10212 1 1 0 0
*endnotehistorystate {LoadSteps Creation}
#Pretension Created!
*startnotehistorystate {LoadSteps Creation}
*createmark loadcols 1 "SPC_FZ3" "FZ4"
*createmark outputblocks 1
*createmark groups 1
*loadstepscreate "FAT1" 1
*attributeupdateint loadsteps 2 4143 1 1 0 1
*attributeupdateint loadsteps 2 4709 1 1 0 1
*attributeupdateentity loadsteps 2 4145 1 1 0 loadcols 3
*attributeupdateentity loadsteps 2 4147 1 1 0 loadcols 112
*attributeupdateint loadsteps 2 3800 1 1 0 1
*attributeupdateint loadsteps 2 707 1 1 0 1
*attributeupdateint loadsteps 2 2396 1 1 0 1
*attributeupdateint loadsteps 2 8134 1 1 0 1
*attributeupdateint loadsteps 2 2160 1 1 0 1
*attributeupdateint loadsteps 2 10212 1 1 0 1
*endnotehistorystate {LoadSteps Creation}
#end of iter 1
*startnotehistorystate {LoadSteps Creation}
*createmark loadcols 1 "SPC_FZ1" "FZ4"
*createmark outputblocks 1
*createmark groups 1
*loadstepscreate "FAT2" 1
*attributeupdateint loadsteps 3 4143 1 1 0 1
*attributeupdateint loadsteps 3 4709 1 1 0 1
*attributeupdateentity loadsteps 3 4145 1 1 0 loadcols 12
*attributeupdateentity loadsteps 3 4147 1 1 0 loadcols 112
*attributeupdateint loadsteps 3 3800 1 1 0 0
*attributeupdateint loadsteps 3 707 1 1 0 0
*attributeupdateint loadsteps 3 2396 1 1 0 0
*attributeupdateint loadsteps 3 8134 1 1 0 0
*attributeupdateint loadsteps 3 2160 1 1 0 0
*createarray 3 1
*attributeupdateentityidarray loadsteps 3 2161 1 1 0 loadsteps 1 1
*attributeupdateint loadsteps 3 10212 1 1 0 0
*endnotehistorystate {LoadSteps Creation}
#end of iter 2
*startnotehistorystate {LoadSteps Creation}
*createmark loadcols 1 "SPC_FAT17" "FZ4"
*createmark outputblocks 1
*createmark groups 1
*loadstepscreate "FAT4" 1
*attributeupdateint loadsteps 4 4143 1 1 0 1
*attributeupdateint loadsteps 4 4709 1 1 0 9
*attributeupdateentity loadsteps 4 4145 1 1 0 loadcols 77
*attributeupdateentity loadsteps 4 4147 1 1 0 loadcols 112
*attributeupdateentity loadsteps 4 9931 1 1 0 loadcols 938
*attributeupdateint loadsteps 4 3800 1 1 0 0
*attributeupdateint loadsteps 4 707 1 1 0 0
*attributeupdateint loadsteps 4 2396 1 1 0 0
*attributeupdateint loadsteps 4 8134 1 1 0 0
*attributeupdateint loadsteps 4 2160 1 1 0 1
*createarray 1 1
*attributeupdateentityidarray loadsteps 4 2161 1 1 0 loadsteps loadsteps 1 1
*attributeupdateint loadsteps 4 10212 1 1 0 0
*endnotehistorystate {LoadSteps Creation}
#end of iter 3
*startnotehistorystate {LoadSteps Creation}
*createmark loadcols 1 "SPC_FZ3" "FAT3"
*createmark outputblocks 1
*createmark groups 1
*loadstepscreate "FAT14" 1
*attributeupdateint loadsteps 5 4143 1 1 0 1
*attributeupdateint loadsteps 5 4709 1 1 0 9
*attributeupdateentity loadsteps 5 4145 1 1 0 loadcols 3
*attributeupdateentity loadsteps 5 4147 1 1 0 loadcols 903
*attributeupdateentity loadsteps 5 9931 1 1 0 loadcols 938
*attributeupdateint loadsteps 5 3800 1 1 0 0
*attributeupdateint loadsteps 5 707 1 1 0 0
*attributeupdateint loadsteps 5 2396 1 1 0 0
*attributeupdateint loadsteps 5 8134 1 1 0 0
*attributeupdateint loadsteps 5 2160 1 1 0 0
*attributeupdateint loadsteps 5 10212 1 1 0 0
*endnotehistorystate {LoadSteps Creation}
#end of iter 4
*startnotehistorystate {LoadSteps Creation}
*createmark loadcols 1 "FAT2"
*createmark outputblocks 1
*createmark groups 1
*loadstepscreate "FAT15" 1
*attributeupdateint loadsteps 6 4143 1 1 0 1
*attributeupdateint loadsteps 6 4709 1 1 0 1
*attributeupdateentity loadsteps 6 4147 1 1 0 loadcols 902
*attributeupdateint loadsteps 6 3800 1 1 0 0
*attributeupdateint loadsteps 6 707 1 1 0 0
*attributeupdateint loadsteps 6 2396 1 1 0 0
*attributeupdateint loadsteps 6 8134 1 1 0 0
*attributeupdateint loadsteps 6 2160 1 1 0 0
*createarray 6 1
*attributeupdateentityidarray loadsteps 6 2161 1 1 0 loadsteps 1 1
*attributeupdateint loadsteps 6 10212 1 1 0 0
*endnotehistorystate {LoadSteps Creation}
#end of iter 5
*startnotehistorystate {LoadSteps Creation}
*createmark loadcols 1 "FZ4"
*createmark outputblocks 1
*createmark groups 1
*loadstepscreate "FAT17" 1
*attributeupdateint loadsteps 7 4143 1 1 0 1
*attributeupdateint loadsteps 7 4709 1 1 0 1
*attributeupdateentity loadsteps 7 4147 1 1 0 loadcols 112
*attributeupdateint loadsteps 7 3800 1 1 0 1
*attributeupdateint loadsteps 7 707 1 1 0 1
*attributeupdateint loadsteps 7 2396 1 1 0 1
*attributeupdateint loadsteps 7 8134 1 1 0 1
*attributeupdateint loadsteps 7 2160 1 1 0 1
*attributeupdateint loadsteps 7 10212 1 1 0 1
*endnotehistorystate {LoadSteps Creation}
#end of iter 6
*startnotehistorystate {LoadSteps Creation}
*createmark loadcols 1 "SPC_FZ2" "FAT3"
*createmark outputblocks 1
*createmark groups 1
*loadstepscreate "LS1" 1
*attributeupdateint loadsteps 8 4143 1 1 0 1
*attributeupdateint loadsteps 8 4709 1 1 0 9
*attributeupdateentity loadsteps 8 4145 1 1 0 loadcols 900
*attributeupdateentity loadsteps 8 4147 1 1 0 loadcols 903
*attributeupdateentity loadsteps 8 9931 1 1 0 loadcols 938
*attributeupdateint loadsteps 8 3800 1 1 0 0
*attributeupdateint loadsteps 8 707 1 1 0 0
*attributeupdateint loadsteps 8 2396 1 1 0 0
*attributeupdateint loadsteps 8 8134 1 1 0 0
*attributeupdateint loadsteps 8 2160 1 1 0 1
*createarray 1 1
*attributeupdateentityidarray loadsteps 8 2161 1 1 0 loadsteps loadsteps 1 1
*attributeupdateint loadsteps 8 10212 1 1 0 0
*endnotehistorystate {LoadSteps Creation}
#end of iter 7
*startnotehistorystate {LoadSteps Creation}
*createmark loadcols 1 "SPC_FZ2" "FAT1"
*createmark outputblocks 1
*createmark groups 1
*loadstepscreate "LS2" 1
*attributeupdateint loadsteps 9 4143 1 1 0 1
*attributeupdateint loadsteps 9 4709 1 1 0 9
*attributeupdateentity loadsteps 9 4145 1 1 0 loadcols 900
*attributeupdateentity loadsteps 9 4147 1 1 0 loadcols 901
*attributeupdateentity loadsteps 9 9931 1 1 0 loadcols 938
*attributeupdateint loadsteps 9 3800 1 1 0 0
*attributeupdateint loadsteps 9 707 1 1 0 0
*attributeupdateint loadsteps 9 2396 1 1 0 0
*attributeupdateint loadsteps 9 8134 1 1 0 0
*attributeupdateint loadsteps 9 2160 1 1 0 0
*attributeupdateint loadsteps 9 10212 1 1 0 0
*endnotehistorystate {LoadSteps Creation}
#end of iter 8
*startnotehistorystate {Modified control card}
*cardcreate "GLOBAL_OUTPUT_REQUEST"
*startnotehistorystate {Attached attributes to card}
*attributeupdateint cards 1 3321 1 2 0 0
*attributeupdateint cards 1 9630 1 2 0 0
*attributeupdateint cards 1 9307 1 2 0 0
*attributeupdateint cards 1 9317 1 2 0 0
*attributeupdateint cards 1 9327 1 2 0 0
*attributeupdateint cards 1 3880 1 2 0 1
*attributeupdateint cards 1 4119 1 2 0 0
*attributeupdateint cards 1 4114 1 2 0 0
*attributeupdateint cards 1 7121 1 2 0 0
*attributeupdateint cards 1 2938 1 2 0 1
*attributeupdateint cards 1 10688 1 2 0 0
*attributeupdateint cards 1 523 1 2 0 0
*attributeupdateint cards 1 2385 1 2 0 0
*attributeupdateint cards 1 4052 1 2 0 0
*attributeupdateint cards 1 3712 1 2 0 1
*attributeupdateint cards 1 3885 1 2 0 0
*attributeupdateint cards 1 274 1 2 0 0
*attributeupdateint cards 1 3057 1 2 0 0
*attributeupdateint cards 1 7113 1 2 0 0
*attributeupdateint cards 1 8500 1 2 0 0
*attributeupdateint cards 1 2419 1 2 0 1
*attributeupdateint cards 1 9709 1 2 0 0
*attributeupdateint cards 1 3809 1 2 0 0
*attributeupdateint cards 1 7125 1 2 0 0
*attributeupdateint cards 1 4877 1 2 0 0
*attributeupdateint cards 1 9337 1 2 0 0
*attributeupdateint cards 1 9347 1 2 0 0
*attributeupdateint cards 1 9357 1 2 0 0
*attributeupdateint cards 1 3325 1 2 0 0
*attributeupdateint cards 1 7093 1 2 0 0
*attributeupdateint cards 1 3333 1 2 0 0
*attributeupdateint cards 1 2423 1 2 0 1
*attributeupdateint cards 1 4047 1 2 0 0
*attributeupdateint cards 1 9275 1 2 0 0
*attributeupdateint cards 1 5463 1 2 0 0
*attributeupdateint cards 1 8949 1 2 0 1
*attributeupdateint cards 1 10440 1 2 0 0
*attributeupdateint cards 1 7329 1 2 0 0
*attributeupdateint cards 1 7333 1 2 0 0
*attributeupdateint cards 1 2427 1 2 0 1
*attributeupdateint cards 1 8153 1 2 0 0
*attributeupdateint cards 1 8150 1 2 0 0
*attributeupdateint cards 1 8144 1 2 0 0
*attributeupdateint cards 1 3642 1 2 0 1
*attributeupdateint cards 1 2431 1 2 0 1
*attributeupdateint cards 1 7337 1 2 0 0
*attributeupdateint cards 1 7117 1 2 0 0
*attributeupdateint cards 1 3891 1 2 0 0
*attributeupdateint cards 1 3329 1 2 0 0
*attributeupdateint cards 1 1902 1 0 0 1
*createstringarray 1 "        "
*attributeupdatestringarray cards 1 3881 1 2 0 1 1
*createstringarray 1 "ALL"
*attributeupdatestringarray cards 1 3882 1 2 0 1 1
*createstringarray 1 "ALL"
*attributeupdatestringarray cards 1 3883 1 2 0 1 1
*attributeupdateint cards 1 1901 1 0 0 1
*createstringarray 1 "SORT1"
*attributeupdatestringarray cards 1 4871 1 2 0 1 1
*createstringarray 1 "H3D"
*attributeupdatestringarray cards 1 4315 1 2 0 1 1
*createstringarray 1 "        "
*attributeupdatestringarray cards 1 4008 1 2 0 1 1
*createstringarray 1 "        "
*attributeupdatestringarray cards 1 4876 1 2 0 1 1
*createstringarray 1 "        "
*attributeupdatestringarray cards 1 2174 1 2 0 1 1
*createstringarray 1 "        "
*attributeupdatestringarray cards 1 2287 1 2 0 1 1
*createstringarray 1 "        "
*attributeupdatestringarray cards 1 2175 1 2 0 1 1
*createstringarray 1 "        "
*attributeupdatestringarray cards 1 9621 1 2 0 1 1
*createstringarray 1 "        "
*attributeupdatestringarray cards 1 10026 1 2 0 1 1
*createstringarray 1 "        "
*attributeupdatestringarray cards 1 10027 1 2 0 1 1
*createstringarray 1 "ALL"
*attributeupdatestringarray cards 1 2939 1 2 0 1 1
*attributeupdateint cards 1 1906 1 0 0 2
*createstringarray 2 "        " "        "
*attributeupdatestringarray cards 1 2177 1 2 0 1 2
*createstringarray 2 "        " "OPTI"
*attributeupdatestringarray cards 1 4316 1 2 0 1 2
*createstringarray 2 "        " "        "
*attributeupdatestringarray cards 1 3336 1 2 0 1 2
*createstringarray 2 "        " "        "
*attributeupdatestringarray cards 1 10996 1 2 0 1 2
*createstringarray 2 "        " "        "
*attributeupdatestringarray cards 1 2176 1 2 0 1 2
*createstringarray 2 "        " "        "
*attributeupdatestringarray cards 1 2290 1 2 0 1 2
*createstringarray 2 "        " "        "
*attributeupdatestringarray cards 1 8137 1 2 0 1 2
*createstringarray 2 "ALL" "ALL"
*attributeupdatestringarray cards 1 3713 1 2 0 1 2
*attributeupdateint cards 1 1910 1 0 0 1
*createstringarray 1 "        "
*attributeupdatestringarray cards 1 4318 1 2 0 1 1
*createstringarray 1 "        "
*attributeupdatestringarray cards 1 4867 1 2 0 1 1
*createstringarray 1 "        "
*attributeupdatestringarray cards 1 2292 1 2 0 1 1
*createstringarray 1 "ALL"
*attributeupdatestringarray cards 1 2420 1 2 0 1 1
*attributeupdateint cards 1 1916 1 0 0 1
*createstringarray 1 "        "
*attributeupdatestringarray cards 1 4321 1 2 0 1 1
*createstringarray 1 "        "
*attributeupdatestringarray cards 1 3318 1 2 0 1 1
*createstringarray 1 "ALL"
*attributeupdatestringarray cards 1 2424 1 2 0 1 1
*attributeupdateint cards 1 8950 1 0 0 1
*createstringarray 1 "        "
*attributeupdatestringarray cards 1 8951 1 2 0 1 1
*createstringarray 1 "YES"
*attributeupdatestringarray cards 1 8952 1 2 0 1 1
*attributeupdateint cards 1 1921 1 0 0 1
*createstringarray 1 "        "
*attributeupdatestringarray cards 1 9609 1 2 0 1 1
*createstringarray 1 "        "
*attributeupdatestringarray cards 1 4323 1 2 0 1 1
*createstringarray 1 "        "
*attributeupdatestringarray cards 1 3342 1 2 0 1 1
*createstringarray 1 "        "
*attributeupdatestringarray cards 1 3343 1 2 0 1 1
*createstringarray 1 "        "
*attributeupdatestringarray cards 1 2294 1 2 0 1 1
*createstringarray 1 "ALL"
*attributeupdatestringarray cards 1 2428 1 2 0 1 1
*attributeupdateint cards 1 1922 1 0 0 1
*createstringarray 1 "SORT1"
*attributeupdatestringarray cards 1 4872 1 2 0 1 1
*createstringarray 1 "H3D"
*attributeupdatestringarray cards 1 4324 1 2 0 1 1
*createstringarray 1 "        "
*attributeupdatestringarray cards 1 3338 1 2 0 1 1
*createstringarray 1 "        "
*attributeupdatestringarray cards 1 3339 1 2 0 1 1
*createstringarray 1 "CORNER"
*attributeupdatestringarray cards 1 9603 1 2 0 1 1
*createstringarray 1 "        "
*attributeupdatestringarray cards 1 696 1 2 0 1 1
*createstringarray 1 "        "
*attributeupdatestringarray cards 1 9606 1 2 0 1 1
*createstringarray 1 "        "
*attributeupdatestringarray cards 1 9997 1 2 0 1 1
*createstringarray 1 "        "
*attributeupdatestringarray cards 1 9933 1 2 0 1 1
*createstringarray 1 "ALL"
*attributeupdatestringarray cards 1 3643 1 2 0 1 1
*attributeupdateint cards 1 1923 1 0 0 1
*createstringarray 1 "SORT1"
*attributeupdatestringarray cards 1 4873 1 2 0 1 1
*createstringarray 1 "H3D"
*attributeupdatestringarray cards 1 4325 1 2 0 1 1
*createstringarray 1 "        "
*attributeupdatestringarray cards 1 3386 1 2 0 1 1
*createstringarray 1 "        "
*attributeupdatestringarray cards 1 3387 1 2 0 1 1
*createstringarray 1 "CORNER"
*attributeupdatestringarray cards 1 4839 1 2 0 1 1
*createstringarray 1 "        "
*attributeupdatestringarray cards 1 1221 1 2 0 1 1
*createstringarray 1 "        "
*attributeupdatestringarray cards 1 2295 1 2 0 1 1
*createstringarray 1 "        "
*attributeupdatestringarray cards 1 8136 1 2 0 1 1
*createstringarray 1 "        "
*attributeupdatestringarray cards 1 8430 1 2 0 1 1
*createstringarray 1 "        "
*attributeupdatestringarray cards 1 9932 1 2 0 1 1
*createstringarray 1 "        "
*attributeupdatestringarray cards 1 8429 1 2 0 1 1
*createdoublearray 1 0
*attributeupdatedoublearray cards 1 9254 1 0 0 1 1
*createdoublearray 1 0
*attributeupdatedoublearray cards 1 9255 1 0 0 1 1
*createarray 1 0
*attributeupdateintarray cards 1 9280 1 0 0 1 1
*createdoublearray 1 0
*attributeupdatedoublearray cards 1 9281 1 0 0 1 1
*createstringarray 1 "YES"
*attributeupdatestringarray cards 1 2432 1 2 0 1 1
*endnotehistorystate {Attached attributes to card}
*endnotehistorystate {Modified control card}
*startnotehistorystate {Modified control card}
*cardcreate "OUTPUT"
*startnotehistorystate {Attached attributes to card}
*attributeupdateint cards 2 3850 1 0 0 2
*attributeupdatestring cards 2 130 1 0 0 "0"
*createstringarray 2 "H3D" "OP2"
*attributeupdatestringarray cards 2 3851 1 2 0 1 2
*createstringarray 2 "        " "MODEL"
*attributeupdatestringarray cards 2 3854 1 2 0 1 2
*createstringarray 2 "ALL" "ALL"
*attributeupdatestringarray cards 2 3852 1 2 0 1 2
*endnotehistorystate {Attached attributes to card}
*endnotehistorystate {Modified control card}
*startnotehistorystate {Modified control card}
*endnotehistorystate {Modified control card}
