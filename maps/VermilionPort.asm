VermilionPort_MapScriptHeader:
	; trigger count
	db 2

	; triggers
	dw .Trigger1, $0000
	dw .Trigger2, $0000

	; callback count
	db 1

	; callbacks
	dbw 5, .FlyPoint

.Trigger1
	end

.Trigger2
	priorityjump UnknownScript_0x74da6
	end

.FlyPoint
	setflag ENGINE_FLYPOINT_VERMILION
	return

UnknownScript_0x74da6:
	applymovement $0, MovementData_0x74ef3
	appear $2
	dotrigger $0
	setevent $0731
	setevent $0730
	setevent $0739
	clearevent $0733
	setevent $0030
	setevent $0000
	blackoutmod GROUP_VERMILION_CITY, MAP_VERMILION_CITY
	end

SailorScript_0x74dc4:
	faceplayer
	loadfont
	checkevent $0000
	iftrue UnknownScript_0x74e1a
	writetext UnknownText_0x74f06
	closetext
	loadmovesprites
	spriteface $2, DOWN
	pause 10
	playsound SFX_EXIT_BUILDING
	disappear $2
	waitbutton
	applymovement $0, MovementData_0x74ef1
	playsound SFX_EXIT_BUILDING
	special Function8c084
	waitbutton
	setevent $073a
	clearevent $073b
	clearevent EVENT_BEAT_POKEMANIAC_ETHAN
	clearevent EVENT_BEAT_BURGLAR_COREY
	clearevent EVENT_BEAT_BUG_CATCHER_KEN
	clearevent EVENT_BEAT_GUITARIST_CLYDE
	clearevent EVENT_BEAT_POKEFANM_JEREMY
	clearevent EVENT_BEAT_POKEFANF_GEORGIA
	clearevent EVENT_BEAT_SAILOR_KENNETH
	clearevent EVENT_BEAT_TEACHER_SHIRLEY
	clearevent EVENT_BEAT_SCHOOLBOY_NATE
	clearevent EVENT_BEAT_SCHOOLBOY_RICKY
	setevent $002f
	appear $2
	domaptrigger GROUP_FAST_SHIP_1F, MAP_FAST_SHIP_1F, $1
	warp GROUP_FAST_SHIP_1F, MAP_FAST_SHIP_1F, $19, $1
	end

UnknownScript_0x74e1a:
	writetext UnknownText_0x74f31
	closetext
	loadmovesprites
	end

UnknownScript_0x74e20:
	spriteface $3, RIGHT
	checkevent $0000
	iftrue UnknownScript_0x74e86
	checkevent $0001
	iftrue UnknownScript_0x74e86
	spriteface $0, LEFT
	loadfont
	checkcode $b
	if_equal MONDAY, UnknownScript_0x74e72
	if_equal TUESDAY, UnknownScript_0x74e72
	if_equal THURSDAY, UnknownScript_0x74e7c
	if_equal FRIDAY, UnknownScript_0x74e7c
	if_equal SATURDAY, UnknownScript_0x74e7c
	writetext UnknownText_0x74f4d
	yesorno
	iffalse UnknownScript_0x74e8d
	writetext UnknownText_0x74f8b
	keeptextopen
	checkitem S_S_TICKET
	iffalse UnknownScript_0x74e68
	writetext UnknownText_0x74fc2
	closetext
	loadmovesprites
	setevent $0001
	applymovement $0, MovementData_0x74ef8
	jump SailorScript_0x74dc4

UnknownScript_0x74e68:
	writetext UnknownText_0x74ff2
	closetext
	loadmovesprites
	applymovement $0, MovementData_0x74ef5
	end

UnknownScript_0x74e72:
	writetext UnknownText_0x75059
	closetext
	loadmovesprites
	applymovement $0, MovementData_0x74ef5
	end

UnknownScript_0x74e7c:
	writetext UnknownText_0x75080
	closetext
	loadmovesprites
	applymovement $0, MovementData_0x74ef5
	end

UnknownScript_0x74e86:
	end

UnknownScript_0x74e87:
	writetext UnknownText_0x74fa7
	closetext
	loadmovesprites
	end

UnknownScript_0x74e8d:
	writetext UnknownText_0x74fa7
	closetext
	loadmovesprites
	applymovement $0, MovementData_0x74ef5
	end

