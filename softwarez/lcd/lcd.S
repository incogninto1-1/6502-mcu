	ORG	$0000
RESET
	SEI			;CLEAR ALL INTERRUPTS
	CLD			;CLEAR ALL DECIMALS
	LDX	#$00

]PRINT
	INX
	NOP			;Extra delays to give time
	NOP			;for the LCD to initialize
	NOP
	CPX	#$FF
	BNE	]PRINT
	LDA	$01		;Store command 00000001 (clear LCD)
	STA	#$FF00		;to the address of the LCD
	
	
	
]HALT
	NOP
	JMP	]HALT

	TYP	BIN
	DSK	LCD.BIN
	END			; it takes 1786 clock cycles to fill the 
				; X register from 00 to FF
