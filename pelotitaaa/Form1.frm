VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   8205
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   13875
   LinkTopic       =   "Form1"
   ScaleHeight     =   8205
   ScaleWidth      =   13875
   StartUpPosition =   3  'Windows Default
   Begin VB.Timer Timer2 
      Enabled         =   0   'False
      Interval        =   100
      Left            =   8160
      Top             =   3600
   End
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   100
      Left            =   5880
      Top             =   3600
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Detener"
      Height          =   975
      Left            =   5520
      TabIndex        =   1
      Top             =   2280
      Width           =   3255
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Iniciar"
      Height          =   855
      Left            =   5400
      TabIndex        =   0
      Top             =   1080
      Width           =   3375
   End
   Begin VB.Shape Shape1 
      Height          =   1215
      Left            =   0
      Shape           =   3  'Circle
      Top             =   120
      Width           =   1215
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Command1_Click()
If Timer1.Enabled = False Then
Timer1.Enabled = True
End If
End Sub

Private Sub Command2_Click()
If Timer1.Enabled = True Then
Timer1.Enabled = False
End If
If Timer2.Enabled = True Then
Timer2.Enabled = False
End If
End Sub

Private Sub Timer1_Timer()
Shape1.Top = Shape1.Top + 100
If Shape1.Top >= 6960 Then
Timer1.Enabled = False
End If
If Shape1.Top >= 6960 Then
Timer2.Enabled = True
End If
If Shape1.Left >= 12600 Then
Shape1.Top = Shape1.Top - 200
End If
If Shape1.Top <= 0 Then
Timer1.Enabled = False
End If
If Shape1.Top <= 0 Then
Timer2.Enabled = True
End If
End Sub

Private Sub Timer2_Timer()
Shape1.Left = Shape1.Left + 100
If Shape1.Left >= 12600 Then
Timer2.Enabled = False
End If
If Shape1.Left >= 12600 Then
Timer1.Enabled = True
End If
If Shape1.Top <= 0 Then
Shape1.Left = Shape1.Left - 200
End If
If Shape1.Left = 0 Then
Timer2.Enabled = False
End If
End Sub
