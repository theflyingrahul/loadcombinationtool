import xlrd, os, sys
import load_ui
import new

from PyQt5.QtWidgets import *

global_dict = {}
l1 = []

class UX(QDialog, load_ui.Ui_load):
    def __init__(self):
        QDialog.__init__(self)
        load_ui.Ui_load.__init__(self)
        self.setupUi(self)
        self.browseExcel.clicked.connect(self.setPathExcel)
        self.browseTCL.clicked.connect(self.setPathTCL)
        self.generate.clicked.connect(self.main)

    def setPathExcel(self):
        self.excel_file.setText(QFileDialog.getOpenFileName()[0])
        #print(self.excel_file.text())

    def setPathTCL(self):
        self.tcl_file.setText(QFileDialog.getSaveFileName()[0])
        #print(self.tcl_file.text())

    def main(self):
        wkbook = self.excel_file.text()
        file = open(wkbook, 'r')
        if (os.path.isfile(wkbook) == False):
            self.errorLabel.setText("File doesn't exist!")
        else:
            self.loadcase(wkbook)
            self.loadstep(wkbook)

    def loadcase(self, wkbook):
        global global_dict
        global l1
        try:
            loadcasesheet = xlrd.open_workbook(wkbook)
            sheet = loadcasesheet.sheet_by_index(0)
            nlcase = sheet.nrows-3 #no of load cases
            if(sheet.cell_value(0, sheet.ncols-1)=='Pretension ID'):
                nlcount = sheet.ncols - 3  # no of load counter
            else:
                nlcount = sheet.ncols - 2  # no of load counter

            path = self.tcl_file.text()
            new_tcl = open(path, 'w')

            #code to write lst set in tcl sh
            LCount = []
            for i in range (3, nlcase+3):
                x = []
                for j in range(2, nlcount+2):
                    x.append(sheet.cell_value(i, j))
                LCount.append(x)

            #transpose LCount
            tLCount = [[LCount[j][i] for j in range(len(LCount))] for i in range(len(LCount[0]))]

            #iter to write lst data to tcl file
            ctr=0
            for x in tLCount:
                ctr = ctr + 1
                lstdata = str(x)[1:-1]
                new_tcl.write("set lst"+str(ctr)+' [split "'+lstdata+'" ","]\n')

            #iter to get loadcase names
            lcase_name = []
            for i in range(3, nlcase+3):
                lcase_name.append(sheet.cell_value(i, 0))

            #iter to find maxID value and construct IDList array
            IDList = []
            highestIDVal = int(sheet.cell_value(2,2))
            for i in range(0, nlcount):
                t = int(sheet.cell_value(2,i+2))
                IDList.append(t)
                if(highestIDVal<t):
                    highestIDVal = t

            if(highestIDVal<sheet.cell_value(2, sheet.ncols-1)):
                highestIDVal = int(sheet.cell_value(2, sheet.ncols-1))

            #append all collector and IDs
            for i in range(2, nlcount+2):
                l1.append((sheet.cell_value(0, i), int(sheet.cell_value(2, i))))

            #iter to write tcl script for each case
            for i in range(0, nlcase):
                new_tcl.write("set name "+lcase_name[i]+"\n")
                new_tcl.write("set j [expr "+str(i+1)+"+"+str(highestIDVal)+"]\n") #tcl: j is the ID of the loadcase being created (not nlcount+2)
                l1.append((lcase_name[i], i+highestIDVal+1))
                k = nlcount-LCount[i].count(0)  #tcl: k is no. of non-zero scaling factors in a loadcase (non-zero cells in a excel row)
                new_tcl.write("set k "+str(k)+"\n")
                new_tcl.write('*startnotehistorystate {Created loadcollector $name}\n')
                new_tcl.write('*collectorcreate loadcols $name "" 11\n')
                new_tcl.write('*createmark loadcols 2 $name\n')
                new_tcl.write(
                    '*dictionaryload loadcols 2 "C:/Program Files/Altair/2017/templates/feoutput/optistruct/optistruct" "LOADADD"\n')
                new_tcl.write('*startnotehistorystate {Attached attributes to loadcol $name}\n')
                new_tcl.write('*attributeupdateint loadcols $j 3240 1 2 0 1\n')
                new_tcl.write('*attributeupdatedouble loadcols $j 379 1 2 0 1\n')
                new_tcl.write('*attributeupdateint loadcols $j 3236 1 0 0 1\n')
                new_tcl.write('*createdoublearray 1 0\n')
                new_tcl.write('*attributeupdatedoublearray loadcols $j 380 1 2 0 1 1\n')
                new_tcl.write('*createarray 1 0\n')
                new_tcl.write('*attributeupdateentityidarray loadcols $j 383 1 2 0 loadcols 1 1\n')
                new_tcl.write('*endnotehistorystate {Attached attributes to loadcol $name}\n')
                new_tcl.write('*startnotehistorystate {Attached attributes to loadcol $name}\n')
                new_tcl.write('*attributeupdateint loadcols $j 3236 1 0 0 $k\n')

                #iter to get all non-zero scaling factor indices
                nonzerolistindices = [x for x in range(len(LCount[i])) if LCount[i][x] != 0]
                for x in range(0, len(nonzerolistindices)):
                    nonzerolistindices[x] += 1
                loadNumStr = ""
                for j in range(1, k+1):
                    new_tcl.write("set load"+str(j)+" [lindex $lst"+str(nonzerolistindices[j-1])+" [expr " + str(i+1) + "-1]]\n")
                    loadNumStr += "$load" + str(j) + " "

                #iter to form IDList (non-zero ones)
                RefIDList = []
                for t in nonzerolistindices:
                    RefIDList.append(int(sheet.cell_value(2, t+1)))

                new_tcl.write('*createdoublearray $k ' + loadNumStr[:-1] + '\n')
                new_tcl.write('*attributeupdatedoublearray loadcols $j 380 1 2 0 1 $k\n')
                new_tcl.write("*createarray $k " + str(RefIDList)[1:-1].replace(",", "") + "\n")
                new_tcl.write('*attributeupdateentityidarray loadcols $j 383 1 2 0 loadcols 1 $k\n')
                new_tcl.write('*endnotehistorystate {Attached attributes to loadcol $name}\n')
                new_tcl.write('*endnotehistorystate {Created loadcollector $name}\n')
                new_tcl.write('#iteration ' + str(i+1) + ' ends\n')

            # NLPARM gen
            nlparmID = str(int(i)+int(highestIDVal)+2)
            new_tcl.write('*startnotehistorystate {Created loadcollector "NLPARM"}\n')
            new_tcl.write('*collectorcreate loadcols "NLPARM" "" 11\n')
            new_tcl.write('*createmark loadcols 2 "NLPARM"\n')
            new_tcl.write('*dictionaryload loadcols 2 "C:/Program Files/Altair/2017/templates/feoutput/optistruct/optistruct" "NLPARM"\n')
            new_tcl.write('*startnotehistorystate {Attached attributes to loadcol "NLPARM"}\n')
            new_tcl.write('*attributeupdateint loadcols '+nlparmID+' 3240 1 2 0 1\n')
            new_tcl.write('*attributeupdateint loadcols '+nlparmID+' 4113 1 0 0 10\n')
            new_tcl.write('*attributeupdatedouble loadcols '+nlparmID+' 4232 1 2 0 0\n')
            new_tcl.write('*attributeupdateint loadcols '+nlparmID+' 4234 1 0 0 6\n')
            new_tcl.write('*attributeupdateint loadcols '+nlparmID+' 4088 1 0 0 25\n')
            new_tcl.write('*attributeupdatestring loadcols '+nlparmID+' 4089 1 0 0 "UPW"\n')
            new_tcl.write('*attributeupdatedouble loadcols '+nlparmID+' 4090 1 0 0 0.001\n')
            new_tcl.write('*attributeupdatedouble loadcols '+nlparmID+' 4091 1 0 0 0.001\n')
            new_tcl.write('*attributeupdatedouble loadcols '+nlparmID+' 4092 1 0 0 1e-007\n')
            new_tcl.write('*attributeupdateint loadcols '+nlparmID+' 4238 1 0 0 20\n')
            new_tcl.write('*attributeupdatedouble loadcols '+nlparmID+' 4240 1 0 0 0.001\n')
            new_tcl.write('*attributeupdatedouble loadcols '+nlparmID+' 10201 1 0 0 1\n')
            new_tcl.write('*attributeupdateint loadcols '+nlparmID+' 10614 1 2 0 1\n')
            new_tcl.write('*endnotehistorystate {Attached attributes to loadcol "NLPARM"}\n')
            new_tcl.write('*startnotehistorystate {Attached attributes to loadcol "NLPARM"}\n')
            new_tcl.write('*attributeupdateint loadcols '+nlparmID+' 4113 1 1 0 10\n')
            new_tcl.write('*endnotehistorystate {Attached attributes to loadcol "NLPARM"}\n')
            new_tcl.write('*endnotehistorystate {Created loadcollector "NLPARM"}\n')


            self.errorLabel.setText("TCL generation OK for loadcase!\n")
            new_tcl.close()
            #print(l1)
            global_dict = dict(l1)
            #print(global_dict)

        except Exception as e:
            self.errorLabel.setText("Error generating TCL file!!\n"+e)
            #print(e)

    def loadstep(self, wkbook):
        global global_dict
        global l1
        errorCount = 0
        try:
            excel_input = xlrd.open_workbook(wkbook)
            # nLCase = int(self.nLoadCase.text())
            # nSPC = int(self.nSPC.text())
            loadstep_sheet = excel_input.sheet_by_index(1)
            pretsheet = excel_input.sheet_by_index(0)
            nLoadsteps = loadstep_sheet.nrows - 2
            nLoadcombs = loadstep_sheet.ncols - 4

            loadstep_matrix = [[loadstep_sheet.cell_value(i + 2, j + 4) for j in range(nLoadcombs)] for i in range(nLoadsteps)]

            pretension = []
            try:
                for i in range(0, nLoadsteps):
                    if (loadstep_sheet.cell_value(i + 2, 2) == 'Yes'):
                        pretension.append(1)
                    elif (loadstep_sheet.cell_value(i + 2, 2) == 'No'):
                        pretension.append(0)
                    else:
                        raise Exception
            except Exception as e:
                self.errorLabel.setText(self.errorLabel.text()+"Invalid Pretension Value!\n")
                errorCount += 1

            tcl_file_name = self.tcl_file.text()
            new_tcl = open(tcl_file_name, 'a')

            pretensionEnabled = False
            if (1 in pretension):
                pretensionEnabled = True
                pretspcid = int(self.pretSPC.text())
                pretloadid = int(pretsheet.cell_value(2, pretsheet.ncols-1))
                new_tcl.write('*startnotehistorystate {LoadSteps Creation}\n')
                new_tcl.write('*createmark loadcols 1\n')
                new_tcl.write('*createmark outputblocks 1\n')
                new_tcl.write('*createmark groups 1\n')
                new_tcl.write('*loadstepscreate "Pretension" 1\n')
                new_tcl.write('*attributeupdateint loadsteps 1 4143 1 1 0 1\n')
                new_tcl.write('*attributeupdateint loadsteps 1 4709 1 1 0 1\n')
                new_tcl.write('*attributeupdateentity loadsteps 1 4145 1 1 0 loadcols ' + str(int(pretspcid)) + '\n')
                new_tcl.write('*attributeupdateint loadsteps 1 3800 1 1 0 0\n')
                new_tcl.write('*attributeupdateint loadsteps 1 707 1 1 0 0\n')
                new_tcl.write('*attributeupdateint loadsteps 1 2396 1 1 0 0\n')
                new_tcl.write('*attributeupdateint loadsteps 1 8134 1 1 0 0\n')
                new_tcl.write('*attributeupdateentity loadsteps 1 2159 1 1 0 loadcols ' + str(int(pretloadid)) + '\n')
                new_tcl.write('*attributeupdateint loadsteps 1 2160 1 1 0 0\n')
                new_tcl.write('*attributeupdateint loadsteps 1 10212 1 1 0 0\n')
                new_tcl.write('*endnotehistorystate {LoadSteps Creation}\n')
                new_tcl.write('#Pretension Created!\n')

            #store SPC name and ID to dict
            SPC_count = 0
            for i in range(4, loadstep_sheet.ncols):
                name = str(loadstep_sheet.cell_value(0, i))
                if(name.startswith('SPC')):
                    SPC_count += 1
                    l1.append((name, str(int(loadstep_sheet.cell_value(1, i)))))
            global_dict = dict(l1)

        #set nlCase
            nLCase = loadstep_sheet.ncols-SPC_count-4
            for i in range(0, len(loadstep_matrix)):
                if(pretensionEnabled):
                    id = str(i+2)
                else:
                    id = str(i+1)
                new_tcl.write('*startnotehistorystate {LoadSteps Creation}\n')
                if (loadstep_matrix[i].count(1) == 2):
                    line = '*createmark loadcols 1 "' + str(
                        loadstep_sheet.cell_value(0, loadstep_matrix[i].index(1) + 4)) + '" "'
                    line += str(loadstep_sheet.cell_value(0, len(loadstep_matrix[i]) - loadstep_matrix[i][::-1].index(
                        1) - 1 + 4)) + '"' + '\n'
                else:
                    line = '*createmark loadcols 1 "' + str(
                        loadstep_sheet.cell_value(0, loadstep_matrix[i].index(1) + 4)) + '"' + '\n'
                new_tcl.write(line)
                new_tcl.write('*createmark outputblocks 1\n')
                new_tcl.write('*createmark groups 1\n')
                new_tcl.write('*loadstepscreate "' + str(loadstep_sheet.cell_value(i + 2, 0)) + '" 1' + '\n')

                # check for linear static
                if (loadstep_sheet.cell_value(i + 2, 1) == 'linear static'):
                    new_tcl.write('*attributeupdateint loadsteps ' + id + ' 4143 1 1 0 1' + '\n')
                    new_tcl.write('*attributeupdateint loadsteps ' + id + ' 4709 1 1 0 1' + '\n')

                    # run if only SPC or Load available
                    if (loadstep_matrix[i].count(1) == 1):
                        # run if only Load is available
                        if (loadstep_matrix[i].index(1) in range(0, nLCase)):
                            line = '*attributeupdateentity loadsteps ' + id + ' 4147 1 1 0 loadcols ' + str(
                                global_dict[loadstep_sheet.cell_value(0, loadstep_matrix[i].index(1) + 4)]) + '\n'
                            new_tcl.write(line)
                        # run if only SPC is available
                        else:
                            line = '*attributeupdateentity loadsteps ' + id + ' 4145 1 1 0 loadcols ' + str(
                                global_dict[loadstep_sheet.cell_value(0, loadstep_matrix[i].index(1) + 4)]) + '\n'
                            new_tcl.write(line)

                    # run if SPC&Load is available
                    try:
                        if (loadstep_matrix[i].count(1) == 2):
                            try:
                                if (loadstep_matrix[i].index(1) in range(0, nLCase)):
                                    line = '*attributeupdateentity loadsteps ' + id + ' 4147 1 1 0 loadcols ' + str(
                                        global_dict[loadstep_sheet.cell_value(0, loadstep_matrix[i].index(1) + 4)]) + '\n'
                                    new_tcl.write(line)
                                else:
                                    raise Exception
                                if (len(loadstep_matrix[i]) - loadstep_matrix[i][::-1].index(1) - 1 in range(nLCase,
                                                                                                             nLoadcombs)):
                                    line = '*attributeupdateentity loadsteps ' + id + ' 4145 1 1 0 loadcols ' + str(
                                        global_dict[loadstep_sheet.cell_value(0, len(loadstep_matrix[i]) - loadstep_matrix[i][::-1].index(
                        1) - 1 + 4)]) + '\n'
                                    new_tcl.write(line)
                                else:
                                    raise Exception
                            except Exception as e:
                                self.errorLabel.setText(self.errorLabel.text()+"Error in Excel sheet, check whether SPC and Loadcases are selected properly for step " + str(
                                        i + 2) + "! \n Failed to generate TCL for Loadstep!\n")
                                #os.system("pause")
                                errorCount += 1
                        elif (loadstep_matrix[i].count(1) > 2):
                            raise Exception
                    except Exception as e:
                        self.errorLabel.setText(self.errorLabel.text()+"error: Load+SPC count >2! in step " + id + "\n Failed to generate TCL for Loadstep!\n")
                        #os.system("pause")
                        errorCount += 1

                    # check pretension==yes
                    if (pretension[i] == 0):
                        new_tcl.write('*attributeupdateint loadsteps ' + id + ' 3800 1 1 0 1' + '\n')
                        new_tcl.write('*attributeupdateint loadsteps ' + id + ' 707 1 1 0 1' + '\n')
                        new_tcl.write('*attributeupdateint loadsteps ' + id + ' 2396 1 1 0 1' + '\n')
                        new_tcl.write('*attributeupdateint loadsteps ' + id + ' 8134 1 1 0 1' + '\n')
                        new_tcl.write('*attributeupdateint loadsteps ' + id + ' 2160 1 1 0 1' + '\n')
                        new_tcl.write('*attributeupdateint loadsteps ' + id + ' 10212 1 1 0 1' + '\n')
                    else:
                        new_tcl.write('*attributeupdateint loadsteps ' + id + ' 3800 1 1 0 0' + '\n')
                        new_tcl.write('*attributeupdateint loadsteps ' + id + ' 707 1 1 0 0' + '\n')
                        new_tcl.write('*attributeupdateint loadsteps ' + id + ' 2396 1 1 0 0' + '\n')
                        new_tcl.write('*attributeupdateint loadsteps ' + id + ' 8134 1 1 0 0' + '\n')
                        new_tcl.write('*attributeupdateint loadsteps ' + id + ' 2160 1 1 0 0' + '\n')
                        new_tcl.write('*createarray ' + id + ' 1\n')
                        new_tcl.write('*attributeupdateentityidarray loadsteps ' + id + ' 2161 1 1 0 loadsteps 1 1\n')
                        new_tcl.write('*attributeupdateint loadsteps ' + id + ' 10212 1 1 0 0\n')

                #non-linear quasi-static
                elif (loadstep_sheet.cell_value(i + 2, 1) == 'non-linear quasi-static'):
                    new_tcl.write('*attributeupdateint loadsteps ' + id + ' 4143 1 1 0 1' + '\n')
                    new_tcl.write('*attributeupdateint loadsteps ' + id + ' 4709 1 1 0 9' + '\n')

                    # run if only SPC or Load available
                    if (loadstep_matrix[i].count(1) == 1):
                        # run if only load is available
                        if (loadstep_matrix[i].index(1) in range(0, nLCase)):
                            line = '*attributeupdateentity loadsteps ' + id + ' 4147 1 1 0 loadcols ' + str(
                                global_dict[loadstep_sheet.cell_value(0, loadstep_matrix[i].index(1) + 4)]) + '\n'
                            new_tcl.write(line)
                        # run if only SPC is available
                        else:
                            line = '*attributeupdateentity loadsteps ' + id + ' 4145 1 1 0 loadcols ' + str(
                                global_dict[loadstep_sheet.cell_value(0, loadstep_matrix[i].index(1) + 4)]) + '\n'
                            new_tcl.write(line)
                    try:
                        if (loadstep_matrix[i].count(1) == 2):
                            try:
                                if (loadstep_matrix[i].index(1) in range(0, nLCase)):
                                    line = '*attributeupdateentity loadsteps ' + id + ' 4147 1 1 0 loadcols ' + str(
                                        global_dict[loadstep_sheet.cell_value(0, loadstep_matrix[i].index(1) + 4)]) + '\n'
                                    new_tcl.write(line)
                                else:
                                    raise Exception
                                if (len(loadstep_matrix[i]) - loadstep_matrix[i][::-1].index(1) - 1 in range(nLCase,
                                                                                                             nLoadcombs)):
                                    line = '*attributeupdateentity loadsteps ' + id + ' 4145 1 1 0 loadcols ' + str(
                                        global_dict[loadstep_sheet.cell_value(0, len(loadstep_matrix[i]) - loadstep_matrix[i][::-1].index(
                        1) - 1 + 4)]) + '\n'
                                    new_tcl.write(line)
                                else:
                                    raise Exception
                            except Exception as e:
                                self.errorLabel.setText(self.errorLabel.text()+
                                    "Error in Excel sheet, check whether SPC and Loadcases are selected properly for step " + str(
                                        i + 1) + "! \n Failed to generate TCL for Loadstep!\n")
                                #os.system("pause")
                                errorCount += 1

                        elif (loadstep_matrix[i].count(1) > 2):
                            raise Exception
                    except Exception as e:
                        self.errorLabel.setText(self.errorLabel.setText()+"error: Load+SPC count >2! in step " + id +
                                                "\n Failed to generate TCL for Loadstep!\n")
                        #os.system("pause")
                        errorCount += 1

                    new_tcl.write('*attributeupdateentity loadsteps '+id+' 9931 1 1 0 loadcols 238\n')
                    new_tcl.write('*attributeupdateint loadsteps ' + id + ' 3800 1 1 0 0' + '\n')
                    new_tcl.write('*attributeupdateint loadsteps ' + id + ' 707 1 1 0 0' + '\n')
                    new_tcl.write('*attributeupdateint loadsteps ' + id + ' 2396 1 1 0 0' + '\n')
                    new_tcl.write('*attributeupdateint loadsteps ' + id + ' 8134 1 1 0 0' + '\n')
                    if (pretension[1] == 1):
                        new_tcl.write('*attributeupdateentity loadsteps ' + id + ' 2159 1 1 0 loadcols ' + str(
                            int(pretsheet.cell_value(2, pretsheet.ncols - 1))) + ' \n')
                    new_tcl.write('*attributeupdateint loadsteps ' + id + ' 2160 1 1 0 0' + '\n')
                    new_tcl.write('*attributeupdateint loadsteps ' + id + ' 10212 1 1 0 0' + '\n')

                else:
                    self.errorLabel.setText(self.errorLabel.text()+"Check Loadstep Type!")
                new_tcl.write('*endnotehistorystate {LoadSteps Creation}\n')
                new_tcl.write("#end of iter " + str(i + 1) + '\n')
            new_tcl.close()
            if(errorCount == 0):
                self.errorLabel.setText(self.errorLabel.text() + 'TCL generation OK for loadstep!\n')
            else:
                self.errorLabel.setText(self.errorLabel.text() +
                                        'TCL generated with errors! Please check the excel file!\n')
        except Exception as e:
            self.errorLabel.setText(self.errorLabel.text() + 'TCL generation failed for loadstep!\n'+e+"\n")
        errorCount = 0

        #cards


app = QApplication(sys.argv)
ux = UX()
ux.show()
app.exec_()
