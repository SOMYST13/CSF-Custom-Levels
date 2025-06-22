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
			38
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
			.NOMBRE "CFG_COMM_ARMAS_Commando" // Giving weapons to player
			.CARPETA "CONFIG_COMMANDOS"
			.FLAGS
			[
				.TRIGGER 1
				.ENABLED 1
				.VALIDO 1
			] 
			.EVENTOS
			(
				( "START_GAME" ) 
			) 
			.ACCIONES
			(
				( "ADD_ARMA" ( "PLAYER" ) ( "ARMA_CLASSID" 17 ) ) 
				( "ADD_ARMA" ( "PLAYER" ) ( "ARMA_CLASSID" 1 ) )     
				( "ADD_ARMA" ( "PLAYER" ) ( "ARMA_CLASSID" 9 ) )    
				( "ADD_ARMA" ( "PLAYER" ) ( "ARMA_CLASSID" 37 ) )  
				( "ADD_ARMA" ( "PLAYER" ) ( "ARMA_CLASSID" 5 ) )   
				( "ADD_ARMA" ( "PLAYER" ) ( "ARMA_CLASSID" 11 ) )  
				( "ADD_ARMA" ( "PLAYER" ) ( "ARMA_CLASSID" 38 ) ) 
				( "ADD_ARMA" ( "PLAYER" ) ( "ARMA_CLASSID" 42 ) )  
				( "ADD_ARMA" ( "PLAYER" ) ( "ARMA_CLASSID" 42 ) ) 
				( "ADD_ARMA" ( "PLAYER" ) ( "ARMA_CLASSID" 42 ) ) 
				( "ADD_ARMA" ( "PLAYER" ) ( "ARMA_CLASSID" 42 ) )  
				( "ADD_ARMA" ( "PLAYER" ) ( "ARMA_CLASSID" 70 ) ) 
				( "SELECT_ARMA" ( "PLAYER" ) ( "ARMA_CLASSID" 9 ) )
				( "SET_MUNICION_ARMA" ( "PLAYER" ) ( "ARMA_CLASSID" 1 ) ( "NUMERO" 100.0 ) ( "NUMERO" 100.0 ) ) 
				( "SET_MUNICION_ARMA" ( "PLAYER" ) ( "ARMA_CLASSID" 5 ) ( "NUMERO" 100.0 ) ( "NUMERO" 100.0 ) ) 
				( "SET_MUNICION_ARMA" ( "PLAYER" ) ( "ARMA_CLASSID" 9 ) ( "NUMERO" 100.0 ) ( "NUMERO" 100.0 ) )
				( "SET_MUNICION_ARMA" ( "PLAYER" ) ( "ARMA_CLASSID" 11 ) ( "NUMERO" 100.0 ) ( "NUMERO" 100.0 ) ) 
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
				( "INIT" ) 
			) 
			.ACCIONES
			( 
				
				( "SEND_EVENT" ( "EVENT" "NORWEG_START" ) ) // Activating scripts for norwegian guy
				( "TIMED_STRING_INITPOS" ( "NUMERO" 0.115 ) ( "NUMERO" 0.25 ) ) // Setting up position for TIMED_STRING commands. Do not touch.  
				( "HABILITAR_GHOST" ( "BICHO" 2 ) ( "BOOL" "TRUE" ) ) // Make pills object clickable
				( "BICHO_SET_CONTEXT_LABEL" ( "BICHO" 2 ) ( "FLI" "0003" ) ) // Giving a "label" when looking over the pill model
				( "SET_INVISIBLE" ( "BICHO" 3 ) ( "BOOL" "TRUE" ) ) // Make invisible "unter" npc
				( "SET_INVISIBLE" ( "BICHO" 4 ) ( "BOOL" "TRUE" ) ) // Make invisible "unter2" npc
				( "SET_INVISIBLE" ( "BICHO" 7 ) ( "BOOL" "TRUE" ) ) // Make invisible "unterkms" npc
				( "SET_INVISIBLE" ( "BICHO" 6 ) ( "BOOL" "TRUE" ) ) // Make invisible "Camion_03" vehicle
				( "SET_INVISIBLE" ( "BICHO" 19 ) ( "BOOL" "TRUE" ) ) // Make invisible "Camion_03" vehicle
				( "PAUSE" ( "NUMERO" 2.0 ) )
				( 
					"SET_OBJETIVO" // Adding an objective
					( "NUMERO" 1.0 ) // Objective id
					( "BOOL" "FALSE" ) // Primary or secondary 
					( "NUMERO" 1.0 ) // Score amount (1.0 = 250) 
				)
				( "SET_OBJETIVO_LABEL" ( "NUMERO" 1.0 ) ( "FLI" "0009" ) ) // Giving a "label" for objective
				(
					"VENTANA_BANNER" // Shows a banner at the top of the screen
					( "FLI" "g099" ) // Head line 'NEW OBJECTIVE ADDED' 
					( "FLI" "0002" ) // 1st line 'TO START MISSION - PRESS ON PILLS' 
					( "FLI" "0001" ) // 2nd line 'blank' 
					( "NUMERO" 5.0 ) // Time 
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
				( "EVT_GHOST_USADO" ) // If "ghost" object has clicked, the script is executed 
			)
			.CONDICIONES
			( 
				(
					"CMP_OP_BICHO" // Checking if player clicked on pills model 'compare objects'
					( "EVT_BICHO2" ) // The used object.. 
					( "OP_BOOLEAN" 0 ) // == 'is' 
					( "BICHO" 2 ) // pills 
				)   
			)
			.ACCIONES
			(  
				( "DESTRUIR_BICHO" ( "BICHO" 2 ) ) // deleting pills object from scene
				(
					"PLAY_SONIDOID" // playing "pick up" sound
					( "SONIDO_BDD" 1187 ) // Sound id
					( "NUMERO" 0.0 ) // Time 
					( "NUMERO" 1.0 ) // Channel
				)
				(
					"FX_FADE" // black fading screen
					( "NUMERO" 1.0 ) // Time 
					( "BOOL" "TRUE" ) // Fade-in 
					( "VECTOR" 0.0 0.0 0.0 ) // Color (black) 
				)
				( "PAUSE" ( "NUMERO" 1.0 ) )
				(
					"SET_POSICION" // setting position for player
					( "PLAYER" ) 
					(
						"PATHPOINT" // pathpoints can be found in .scn file, in GRUPOS category
						98 1	// group ID & pathpoint ID
					) 
				)
				( "SET_INVISIBLE" ( "BICHO" 3 ) ( "BOOL" "FALSE" ) ) // make visible "unter" npc
				( "SET_INVISIBLE" ( "BICHO" 4 ) ( "BOOL" "FALSE" ) ) // make visible "unter2" npc
				( "SEND_EVENT" ( "EVENT" "NEMCI_IDUT" ) ) // activate event for nazi npc's
				(
					"FX_FADE" // regain visibility
					( "NUMERO" 1.0 ) 
					( "BOOL" "FALSE" ) // Fade-out 
					( "VECTOR" 0.0 0.0 0.0 ) 
				)
				(
					"SUBTITULO" // Showing subtitle
					( "FLI" "0008" ) // 'Kill them all!'
					( "NUMERO" 2.0 ) // Time 
				)
				( "TRIGGER_EXE" ( "TRIGGER" 13 ) ) // Triggering viewport activating script
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
				( "NEMCI_IDUT" ) 
			) 
			.ACCIONES
			( 
				( "SET_ACTITUD" ( "BICHO" 3 ) ( "ACTITUD" "COMBATIENDO" ) ) // nazis behavior always will be Combat
				( "IA_OFF" ( "BICHO" 3 ) ) // Turn off AI to not make them angry to norwegian npc
				( "IR_A_PATHPOINT" ( "BICHO" 3 ) ( "PATHPOINT" 97 1 ) )
				( "IA_ON" ( "BICHO" 3 ) ) // Turn on AI
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
				( "SET_ACTITUD" ( "BICHO" 4 ) ( "ACTITUD" "COMBATIENDO" ) ) // nazis behavior always will be Combat
				( "PAUSE" ( "NUMERO" 2.0 ) ) // pause to avoid two npcs passing through the door at the same time
				( "SET_DESPLAZAMIENTO" ( "BICHO" 4 ) ( "MODO_DESPLAZAMIENTO" "CORRER" ) ) // nazis always will be run
				( "IA_OFF" ( "BICHO" 4 ) ) // Turn off AI to not make them angry to norwegian npc
				( "IR_A_PATHPOINT" ( "BICHO" 4 ) ( "PATHPOINT" 97 2 ) )
				( "IA_ON" ( "BICHO" 4 ) ) // Turn on AI
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
				( "NEMCI_IDUT" ) 
			) 
			.ACCIONES
			( 
				( "SET_INVULNERABILIDAD" ( "BICHO" 5 ) ( "BOOL" "FALSE" ) ) // Make norwegian guy killable
				( "IA_OFF" ( "BICHO" 5 ) )
				( "SET_POSICION" ( "BICHO" 5 ) ( "PATHPOINT" 98 2 ) ) // Setting position for norwegian guy
				( "SET_DESPLAZAMIENTO" ( "BICHO" 5 ) ( "MODO_DESPLAZAMIENTO" "CORRER" ) ) // Norwegian guy always will be run
				( "IR_A_POSICION" ( "BICHO" 5 ) ( "PATHPOINT" 98 3 ) ) // Go to position (The difference from IR_A_PATHPOINT is that the object goes to a single point, independently creating its own route using sectors)
				( "IA_ON" ( "BICHO" 5 ) ) // Turn on AI
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
				( "MUERTO" ) // If somebody dies... 
			) 
			.CONDICIONES
			(
				(
					"CMP_OP_BICHO"
					( "EVT_BICHO1" ) // The object that was killed... 
					( "OP_BOOLEAN" 0 ) // == 'is' 
					( "PLAYER" ) 
				)
			)
			.ACCIONES
			(  
				(
					"TIMED_STRING_V2" // Showing the left upper corner text
					( "FLI" "0004" ) // 'YOU DIED' 
					( "NUMERO" 5.0 ) // Time
					( "NUMERO" 4.0 ) // Icon (Interfaz.txt -> .ICONOS_ESTADO) 
				)
				(
					"SET_OBJETIVO_SUCCESS" // Failing objective
					( "NUMERO" 1.0 ) // Objective ID 
					( "BOOL" "FALSE" ) 
				)
				( "PAUSE" ( "NUMERO" 4.0 ) )
				( "SET_MISSION_SUCCESS" ( "BOOL" "FALSE" ) ) // Failing mission
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
				( "MUERTO" ) // If somebody dies... 
			) 
			.CONDICIONES // In our case "unter" and "unter2"
			(
				(
					"AND"
					( "NOT" ( "ESTA_VIVO" ( "BICHO" 3 ) ) )
					( "NOT" ( "ESTA_VIVO" ( "BICHO" 4 ) ) )
				)
			)
			.ACCIONES
			(  
				( "TIMED_STRING_V2" ( "FLI" "0005" ) ( "NUMERO" 5.0 ) ( "NUMERO" 4.0 ) ) // 'NAZIS KILLED'
				( "SET_OBJETIVO_SUCCESS" ( "NUMERO" 1.0 ) ( "BOOL" "TRUE" ) ) // objective completed
				( "IF" ( "NOT" ( "ESTA_VIVO" ( "BICHO" 5 ) ) ) ) // BUT if norwegian is died before you killed last nazis...
				( "SET_OBJETIVO_SUCCESS" ( "NUMERO" 1.0 ) ( "BOOL" "FALSE" ) ) // objective failed
				( "ENDIF" )
				( "SEND_EVENT" ( "EVENT" "STEALTH_START" ) ) // start stealth part
				( "SET_INVULNERABILIDAD" ( "BICHO" 5 ) ( "BOOL" "TRUE" ) )
				( "TRIGGER_OFF" ( "TRIGGER" 8 ) ) // turning off trigger of this script, because MUERTO event will count kills for other npc's after nazis will die
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
				( "MUERTO" ) // If somebody dies...
			) 
			.CONDICIONES
			(
				(
					"CMP_OP_BICHO"
					( "EVT_BICHO1" ) // The object that was killed... 
					( "OP_BOOLEAN" 0 ) // == 'is'
					( "BICHO" 5 ) // Norwegian guy
				)
			)
			.ACCIONES
			(  
				( "TIMED_STRING_V2" ( "FLI" "0007" ) ( "NUMERO" 5.0 ) ( "NUMERO" 4.0 ) ) // 'SCRIPT GUY KILLED'
				( "SET_OBJETIVO_SUCCESS" ( "NUMERO" 1.0 ) ( "BOOL" "FALSE" ) )
				( "PAUSE" ( "NUMERO" 4.0 ) )
				( "SET_MISSION_SUCCESS" ( "BOOL" "FALSE" ) )
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
				( "NORWEG_START" ) 
			) 
			.ACCIONES
			(  
				( "SET_INVULNERABILIDAD" ( "BICHO" 5 ) ( "BOOL" "TRUE" ) ) // make the norwegian guy unkillable
				( "IR_A_PATHPOINT" ( "BICHO" 5 ) ( "PATHPOINT" 97 9 ) ) // go to the balcony
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
				( "SECZWEI" ) 
			) 
			.ACCIONES
			(  
				( "SET_INVISIBLE" ( "BICHO" 7 ) ( "BOOL" "FALSE" ) ) // Make visible "unterkms" npc
				( "PAUSE" ( "NUMERO" 5.0 ) )
				( "FX_FADE" ( "NUMERO" 1.0 ) ( "BOOL" "TRUE" ) ( "VECTOR" 0.0 0.0 0.0 ) ) // Black fading screen
				( "PAUSE" ( "NUMERO" 1.0 ) )
				(
					"LINK_A_HABITACULO" // put the norwegian guy into "Camion_03"
					( "BICHO" 5 ) // npc id 
					( "BICHO" 19 ) // vehicle id 
					( "NUMERO" 0.0 ) // ( 0.0 = driver place) 
				)
				( "SET_POSICION" ( "PLAYER" ) ( "PATHPOINT" 98 4 ) )
				( "FX_FADE" ( "NUMERO" 1.0 ) ( "BOOL" "FALSE" ) ( "VECTOR" 0.0 0.0 0.0 ) ) // Regain visibility
				( "TRIGGER_EXE" ( "TRIGGER" 17 ) )
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
				( "SECZWEI" ) 
			) 
			.ACCIONES
			(  
				( "ACTIVAR_VEHICULO" ( "BICHO" 19 ) ( "BOOL" "TRUE" ) )
				( "IR_A_PATHPOINT" ( "BICHO" 19 ) ( "PATHPOINT" 99 4 ) )
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
					( "NUMERO" 1.0 ) // ID 
					( "VECTOR" 0.7 0.25 0.0 ) 
					( "VECTOR" 0.925 0.475 0.0 ) 
				)
				(
					"VIEWPORT_CAM_SETPOS" // Setting position for camera. Positiong taking from .scn file, from .MALLA_DUMMIES block
					( "NUMERO" 1.0 ) // ID 
					( "DUMMY" 334 ) // camera position 
					( "DUMMY" 335 ) // looking at dummy 
				)
				(
					"VIEWPORT_CAM_SETFOV"
					( "NUMERO" 1.0 ) // ID 
					( "NUMERO" 120.0 ) // FOV 
				) 
				( "VIEWPORT_SHOW" ( "NUMERO" 1.0 ) ( "BOOL" "TRUE" ) ) 
				( "PAUSE" ( "NUMERO" 5.0 ) )
				( "VIEWPORT_SHOW" ( "NUMERO" 1.0 ) ( "BOOL" "FALSE" ) ) 
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
				( "START_GAME" ) 
			)
			.ACCIONES
			(
				( "CUTSCENE_NO_INTERACTIVA" ( "BOOL" "TRUE" ) ) // start cutscene 
				( "PLAYER_TERCERA" ( "BOOL" "TRUE" ) ) // go to third-person mode 
				( "CUTSCENE_EXE" ( "CUTSCENE" 1 ) ) // start cutscene, using script id from .csc file
				( "SUBTITULO" ( "FLI" "0006" ) ( "NUMERO" 2.0 ) ) // 'A small made from scratch mission.'
				( "PAUSE" ( "NUMERO" 2.0 ) )
				( "FX_FADE" ( "NUMERO" 1.0 ) ( "BOOL" "TRUE" ) ( "VECTOR" 0.0 0.0 0.0 ) ) // Black fading screen
				( "PAUSE" ( "NUMERO" 1.0 ) )
				( "CUTSCENE_NO_INTERACTIVA" ( "BOOL" "FALSE" ) ) // go back to gameplay
				( "PLAYER_TERCERA" ( "BOOL" "FALSE" ) ) // go to first-person mode
				( "SEND_EVENT" ( "EVENT" "INIT" ) )
				( "FX_FADE" ( "NUMERO" 1.0 ) ( "BOOL" "FALSE" ) ( "VECTOR" 0.0 0.0 0.0 ) ) // Regain visibility
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
				( "SECZWEI" ) 
			) 
			.ACCIONES
			(  
				( "IA_OFF" ( "BICHO" 7 ) )
				(
					"CONTINUE" // Run next command right after this one
					( "PLAY_ANMBDD" ( "BICHO" 7 ) ( "ANM_BDD" 2509 ) ) // Play animation 'UnterKmsIdAl.anm' for 'unterkms'
				)	
				( "PAUSE" ( "NUMERO" 8.0 ) )
				( "PLAY_ANMBDD" ( "BICHO" 7 ) ( "ANM_BDD" 2507 ) ) // 'UnterKms.anm'
				( "PLAY_ANMBDD" ( "BICHO" 7 ) ( "ANM_BDD" 2508 ) ) // 'UnterKmsId.anm'
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
				( "START_GAME" ) 
			) 
			.ACCIONES
			(
				( "PLAY_SONIDOID" ( "SONIDO_BDD" 594 ) ( "NUMERO" 0.0 ) ( "NUMERO" 0.0 ) ) // Play ambient sfx 
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
				( "SEND_EVENT" ( "EVENT" "GB_NPC" ) ) // activate script for green beret npc
				( "SET_INVISIBLE" ( "BICHO" 19 ) ( "BOOL" "FALSE" ) ) // Make visible "Camion_03" vehicle
				( "CUTSCENE_NO_INTERACTIVA" ( "BOOL" "TRUE" ) ) 
				( "PLAYER_TERCERA" ( "BOOL" "TRUE" ) ) 
				( "CUTSCENE_EXE" ( "CUTSCENE" 2 ) )
				( "PAUSE" ( "NUMERO" 7.0 ) )
				( "FX_FADE" ( "NUMERO" 1.0 ) ( "BOOL" "TRUE" ) ( "VECTOR" 0.0 0.0 0.0 ) ) // Black fading screen
				( "PAUSE" ( "NUMERO" 1.0 ) )
				( "SET_MISSION_SUCCESS" ( "BOOL" "TRUE" ) )
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
				( "GB_NPC" ) 
			)
			.ACCIONES
			( 
				(
					"SET" ( "VAR" 8 ) // Set variable for object 
					( "CREAR_BICHO" ( "CLASSID" 268 ) ) // Create object "Commando Invierno NPC" (Objetos.bdd)
				) 
				( "ADD_ARMA" ( "VAR" 8 ) ( "ARMA_CLASSID" 9 ) ) // Add winchester riot to 'gb_npc'
				( "SELECT_ARMA" ( "VAR" 8 ) ( "ARMA_CLASSID" 9 ) ) // Select the winchester riot for 'gb_npc'
				( "IA_OFF" ( "VAR" 8 ) )
				( "SET_POSICION" ( "VAR" 8 ) ( "PATHPOINT" 98 5 ) )
				( "IR_A_PATHPOINT" ( "VAR" 8 ) ( "PATHPOINT" 98 6 ) )
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
				( "STEALTH_START" ) 
			) 
			.ACCIONES
			(  
				( "PAUSE" ( "NUMERO" 5.0 ) )
				( "FX_FADE" ( "NUMERO" 1.0 ) ( "BOOL" "TRUE" ) ( "VECTOR" 0.0 0.0 0.0 ) ) // Black fading screen
				( "PAUSE" ( "NUMERO" 1.0 ) )
				( "SET_OBJETIVO" ( "NUMERO" 2.0 ) ( "BOOL" "FALSE" ) ( "NUMERO" 2.0 ) )
				( "SET_OBJETIVO_LABEL" ( "NUMERO" 2.0 ) ( "FLI" "0013" ) )
				( "SET_INVISIBLE" ( "BICHO" 6 ) ( "BOOL" "FALSE" ) ) // Make visible "Camion_03" vehicle
				( "FOREACH" ( "ARRAYID" 8388637 ) ) // Loop through 'Array_Alemanes' to make all stealth-part enemies visible
				( "SET_INVISIBLE" ( "ARRAY_CURRENT_ITEM" ( "ARRAYID" 8388637 ) ) ( "BOOL" "FALSE" ) ) 
				( "ENDFOR" )
				( "SEND_EVENT" ( "EVENT" "NEMCI_ANIMS" ) )
				( "TRIGGER_ON" ( "TRIGGER" 25 ) )
				( "SET_INVISIBLE" ( "BICHO" 5 ) ( "BOOL" "TRUE" ) ) // Make invisible norwegian guy 
				( "SET_POSICION" ( "PLAYER" ) ( "PATHPOINT" 98 7 ) )
				( "SEND_EVENT" ( "EVENT" "STEALTH_CUTSCENE" ) )
				( "FX_FADE" ( "NUMERO" 1.0 ) ( "BOOL" "FALSE" ) ( "VECTOR" 0.0 0.0 0.0 ) ) // Regain visibility
				( "IR_A_PATHPOINT" ( "BICHO" 6 ) ( "PATHPOINT" 99 8 ) ) // driving the truck
				( "ACTIVAR_VEHICULO" ( "BICHO" 6 ) ( "BOOL" "FALSE" ) ) // turn off the truck's engine
				( "BAJAR_DE_HABITACULO" ( "BICHO" 12 ) ) // a german soldier gets out of a truck
				( "TRIGGER_ON" ( "TRIGGER" 22 ) )
				( "TRIGGER_EXE" ( "TRIGGER" 26 ) )
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
				( "STEALTH_CUTSCENE" ) 
			)
			.ACCIONES
			(  
				( "LINK_A_HABITACULO" ( "BICHO" 12 ) ( "BICHO" 6 ) ( "NUMERO" 0.0 ) ) // put the german soldier into "Camion_03"
				( "CUTSCENE_NO_INTERACTIVA" ( "BOOL" "TRUE" ) ) 
				( "PLAYER_TERCERA" ( "BOOL" "TRUE" ) ) 
				( "CUTSCENE_EXE" ( "CUTSCENE" 3 ) )
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
			.ACCIONES
			(
				( "SET_WANTED_VEL" ( "BICHO" 9 ) ( "NUMERO" 100.0 ) ) // Sets the target movement speed for the camera object  
				( "IR_A_PATHPOINT" ( "BICHO" 9 ) ( "PATHPOINT" 6 3 ) )
				( "CUTSCENE_EXE" ( "CUTSCENE" 4 ) )
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
				( "IA_CHANGE_STATE" ) 
			)
            .CONDICIONES
            (
                (
                     "CMP_OP_NUMERO" // Looking for a german soldier in array
                    ( "ARRAY_FIND" ( "ARRAYID" 8388637 ) ( "EVT_BICHO1" ) )
                    ( "OP_BOOLEAN" 1 )
                    ( "NUMERO" -1.0 )
                )
            )
			.ACCIONES
			(  
				(
					"IF" // Check if the state that has been changed to...
					(
						"CMP_OP_ACTITUD"
						( "EVT_ACTITUD" ) // the new attitude...
						( "OP_BOOLEAN" 0 ) // ...is...
						( "ACTITUD" "COMBATIENDO" ) // ..."Combat"
					)  
				)
				( "TRIGGER_OFF" ( "TRIGGER" 25 ) )
				( "SET_OBJETIVO_SUCCESS" ( "NUMERO" 2.0 ) ( "BOOL" "FALSE" ) )
				( "TIMED_STRING_V2" ( "FLI" "0012" ) ( "NUMERO" 5.0 ) ( "NUMERO" 4.0 ) )
				( "PAUSE" ( "NUMERO" 5 ) )
				( "SET_MISSION_SUCCESS" ( "BOOL" "FALSE" ) )
				( "TRIGGER_OFF" ( "TRIGGER" 22 ) ) 
				( "ENDIF" )
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
				( "START_GAME" ) 
			)
			.ACCIONES
			(  
				( "ARRAY_ADD" ( "ARRAYID" 8388637 ) ( "BICHO" 12 ) )
				( "ARRAY_ADD" ( "ARRAYID" 8388637 ) ( "BICHO" 13 ) )
				( "ARRAY_ADD" ( "ARRAYID" 8388637 ) ( "BICHO" 14 ) )
				( "ARRAY_ADD" ( "ARRAYID" 8388637 ) ( "BICHO" 15 ) )
				( "ARRAY_ADD" ( "ARRAYID" 8388637 ) ( "BICHO" 16 ) )
				( "ARRAY_ADD" ( "ARRAYID" 8388637 ) ( "BICHO" 17 ) )
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
				( "FOREACH" ( "ARRAYID" 8388637 ) ) // Loop through 'Array_Alemanes' to make all stealth-part enemies invisible
				( "SET_INVISIBLE" ( "ARRAY_CURRENT_ITEM" ( "ARRAYID" 8388637 ) ) ( "BOOL" "True" ) ) 
				( "ENDFOR" )
				( "SET_INVISIBLE" ( "BICHO" 18 ) ( "BOOL" "TRUE" ) ) // Make 'Camion_03' invisible
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
				( "MUERTO" ) 
			) 
			.CONDICIONES
            (
                (
                    "CMP_OP_NUMERO" // Looking for a german soldier in array
                    ( "ARRAY_FIND" ( "ARRAYID" 8388637 ) ( "EVT_BICHO1" ) )
                    ( "OP_BOOLEAN" 1 )
                    ( "NUMERO" -1.0 )
                )
            )
			.ACCIONES
			(  
				( "ARRAY_DELETE_ELEMENT" ( "ARRAYID" 8388637 ) ( "EVT_BICHO1" ) )
				( "IF" ( "CMP_OP_NUMERO" ( "ARRAY_SIZE" ( "ARRAYID" 8388637 ) ) ( "OP_BOOLEAN" 0 ) ( "NUMERO" 0.0 ) ) )
                ( "SEND_EVENT" ( "EVENT" "SECZWEI" ) )
                ( "SET_OBJETIVO_SUCCESS" ( "NUMERO" 2.0 ) ( "BOOL" "TRUE" ) )
                ( "TIMED_STRING_V2" ( "FLI" "0014" ) ( "NUMERO" 5.0 ) ( "NUMERO" 4.0 ) )
                ( "TRIGGER_OFF" ( "TRIGGER" 25 ) )
                ( "TRIGGER_OFF" ( "TRIGGER" 22 ) )
				( "ENDIF" )
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
				( "PAUSE" ( "NUMERO" 0.25 ) )
				( "IR_A_PATHPOINT" ( "BICHO" 12 ) ( "PATHPOINT" 100 4 ) )
				( "PLAY_ANMBDD" ( "BICHO" 17 ) ( "ANM_BDD" 1942 ) ) // 'SPMapaGuarda'
				(
					"GIRA_ANM_HASTA_ANGULO" // Rotate character until it reaches a specific angle
					( "BICHO" 17 ) // The character to rotate
					(
						"ANGULO_A_BICHO"
						( "BICHO" 17 ) // from this character's position...
						( "BICHO" 12 ) // ...to this character's position
					) 
					( "BOOL" "TRUE" ) // Rotate with animation
				)
				( "PLAY_ANMBDD" ( "BICHO" 17 ) ( "ANM_BDD" 2189 ) ) // 'SPTalkPi04'
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
				( "NEMCI_ANIMS" ) 
			) 
			.ACCIONES
			(  
				( "PLAY_ANMBDD" ( "BICHO" 17 ) ( "ANM_BDD" 1437 ) ) // 'SPTablilla'
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
				( "NEMCI_ANIMS" ) 
			) 
			.ACCIONES
			(  
				( "WHILE" ( "BOOL" "TRUE" ) )
				(
					"PLAY_ANMBDD_CICLOS" // Playing animation on a specified loop
					( "BICHO" 13 ) 
					( "ANM_BDD" 2317 ) // 'SMHablaPieCiclo'
					( "NUMERO" 1.0 ) // How many times animation will be played
				)
				( "PLAY_ANMBDD_CICLOS" ( "BICHO" 14 ) ( "ANM_BDD" 2317 ) ( "NUMERO" 1.0 ) )
				( "WEND" )
			) 
		]
		[
			.ID 30
			.NOMBRE "Rio_Boat"
			.CARPETA "ZSONIDO"
			.FLAGS
			[
				.TRIGGER 1
				.ENABLED 1
				.VALIDO 1
			] 
			.EVENTOS
			(
				( "START_GAME" ) 
			) 
			.ACCIONES
			(
				( "CONTINUE" ( "PLAY_SONIDOID_DUMMY" ( "SONIDO_BDD" 1573 ) ( "DUMMY" 244 ) ( "NUMERO" 0.0 ) ( "NUMERO" 0.0 ) ) )
				( "CONTINUE" ( "PLAY_SONIDOID_DUMMY" ( "SONIDO_BDD" 1572 ) ( "DUMMY" 223 ) ( "NUMERO" 0.0 ) ( "NUMERO" 0.0 ) ) )
				( "CONTINUE" ( "PLAY_SONIDOID_DUMMY" ( "SONIDO_BDD" 1572 ) ( "DUMMY" 224 ) ( "NUMERO" 0.0 ) ( "NUMERO" 0.0 ) ) )
				( "CONTINUE" ( "PLAY_SONIDOID_DUMMY" ( "SONIDO_BDD" 1572 ) ( "DUMMY" 225 ) ( "NUMERO" 0.0 ) ( "NUMERO" 0.0 ) ) )
				( "CONTINUE" ( "PLAY_SONIDOID_DUMMY" ( "SONIDO_BDD" 1572 ) ( "DUMMY" 226 ) ( "NUMERO" 0.0 ) ( "NUMERO" 0.0 ) ) )
				( "CONTINUE" ( "PLAY_SONIDOID_DUMMY" ( "SONIDO_BDD" 1572 ) ( "DUMMY" 227 ) ( "NUMERO" 0.0 ) ( "NUMERO" 0.0 ) ) )
				( "CONTINUE" ( "PLAY_SONIDOID_DUMMY" ( "SONIDO_BDD" 1572 ) ( "DUMMY" 228 ) ( "NUMERO" 0.0 ) ( "NUMERO" 0.0 ) ) )
				( "CONTINUE" ( "PLAY_SONIDOID_DUMMY" ( "SONIDO_BDD" 1572 ) ( "DUMMY" 229 ) ( "NUMERO" 0.0 ) ( "NUMERO" 0.0 ) ) )
				( "CONTINUE" ( "PLAY_SONIDOID_DUMMY" ( "SONIDO_BDD" 1572 ) ( "DUMMY" 230 ) ( "NUMERO" 0.0 ) ( "NUMERO" 0.0 ) ) )
				( "CONTINUE" ( "PLAY_SONIDOID_DUMMY" ( "SONIDO_BDD" 1572 ) ( "DUMMY" 231 ) ( "NUMERO" 0.0 ) ( "NUMERO" 0.0 ) ) )
				( "CONTINUE" ( "PLAY_SONIDOID_DUMMY" ( "SONIDO_BDD" 1572 ) ( "DUMMY" 232 ) ( "NUMERO" 0.0 ) ( "NUMERO" 0.0 ) ) )
				( "CONTINUE" ( "PLAY_SONIDOID_DUMMY" ( "SONIDO_BDD" 1572 ) ( "DUMMY" 233 ) ( "NUMERO" 0.0 ) ( "NUMERO" 0.0 ) ) )
				( "CONTINUE" ( "PLAY_SONIDOID_DUMMY" ( "SONIDO_BDD" 1572 ) ( "DUMMY" 234 ) ( "NUMERO" 0.0 ) ( "NUMERO" 0.0 ) ) )
				( "CONTINUE" ( "PLAY_SONIDOID_DUMMY" ( "SONIDO_BDD" 1572 ) ( "DUMMY" 235 ) ( "NUMERO" 0.0 ) ( "NUMERO" 0.0 ) ) )
				( "CONTINUE" ( "PLAY_SONIDOID_DUMMY" ( "SONIDO_BDD" 1572 ) ( "DUMMY" 236 ) ( "NUMERO" 0.0 ) ( "NUMERO" 0.0 ) ) )
				( "CONTINUE" ( "PLAY_SONIDOID_DUMMY" ( "SONIDO_BDD" 1572 ) ( "DUMMY" 237 ) ( "NUMERO" 0.0 ) ( "NUMERO" 0.0 ) ) )
				( "CONTINUE" ( "PLAY_SONIDOID_DUMMY" ( "SONIDO_BDD" 1572 ) ( "DUMMY" 238 ) ( "NUMERO" 0.0 ) ( "NUMERO" 0.0 ) ) )
				( "CONTINUE" ( "PLAY_SONIDOID_DUMMY" ( "SONIDO_BDD" 1572 ) ( "DUMMY" 239 ) ( "NUMERO" 0.0 ) ( "NUMERO" 0.0 ) ) )
				( "CONTINUE" ( "PLAY_SONIDOID_DUMMY" ( "SONIDO_BDD" 1572 ) ( "DUMMY" 240 ) ( "NUMERO" 0.0 ) ( "NUMERO" 0.0 ) ) )
				( "CONTINUE" ( "PLAY_SONIDOID_DUMMY" ( "SONIDO_BDD" 1572 ) ( "DUMMY" 241 ) ( "NUMERO" 0.0 ) ( "NUMERO" 0.0 ) ) )
				( "CONTINUE" ( "PLAY_SONIDOID_DUMMY" ( "SONIDO_BDD" 1572 ) ( "DUMMY" 295 ) ( "NUMERO" 0.0 ) ( "NUMERO" 0.0 ) ) )
				( "CONTINUE" ( "PLAY_SONIDOID_DUMMY" ( "SONIDO_BDD" 1572 ) ( "DUMMY" 296 ) ( "NUMERO" 0.0 ) ( "NUMERO" 0.0 ) ) )
				( "CONTINUE" ( "PLAY_SONIDOID_DUMMY" ( "SONIDO_BDD" 1572 ) ( "DUMMY" 297 ) ( "NUMERO" 0.0 ) ( "NUMERO" 0.0 ) ) )
				( "CONTINUE" ( "PLAY_SONIDOID_DUMMY" ( "SONIDO_BDD" 1572 ) ( "DUMMY" 298 ) ( "NUMERO" 0.0 ) ( "NUMERO" 0.0 ) ) )
			) 
		]
	) 
	.POOL
	(
	) 
] 