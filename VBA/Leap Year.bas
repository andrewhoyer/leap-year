Attribute VB_Name = "Module1"
Option Base 1

Sub LeapYear()

Dim years(5) As Integer, isLeapYear(5) As String, result As String

years(1) = 1900
years(2) = 2000
years(3) = 2023
years(4) = 2024
years(5) = 2026

For x = 1 To 5
        If (years(x) Mod 4 = 0 And years(x) Mod 100 <> 0) Or (years(x) Mod 400 = 0) Then
         isLeapYear(x) = "Yes"
        Else
         isLeapYear(x) = "No"
        End If
        
        result = result & "Is " & years(x) & " a leap year? " & isLeapYear(x) & Chr(13)
Next

MsgBox (result)

End Sub
