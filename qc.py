import xlrd, os, sys
from PyQt5 import QtCore, QtWidgets
from PyQt5.QtWidgets import *

class Ui_load(object):
    def setupUi(self, load):
        load.setObjectName("load")
        load.resize(614, 288)
        self.gridLayout = QtWidgets.QGridLayout(load)
        self.gridLayout.setObjectName("gridLayout")
        self.browseExcel = QtWidgets.QPushButton(load)
        self.browseExcel.setFocusPolicy(QtCore.Qt.NoFocus)
        self.browseExcel.setObjectName("browseExcel")
        self.gridLayout.addWidget(self.browseExcel, 0, 2, 1, 1)
        self.label = QtWidgets.QLabel(load)
        self.label.setObjectName("label")
        self.gridLayout.addWidget(self.label, 0, 0, 1, 1)
        self.label_2 = QtWidgets.QLabel(load)
        self.label_2.setObjectName("label_2")
        self.gridLayout.addWidget(self.label_2, 1, 0, 1, 1)
        self.pretSPC = QtWidgets.QLineEdit(load)
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.MinimumExpanding, QtWidgets.QSizePolicy.Fixed)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.pretSPC.sizePolicy().hasHeightForWidth())
        self.pretSPC.setSizePolicy(sizePolicy)
        self.pretSPC.setMinimumSize(QtCore.QSize(400, 0))
        self.pretSPC.setFocusPolicy(QtCore.Qt.StrongFocus)
        self.pretSPC.setText("")
        self.pretSPC.setObjectName("pretSPC")
        self.gridLayout.addWidget(self.pretSPC, 2, 1, 1, 1)
        self.tcl_file = QtWidgets.QLineEdit(load)
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.MinimumExpanding, QtWidgets.QSizePolicy.Fixed)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.tcl_file.sizePolicy().hasHeightForWidth())
        self.tcl_file.setSizePolicy(sizePolicy)
        self.tcl_file.setMinimumSize(QtCore.QSize(400, 0))
        self.tcl_file.setFocusPolicy(QtCore.Qt.StrongFocus)
        self.tcl_file.setObjectName("tcl_file")
        self.gridLayout.addWidget(self.tcl_file, 1, 1, 1, 1)
        self.browseTCL = QtWidgets.QPushButton(load)
        self.browseTCL.setFocusPolicy(QtCore.Qt.NoFocus)
        self.browseTCL.setObjectName("browseTCL")
        self.gridLayout.addWidget(self.browseTCL, 1, 2, 1, 1)
        self.label_5 = QtWidgets.QLabel(load)
        self.label_5.setObjectName("label_5")
        self.gridLayout.addWidget(self.label_5, 2, 0, 1, 1)
        self.generate = QtWidgets.QPushButton(load)
        self.generate.setFocusPolicy(QtCore.Qt.StrongFocus)
        self.generate.setObjectName("generate")
        self.gridLayout.addWidget(self.generate, 4, 1, 1, 1)
        self.errorLabel = QtWidgets.QLabel(load)
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Preferred, QtWidgets.QSizePolicy.MinimumExpanding)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.errorLabel.sizePolicy().hasHeightForWidth())
        self.errorLabel.setSizePolicy(sizePolicy)
        self.errorLabel.setMinimumSize(QtCore.QSize(50, 100))
        self.errorLabel.setMaximumSize(QtCore.QSize(16777215, 16777215))
        self.errorLabel.setText("")
        self.errorLabel.setObjectName("errorLabel")
        self.gridLayout.addWidget(self.errorLabel, 6, 0, 1, 3)
        spacerItem = QtWidgets.QSpacerItem(20, 10, QtWidgets.QSizePolicy.Minimum, QtWidgets.QSizePolicy.Fixed)
        self.gridLayout.addItem(spacerItem, 3, 1, 1, 1)
        self.excel_file = QtWidgets.QLineEdit(load)
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.MinimumExpanding, QtWidgets.QSizePolicy.Fixed)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.excel_file.sizePolicy().hasHeightForWidth())
        self.excel_file.setSizePolicy(sizePolicy)
        self.excel_file.setMinimumSize(QtCore.QSize(400, 0))
        self.excel_file.setFocusPolicy(QtCore.Qt.StrongFocus)
        self.excel_file.setObjectName("excel_file")
        self.gridLayout.addWidget(self.excel_file, 0, 1, 1, 1)
        spacerItem1 = QtWidgets.QSpacerItem(0, 0, QtWidgets.QSizePolicy.Minimum, QtWidgets.QSizePolicy.Fixed)
        self.gridLayout.addItem(spacerItem1, 7, 0, 1, 1)
        self.label_6 = QtWidgets.QLabel(load)
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Preferred, QtWidgets.QSizePolicy.Minimum)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.label_6.sizePolicy().hasHeightForWidth())
        self.label_6.setSizePolicy(sizePolicy)
        self.label_6.setMinimumSize(QtCore.QSize(0, 30))
        self.label_6.setMaximumSize(QtCore.QSize(16777215, 40))
        self.label_6.setObjectName("label_6")
        self.gridLayout.addWidget(self.label_6, 5, 0, 1, 3)

        self.retranslateUi(load)
        QtCore.QMetaObject.connectSlotsByName(load)
        load.setTabOrder(self.excel_file, self.tcl_file)
        load.setTabOrder(self.tcl_file, self.pretSPC)
        load.setTabOrder(self.pretSPC, self.generate)
        load.setTabOrder(self.generate, self.browseExcel)
        load.setTabOrder(self.browseExcel, self.browseTCL)

    def retranslateUi(self, load):
        _translate = QtCore.QCoreApplication.translate
        load.setWindowTitle(_translate("load", "Loadcase and Loadstep Generator for Hypermesh"))
        self.browseExcel.setText(_translate("load", "Browse"))
        self.label.setText(_translate("load", "Path to Excel file:"))
        self.label_2.setText(_translate("load", "Path to save TCL file:"))
        self.pretSPC.setPlaceholderText(_translate("load", "Empty if no Pretension"))
        self.browseTCL.setText(_translate("load", "Browse"))
        self.label_5.setText(_translate("load", "SPC ID for Pretension:"))
        self.generate.setText(_translate("load", "Generate"))
        self.label_6.setText(_translate("load", "<html><head/><body><p align=\"center\"><span style=\" font-style:italic;\">Activity Log</span></p></body></html>"))

