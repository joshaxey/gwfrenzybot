 #NoTrayIcon

#include <GUIConstants.au3>

HotKeySet("{End}", "Recruit")
GuiCreate("Frenzybot v1", 170, 50, 200, 100, $WS_DLGFRAME)
WinSetOnTop("Frenzybot v1", "", 1)
$btnStart = GuiCtrlCreateButton("Start", 4, 1, 50, 20)
;$btnStop = GUICtrlCreateButton("Stop", 60, 1, 50, 20)
$btnExit = GUICtrlCreateButton("Exit", 116, 1, 50, 20)
$strSpam = InputBox("Frenzybot v1 - Frenzy key:", "Please input the skill key for frenzy.")
$intCount = InputBox("Frenzybot v1 - Number of times to frenzy:", "Please input the number of times that you wish to use frenzy before the bot stops.")
$intDelay = InputBox("Frenzybot v1 - Delay between each frenzy:", "Please input the number of seconds you want to pass before re-using frenzy.")
MsgBox(0,"Frenzybot v1 - Warning!", "Remember to make sure you are not in a chat channel, ready to type. Make sure your death levelling target is attacking and all equipment is adjusted.")
GuiSetState()
while GuiGetMsg() <> $GUI_EVENT_CLOSE
   $msg = GuiGetMsg()
   Select
      Case $msg = $btnStart
         WinActivate("Guild Wars")
         Sleep(2000)
;         IF $intCount = -1 THEN
;            while 1
;               Recruit()
;               Sleep($intDelay * 1000)
;            wend
;         ElseIf
            for $x = 1 to $intCount
               Recruit()
               Sleep($intDelay * 1000)
            next
;         EndIf
;      Case $msg = $btnStop
;         ExitLoop
      Case $msg = $btnExit
         Exit
   EndSelect
WEnd
Func Recruit()
        Send("{9}")
        Sleep(200)
        Send($strSpam)
   Sleep(200)
   Send("{9}")
EndFunc