Section "InputClass"
	Identifier "Keyboard Setting"
  Option "XkbLayout" "us,ru"
	MatchIsKeyboard "yes"
	Option "XkbOptions" "ctl:nocaps,grp:shifts_toggle"
EndSection

Section "InputClass"
	Identifier "Kensington Slimblade Trackball"
	MatchProduct "Kensington Kensington Slimblade Trackball"
	Option "ButtonMapping" "1 8 2 4 5 6 7 9 3 10 11 12"
EndSection

Section "InputClass"
  MatchProduct "Kensington Expert Mouse"
	Option "ButtonMapping" "1 8 2 4 5 6 7 9 3 10 11 12"
EndSection