SailorScript_0x74e97:
	faceplayer
	loadfont
	checkevent $0000
	iftrue UnknownScript_0x74e1a
	checkcode $b
	if_equal MONDAY, UnknownScript_0x74eda
	if_equal TUESDAY, UnknownScript_0x74eda
	if_equal THURSDAY, UnknownScript_0x74ee0
	if_equal FRIDAY, UnknownScript_0x74ee0
	if_equal SATURDAY, UnknownScript_0x74ee0
	writetext UnknownText_0x74f4d
	yesorno
	iffalse UnknownScript_0x74e87
	writetext UnknownText_0x74f8b
	keeptextopen
	checkitem S_S_TICKET
	iffalse UnknownScript_0x74ed4
	writetext UnknownText_0x74fc2
	closetext
	loadmovesprites
	setevent $0001
	applymovement $0, MovementData_0x74efe
	jump SailorScript_0x74dc4

UnknownScript_0x74ed4:
	writetext UnknownText_0x74ff2
	closetext
	loadmovesprites
	end

UnknownScript_0x74eda:
	writetext UnknownText_0x75059
	closetext
	loadmovesprites
	end

UnknownScript_0x74ee0:
	writetext UnknownText_0x75080
	closetext
	loadmovesprites
	end

SuperNerdScript_0x74ee6:
	faceplayer
	loadfont
	writetext UnknownText_0x750a6
	closetext
	loadmovesprites
	end

MapVermilionPortSignpostItem0:
	dw $00eb
	db IRON
	

MovementData_0x74ef1:
	step_down
	step_end

MovementData_0x74ef3:
	step_up
	step_end

MovementData_0x74ef5:
	step_right
	turn_head_left
	step_end

MovementData_0x74ef8:
	step_down
	step_down
	step_down
	step_down
	step_down
	step_end

MovementData_0x74efe:
	step_right
	step_down
	step_down
	step_down
	step_down
	step_down
	step_down
	step_end

UnknownText_0x74f06:
	text "We're departing"
	line "soon. Please get"
	cont "on board."
	done

UnknownText_0x74f31:
	text "Sorry. You can't"
	line "board now."
	done

UnknownText_0x74f4d:
	text "Welcome to FAST"
	line "SHIP S.S.AQUA."

	para "Will you be board-"
	line "ing today?"
	done

UnknownText_0x74f8b:
	text "May I see your"
	line "S.S.TICKET?"
	done

UnknownText_0x74fa7:
	text "We hope to see you"
	line "again!"
	done

UnknownText_0x74fc2:
	text "<PLAYER> flashed"
	line "the S.S.TICKET."

	para "That's it."
	line "Thank you!"
	done

UnknownText_0x74ff2:
	text "<PLAYER> tried to"
	line "show the S.S."
	cont "TICKET…"

	para "…But no TICKET!"

	para "Sorry!"
	line "You may board only"

	para "if you have an"
	line "S.S.TICKET."
	done

UnknownText_0x75059:
	text "The FAST SHIP will"
	line "sail on Wednesday."
	done

UnknownText_0x75080:
	text "The FAST SHIP will"
	line "sail next Sunday."
	done

UnknownText_0x750a6:
	text "You came from"
	line "JOHTO?"

	para "I hear many rare"
	line "#MON live over"
	cont "there."
	done

VermilionPort_MapEventHeader:
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $5, $9, 5, GROUP_VERMILION_PORT_PASSAGE, MAP_VERMILION_PORT_PASSAGE
	warp_def $11, $7, 1, GROUP_FAST_SHIP_1F, MAP_FAST_SHIP_1F

	; xy triggers
	db 1
	xy_trigger 0, $b, $7, $0, UnknownScript_0x74e20, $0, $0

	; signposts
	db 1
	signpost 13, 16, $7, MapVermilionPortSignpostItem0

	; people-events
	db 3
	person_event SPRITE_SAILOR, 21, 11, $7, $0, 255, 255, $0, 0, SailorScript_0x74dc4, $072b
	person_event SPRITE_SAILOR, 15, 10, $9, $0, 255, 255, $0, 0, SailorScript_0x74e97, $ffff
	person_event SPRITE_SUPER_NERD, 15, 15, $5, $2, 255, 255, $0, 0, SuperNerdScript_0x74ee6, $ffff
