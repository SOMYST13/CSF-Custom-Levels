[
	.RECURSOS
	[
		.FNC
		(
			4058
		) 
		.SONIDOSID
		(
		) 
		.CLASSID
		(
		) 
		.EFFCLASSID
		(
		) 
		.ARMACLASSID
		(
			17
			1
			9
			37
			5
			11
			42
			70
			16
			102
			4
			29
			38
			64
			50
			41
			36
			28
			44
			0
			48
		) 
		.EFECTO
		(
		) 
		.ANIMACIONES
		(
			2507
			2508
			2509
		) 
		.SONIDOS
		(
		) 
		.FBS
		(
		) 
	] 
	.VARIABLES
	(
		[
			.ID 8388608
			.ARRAY 1
			.TYPE "NUMERO"
			.NOMBRE "Objective"
			.VALOR 0.0
		]
		[
			.ID 8388609
			.ARRAY 1
			.TYPE "BICHO"
			.NOMBRE "Nemci"
			.VALOR 0.0
		]
	) 
	.SCRIPTS
	(
		[
			.ID 1
			.NOMBRE "CFG_COMM_ARMAS_Commando" // Giving weapons
			.CARPETA "CONFIG_COMMANDOS"
			.FLAGS
			[
				.TRIGGER 1
				.ENABLED 1
				.VALIDO 1
			] 
			.EVENTOS
			(
				(
					"START_GAME"
				) 
			) 
			.ACCIONES
			(
				(
					"ADD_ARMA"
					(
						"PLAYER"
					) 
					(
						"ARMA_CLASSID"
						17
					) 
				) 
				(
					"ADD_ARMA"
					(
						"PLAYER"
					) 
					(
						"ARMA_CLASSID"
						1
					) 
				) 
				(
					"SET_MUNICION_ARMA"
					(
						"PLAYER"
					) 
					(
						"ARMA_CLASSID"
						1
					) 
					(
						"NUMERO"
						100.0
					) 
					(
						"NUMERO"
						100.0
					) 
				)   
				(
					"ADD_ARMA"
					(
						"PLAYER"
					) 
					(
						"ARMA_CLASSID"
						9
					) 
				) 
				(
					"SET_MUNICION_ARMA"
					(
						"PLAYER"
					) 
					(
						"ARMA_CLASSID"
						9
					) 
					(
						"NUMERO"
						100.0
					) 
					(
						"NUMERO"
						100.0
					) 
				) 
				(
					"ADD_ARMA"
					(
						"PLAYER"
					) 
					(
						"ARMA_CLASSID"
						37
					) 
				) 
				(
					"ADD_ARMA"
					(
						"PLAYER"
					) 
					(
						"ARMA_CLASSID"
						5
					) 
				) 
				(
					"SET_MUNICION_ARMA"
					(
						"PLAYER"
					) 
					(
						"ARMA_CLASSID"
						5
					) 
					(
						"NUMERO"
						100.0
					) 
					(
						"NUMERO"
						100.0
					) 
				) 
				(
					"ADD_ARMA"
					(
						"PLAYER"
					) 
					(
						"ARMA_CLASSID"
						11
					) 
				) 
				(
					"SET_MUNICION_ARMA"
					(
						"PLAYER"
					) 
					(
						"ARMA_CLASSID"
						11
					) 
					(
						"NUMERO"
						100.0
					) 
					(
						"NUMERO"
						100.0
					) 
				) 
				(
					"ADD_ARMA"
					(
						"PLAYER"
					) 
					(
						"ARMA_CLASSID"
						42
					) 
				) 
				(
					"ADD_ARMA"
					(
						"PLAYER"
					) 
					(
						"ARMA_CLASSID"
						42
					) 
				) 
				(
					"ADD_ARMA"
					(
						"PLAYER"
					) 
					(
						"ARMA_CLASSID"
						42
					) 
				) 
				(
					"ADD_ARMA"
					(
						"PLAYER"
					) 
					(
						"ARMA_CLASSID"
						42
					) 
				)  
				(
					"ADD_ARMA"
					(
						"PLAYER"
					) 
					(
						"ARMA_CLASSID"
						70
					) 
				) 
				(
					"SELECT_ARMA"
					(
						"PLAYER"
					) 
					(
						"ARMA_CLASSID"
						9
					) 
				)
			) 
		]
		[
			.ID 2
			.NOMBRE "TESTING_SCRIPT"
			.CARPETA "DEBUG"
			.FLAGS
			[
				.TRIGGER 1
				.ENABLED 1
				.VALIDO 1
			] 
			.EVENTOS
			(
				(
					"INIT"
				) 
			) 
			.ACCIONES
			( 
				
				(
					"SEND_EVENT" // Activating scripts for norwegian guy
					(
						"EVENT"
						"NORWEG_START"
					) 
				)
				(
					"TIMED_STRING_INITPOS" // Setting up position for TIMED_STRING functions
					(
						"NUMERO"
						0.115
					) 
					(
						"NUMERO"
						0.25
					) 
				) 
				(
					"HABILITAR_GHOST" // Make pills entity clickable
					(
						"BICHO"
						2
					) 
					(
						"BOOL"
						"TRUE"
					) 
				)
				(
					"BICHO_SET_CONTEXT_LABEL" // Giving a "label" when looking over the pill model
					(
						"BICHO"
						2
					) 
					(
						"FLI"
						"0003"
					) 
				)
				(
					"SET_INVISIBLE" // Make invisible "unter" npc
					(
						"BICHO"
						3
					) 
					(
						"BOOL"
						"TRUE"
					) 
				)
				(
					"SET_INVISIBLE" // Make invisible "unter2" npc
					(
						"BICHO"
						4
					) 
					(
						"BOOL"
						"TRUE"
					) 
				)
				(
					"SET_INVISIBLE" // Make invisible "unterkms" npc
					(
						"BICHO"
						7
					) 
					(
						"BOOL"
						"TRUE"
					) 
				)
				(
					"SET_INVISIBLE" // Make invisible "Camion_03" vehicle
					(
						"BICHO"
						6
					) 
					(
						"BOOL"
						"TRUE"
					) 
				)
				(
					"PAUSE"
					(
						"NUMERO"
						2.0
					) 
				)
				(
					"SET_OBJETIVO" // Adding an objective
					(
						"NUMERO" // Objective id
						1.0
					) 
					(
						"BOOL" // Primary or secondary
						"FALSE" 
					) 
					(
						"NUMERO" // Score amount (1.0 = 250)
						1.0
					) 
				)
				(
					"SET_OBJETIVO_LABEL" // Giving a "label" for objective
					(
						"NUMERO"
						1.0
					) 
					(
						"FLI"
						"0009"
					) 
				)
				(
					"VENTANA_BANNER"
					(
						"FLI"
						"g099"
					) 
					(
						"FLI"
						"0001"
					) 
					(
						"FLI"
						"0002"
					) 
					(
						"NUMERO"
						5.0
					) 
				) 
			) 
		]
		[
			.ID 3
			.NOMBRE "TESTING_SCRIPT2"
			.CARPETA "DEBUG"
			.FLAGS
			[
				.TRIGGER 1
				.ENABLED 1
				.VALIDO 1
			] 
			.EVENTOS
			(
				(
					"EVT_GHOST_USADO" // If "ghost" object has clicked, the script is executed
				) 
			)
			.CONDICIONES
			( 
					(
						"CMP_OP_BICHO" // checking if player clicked on pills model
						(
							"EVT_BICHO2"
						) 
						(
							"OP_BOOLEAN"
							0
						) 
						(
							"BICHO"
							2
						) 
					)   
			)
			.ACCIONES
			(  
				(
					"DESTRUIR_BICHO" // deleting pills model
					(
						"BICHO"
						2
					)
				)
				(
					"PLAY_SONIDOID" // playing "pick up" sound
					(
						"SONIDO_BDD"
						1187
					) 
					(
						"NUMERO"
						0.0
					) 
					(
						"NUMERO"
						0.0
					) 
				)
				(
					"FX_FADE" // black fading screen
					(
						"NUMERO"
						1.0
					) 
					(
						"BOOL"
						"TRUE"
					) 
					(
						"VECTOR"
						0.0
						0.0
						0.0
					) 
				)
				(
					"PAUSE"
					(
						"NUMERO"
						1.0
					) 
				)
				(
					"SET_POSICION" // setting position for player
					(
						"PLAYER"
					) 
					(
						"PATHPOINT" // pathpoints can be found in .scn file, in GRUPOS category
						98	// group ID
						1 // pathpoint ID
					) 
				)
				(
					"SET_INVISIBLE" // make visible "unter" npc
					(
						"BICHO"
						3
					) 
					(
						"BOOL"
						"FALSE"
					) 
				)
				(
					"SET_INVISIBLE" // make visible "unter2" npc
					(
						"BICHO"
						4
					) 
					(
						"BOOL"
						"FALSE"
					) 
				)
				(
					"SEND_EVENT" // activate event for nazi npc's
					(
						"EVENT"
						"NEMCI_IDUT"
					) 
				)
				(
					"FX_FADE" // regain visibility
					(
						"NUMERO"
						1.0
					) 
					(
						"BOOL"
						"FALSE"
					) 
					(
						"VECTOR"
						0.0
						0.0
						0.0
					) 
				)
				(
					"TRIGGER_EXE" // triggering some script
					(
						"TRIGGER"
						11
					) 
				)
			) 
		]
		[
			.ID 3
			.NOMBRE "TESTING_SCRIPT3"
			.CARPETA "DEBUG"
			.FLAGS
			[
				.TRIGGER 1
				.ENABLED 1
				.VALIDO 1
			] 
			.EVENTOS
			(
				(
					"NEMCI_IDUT"
				) 
			) 
			.ACCIONES
			( 
				(
					"SUBTITULO" // "Kill them all!"
					(
						"FLI"
						"0008"
					) 
					(
						"NUMERO"
						2.0
					) 
				)
				(
					"SET_ACTITUD" // nazis behavior always will be Combat
					(
						"BICHO"
						3
					) 
					(
						"ACTITUD"
						"COMBATIENDO"
					) 
				)
				(
					"SET_DESPLAZAMIENTO" // nazis always will be run
					(
						"BICHO"
						3
					) 
					(
						"MODO_DESPLAZAMIENTO"
						"CORRER"
					) 
				)
				(
					"IA_OFF" // Turn off AI to not make him angry to norwegian npc
					(
						"BICHO"
						3
					) 
				)
				(
					"IR_A_PATHPOINT" // Go to pathpoint
					(
						"BICHO"
						3
					) 
					(
						"PATHPOINT"
						97
						1
					) 
					(
						"BOOL"
						"TRUE"
					) 
				)
				(
					"IA_ON" // Turn on AI
					(
						"BICHO"
						3
					) 
				)
			) 
		]
		[
			.ID 4
			.NOMBRE "TESTING_SCRIPT3"
			.CARPETA "DEBUG"
			.FLAGS
			[
				.TRIGGER 1
				.ENABLED 1
				.VALIDO 1
			] 
			.EVENTOS
			(
				(
					"NEMCI_IDUT"
				) 
			) 
			.ACCIONES
			( 
				(
					"SET_ACTITUD" // nazis behavior always will be Combat
					(
						"BICHO"
						4
					) 
					(
						"ACTITUD"
						"COMBATIENDO"
					) 
				)
				(
					"PAUSE" // pause to avoid two npcs passing through the door at the same time
					(
						"NUMERO"
						2.0
					) 
				)
				(
					"SET_DESPLAZAMIENTO" // // nazis always will be run
					(
						"BICHO"
						4
					) 
					(
						"MODO_DESPLAZAMIENTO"
						"CORRER"
					) 
				)
				(
					"IA_OFF" // Turn off AI to not make him angry to norwegian npc
					(
						"BICHO"
						4
					) 
				)
				(
					"IR_A_PATHPOINT" // Go to pathpoint
					(
						"BICHO"
						4
					) 
					(
						"PATHPOINT"
						97
						2
					) 
					(
						"BOOL"
						"TRUE"
					) 
				)
				(
					"IA_ON" // Turn on AI
					(
						"BICHO"
						4
					) 
				)
			) 
		]
		[
			.ID 5
			.NOMBRE "TESTING_SCRIPT3"
			.CARPETA "DEBUG"
			.FLAGS
			[
				.TRIGGER 1
				.ENABLED 1
				.VALIDO 1
			] 
			.EVENTOS
			(
				(
					"NEMCI_IDUT"
				) 
			) 
			.ACCIONES
			( 
				(
					"SET_INVULNERABILIDAD" // Make norwegian guy killable
					(
						"BICHO"
						5
					) 
					(
						"BOOL"
						"FALSE"
					) 
				)
				(
					"SET_POSICION" // Setting position for norwegian guy
					(
						"BICHO"
						5
					) 
					(
						"PATHPOINT"
						98
						2
					) 
				)
				(
					"SET_DESPLAZAMIENTO" // Norwegian guy always will be run
					(
						"BICHO"
						5
					) 
					(
						"MODO_DESPLAZAMIENTO"
						"CORRER"
					) 
				)
				(
					"IR_A_POSICION" // Go to position (imo worst ever function to make npc move, use IR_A_PATHPOINT instead)
					(
						"BICHO"
						5
					) 
					(
						"PATHPOINT"
						98
						3
					)  
				)
				(
					"IA_ON" // Turn on AI
					(
						"BICHO"
						5
					) 
				)
			) 
		]
		[
			.ID 6
			.NOMBRE "DEATH SCREEN"
			.CARPETA "DEBUG"
			.FLAGS
			[
				.TRIGGER 1
				.ENABLED 1
				.VALIDO 1
			] 
			.EVENTOS
			(
				(
					"MUERTO" // If somebody dying...
				) 
			) 
			.CONDICIONES
			(
				(
						"CMP_OP_BICHO" // In our case Player, the script is executed
						(
							"EVT_BICHO1"
						) 
						(
							"OP_BOOLEAN"
							0
						) 
						(
							"PLAYER"
						) 
				)
			)
			.ACCIONES
			(  
				(
					"TIMED_STRING_V2" // Showing the YOU DIED text
					(
						"FLI"
						"0004"
					) 
					(
						"NUMERO"
						5.0
					) 
					(
						"NUMERO"
						4.0
					) 
				)
				(
					"SET_OBJETIVO_SUCCESS" // Failing objective
					(
						"NUMERO"
						1.0
					) 
					(
						"BOOL"
						"FALSE"
					) 
				)
				(
					"PAUSE"
					(
						"NUMERO"
						4.0
					)
				)
				(
					"SET_MISSION_SUCCESS" // Failing mission
					(
						"BOOL"
						"FALSE"
					)
				)
			) 
		]
		[
			.ID 7
			.NOMBRE "objectivecomplete"
			.CARPETA "DEBUG"
			.FLAGS
			[
				.TRIGGER 1
				.ENABLED 1
				.VALIDO 1
			] 
			.EVENTOS
			(
				(
					"MUERTO" // If somebody dying...
				) 
			) 
			.CONDICIONES // In our case "unter" and "unter2"
			(
				(
					"AND"
						(
							"NOT"
							(
								"ESTA_VIVO"
								(
									"BICHO"
									3
								) 
							) 
						)
						(
							"NOT"
							(
								"ESTA_VIVO"
								(
									"BICHO"
									4
								) 
							) 
						)
				)
			)
			.ACCIONES
			(  
				(
					"TIMED_STRING_V2" // Showing the NAZIS KILLED text
					(
						"FLI"
						"0005"
					) 
					(
						"NUMERO"
						5.0
					) 
					(
						"NUMERO"
						4.0
					) 
				)
				(
					"SET_OBJETIVO_SUCCESS" // objective completed
					(
						"NUMERO"
						1.0
					) 
					(
						"BOOL"
						"TRUE"
					) 
				)
				(
					"IF" // BUT if norwegian is died before you killed last nazis...
					(
						"NOT"
						(
							"ESTA_VIVO"
							(
								"BICHO"
								5
							) 
						) 
					) 
				)
				(
					"SET_OBJETIVO_SUCCESS" // objective failed
					(
						"NUMERO"
						1.0
					) 
					(
						"BOOL"
						"FALSE"
					) 
				)
				(
					"ENDIF"
				)
				(
					"SEND_EVENT" // start Section 2 script
					(
						"EVENT"
						"SECZWEI"
					) 
				)
				(
					"SET_INVULNERABILIDAD" // Make norwegian guy unkillable
					(
						"BICHO"
						5
					) 
					(
						"BOOL"
						"TRUE"
					) 
				)
				(
					"TRIGGER_OFF" // turning off trigger of this script as fast as it possible, because MUERTO event will count kills for other npc's after nazis will die
					(
						"TRIGGER"
						7
					) 
				)
			) 
		]
		[
			.ID 13
			.NOMBRE "missiondead"
			.CARPETA "DEBUG"
			.FLAGS
			[
				.TRIGGER 1
				.ENABLED 1
				.VALIDO 1
			] 
			.EVENTOS
			(
				(
					"MUERTO" // If somebody dying...
				) 
			) 
			.CONDICIONES
			(
				(
					"NOT" // In our case norwegian guy
					(
						"ESTA_VIVO"
						(
							"BICHO"
							5
						) 
					) 
				)
			)
			.ACCIONES
			(  
				(
					"TIMED_STRING_V2" // Showing the SCRIPT GUY KILLED text
					(
						"FLI"
						"0007"
					) 
					(
						"NUMERO"
						5.0
					) 
					(
						"NUMERO"
						4.0
					) 
				)
				(
					"SET_OBJETIVO_SUCCESS" //failing objective
					(
						"NUMERO"
						1.0
					) 
					(
						"BOOL"
						"FALSE"
					) 
				)
				(
					"PAUSE"
					(
						"NUMERO"
						4.0
					)
				)
				(
					"SET_MISSION_SUCCESS" // "mission failed we'll get em next time"
					(
						"BOOL"
						"FALSE"
					)
				)
			) 
		]
		[
			.ID 8
			.NOMBRE "norweg start"
			.CARPETA "DEBUG"
			.FLAGS
			[
				.TRIGGER 1
				.ENABLED 1
				.VALIDO 1
			] 
			.EVENTOS
			(
				(
					"NORWEG_START"
				) 
			) 
			.ACCIONES
			(  
				(
					"SET_INVULNERABILIDAD" // make the norwegian guy unkillable
					(
						"BICHO"
						5
					) 
					(
						"BOOL"
						"TRUE"
					) 
				)
				(
					"IR_A_PATHPOINT" // go to the balcony
					(
						"BICHO"
						5
					) 
					(
						"PATHPOINT"
						97
						9
					) 
					(
						"BOOL"
						"TRUE"
					) 
				)
			) 
		]
		[
			.ID 9
			.NOMBRE "section 2"
			.CARPETA "DEBUG"
			.FLAGS
			[
				.TRIGGER 1
				.ENABLED 1
				.VALIDO 1
			] 
			.EVENTOS
			(
				(
					"SECZWEI"
				) 
			) 
			.ACCIONES
			(  
				(
					"SET_INVISIBLE" // Make visible "unterkms" npc
					(
						"BICHO"
						7
					) 
					(
						"BOOL"
						"FALSE"
					) 
				)
				(
					"SET_INVISIBLE" // Make visible "Camion_03" vehicle
					(
						"BICHO"
						6
					) 
					(
						"BOOL"
						"FALSE"
					) 
				)
				(
					"PAUSE"
					(
						"NUMERO"
						5.0
					) 
				)
				(
					"FX_FADE" // black fading screen
					(
						"NUMERO"
						1.0
					) 
					(
						"BOOL"
						"TRUE"
					) 
					(
						"VECTOR"
						0.0
						0.0
						0.0
					) 
				)
				(
					"PAUSE"
					(
						"NUMERO"
						1.0
					) 
				)
				(
					"LINK_A_HABITACULO" // put the norwegian guy into "Camion_03"
					(
						"BICHO"
						5
					) 
					(
						"BICHO"
						6
					) 
					(
						"NUMERO"
						0.0
					) 
				)
				(
					"SET_POSICION" // setting position for player
					(
						"PLAYER"
					) 
					(
						"PATHPOINT"
						98
						4
					) 
				)
				(
					"FX_FADE" // regain visibility
					(
						"NUMERO"
						1.0
					) 
					(
						"BOOL"
						"FALSE"
					) 
					(
						"VECTOR"
						0.0
						0.0
						0.0
					) 
				)
			) 
		]
		[
			.ID 10
			.NOMBRE "gruzovik"
			.CARPETA "DEBUG"
			.FLAGS
			[
				.TRIGGER 1
				.ENABLED 1
				.VALIDO 1
			] 
			.EVENTOS
			(
				(
					"SECZWEI"
				) 
			) 
			.ACCIONES
			(  
				(
					"ACTIVAR_VEHICULO" // crank the truck's engine (actually useless function in our case, because truck can drive without cranked engine lol)
					(
						"BICHO"
						6
					) 
					(
						"BOOL"
						"TRUE"
					) 
				)
				(
					"IR_A_PATHPOINT" // driving the truck
					(
						"BICHO"
						6
					) 
					(
						"PATHPOINT"
						99
						4
					) 
				)
				(
					"ACTIVAR_VEHICULO" // turn off the truck's engine
					(
						"BICHO"
						6
					) 
					(
						"BOOL"
						"FALSE"
					) 
				)
				(
					"BAJAR_DE_HABITACULO" // a norwegian guy gets out of a truck
					(
						"BICHO"
						5
					) 
				)
			) 
		]
		[
			.ID 11
			.NOMBRE "CTRL_CAMARA_On"
			.CARPETA "CONTROL_CAMARA"
			.FLAGS
			[
				.TRIGGER 1
				.ENABLED 1
				.VALIDO 1
			] 
			.ACCIONES
			(
				(
					"VIEWPORT_CREATE" // creating viewport
					(
						"NUMERO" // ID
						1.0
					) 
					(
						"VECTOR" // DO NOT TOUCH
						0.7
						0.25
						0.0
					) 
					(
						"VECTOR" // AND THIS TOO
						0.925
						0.475
						0.0
					) 
				)
				(
					"VIEWPORT_CAM_SETPOS" // Setting position for camera. Positiong taking from .scn file, from .MALLA_DUMMIES and .CARPETAS&.RAIZ categories
					(
						"NUMERO"
						1.0
					) 
					(
						"DUMMY" // camera position
						334
					) 
					(
						"DUMMY" // looking at dummy
						335
					) 
				)
				(
					"VIEWPORT_CAM_SETFOV" // setting FOV for viewport. 120 is an optimal value, don't change it, either camera will be somehow broken
					(
						"NUMERO"
						1.0
					) 
					(
						"NUMERO"
						120.0
					) 
				) 
				(
					"VIEWPORT_SHOW" // show viewport
					(
						"NUMERO"
						1.0
					) 
					(
						"BOOL"
						"TRUE"
					) 
				) 
				(
					"PAUSE"
					(
						"NUMERO"
						5.0
					) 
				)
				(
					"VIEWPORT_SHOW" // hide viewport
					(
						"NUMERO"
						1.0
					) 
					(
						"BOOL"
						"FALSE"
					) 
				) 
			) 
		]
		[
			.ID 12
			.NOMBRE "camera"
			.CARPETA "CSC"
			.FLAGS
			[
				.TRIGGER 1
				.ENABLED 1
				.VALIDO 1
			] 
			.EVENTOS
			(
				(
					"START_GAME"
				) 
			)
			.ACCIONES
			(
				(
					"CUTSCENE_NO_INTERACTIVA" // start cutscene
					(
						"BOOL"
						"TRUE"
					) 
				) 
				(
					"PLAYER_TERCERA" // idk why i put it here, although we don't even see player here
					(
						"BOOL"
						"TRUE"
					) 
				) 
				(
					"CUTSCENE_EXE" // start cutscene, using .csc file
					(
						"CUTSCENE" // ID
						1
					) 
				)
				(
					"SUBTITULO" // "A small made from scratch mission." text
					(
						"FLI"
						"0006"
					) 
					(
						"NUMERO"
						2.0
					) 
				)
				(
					"PAUSE"
					(
						"NUMERO"
						2.0
					)
				)
				(
					"FX_FADE" // black fading screen
					(
						"NUMERO"
						1.0
					) 
					(
						"BOOL"
						"TRUE"
					) 
					(
						"VECTOR"
						0.0
						0.0
						0.0
					) 
				)
				(
					"PAUSE"
					(
						"NUMERO"
						1.0
					)
				)
				(
					"CUTSCENE_NO_INTERACTIVA" // go back to gameplay
					(
						"BOOL"
						"FALSE"
					) 
				) 
				(
					"PLAYER_TERCERA" // i still dk why i put it here, although we don't even see player here
					(
						"BOOL"
						"FALSE"
					) 
				)
				(
					"SEND_EVENT" // start init script
					(
						"EVENT"
						"INIT"
					)
				)
				(
					"FX_FADE" // ayo give me my eyes back
					(
						"NUMERO"
						1.0
					) 
					(
						"BOOL"
						"FALSE"
					) 
					(
						"VECTOR"
						0.0
						0.0
						0.0
					) 
				)
			) 
		]
		[
			.ID 13
			.NOMBRE "unterkms"
			.CARPETA "DEBUG"
			.FLAGS
			[
				.TRIGGER 1
				.ENABLED 1
				.VALIDO 1
			] 
			.EVENTOS
			(
				(
					"SECZWEI"
				) 
			) 
			.ACCIONES
			(  
				(
					"IA_OFF" // Turning off AI
					(
						"BICHO"
						7
					)
					(
						"BOOL"
						"TRUE"
					)
				)
				(
					"AND"
					(
						"PLAY_ANMBDD" // Idle animation
						(
							"BICHO"
							7
						) 
						(
							"ANM_BDD"
							2509
						) 
					)
					(
						"PAUSE"
						(
							"NUMERO"
							10.0
						)
					)
				)
				(
					"PLAY_ANMBDD" // Killing animation
					(
						"BICHO"
						7
					) 
					(
						"ANM_BDD"
						2507
					) 
				)
				(
					"AND"
					(
						"PLAY_ANMBDD" // Idle animation
						(
							"BICHO"
							7
						) 
						(
							"ANM_BDD"
							2508
						) 
					)
					(
						"PAUSE"
						(
							"NUMERO"
							5.0
						)
					)
				)
				(
					"SET_VIDA" // Killing the npc
					(
						"BICHO"
						7
					)
					(
						"NUMERO"
						0.0
					)
				)
			) 
		]
	) 
	.POOL
	(
	) 
] 