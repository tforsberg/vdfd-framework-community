Use Windows.pkg
Use DFClient.pkg
Use DFTabDlg.pkg

Activate_View Activate_oTEST_VDFD_CE_vw for oTEST_VDFD_CE_vw
Object oTEST_VDFD_CE_vw is a dbView
    
    Set Label to "New View"
    Set Size to 111 250
    Set Location to 5 7

    Object oNewTabDialog is a cVDFD_CE_TabDialog
        
        Set Size to 100 240
        Set Location to 5 5
        Set Rotate_Mode to RM_Rotate

        Object oCallStackDump_tp is a cVDFD_CE_TabPage
            Set Label to "CallStackDump"

            Function TestIt Returns String
                
            End_Function

        End_Object

        Object oNewTabPage2 is a cVDFD_CE_DbTabPage
            Set Label to "Page 2"
        End_Object

    End_Object

End_Object

