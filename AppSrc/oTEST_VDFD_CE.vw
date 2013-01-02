//Use Windows.pkg
//Use DFClient.pkg
//Use DFTabDlg.pkg

Use Base\cVDFD_CE_Button.pkg

Use cVDFD_CE_CallStackDump.pkg


Function TestIt Returns String
    String sVal
    
    Handle hObj
    Get Create (RefClass(cVDFD_CE_CallStackDump)) to hObj
    Get psCallStack of hObj to sVal
    Send Info_Box sVal "Call Stack Dump"
    Send Destroy of hObj
    
End_Function

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

            Object oVDFD_CE_Button1 is a cVDFD_CE_Button
                Set Location to 14 26
                Set Label to 'oVDFD_CE_Button1'
            
                // fires when the button is clicked
                Procedure OnClick
                    String sVal
                    Delegate Get TestIt to sVal
                End_Procedure
            
            End_Object

            Object oVDFD_CE_Button2 is a cVDFD_CE_Button
                Set Location to 12 139
                Set Label to 'oVDFD_CE_Button2'
            
                // fires when the button is clicked
                Procedure OnClick
                    String sVal
                    Get TestIt to sVal
                End_Procedure
            
            End_Object

        End_Object

        Object oNewTabPage2 is a cVDFD_CE_DbTabPage
            Set Label to "Page 2"
        End_Object

    End_Object

End_Object

