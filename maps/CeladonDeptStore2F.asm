CeladonDeptStore2F_MapScriptHeader:
	; trigger count
	db 0

	; callback count
	db 0

ClerkScript_0x70bad:
	faceplayer
	loadfont
	pokemart $0, $0017
	loadmovesprites
	end

ClerkScript_0x70bb5:
	faceplayer
	loadfont
	pokemart $0, $0018
	loadmovesprites
	end

PokefanMScript_0x70bbd:
	jumptextfaceplayer UnknownText_0x70bc9

YoungsterScript_0x70bc0:
	jumptextfaceplayer UnknownText_0x70c3e

CeladonDeptStore2FDirectory:
	jumptext CeladonDeptStore2FDirectoryText

CeladonDeptStore2FElevatorButton:
	jumpstd elevatorbutton

UnknownText_0x70bc9:
	text "I just recently"
	line "became a trainer."

	para "My son encouraged"
	line "me to do it."

	para "I'm impressed by"
	line "the selection of"
	cont "convenient items."
	done

UnknownText_0x70c3e:
	text "My dad's having a"
	line "hard time learning"

	para "the names of items"
	line "and how they are"

	para "supposed to be"
	line "used…"
	done

CeladonDeptStore2FDirectoryText:
	text "Top Grade Items"
	line "for Trainers!"

	para "2F: TRAINER'S"
	line "    MARKET"
	done

CeladonDeptStore2F_MapEventHeader:
	; filler
	db 0, 0

	; warps
	db 3
	warp_def $0, $c, 1, GROUP_CELADON_DEPT_STORE_3F, MAP_CELADON_DEPT_STORE_3F
	warp_def $0, $f, 3, GROUP_CELADON_DEPT_STORE_1F, MAP_CELADON_DEPT_STORE_1F
	warp_def $0, $2, 1, GROUP_CELADON_DEPT_STORE_ELEVATOR, MAP_CELADON_DEPT_STORE_ELEVATOR

	; xy triggers
	db 0

	; signposts
	db 2
	signpost 0, 14, $0, CeladonDeptStore2FDirectory
	signpost 0, 3, $0, CeladonDeptStore2FElevatorButton

	; people-events
	db 4
	person_event SPRITE_CLERK, 9, 17, $7, $0, 255, 255, $90, 0, ClerkScript_0x70bad, $ffff
	person_event SPRITE_CLERK, 9, 18, $7, $0, 255, 255, $90, 0, ClerkScript_0x70bb5, $ffff
	person_event SPRITE_POKEFAN_M, 6, 9, $7, $0, 255, 255, $80, 0, PokefanMScript_0x70bbd, $ffff
	person_event SPRITE_YOUNGSTER, 6, 10, $8, $0, 255, 255, $a0, 0, YoungsterScript_0x70bc0, $ffff
