CeladonCity_MapScriptHeader:
	; trigger count
	db 0

	; callback count
	db 1

	; callbacks
	dbw 5, .FlyPoint

.FlyPoint
	setflag ENGINE_FLYPOINT_CELADON
	return

FisherScript_0x1a9f43:
	jumptextfaceplayer UnknownText_0x1a9f7d

CeladonCityPoliwrath:
	loadfont
	writetext CeladonCityPoliwrathText
	cry POLIWRATH
	closetext
	loadmovesprites
	end

TeacherScript_0x1a9f50:
	jumptextfaceplayer UnknownText_0x1a9fde

GrampsScript_0x1a9f53:
	jumptextfaceplayer UnknownText_0x1aa043

GrampsScript_0x1a9f56:
	jumptextfaceplayer UnknownText_0x1aa0dc

YoungsterScript_0x1a9f59:
	jumptextfaceplayer UnknownText_0x1aa115

YoungsterScript_0x1a9f5c:
	jumptextfaceplayer UnknownText_0x1aa155

TeacherScript_0x1a9f5f:
	jumptextfaceplayer UnknownText_0x1aa1bd

LassScript_0x1a9f62:
	jumptextfaceplayer UnknownText_0x1aa306

CeladonCitySign:
	jumptext CeladonCitySignText

CeladonGymSign:
	jumptext CeladonGymSignText

CeladonCityDeptStoreSign:
	jumptext CeladonCityDeptStoreSignText

CeladonCityMansionSign:
	jumptext CeladonCityMansionSignText

CeladonCityGameCornerSign:
	jumptext CeladonCityGameCornerSignText

CeladonCityTrainerTips:
	jumptext CeladonCityTrainerTipsText

CeladonCityPokeCenterSign:
	jumpstd pokecentersign

MapCeladonCitySignpostItem7:
	dw $00fd
	db PP_UP

UnknownText_0x1a9f7d:
	text "This POLIWRATH is"
	line "my partner."

	para "I wonder if it'll"
	line "ever evolve into a"
	cont "frog #MON."
	done

CeladonCityPoliwrathText:
	text "POLIWRATH: Croak!"
	done

UnknownText_0x1a9fde:
	text "I lost at the slot"
	line "machines again…"

	para "We girls also play"
	line "the slots now."

	para "You should check"
	line "them out too."
	done

UnknownText_0x1aa043:
	text "GRIMER have been"
	line "appearing lately."

	para "See that pond out"
	line "in front of the"

	para "house? GRIMER live"
	line "there now."

	para "Where did they"
	line "come from? This is"
	cont "a serious problem…"
	done

UnknownText_0x1aa0dc:
	text "Nihihi! This GYM"
	line "is great! Only"

	para "girls are allowed"
	line "here!"
	done

UnknownText_0x1aa115:
	text "Want to know a"
	line "secret?"

	para "CELADON MANSION"
	line "has a hidden back"
	cont "door."
	done

UnknownText_0x1aa155:
	text "They're holding an"
	line "eating contest at"
	cont "the restaurant."

	para "Just watching them"
	line "go at it makes me"
	cont "feel bloated…"
	done

UnknownText_0x1aa1bd:
	text "CELADON DEPT.STORE"
	line "has the biggest"

	para "and best selection"
	line "of merchandise."

	para "If you can't get"
	line "it there, you"

	para "can't get it any-"
	line "where."

	para "Gee… I sound like"
	line "a sales clerk."
	done

; possibly unused
UnknownText_0x1aa25b:
	text "I love being"
	line "surrounded by tall"
	cont "buildings!"

	para "Isn't it true that"
	line "GOLDENROD #MON"

	para "CENTER was made"
	line "much, much bigger?"

	para "That is so neat!"
	line "I wish we had a"

	para "place like that in"
	line "KANTO…"
	done

UnknownText_0x1aa306:
	text "Looking at the"
	line "ground while I was"

	para "walking made me"
	line "dizzy."
	done

CeladonCitySignText:
	text "CELADON CITY"

	para "The City of"
	line "Rainbow Dreams"
	done

