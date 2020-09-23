VERSION 5.00
Begin VB.Form Form1 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "DLL Test"
   ClientHeight    =   1995
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   4260
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1995
   ScaleWidth      =   4260
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command2 
      Caption         =   "Exit"
      Height          =   420
      Left            =   2430
      TabIndex        =   1
      Top             =   1275
      Width           =   1230
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Load Delphi DLL"
      Height          =   420
      Left            =   540
      TabIndex        =   0
      Top             =   1275
      Width           =   1815
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      AutoSize        =   -1  'True
      Caption         =   "Useing Delphi DLLs in Visual Basic"
      Height          =   195
      Left            =   885
      TabIndex        =   2
      Top             =   315
      Width           =   2490
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Declare Function DllTest Lib "MyDll.dll" () As Integer

Private Sub Command1_Click()
Dim TRes As Long
    TRes = DllTest
    
End Sub

Private Sub Command2_Click()
    Unload Form1: End
End Sub

