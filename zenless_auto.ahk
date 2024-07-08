#KeyHistory 0
#MaxThreadsPerHotkey 2
#IfWinActive, ahk_exe ZenlessZoneZero.exe

Gui, Margin, 0, 0
Gui, Add, Picture,x484 y570,assist_icon.png

4::
Toggle:=!Toggle

Gui, +LastFound +AlwaysOnTop -Caption +Owner
WinSet, TransColor, f0f0f0 ; Removes specified color

if Toggle{
    MsgBox AHK On !
}
if !Toggle{
    MsgBox AHK Off !
}
While, Toggle
{
 if WinActive("ahk_exe ZenlessZoneZero.exe"){
  ImageSearch, x, y, 0, 0, 1188, 668,*60 yellow_light.png
  If (ErrorLevel = 0){
   sleep, 40
   send {space down}
   sleep, 10
   send {space up}
   sleep, 100
  }

  ImageSearch, x, y, 0, 0, 1188, 668,*60 red_light.png
  If (ErrorLevel = 0){
   sleep, 40
   send {RButton down}
   sleep, 10
   send {RButton up}
   sleep, 100
  }

  ImageSearch, x, y, 0, 0, 1188, 668,*50 left_mouse.png
  If (ErrorLevel = 0){
   Gui, Show, NoActivate
  }
  else{
   Gui, Hide 
  } 
 }
 else{
  Gui, Hide
  Sleep, 2500
 }
}
Gui, Hide
return