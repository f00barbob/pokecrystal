FuchsiaCity_MapScriptHeader:
	; trigger count
	db 0

	; callback count
	db 1

	; callbacks
	dbw 5, .FlyPoint

.FlyPoint
	setflag ENGINE_FLYPOINT_FUCHSIA
	return

YoungsterScript_0x194b22:
	jumptextfaceplayer UnknownText_0x194b45

PokefanMScript_0x194b25:
	jumptextfaceplayer UnknownText_0x194b83

TeacherScript_0x194b28:
	jumptextfaceplayer UnknownText_0x194bd3

FuchsiaCitySign:
	jumptext FuchsiaCitySignText

FuchsiaGymSign:
	jumptext FuchsiaGymSignText

SafariZoneOfficeSign:
	jumptext SafariZoneOfficeSignText

WardensHomeSign:
	jumptext WardensHomeSignText

SafariZoneClosedSign:
	jumptext SafariZoneClosedSignText

NoLitteringSign:
	jumptext NoLitteringSignText

FuchsiaCityPokeCenterSign:
	jumpstd pokecentersign

FuchsiaCityMartSign:
	jumpstd martsign

FruitTreeScript_0x194b43:
	fruittree $1e

UnknownText_0x194b45:
	text "One of the ELITE"
	line "FOUR used to be"

	para "the LEADER of"
	line "FUCHSIA's GYM."
	done

UnknownText_0x194b83:
	text "KOGA's daughter"
	line "succeeded him as"

	para "the GYM LEADER"
	line "after he joined"
	cont "the ELITE FOUR."
	done

UnknownText_0x194bd3:
	text "The SAFARI ZONE is"
	line "closed… It's sad,"

	para "considering it's"
	line "FUCHSIA's main"
	cont "attraction."
	done

FuchsiaCitySignText:
	text "FUCHSIA CITY"

	para "Behold! It's"
	line "Passion Pink!"
	done

FuchsiaGymSignText:
	text "FUCHSIA CITY"
	line "#MON GYM"
	cont "LEADER: JANINE"

	para "The Poisonous"
	line "Ninja Master"
	done

SafariZoneOfficeSignText:
	text "There's a notice"
	line "here…"

	para "SAFARI ZONE OFFICE"
	line "is closed until"
	cont "further notice."
	done

WardensHomeSignText:
	text "SAFARI ZONE"
	line "WARDEN'S HOME"
	done

SafariZoneClosedSignText:
	text "The WARDEN is"
	line "traveling abroad."

	para "Therefore, the"
	line "SAFARI ZONE is"
	cont "closed."
	done

NoLitteringSignText:
	text "No littering."

	para "Please take your"
	line "waste with you."
	done

FuchsiaCity_MapEventHeader:
	; filler
	db 0, 0

	; warps
	db 11
	warp_def $d, $5, 2, GROUP_FUCHSIA_MART, MAP_FUCHSIA_MART
	warp_def $d, $16, 1, GROUP_SAFARI_ZONE_MAIN_OFFICE, MAP_SAFARI_ZONE_MAIN_OFFICE
	warp_def $1b, $8, 1, GROUP_FUCHSIA_GYM, MAP_FUCHSIA_GYM
	warp_def $1b, $b, 1, GROUP_FUCHSIA_BILL_SPEECH_HOUSE, MAP_FUCHSIA_BILL_SPEECH_HOUSE
	warp_def $1b, $13, 1, GROUP_FUCHSIA_POKECENTER_1F, MAP_FUCHSIA_POKECENTER_1F
	warp_def $1b, $1b, 1, GROUP_SAFARI_ZONE_WARDENS_HOME, MAP_SAFARI_ZONE_WARDENS_HOME
	warp_def $3, $12, 3, GROUP_SAFARI_ZONE_FUCHSIA_GATE_BETA, MAP_SAFARI_ZONE_FUCHSIA_GATE_BETA
	warp_def $16, $25, 1, GROUP_ROUTE_15_FUCHSIA_GATE, MAP_ROUTE_15_FUCHSIA_GATE
	warp_def $17, $25, 2, GROUP_ROUTE_15_FUCHSIA_GATE, MAP_ROUTE_15_FUCHSIA_GATE
	warp_def $23, $7, 1, GROUP_ROUTE_19___FUCHSIA_GATE, MAP_ROUTE_19___FUCHSIA_GATE
	warp_def $23, $8, 2, GROUP_ROUTE_19___FUCHSIA_GATE, MAP_ROUTE_19___FUCHSIA_GATE

	; xy triggers
	db 0

	; signposts
	db 8
	signpost 15, 21, $0, FuchsiaCitySign
	signpost 29, 5, $0, FuchsiaGymSign
	signpost 15, 25, $0, SafariZoneOfficeSign
	signpost 29, 27, $0, WardensHomeSign
	signpost 5, 17, $0, SafariZoneClosedSign
	signpost 15, 13, $0, NoLitteringSign
	signpost 27, 20, $0, FuchsiaCityPokeCenterSign
	signpost 13, 6, $0, FuchsiaCityMartSign

	; people-events
	db 4
	person_event SPRITE_YOUNGSTER, 22, 27, $2, $11, 255, 255, $a0, 0, YoungsterScript_0x194b22, $ffff
	person_event SPRITE_POKEFAN_M, 12, 17, $2, $11, 255, 255, $b0, 0, PokefanMScript_0x194b25, $ffff
	person_event SPRITE_TEACHER, 18, 20, $2, $11, 255, 255, $80, 0, TeacherScript_0x194b28, $ffff
	person_event SPRITE_FRUIT_TREE, 5, 12, $1, $0, 255, 255, $0, 0, FruitTreeScript_0x194b43, $ffff
