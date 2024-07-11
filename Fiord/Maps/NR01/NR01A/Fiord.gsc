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
			1437
			1942
			2317
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
			.TYPE "NUMERO"
			.NOMBRE "ObjectiveComplete"
			.VALOR 0.0
		]
		[
			.ID 8388609
			.ARRAY 1
			.TYPE "BICHO"
			.NOMBRE "Nemci"
			.VALOR 0.0
		]
		[
			.ID 8388610
			.TYPE "NUMERO"
			.NOMBRE "_Tiempo_Alarma"
			.VALOR 10.0
		]
		[
			.ID 8388658
			.TYPE "BOOL"
			.NOMBRE "Alarma_On"
			.VALOR "FALSE"
		]
		[
			.ID 8388663
			.TYPE "BOOL"
			.NOMBRE "ICANOVER"
			.VALOR "FALSE"
		]
		[
			.ID 8388619
			.ARRAY 1
			.TYPE "BICHO"
			.NOMBRE "ENCABRONADOS"
			.VALOR 0
		]
		[
			.ID 8388637
			.ARRAY 1
			.TYPE "BICHO"
			.NOMBRE "Array_Alemanes"
			.VALOR 0
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
						38
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
					"TIMED_STRING_INITPOS" // Setting up position for TIMED_STRING functions. Do not touch.
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
					"SET_INVISIBLE" // Make invisible "Camion_03" vehicle
					(
						"BICHO"
						19
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
						"0002"
					) 
					(
						"FLI"
						"0001"
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
					"SEND_EVENT"
					(
						"EVENT"
						"ALARMTEST"
					) 
				)
				(
					"TRIGGER_EXE" // triggering some script
					(
						"TRIGGER"
						13
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
			.ID 6
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
			.ID 7
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
			.ID 8
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
					"SET_VIDA" // Add hp for norwegian guy if he was wounded
					(
						"BICHO"
						5
					)
					(
						"NUMERO"
						600.0
					)
				)
				(
					"SEND_EVENT" // start Stealth script
					(
						"EVENT"
						"STEALTH_START"
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
						8
					) 
				)
			) 
		]
		[
			.ID 9
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
					"SET_OBJETIVO_SUCCESS" // failing objective
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
			.ID 10
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
			.ID 11
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
						"BICHO" // npc id
						5
					) 
					(
						"BICHO" // vehicle id
						19
					) 
					(
						"NUMERO"
						0.0 // ( 0.0 = driver place)
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
				(
					"TRIGGER_EXE"
					(
						"TRIGGER"
						17
					)
				)
			) 
		]
		[
			.ID 12
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
					"ACTIVAR_VEHICULO"
					(
						"BICHO"
						19
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
						19
					) 
					(
						"PATHPOINT"
						99
						4
					) 
				)
			) 
		]
		[
			.ID 13
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
					"VIEWPORT_CAM_SETPOS" // Setting position for camera. Positiong taking from .scn file, from .MALLA_DUMMIES and .CARPETAS & .RAIZ categories
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
			.ID 14
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
					"PLAYER_TERCERA" // go to third-person mode
					(
						"BOOL"
						"TRUE"
					) 
				) 
				(
					"CUTSCENE_EXE" // start cutscene, using id from .csc file
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
					"PLAYER_TERCERA" // go to first-person mode
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
			.ID 15
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
					"IA_OFF" // Turning off AI, so he won't kill player, or doing other things
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
							8.0
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
			) 
		]
		[
			.ID 16
			.NOMBRE "Ambient"
			.CARPETA "ZSONIDO"
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
					"PLAY_SONIDOID" // Play ambient sfx
					(
						"SONIDO_BDD"
						594
					) 
					(
						"NUMERO"
						0.0
					) 
					(
						"NUMERO"
						-1.0 // ID (probably)
					) 
				) 
			) 
		]
		[
			.ID 17
			.NOMBRE "camera kms"
			.CARPETA "CSC"
			.FLAGS
			[
				.TRIGGER 1
				.ENABLED 1
				.VALIDO 1
			] 
			.ACCIONES
			(
				(
					"SEND_EVENT" // activate script for green beret npc
					(
						"EVENT"
						"GB_NPC"
					)
				)
				(
					"SET_INVISIBLE" // Make visible "Camion_03" vehicle
					(
						"BICHO"
						19
					) 
					(
						"BOOL"
						"FALSE"
					) 
				)
				(
					"CUTSCENE_NO_INTERACTIVA" // start cutscene
					(
						"BOOL"
						"TRUE"
					) 
				) 
				(
					"PLAYER_TERCERA" // go to third-person mode
					(
						"BOOL"
						"TRUE"
					) 
				) 
				(
					"CUTSCENE_EXE" // start cutscene, using id from .csc file
					(
						"CUTSCENE" // ID
						2
					) 
				)
				(
					"PAUSE"
					(
						"NUMERO"
						7.0
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
					"SET_MISSION_SUCCESS"
					(
						"BOOL"
						"TRUE"
					) 
				)
			) 
		]
		[
			.ID 18
			.NOMBRE "GB Npc"
			.CARPETA "CSC"
			.FLAGS
			[
				.TRIGGER 1
				.ENABLED 1
				.VALIDO 1
			] 
			.VARIABLES
			(
				[
					.ID 8
					.TYPE "BICHO"
					.NOMBRE "gb_npc"
					.VALOR 0
				] 
			)
			.EVENTOS
			(
				(
					"GB_NPC"
				) 
			)
			.ACCIONES
			( 
				(
					"SET" // set variable for object
					(
						"VAR"
						8
					) 
					(
						"CREAR_BICHO" // create object "Commando Invierno NPC"
						(
							"CLASSID"
							268
						) 
					) 
				) 
				(
					"ADD_ARMA" // add winchester riot
					(
						"VAR"
						8
					) 
					(
						"ARMA_CLASSID"
						9
					) 
				)
				(
					"SELECT_ARMA" // select winchester riot
					(
						"VAR"
						8
					) 
					(
						"ARMA_CLASSID"
						9
					) 
				)
				(
					"IA_OFF" // turn off AI
					(
						"VAR"
						8
					) 
				)
				(
					"SET_POSICION" // teleport to start position
					(
						"VAR"
						8
					) 
					(
						"PATHPOINT"
						98
						5
					) 
				)
				(
					"IR_A_PATHPOINT" // 🚶‍♂️
					(
						"VAR"
						8
					) 
					(
						"PATHPOINT"
						98
						6
					) 
				)
			)
		]
		[
			.ID 19
			.NOMBRE "stealth part"
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
					"STEALTH_START"
				) 
			) 
			.ACCIONES
			(  
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
					"SET_OBJETIVO" // Adding an objective
					(
						"NUMERO" // Objective id
						2.0
					) 
					(
						"BOOL" // Primary or secondary
						"FALSE" 
					) 
					(
						"NUMERO" // Score amount (2.0 = 500)
						2.0
					) 
				)
				(
					"SET_OBJETIVO_LABEL" // Giving a "label" for objective
					(
						"NUMERO"
						2.0
					) 
					(
						"FLI"
						"0013"
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
					"FOREACH"
					(
						"ARRAYID"
						8388637
					) 
				) 
				(
					"SET_INVISIBLE"
					(
						"ARRAY_CURRENT_ITEM"
						(
							"ARRAYID"
							8388637
						) 
					) 
					(
						"BOOL"
						"FALSE"
					) 
				) 
				(
					"SEND_EVENT"
					(
						"EVENT"
						"NEMCI_ANIMS"
					)
				)
				(
					"ENDFOR"
				)
				(
					"TRIGGER_ON"
					(
						"TRIGGER"
						25
					)
				)
				(
					"SET_INVISIBLE" // Make invisible norwegian guy
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
					"SET_POSICION" // setting position for player
					(
						"PLAYER"
					) 
					(
						"PATHPOINT"
						98
						7
					) 
				)
				(
					"SEND_EVENT"
					(
						"EVENT"
						"STEALTH_CUTSCENE"
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
					"IR_A_PATHPOINT" // driving the truck
					(
						"BICHO"
						6
					) 
					(
						"PATHPOINT"
						99
						8
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
					"BAJAR_DE_HABITACULO" // a german guy gets out of a truck
					(
						"BICHO"
						12
					) 
				)
				(
					"TRIGGER_ON"
					(
						"TRIGGER"
						22
					)
				)
				(
					"TRIGGER_EXE"
					(
						"TRIGGER"
						26
					)
				)
			) 
		]
		[
			.ID 20
			.NOMBRE "cutscene stealth"
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
					"STEALTH_CUTSCENE"
				) 
			)
			.ACCIONES
			(  
				(
					"LINK_A_HABITACULO" // put the german soldier into "Camion_03"
					(
						"BICHO" // npc id
						12
					) 
					(
						"BICHO" // vehicle id
						6
					) 
					(
						"NUMERO"
						0.0 // ( 0.0 = driver place)
					) 
				)
				(
					"CUTSCENE_NO_INTERACTIVA" // start cutscene
					(
						"BOOL"
						"TRUE"
					) 
				) 
				(
					"PLAYER_TERCERA" // go to third-person mode
					(
						"BOOL"
						"TRUE"
					) 
				) 
				(
					"CUTSCENE_EXE" // start cutscene, using id from .csc file
					(
						"CUTSCENE" // ID
						3
					) 
				)
			) 
		]
		[
			.ID 21
			.NOMBRE "CUTSCENE_Travelling_01"
			.CARPETA "CUTSCENE_Camaras"
			.FLAGS
			[
				.TRIGGER 1
				.ENABLED 1
				.VALIDO 1
			] 
			.VARIABLES
			(
				[
					.ID 7
					.TYPE "BICHO"
					.NOMBRE "Bicho_Cameraman"
					.VALOR 0
				]
			) 
			.ACCIONES
			(
				(
					"SET"
					(
						"VAR"
						7
					) 
					(
						"BICHO"
						9
					) 
				)
				(
					"SET_WANTED_VEL"
					(
						"VAR"
						7
					) 
					(
						"NUMERO"
						100.0
					) 
				)
				(
					"CONTINUE"
					(
						"IR_A_PATHPOINT"
						(
							"VAR"
							7
						) 
						(
							"PATHPOINT"
							6
							2
						) 
					) 
				)  
				(
					"IR_A_PATHPOINT"
					(
						"VAR"
						7
					) 
					(
						"PATHPOINT"
						6
						3
					) 
				)
				(
					"CUTSCENE_EXE" // selecting new camera
					(
						"CUTSCENE" // ID
						4
					) 
				)
			) 
		]
		[
			.ID 22
			.NOMBRE "alarm settings"
			.CARPETA "DEBUG"
			.FLAGS
			[
				.TRIGGER 1
				.ENABLED 0
				.VALIDO 1
			] 
			.EVENTOS
			(
				(
					"IA_CHANGE_STATE"
				) 
			)
			.VARIABLES
			(
				[
					.ID 15
					.TYPE "NUMERO"
					.NOMBRE "CONT"
					.VALOR 0.0
				] 
				[
					.ID 16
					.TYPE "BOOL"
					.NOMBRE "ACABADO"
					.VALOR "FALSE"
				] 
			)
			.ACCIONES
			(  
				(
					"IF"
					(
						"CMP_OP_ACTITUD"
						(
							"EVT_ACTITUD"
						) 
						(
							"OP_BOOLEAN"
							0
						) 
						(
							"ACTITUD"
							"COMBATIENDO"
						) 
					) 
				)
				(
					"ACTIVAR_ALARMA"
					(
						"NUMERO"
						0.0
					) 
				)
				(
					"ENDIF"
				)
				(
					"TRIGGER_OFF"
					(
						"TRIGGER"
						25
					) 
				)
				(
					"SET_OBJETIVO_SUCCESS"
					(
						"NUMERO"
						2.0
					) 
					(
						"BOOL"
						"FALSE"
					) 
				)
				(
					"TIMED_STRING_V2"
					(
						"FLI"
						"0012"
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
					"PAUSE"
					(
						"NUMERO"
						5
					)
				)
				(
					"SET_MISSION_SUCCESS"
					(
						"BOOL"
						"FALSE"
					) 
				)
			) 
		]
		[
			.ID 23
			.NOMBRE "npc stealth settings"
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
					"START_GAME"
				) 
			)
			.ACCIONES
			(  
				(
					"ARRAY_ADD"
					(
						"ARRAYID"
						8388637
					) 
					(
						"BICHO"
						12
					) 
				)
				(
					"ARRAY_ADD"
					(
						"ARRAYID"
						8388637
					) 
					(
						"BICHO"
						13
					) 
				)
				(
					"ARRAY_ADD"
					(
						"ARRAYID"
						8388637
					) 
					(
						"BICHO"
						14
					) 
				)
				(
					"ARRAY_ADD"
					(
						"ARRAYID"
						8388637
					) 
					(
						"BICHO"
						15
					) 
				)
				(
					"ARRAY_ADD"
					(
						"ARRAYID"
						8388637
					) 
					(
						"BICHO"
						16
					) 
				)
				(
					"ARRAY_ADD"
					(
						"ARRAYID"
						8388637
					) 
					(
						"BICHO"
						17
					) 
				)
			) 
		]
		[
			.ID 24
			.NOMBRE "npc stealth settings 2"
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
					"START_GAME"
				) 
			)
			.ACCIONES
			(  
				(
					"FOREACH"
					(
						"ARRAYID"
						8388637
					) 
				) 
				(
					"SET_INVISIBLE"
					(
						"ARRAY_CURRENT_ITEM"
						(
							"ARRAYID"
							8388637
						) 
					) 
					(
						"BOOL"
						"TRUE"
					) 
				) 
				(
					"ENDFOR"
				)
				(
					"SET_INVISIBLE"
					(
						"BICHO"
						18
					) 
					(
						"BOOL"
						"TRUE"
					) 
				)
			)
		]
		[
			.ID 25
			.NOMBRE "CTRL_MIS_Control_Muertos"
			.CARPETA "CONTROL_MISION"
			.FLAGS
			[
				.TRIGGER 1
				.ENABLED 0
				.VALIDO 1
			] 
			.EVENTOS
			(
				(
					"MUERTO"
				) 
			) 
			.ACCIONES
			(  
				(
					"ARRAY_DELETE_ELEMENT"
					(
						"ARRAYID"
						8388637
					) 
					(
						"EVT_BICHO1"
					) 
				) 
				(
					"IF"
					(
						"CMP_OP_NUMERO"
						(
							"ARRAY_SIZE"
							(
								"ARRAYID"
								8388637
							) 
						) 
						(
							"OP_BOOLEAN"
							0
						) 
						(
							"NUMERO"
							0.0
						) 
					) 
				)
				(
					"SEND_EVENT"
					(
						"EVENT"
						"SECZWEI"
					) 
				)
				(
					"SET_OBJETIVO_SUCCESS"
					(
						"NUMERO"
						2.0
					) 
					(
						"BOOL"
						"TRUE"
					) 
				)
				(
					"TIMED_STRING_V2"
					(
						"FLI"
						"0014"
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
					"TRIGGER_OFF"
					(
						"TRIGGER"
						25
					) 
				)
				(
					"TRIGGER_OFF"
					(
						"TRIGGER"
						22
					) 
				)
				(
					"ENDIF"
				)
			) 
		]
		[
			.ID 26
			.NOMBRE "NemciStealth"
			.CARPETA "DEBUG"
			.FLAGS
			[
				.TRIGGER 1
				.ENABLED 1
				.VALIDO 1
			]  
			.ACCIONES
			(  
				(
					"PAUSE"
					(
						"NUMERO"
						0.25
					)
				)
				(
					"IR_A_POSICION"
					(
						"BICHO"
						12
					) 
					(
						"PATHPOINT"
						100
						1
					)  
				)
				(
					"IR_A_PATHPOINT" // Go to pathpoint
					(
						"BICHO"
						12
					) 
					(
						"PATHPOINT"
						100
						4
					) 
					(
						"BOOL"
						"TRUE"
					) 
				)
				(
					"GIRA_ANM_HASTA_ANGULO"
					(
						"BICHO"
						12
					) 
					(
						"ANGULO_A_BICHO"
						(
							"BICHO"
							12
						) 
						(
							"BICHO"
							17
						) 
					) 
					(
						"BOOL"
						"FALSE"
					) 
				)
				(
					"PLAY_ANMBDD"
					(
						"BICHO"
						17
					) 
					(
						"ANM_BDD"
						1942
					)  
				)
				(
					"GIRA_ANM_HASTA_ANGULO"
					(
						"BICHO"
						17
					) 
					(
						"ANGULO_A_BICHO"
						(
							"BICHO"
							17
						) 
						(
							"BICHO"
							12
						) 
					) 
					(
						"BOOL"
						"FALSE"
					) 
				)
				(
					"PLAY_ANMBDD"
					(
						"BICHO"
						17
					) 
					(
						"ANM_BDD"
						2189
					)  
				)
			) 
		]
		[
			.ID 27
			.NOMBRE "NemciAnims"
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
					"NEMCI_ANIMS"
				) 
			) 
			.ACCIONES
			(  
				(
					"PLAY_ANMBDD"
					(
						"BICHO"
						17
					) 
					(
						"ANM_BDD"
						1437
					)  
				)
			) 
		]
		[
			.ID 28
			.NOMBRE "NemciAnims2"
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
					"NEMCI_ANIMS"
				) 
			) 
			.ACCIONES
			(  
				(
					"PLAY_ANMBDD_CICLOS"
					(
						"BICHO"
						13
					) 
					(
						"ANM_BDD"
						2317
					) 
					(
						"NUMERO"
						1.0
					) 
				)
				(
					"PLAY_ANMBDD_CICLOS"
					(
						"BICHO"
						14
					) 
					(
						"ANM_BDD"
						2317
					) 
					(
						"NUMERO"
						1.0
					) 
				)
				(
					"SEND_EVENT"
					(
						"EVENT"
						"NEMCI_ANIMS_LOOP"
					)
				)
			) 
		]
		[
			.ID 29
			.NOMBRE "NemciAnimsLoop"
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
					"NEMCI_ANIMS_LOOP"
				) 
			) 
			.ACCIONES
			(  
				(
					"TRIGGER_EXE"
					(
						"TRIGGER"
						28
					)
				)
			) 
		]
		[
			.ID 30
			.NOMBRE "Rio"
			.CARPETA "ZSONIDO"
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
					"CONTINUE"
					(
						"PLAY_SONIDOID_DUMMY"
						(
							"SONIDO_BDD"
							1572
						) 
						(
							"DUMMY"
							223
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
				) 
				(
					"CONTINUE"
					(
						"PLAY_SONIDOID_DUMMY"
						(
							"SONIDO_BDD"
							1572
						) 
						(
							"DUMMY"
							224
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
				) 
				(
					"CONTINUE"
					(
						"PLAY_SONIDOID_DUMMY"
						(
							"SONIDO_BDD"
							1572
						) 
						(
							"DUMMY"
							225
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
				) 
				(
					"CONTINUE"
					(
						"PLAY_SONIDOID_DUMMY"
						(
							"SONIDO_BDD"
							1572
						) 
						(
							"DUMMY"
							226
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
				) 
				(
					"CONTINUE"
					(
						"PLAY_SONIDOID_DUMMY"
						(
							"SONIDO_BDD"
							1572
						) 
						(
							"DUMMY"
							227
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
				) 
				(
					"CONTINUE"
					(
						"PLAY_SONIDOID_DUMMY"
						(
							"SONIDO_BDD"
							1572
						) 
						(
							"DUMMY"
							228
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
				) 
				(
					"CONTINUE"
					(
						"PLAY_SONIDOID_DUMMY"
						(
							"SONIDO_BDD"
							1572
						) 
						(
							"DUMMY"
							229
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
				) 
				(
					"CONTINUE"
					(
						"PLAY_SONIDOID_DUMMY"
						(
							"SONIDO_BDD"
							1572
						) 
						(
							"DUMMY"
							230
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
				) 
				(
					"CONTINUE"
					(
						"PLAY_SONIDOID_DUMMY"
						(
							"SONIDO_BDD"
							1572
						) 
						(
							"DUMMY"
							231
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
				) 
				(
					"CONTINUE"
					(
						"PLAY_SONIDOID_DUMMY"
						(
							"SONIDO_BDD"
							1572
						) 
						(
							"DUMMY"
							232
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
				) 
				(
					"CONTINUE"
					(
						"PLAY_SONIDOID_DUMMY"
						(
							"SONIDO_BDD"
							1572
						) 
						(
							"DUMMY"
							233
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
				) 
				(
					"CONTINUE"
					(
						"PLAY_SONIDOID_DUMMY"
						(
							"SONIDO_BDD"
							1572
						) 
						(
							"DUMMY"
							234
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
				) 
				(
					"CONTINUE"
					(
						"PLAY_SONIDOID_DUMMY"
						(
							"SONIDO_BDD"
							1572
						) 
						(
							"DUMMY"
							235
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
				) 
				(
					"CONTINUE"
					(
						"PLAY_SONIDOID_DUMMY"
						(
							"SONIDO_BDD"
							1572
						) 
						(
							"DUMMY"
							236
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
				) 
				(
					"CONTINUE"
					(
						"PLAY_SONIDOID_DUMMY"
						(
							"SONIDO_BDD"
							1572
						) 
						(
							"DUMMY"
							237
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
				) 
				(
					"CONTINUE"
					(
						"PLAY_SONIDOID_DUMMY"
						(
							"SONIDO_BDD"
							1572
						) 
						(
							"DUMMY"
							238
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
				) 
				(
					"CONTINUE"
					(
						"PLAY_SONIDOID_DUMMY"
						(
							"SONIDO_BDD"
							1572
						) 
						(
							"DUMMY"
							239
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
				) 
				(
					"CONTINUE"
					(
						"PLAY_SONIDOID_DUMMY"
						(
							"SONIDO_BDD"
							1572
						) 
						(
							"DUMMY"
							240
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
				) 
				(
					"CONTINUE"
					(
						"PLAY_SONIDOID_DUMMY"
						(
							"SONIDO_BDD"
							1572
						) 
						(
							"DUMMY"
							241
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
				) 
				(
					"CONTINUE"
					(
						"PLAY_SONIDOID_DUMMY"
						(
							"SONIDO_BDD"
							1572
						) 
						(
							"DUMMY"
							295
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
				) 
				(
					"CONTINUE"
					(
						"PLAY_SONIDOID_DUMMY"
						(
							"SONIDO_BDD"
							1572
						) 
						(
							"DUMMY"
							296
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
				) 
				(
					"CONTINUE"
					(
						"PLAY_SONIDOID_DUMMY"
						(
							"SONIDO_BDD"
							1572
						) 
						(
							"DUMMY"
							297
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
				) 
				(
					"CONTINUE"
					(
						"PLAY_SONIDOID_DUMMY"
						(
							"SONIDO_BDD"
							1572
						) 
						(
							"DUMMY"
							298
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
				) 
			) 
		]
		[
			.ID 31
			.NOMBRE "BarcoParado"
			.CARPETA "ZSONIDO"
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
					"PLAY_SONIDOID_DUMMY"
					(
						"SONIDO_BDD"
						1573
					) 
					(
						"DUMMY"
						244
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
			) 
		]
	) 
	.POOL
	(
	) 
] 