global_dict = {}
l1 = []

class UX(QDialog, Ui_load):
    def __init__(self):
        QDialog.__init__(self)
        Ui_load.__init__(self)
        self.setupUi(self)
        self.browseExcel.clicked.connect(self.setPathExcel)
        self.browseTCL.clicked.connect(self.setPathTCL)
        self.generate.clicked.connect(self.main)

    def setPathExcel(self):
        self.excel_file.setText(QFileDialog.getOpenFileName()[0])

    def setPathTCL(self):
        self.tcl_file.setText(QFileDialog.getSaveFileName()[0])

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

            spcsheet = loadcasesheet.sheet_by_index(1)
            for i in range(4, spcsheet.ncols):
                val = spcsheet.cell_value(1, i)
                if not(val==''):
                    if(highestIDVal<int(val)):
                        highestIDVal = int(val)


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
            l1.append(('nlparmID', int(nlparmID)))


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
                        if not (str(loadstep_sheet.cell_value(0, loadstep_matrix[i].index(1) + 4)).startswith('SPC')):
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
                                if not(str(loadstep_sheet.cell_value(0, loadstep_matrix[i].index(1) + 4)).startswith('SPC')):
                                    line = '*attributeupdateentity loadsteps ' + id + ' 4147 1 1 0 loadcols ' + str(
                                        global_dict[loadstep_sheet.cell_value(0, loadstep_matrix[i].index(1) + 4)]) + '\n'
                                    new_tcl.write(line)
                                else:
                                    line = '*attributeupdateentity loadsteps ' + id + ' 4145 1 1 0 loadcols ' + str(
                                        global_dict[
                                            loadstep_sheet.cell_value(0, loadstep_matrix[i].index(1) + 4)]) + '\n'
                                    new_tcl.write(line)

                                if not(str(loadstep_sheet.cell_value(0, len(loadstep_matrix[i]) - loadstep_matrix[i][::-1]
                                        .index(1) - 1 + 4)).startswith('SPC')):
                                    line = '*attributeupdateentity loadsteps ' + id + ' 4147 1 1 0 loadcols ' + str(
                                        global_dict[loadstep_sheet.cell_value(0, len(loadstep_matrix[i]) -
                                                                              loadstep_matrix[i][::-1].index(1) - 1 + 4)]) + '\n'
                                    new_tcl.write(line)
                                else:
                                    line = '*attributeupdateentity loadsteps ' + id + ' 4145 1 1 0 loadcols ' + str(
                                        global_dict[
                                            loadstep_sheet.cell_value(0, len(loadstep_matrix[i]) - loadstep_matrix[i][
                                                                                                   ::-1].index(
                                                1) - 1 + 4)]) + '\n'
                                    new_tcl.write(line)
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
                        if not(str(loadstep_sheet.cell_value(0, loadstep_matrix[i].index(1) + 4)).startswith('SPC')):
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
                                if not(
                                str(loadstep_sheet.cell_value(0, loadstep_matrix[i].index(1) + 4)).startswith('SPC')):
                                    line = '*attributeupdateentity loadsteps ' + id + ' 4147 1 1 0 loadcols ' + str(
                                        global_dict[
                                            loadstep_sheet.cell_value(0, loadstep_matrix[i].index(1) + 4)]) + '\n'
                                    new_tcl.write(line)
                                else:
                                    line = '*attributeupdateentity loadsteps ' + id + ' 4145 1 1 0 loadcols ' + str(
                                        global_dict[
                                            loadstep_sheet.cell_value(0, loadstep_matrix[i].index(1) + 4)]) + '\n'
                                    new_tcl.write(line)

                                if not(str(loadstep_sheet.cell_value(0, len(loadstep_matrix[i]) - loadstep_matrix[i][::-1]
                                        .index(1) - 1 + 4)).startswith('SPC')):
                                    line = '*attributeupdateentity loadsteps ' + id + ' 4147 1 1 0 loadcols ' + str(
                                        global_dict[loadstep_sheet.cell_value(0, len(loadstep_matrix[i]) -
                                                                              loadstep_matrix[i][::-1].index(
                                                                                  1) - 1 + 4)]) + '\n'
                                    new_tcl.write(line)
                                else:
                                    line = '*attributeupdateentity loadsteps ' + id + ' 4145 1 1 0 loadcols ' + str(
                                        global_dict[
                                            loadstep_sheet.cell_value(0, len(loadstep_matrix[i]) - loadstep_matrix[i][
                                                                                                   ::-1].index(
                                                1) - 1 + 4)]) + '\n'
                                    new_tcl.write(line)
                            except Exception as e:
                                self.errorLabel.setText(
                                    self.errorLabel.text() + "Error in Excel sheet, check whether SPC and Loadcases are selected properly for step " + str(
                                        i + 2) + "! \n Failed to generate TCL for Loadstep!\n")
                                # os.system("pause")
                                errorCount += 1
                        elif (loadstep_matrix[i].count(1) > 2):
                            raise Exception
                    except Exception as e:
                        self.errorLabel.setText(
                            self.errorLabel.text() + "error: Load+SPC count >2! in step " + id + "\n Failed to generate TCL for Loadstep!\n")
                        # os.system("pause")
                        errorCount += 1

                    new_tcl.write('*attributeupdateentity loadsteps '+id+' 9931 1 1 0 loadcols '+str(global_dict['nlparmID'])+'\n')
                    new_tcl.write('*attributeupdateint loadsteps ' + id + ' 3800 1 1 0 0' + '\n')
                    new_tcl.write('*attributeupdateint loadsteps ' + id + ' 707 1 1 0 0' + '\n')
                    new_tcl.write('*attributeupdateint loadsteps ' + id + ' 2396 1 1 0 0' + '\n')
                    new_tcl.write('*attributeupdateint loadsteps ' + id + ' 8134 1 1 0 0' + '\n')
                    if (pretension[i] == 1):
                        new_tcl.write('*attributeupdateentity loadsteps ' + id + ' 2159 1 1 0 loadcols ' + str(
                            int(pretsheet.cell_value(2, pretsheet.ncols - 1))) + ' \n')
                    new_tcl.write('*attributeupdateint loadsteps ' + id + ' 2160 1 1 0 0' + '\n')
                    new_tcl.write('*attributeupdateint loadsteps ' + id + ' 10212 1 1 0 0' + '\n')

                else:
                    self.errorLabel.setText(self.errorLabel.text()+"Check Loadstep Type!")
                new_tcl.write('*endnotehistorystate {LoadSteps Creation}\n')
                new_tcl.write("#end of iter " + str(i + 1) + '\n')
            if(errorCount == 0):
                self.errorLabel.setText(self.errorLabel.text() + 'TCL generation OK for loadstep!\n')
                # cards
                new_tcl.write('*startnotehistorystate {Modified control card}\n')
                new_tcl.write('*cardcreate "GLOBAL_OUTPUT_REQUEST"\n')
                new_tcl.write('*startnotehistorystate {Attached attributes to card}\n')
                new_tcl.write('*attributeupdateint cards 1 3321 1 2 0 0\n')
                new_tcl.write('*attributeupdateint cards 1 9630 1 2 0 0\n')
                new_tcl.write('*attributeupdateint cards 1 9307 1 2 0 0\n')
                new_tcl.write('*attributeupdateint cards 1 9317 1 2 0 0\n')
                new_tcl.write('*attributeupdateint cards 1 9327 1 2 0 0\n')
                new_tcl.write('*attributeupdateint cards 1 3880 1 2 0 1\n')
                new_tcl.write('*attributeupdateint cards 1 4119 1 2 0 0\n')
                new_tcl.write('*attributeupdateint cards 1 4114 1 2 0 0\n')
                new_tcl.write('*attributeupdateint cards 1 7121 1 2 0 0\n')
                new_tcl.write('*attributeupdateint cards 1 2938 1 2 0 1\n')
                new_tcl.write('*attributeupdateint cards 1 10688 1 2 0 0\n')
                new_tcl.write('*attributeupdateint cards 1 523 1 2 0 0\n')
                new_tcl.write('*attributeupdateint cards 1 2385 1 2 0 0\n')
                new_tcl.write('*attributeupdateint cards 1 4052 1 2 0 0\n')
                new_tcl.write('*attributeupdateint cards 1 3712 1 2 0 1\n')
                new_tcl.write('*attributeupdateint cards 1 3885 1 2 0 0\n')
                new_tcl.write('*attributeupdateint cards 1 274 1 2 0 0\n')
                new_tcl.write('*attributeupdateint cards 1 3057 1 2 0 0\n')
                new_tcl.write('*attributeupdateint cards 1 7113 1 2 0 0\n')
                new_tcl.write('*attributeupdateint cards 1 8500 1 2 0 0\n')
                new_tcl.write('*attributeupdateint cards 1 2419 1 2 0 1\n')
                new_tcl.write('*attributeupdateint cards 1 9709 1 2 0 0\n')
                new_tcl.write('*attributeupdateint cards 1 3809 1 2 0 0\n')
                new_tcl.write('*attributeupdateint cards 1 7125 1 2 0 0\n')
                new_tcl.write('*attributeupdateint cards 1 4877 1 2 0 0\n')
                new_tcl.write('*attributeupdateint cards 1 9337 1 2 0 0\n')
                new_tcl.write('*attributeupdateint cards 1 9347 1 2 0 0\n')
                new_tcl.write('*attributeupdateint cards 1 9357 1 2 0 0\n')
                new_tcl.write('*attributeupdateint cards 1 3325 1 2 0 0\n')
                new_tcl.write('*attributeupdateint cards 1 7093 1 2 0 0\n')
                new_tcl.write('*attributeupdateint cards 1 3333 1 2 0 0\n')
                new_tcl.write('*attributeupdateint cards 1 2423 1 2 0 1\n')
                new_tcl.write('*attributeupdateint cards 1 4047 1 2 0 0\n')
                new_tcl.write('*attributeupdateint cards 1 9275 1 2 0 0\n')
                new_tcl.write('*attributeupdateint cards 1 5463 1 2 0 0\n')
                new_tcl.write('*attributeupdateint cards 1 8949 1 2 0 1\n')
                new_tcl.write('*attributeupdateint cards 1 10440 1 2 0 0\n')
                new_tcl.write('*attributeupdateint cards 1 7329 1 2 0 0\n')
                new_tcl.write('*attributeupdateint cards 1 7333 1 2 0 0\n')
                new_tcl.write('*attributeupdateint cards 1 2427 1 2 0 1\n')
                new_tcl.write('*attributeupdateint cards 1 8153 1 2 0 0\n')
                new_tcl.write('*attributeupdateint cards 1 8150 1 2 0 0\n')
                new_tcl.write('*attributeupdateint cards 1 8144 1 2 0 0\n')
                new_tcl.write('*attributeupdateint cards 1 3642 1 2 0 1\n')
                new_tcl.write('*attributeupdateint cards 1 2431 1 2 0 1\n')
                new_tcl.write('*attributeupdateint cards 1 7337 1 2 0 0\n')
                new_tcl.write('*attributeupdateint cards 1 7117 1 2 0 0\n')
                new_tcl.write('*attributeupdateint cards 1 3891 1 2 0 0\n')
                new_tcl.write('*attributeupdateint cards 1 3329 1 2 0 0\n')
                new_tcl.write('*attributeupdateint cards 1 1902 1 0 0 1\n')
                new_tcl.write('*createstringarray 1 "        "\n')
                new_tcl.write('*attributeupdatestringarray cards 1 3881 1 2 0 1 1\n')
                new_tcl.write('*createstringarray 1 "ALL"\n')
                new_tcl.write('*attributeupdatestringarray cards 1 3882 1 2 0 1 1\n')
                new_tcl.write('*createstringarray 1 "ALL"\n')
                new_tcl.write('*attributeupdatestringarray cards 1 3883 1 2 0 1 1\n')
                new_tcl.write('*attributeupdateint cards 1 1901 1 0 0 1\n')
                new_tcl.write('*createstringarray 1 "SORT1"\n')
                new_tcl.write('*attributeupdatestringarray cards 1 4871 1 2 0 1 1\n')
                new_tcl.write('*createstringarray 1 "H3D"\n')
                new_tcl.write('*attributeupdatestringarray cards 1 4315 1 2 0 1 1\n')
                new_tcl.write('*createstringarray 1 "        "\n')
                new_tcl.write('*attributeupdatestringarray cards 1 4008 1 2 0 1 1\n')
                new_tcl.write('*createstringarray 1 "        "\n')
                new_tcl.write('*attributeupdatestringarray cards 1 4876 1 2 0 1 1\n')
                new_tcl.write('*createstringarray 1 "        "\n')
                new_tcl.write('*attributeupdatestringarray cards 1 2174 1 2 0 1 1\n')
                new_tcl.write('*createstringarray 1 "        "\n')
                new_tcl.write('*attributeupdatestringarray cards 1 2287 1 2 0 1 1\n')
                new_tcl.write('*createstringarray 1 "        "\n')
                new_tcl.write('*attributeupdatestringarray cards 1 2175 1 2 0 1 1\n')
                new_tcl.write('*createstringarray 1 "        "\n')
                new_tcl.write('*attributeupdatestringarray cards 1 9621 1 2 0 1 1\n')
                new_tcl.write('*createstringarray 1 "        "\n')
                new_tcl.write('*attributeupdatestringarray cards 1 10026 1 2 0 1 1\n')
                new_tcl.write('*createstringarray 1 "        "\n')
                new_tcl.write('*attributeupdatestringarray cards 1 10027 1 2 0 1 1\n')
                new_tcl.write('*createstringarray 1 "ALL"\n')
                new_tcl.write('*attributeupdatestringarray cards 1 2939 1 2 0 1 1\n')
                new_tcl.write('*attributeupdateint cards 1 1906 1 0 0 2\n')
                new_tcl.write('*createstringarray 2 "        " "        "\n')
                new_tcl.write('*attributeupdatestringarray cards 1 2177 1 2 0 1 2\n')
                new_tcl.write('*createstringarray 2 "        " "OPTI"\n')
                new_tcl.write('*attributeupdatestringarray cards 1 4316 1 2 0 1 2\n')
                new_tcl.write('*createstringarray 2 "        " "        "\n')
                new_tcl.write('*attributeupdatestringarray cards 1 3336 1 2 0 1 2\n')
                new_tcl.write('*createstringarray 2 "        " "        "\n')
                new_tcl.write('*attributeupdatestringarray cards 1 10996 1 2 0 1 2\n')
                new_tcl.write('*createstringarray 2 "        " "        "\n')
                new_tcl.write('*attributeupdatestringarray cards 1 2176 1 2 0 1 2\n')
                new_tcl.write('*createstringarray 2 "        " "        "\n')
                new_tcl.write('*attributeupdatestringarray cards 1 2290 1 2 0 1 2\n')
                new_tcl.write('*createstringarray 2 "        " "        "\n')
                new_tcl.write('*attributeupdatestringarray cards 1 8137 1 2 0 1 2\n')
                new_tcl.write('*createstringarray 2 "ALL" "ALL"\n')
                new_tcl.write('*attributeupdatestringarray cards 1 3713 1 2 0 1 2\n')
                new_tcl.write('*attributeupdateint cards 1 1910 1 0 0 1\n')
                new_tcl.write('*createstringarray 1 "        "\n')
                new_tcl.write('*attributeupdatestringarray cards 1 4318 1 2 0 1 1\n')
                new_tcl.write('*createstringarray 1 "        "\n')
                new_tcl.write('*attributeupdatestringarray cards 1 4867 1 2 0 1 1\n')
                new_tcl.write('*createstringarray 1 "        "\n')
                new_tcl.write('*attributeupdatestringarray cards 1 2292 1 2 0 1 1\n')
                new_tcl.write('*createstringarray 1 "ALL"\n')
                new_tcl.write('*attributeupdatestringarray cards 1 2420 1 2 0 1 1\n')
                new_tcl.write('*attributeupdateint cards 1 1916 1 0 0 1\n')
                new_tcl.write('*createstringarray 1 "        "\n')
                new_tcl.write('*attributeupdatestringarray cards 1 4321 1 2 0 1 1\n')
                new_tcl.write('*createstringarray 1 "        "\n')
                new_tcl.write('*attributeupdatestringarray cards 1 3318 1 2 0 1 1\n')
                new_tcl.write('*createstringarray 1 "ALL"\n')
                new_tcl.write('*attributeupdatestringarray cards 1 2424 1 2 0 1 1\n')
                new_tcl.write('*attributeupdateint cards 1 8950 1 0 0 1\n')
                new_tcl.write('*createstringarray 1 "        "\n')
                new_tcl.write('*attributeupdatestringarray cards 1 8951 1 2 0 1 1\n')
                new_tcl.write('*createstringarray 1 "YES"\n')
                new_tcl.write('*attributeupdatestringarray cards 1 8952 1 2 0 1 1\n')
                new_tcl.write('*attributeupdateint cards 1 1921 1 0 0 1\n')
                new_tcl.write('*createstringarray 1 "        "\n')
                new_tcl.write('*attributeupdatestringarray cards 1 9609 1 2 0 1 1\n')
                new_tcl.write('*createstringarray 1 "        "\n')
                new_tcl.write('*attributeupdatestringarray cards 1 4323 1 2 0 1 1\n')
                new_tcl.write('*createstringarray 1 "        "\n')
                new_tcl.write('*attributeupdatestringarray cards 1 3342 1 2 0 1 1\n')
                new_tcl.write('*createstringarray 1 "        "\n')
                new_tcl.write('*attributeupdatestringarray cards 1 3343 1 2 0 1 1\n')
                new_tcl.write('*createstringarray 1 "        "\n')
                new_tcl.write('*attributeupdatestringarray cards 1 2294 1 2 0 1 1\n')
                new_tcl.write('*createstringarray 1 "ALL"\n')
                new_tcl.write('*attributeupdatestringarray cards 1 2428 1 2 0 1 1\n')
                new_tcl.write('*attributeupdateint cards 1 1922 1 0 0 1\n')
                new_tcl.write('*createstringarray 1 "SORT1"\n')
                new_tcl.write('*attributeupdatestringarray cards 1 4872 1 2 0 1 1\n')
                new_tcl.write('*createstringarray 1 "H3D"\n')
                new_tcl.write('*attributeupdatestringarray cards 1 4324 1 2 0 1 1\n')
                new_tcl.write('*createstringarray 1 "        "\n')
                new_tcl.write('*attributeupdatestringarray cards 1 3338 1 2 0 1 1\n')
                new_tcl.write('*createstringarray 1 "        "\n')
                new_tcl.write('*attributeupdatestringarray cards 1 3339 1 2 0 1 1\n')
                new_tcl.write('*createstringarray 1 "CORNER"\n')
                new_tcl.write('*attributeupdatestringarray cards 1 9603 1 2 0 1 1\n')
                new_tcl.write('*createstringarray 1 "        "\n')
                new_tcl.write('*attributeupdatestringarray cards 1 696 1 2 0 1 1\n')
                new_tcl.write('*createstringarray 1 "        "\n')
                new_tcl.write('*attributeupdatestringarray cards 1 9606 1 2 0 1 1\n')
                new_tcl.write('*createstringarray 1 "        "\n')
                new_tcl.write('*attributeupdatestringarray cards 1 9997 1 2 0 1 1\n')
                new_tcl.write('*createstringarray 1 "        "\n')
                new_tcl.write('*attributeupdatestringarray cards 1 9933 1 2 0 1 1\n')
                new_tcl.write('*createstringarray 1 "ALL"\n')
                new_tcl.write('*attributeupdatestringarray cards 1 3643 1 2 0 1 1\n')
                new_tcl.write('*attributeupdateint cards 1 1923 1 0 0 1\n')
                new_tcl.write('*createstringarray 1 "SORT1"\n')
                new_tcl.write('*attributeupdatestringarray cards 1 4873 1 2 0 1 1\n')
                new_tcl.write('*createstringarray 1 "H3D"\n')
                new_tcl.write('*attributeupdatestringarray cards 1 4325 1 2 0 1 1\n')
                new_tcl.write('*createstringarray 1 "        "\n')
                new_tcl.write('*attributeupdatestringarray cards 1 3386 1 2 0 1 1\n')
                new_tcl.write('*createstringarray 1 "        "\n')
                new_tcl.write('*attributeupdatestringarray cards 1 3387 1 2 0 1 1\n')
                new_tcl.write('*createstringarray 1 "CORNER"\n')
                new_tcl.write('*attributeupdatestringarray cards 1 4839 1 2 0 1 1\n')
                new_tcl.write('*createstringarray 1 "        "\n')
                new_tcl.write('*attributeupdatestringarray cards 1 1221 1 2 0 1 1\n')
                new_tcl.write('*createstringarray 1 "        "\n')
                new_tcl.write('*attributeupdatestringarray cards 1 2295 1 2 0 1 1\n')
                new_tcl.write('*createstringarray 1 "        "\n')
                new_tcl.write('*attributeupdatestringarray cards 1 8136 1 2 0 1 1\n')
                new_tcl.write('*createstringarray 1 "        "\n')
                new_tcl.write('*attributeupdatestringarray cards 1 8430 1 2 0 1 1\n')
                new_tcl.write('*createstringarray 1 "        "\n')
                new_tcl.write('*attributeupdatestringarray cards 1 9932 1 2 0 1 1\n')
                new_tcl.write('*createstringarray 1 "        "\n')
                new_tcl.write('*attributeupdatestringarray cards 1 8429 1 2 0 1 1\n')
                new_tcl.write('*createdoublearray 1 0\n')
                new_tcl.write('*attributeupdatedoublearray cards 1 9254 1 0 0 1 1\n')
                new_tcl.write('*createdoublearray 1 0\n')
                new_tcl.write('*attributeupdatedoublearray cards 1 9255 1 0 0 1 1\n')
                new_tcl.write('*createarray 1 0\n')
                new_tcl.write('*attributeupdateintarray cards 1 9280 1 0 0 1 1\n')
                new_tcl.write('*createdoublearray 1 0\n')
                new_tcl.write('*attributeupdatedoublearray cards 1 9281 1 0 0 1 1\n')
                new_tcl.write('*createstringarray 1 "YES"\n')
                new_tcl.write('*attributeupdatestringarray cards 1 2432 1 2 0 1 1\n')
                new_tcl.write('*endnotehistorystate {Attached attributes to card}\n')
                new_tcl.write('*endnotehistorystate {Modified control card}\n')
                new_tcl.write('*startnotehistorystate {Modified control card}\n')
                new_tcl.write('*cardcreate "OUTPUT"\n')
                new_tcl.write('*startnotehistorystate {Attached attributes to card}\n')
                new_tcl.write('*attributeupdateint cards 2 3850 1 0 0 2\n')
                new_tcl.write('*attributeupdatestring cards 2 130 1 0 0 "0"\n')
                new_tcl.write('*createstringarray 2 "H3D" "OP2"\n')
                new_tcl.write('*attributeupdatestringarray cards 2 3851 1 2 0 1 2\n')
                new_tcl.write('*createstringarray 2 "        " "MODEL"\n')
                new_tcl.write('*attributeupdatestringarray cards 2 3854 1 2 0 1 2\n')
                new_tcl.write('*createstringarray 2 "ALL" "ALL"\n')
                new_tcl.write('*attributeupdatestringarray cards 2 3852 1 2 0 1 2\n')
                new_tcl.write('*endnotehistorystate {Attached attributes to card}\n')
                new_tcl.write('*endnotehistorystate {Modified control card}\n')
                new_tcl.write('*startnotehistorystate {Modified control card}\n')
                new_tcl.write('*endnotehistorystate {Modified control card}\n')

                self.errorLabel.setText(self.errorLabel.text() + 'All OK!\n')
            else:
                self.errorLabel.setText(self.errorLabel.text() +
                                        'TCL generated with errors! Please check the excel file!\n')
            new_tcl.close()
        except Exception as e:
            self.errorLabel.setText(self.errorLabel.text() + 'TCL generation failed for loadstep!\n'+e+"\n")
        errorCount = 0

app = QApplication(sys.argv)
ux = UX()
ux.show()
app.exec_()