CeladonGymSignText:
	text "CELADON CITY"
	line "#MON GYM"
	cont "LEADER: ERIKA"

	para "The Nature-Loving"
	line "Princess"
	done

CeladonCityDeptStoreSignText:
	text "Find What You"
	line "Need at CELADON"
	cont "DEPT.STORE!"
	done

CeladonCityMansionSignText:
	text "CELADON MANSION"
	done

CeladonCityGameCornerSignText:
	text "The Playground for"
	line "Everybody--CELADON"
	cont "GAME CORNER"
	done

CeladonCityTrainerTipsText:
	text "TRAINER TIPS"

	para "GUARD SPEC."
	line "protects #MON"

	para "against SPECIAL"
	line "attacks such as"
	cont "fire and water."

	para "Get your items at"
	line "CELADON DEPT."
	cont "STORE!"
	done

CeladonCity_MapEventHeader:
	; filler
	db 0, 0

	; warps
	db 9
	warp_def $9, $4, 1, GROUP_CELADON_DEPT_STORE_1F, MAP_CELADON_DEPT_STORE_1F
	warp_def $9, $10, 1, GROUP_CELADON_MANSION_1F, MAP_CELADON_MANSION_1F
	warp_def $3, $10, 3, GROUP_CELADON_MANSION_1F, MAP_CELADON_MANSION_1F
	warp_def $3, $11, 3, GROUP_CELADON_MANSION_1F, MAP_CELADON_MANSION_1F
	warp_def $9, $1d, 1, GROUP_CELADON_POKECENTER_1F, MAP_CELADON_POKECENTER_1F
	warp_def $13, $12, 1, GROUP_CELADON_GAME_CORNER, MAP_CELADON_GAME_CORNER
	warp_def $13, $17, 1, GROUP_CELADON_GAME_CORNER_PRIZE_ROOM, MAP_CELADON_GAME_CORNER_PRIZE_ROOM
	warp_def $1d, $a, 1, GROUP_CELADON_GYM, MAP_CELADON_GYM
	warp_def $1d, $19, 1, GROUP_CELADON_CAFE, MAP_CELADON_CAFE

	; xy triggers
	db 0

	; signposts
	db 8
	signpost 21, 23, $0, CeladonCitySign
	signpost 31, 11, $0, CeladonGymSign
	signpost 9, 6, $0, CeladonCityDeptStoreSign
	signpost 9, 13, $0, CeladonCityMansionSign
	signpost 21, 19, $0, CeladonCityGameCornerSign
	signpost 21, 29, $0, CeladonCityTrainerTips
	signpost 9, 30, $0, CeladonCityPokeCenterSign
	signpost 21, 37, $7, MapCeladonCitySignpostItem7

	; people-events
	db 9
	person_event SPRITE_FISHER, 15, 30, $9, $0, 255, 255, $a0, 0, FisherScript_0x1a9f43, $ffff
	person_event SPRITE_POLIWAG, 15, 31, $16, $0, 255, 255, $90, 0, CeladonCityPoliwrath, $ffff
	person_event SPRITE_TEACHER, 28, 24, $5, $2, 255, 255, $80, 0, TeacherScript_0x1a9f50, $ffff
	person_event SPRITE_GRAMPS, 20, 18, $6, $0, 255, 255, $b0, 0, GrampsScript_0x1a9f53, $ffff
	person_event SPRITE_GRAMPS, 35, 12, $7, $0, 255, 255, $80, 0, GrampsScript_0x1a9f56, $ffff
	person_event SPRITE_YOUNGSTER, 17, 22, $5, $2, 255, 255, $90, 0, YoungsterScript_0x1a9f59, $ffff
	person_event SPRITE_YOUNGSTER, 37, 28, $7, $0, 255, 255, $a0, 0, YoungsterScript_0x1a9f5c, $ffff
	person_event SPRITE_TEACHER, 18, 10, $2, $22, 255, 255, $a0, 0, TeacherScript_0x1a9f5f, $ffff
	person_event SPRITE_LASS, 26, 11, $4, $20, 255, 255, $80, 0, LassScript_0x1a9f62, $ffff
