	ORG	$0000
RESET
	SEI			;CLEAR ALL INTERRUPTS
	CLD			;CLEAR ALL DECIMALS
	LDX	#$00		;Clear the X register (it's a surprise tool that will help us later)

]LOOPUP
				;Because I do not have a timer on this device
				;I am going to rely on the X register to
				;implement delays
	INX			;First I increment the X register
	CPX	#$FF		;Is X=FF (highest value
	BNE	]LOOPUP		;If not, go back and do it again
	LDA	$01		;If so set the A register to turn on the LED
	STA	#$0050		;Send the command to the D-Latch
	
]LOOPDOWN			
				;Similar thing but it counts down instead
				;The delay can be increased by adding one
				;or more NOP (no operation) instructions
	DEX
	CPX	#$00		
	BNE	]LOOPDOWN
	LDA	$00		;LED off command
	STA	#$0050		;Send
	JMP	]LOOPUP		;Go back to counting up

	TYP	BIN
	DSK	BLINK.BIN
	END			; it takes 1786 clock cycles to fill the 
				; X register from 00 to FF
