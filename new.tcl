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
