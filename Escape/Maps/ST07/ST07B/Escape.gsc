[
	.RECURSOS
	[
		.FNC
		(
			4058
		) 
		.SONIDOSID
		(
			542
			1785
		) 
		.CLASSID
		(
		) 
		.EFFCLASSID
		(
		) 
		.ARMACLASSID
		(
			70
		) 
		.EFECTO
		(
		) 
		.ANIMACIONES
		(
			1515
			2017
			2023
			2028
			2444
			2445
			2514
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
	) 
	.SCRIPTS
	( 
		[
			.ID 1
			.NOMBRE "CONFIG_Commandos"
			.CARPETA "CTRL_CONFIG_START"
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
				( "ADD_ARMA" ( "BICHO" 1 ) ( "ARMA_CLASSID" 70 ) )
				( "SELECT_ARMA" ( "BICHO" 1 ) ( "ARMA_CLASSID" 70 ) )
			) 
		]
		[
			.ID 2
			.NOMBRE "TESTING_SCRIPT1"
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
			.CONDICIONES
			(
				( "BOOL" "TRUE" )
			)
			.ACCIONES
			(
				( "WHILE" ( "BOOL" "TRUE" ) )
				( "IR_A_POSICION" ( "BICHO" 2 ) ( "PATHPOINT" 1 2 ) )
				( "IR_A_POSICION" ( "BICHO" 2 ) ( "PATHPOINT" 1 1 ) )
				( "WEND" )
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
			.CONDICIONES
			(
				( "BOOL" "TRUE" )
			)
			.VARIABLES
			(
				[
					.ID 1
					.TYPE "NUMERO"
					.NOMBRE "Anim_Random"
					.VALOR 0.0
				]
				[
					.ID 2
					.TYPE "NUMERO"
					.NOMBRE "Anim_Random2"
					.VALOR 0.0
				]
			)
			.ACCIONES
			(
				( "WHILE" ( "BOOL" "TRUE" ) )
				( "SET" ( "VAR" 1 ) ( "RANDOM" ( "NUMERO" 1.0 ) ( "NUMERO" 2.0 ) ) )
				( "SET" ( "VAR" 2 ) ( "RANDOM" ( "NUMERO" 1.0 ) ( "NUMERO" 2.0 ) ) )
				( "IF" ( "CMP_OP_NUMERO" ( "VAR" 1 ) ( "OP_BOOLEAN" 0 ) ( "NUMERO" 1.0 ) ) )
				( "PLAY_ANMBDD_CICLOS" ( "BICHO" 3 ) ( "ANM_BDD" 2444 ) ( "NUMERO" 1.0 ) )
				( "ENDIF" )
				( "IF" ( "CMP_OP_NUMERO" ( "VAR" 1 ) ( "OP_BOOLEAN" 0 ) ( "NUMERO" 2.0 ) ) )
				( "PLAY_ANMBDD_CICLOS" ( "BICHO" 3 ) ( "ANM_BDD" 2445 ) ( "NUMERO" 1.0 ) )
				( "ENDIF" )
				( "IF" ( "CMP_OP_NUMERO" ( "VAR" 2 ) ( "OP_BOOLEAN" 0 ) ( "NUMERO" 1.0 ) ) )
				( "PLAY_ANMBDD_CICLOS" ( "BICHO" 4 ) ( "ANM_BDD" 2444 ) ( "NUMERO" 1.0 ) )
				( "ENDIF" )
				( "IF" ( "CMP_OP_NUMERO" ( "VAR" 2 ) ( "OP_BOOLEAN" 0 ) ( "NUMERO" 2.0 ) ) )
				( "PLAY_ANMBDD_CICLOS" ( "BICHO" 4 ) ( "ANM_BDD" 2445 ) ( "NUMERO" 1.0 ) )
				( "ENDIF" )
				( "WEND" )
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
			.CONDICIONES
			(
				( "BOOL" "TRUE" )
			)
			.ACCIONES
			(
				( "IA_OFF" ( "BICHO" 6 ) )
				( "WHILE" ( "BOOL" "TRUE" ) )
				( "CONTINUE" ( "PLAY_ANMBDD" ( "BICHO" 6 ) ( "ANM_BDD" 2028 ) ) )
				( "GIRA_ANM_HASTA_ANGULO" ( "BICHO" 5 ) ( "ANGULO_A_BICHO" ( "BICHO" 5 ) ( "BICHO" 6 ) ) ( "BOOL" "TRUE" ) )
				( "CONTINUE" ( "PLAY_ANMBDD" ( "BICHO" 5 ) ( "ANM_BDD" 2017 ) ) )
				( "PLAY_ANMBDD" ( "BICHO" 6 ) ( "ANM_BDD" 2023 ) )
				( "IF" ( "NOT" ( "ESTA_VIVO" ( "BICHO" 5 ) ) ) )
				( "PLAY_ANMBDD" ( "BICHO" 6 ) ( "ANM_BDD" 2028 ) )
				( "BREAK" )
				( "ENDIF" )
				( "WEND" )
			) 
		]
		[
			.ID 6
			.NOMBRE "ia_change_state"
			.CARPETA "DEBUG"
			.FLAGS
			[
				.TRIGGER 1
				.ENABLED 1
				.VALIDO 1
			] 
			.EVENTOS
			(
				( "IA_CHANGE_STATE" )
			) 
			.ACCIONES
			(
				( "IF" ( "CMP_OP_ACTITUD" ( "GET_ACTITUD" ( "BICHO" 5 ) ) ( "OP_BOOLEAN" 0 ) ( "ACTITUD" "ALERTA" ) ) )
				( "TRIGGER_OFF" ( "TRIGGER" 4 ) )
				( "PLAY_ANMBDD" ( "BICHO" 6 ) ( "ANM_BDD" 2028 ) )
				( "ENDIF" )
			) 
		]
		[
			.ID 7
			.NOMBRE "lock doors"
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
				( "PUERTA_BLOQUEAR" ( "BICHO" 7 ) ( "BOOL" "TRUE" ) )
				( "PUERTA_BLOQUEAR" ( "BICHO" 8 ) ( "BOOL" "TRUE" ) )
				( "SET_CONTEXTUAL" ( "BICHO" 7 ) ( "BOOL" "FALSE" ) )
				( "SET_CONTEXTUAL" ( "BICHO" 8 ) ( "BOOL" "FALSE" ) )
			) 
		]
		[
			.ID 8
			.NOMBRE "phone"
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
				( "HABILITAR_GHOST" ( "BICHO" 20 ) ( "BOOL" "TRUE" ) )
				( "BICHO_SET_CONTEXT_LABEL" ( "BICHO" 20 ) ( "FLI" "0003" ) )
			) 
		]
		[
			.ID 9
			.NOMBRE "phonecall"
			.CARPETA "DEBUG"
			.FLAGS
			[
				.TRIGGER 1
				.ENABLED 1
				.VALIDO 1
			] 
			.EVENTOS
			(
				( "EVT_GHOST_USADO" )
			) 
			.CONDICIONES
			(
				( "CMP_OP_BICHO" ( "EVT_BICHO2" ) ( "OP_BOOLEAN" 0 ) ( "BICHO" 20 ) )
			)
			.ACCIONES
			(
				( "DESTRUIR_BICHO" ( "BICHO" 20 ) )
				( "CONTINUE" ( "PLAY_SONIDOID_BICHO_CICLOS" ( "SONIDO_BDD" 542 ) ( "BICHO" 21 ) ( "NUMERO" 3.0 ) ( "NUMERO" -2.0 ) ) )
				( "PAUSE" ( "NUMERO" 7.0 ) )
				( "TRIGGER_OFF" ( "TRIGGER" 3 ) )
				( "IR_A_PATHPOINT" ( "BICHO" 4 ) ( "PATHPOINT" 1 4 ) ( "BOOL" "TRUE" ) )
				( "GIRA_ANM_HASTA_ANGULO" ( "BICHO" 4 ) ( "ANGULO_A_BICHO" ( "BICHO" 4 ) ( "BICHO" 21 ) ) ( "BOOL" "FALSE" ) )
				( "SET_MINIMAPA_BICHO" ( "BICHO" 4 ) ( "NUMERO" 2.0 ) ( "NUMERO" 5.0 ) ( "NUMERO" 1.0 ) )
				( "CONTINUE" ( "TRIGGER_EXE" ( "TRIGGER" 13 ) ) )
				( "PLAY_ANMBDD" ( "BICHO" 4 ) ( "ANM_BDD" 1515 ) )
				( "IR_A_PATHPOINT" ( "BICHO" 4 ) ( "PATHPOINT" 1 3 ) ( "BOOL" "TRUE" ) )
				( "TRIGGER_ON" ( "TRIGGER" 3 ) )
				( "TRIGGER_EXE" ( "TRIGGER" 3 ) )
			) 
		]
		[
			.ID 10
			.NOMBRE "FINAL_CTRL_Travelling1"
			.CARPETA "FINAL_CTRL_CUTSCENE"
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
				( "CREATE_VIEWPOINT" ( "DUMMY" 1 ) ( "BICHO" 22 ) ( "BICHO" 23 ) ( "NUMERO" 0.0 ) )
				( "CUTSCENE_NO_INTERACTIVA" ( "BOOL" "TRUE" ) )
				( "PLAYER_TERCERA" ( "BOOL" "TRUE" ) )
				( "SET_INVISIBLE" ( "BICHO" 1 ) ( "BOOL" "TRUE" ) )
				( "SUBTITULO" ( "FLI" "0004" ) ( "NUMERO" 4.0 ) )
				( "CAMARA_EN_DUMMY" ( "DUMMY" 1 ) )
				( "SET_WANTED_VEL" ( "BICHO" 22 ) ( "NUMERO" 120.0 ) )
				( "CONTINUE" ( "IR_A_PATHPOINT" ( "BICHO" 22 ) ( "PATHPOINT" 2 2 ) ) )
				( "PAUSE" ( "NUMERO" 6.0 ) )
				( "CONTINUE" ( "TRIGGER_EXE" ( "TRIGGER" 4 ) ) )
				( "SET_WANTED_VEL" ( "BICHO" 22 ) ( "NUMERO" 50.0 ) )
				( "SET_POSICION" ( "BICHO" 22 ) ( "PATHPOINT" 2 4 ) )
				( "SET_POSICION" ( "BICHO" 23 ) ( "PATHPOINT" 2 6 ) )
				( "CONTINUE" ( "IR_A_PATHPOINT" ( "BICHO" 22 ) ( "PATHPOINT" 2 5 ) ) )
				( "PAUSE" ( "NUMERO" 5.1 ) )
				( "CONTINUE" ( "TRIGGER_EXE" ( "TRIGGER" 12 ) ) )
				( "SET_WANTED_VEL" ( "BICHO" 22 ) ( "NUMERO" 30.0 ) )
				( "SET_WANTED_VEL" ( "BICHO" 23 ) ( "NUMERO" 25.0 ) )
				( "SET_POSICION" ( "BICHO" 22 ) ( "PATHPOINT" 2 9 ) )
				( "SET_POSICION" ( "BICHO" 23 ) ( "PATHPOINT" 2 7 ) )
				( "CONTINUE" ( "IR_A_PATHPOINT" ( "BICHO" 22 ) ( "PATHPOINT" 2 10 ) ) )
				( "CONTINUE" ( "IR_A_PATHPOINT" ( "BICHO" 23 ) ( "PATHPOINT" 2 8 ) ) )
				( "PAUSE" ( "NUMERO" 7.5 ) )
				( "CUTSCENE_NO_INTERACTIVA" ( "BOOL" "FALSE" ) )
				( "PLAYER_TERCERA" ( "BOOL" "FALSE" ) )
				( "CONTINUE" ( "TRIGGER_EXE" ( "TRIGGER" 3 ) ) )
				( "SET_INVISIBLE" ( "BICHO" 1 ) ( "BOOL" "FALSE" ) )
			) 
		]
		[
			.ID 11
			.NOMBRE "FX1"
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
				( "CONTINUE" ( "PLAY_SONIDOID" ( "SONIDO_BDD" 1785 ) ( "NUMERO" 0.0 ) ( "NUMERO" -2.0 ) ) )
				( "FX_FADE" ( "NUMERO" 0.0 ) ( "BOOL" "TRUE" ) ( "VECTOR" 0.0 0.0 0.0 ) )
				( "PAUSE" ( "NUMERO" 0.1 ) )
				( "FX_FADE" ( "NUMERO" 3.0 ) ( "BOOL" "FALSE" ) ( "VECTOR" 0.0 0.0 0.0 ) )
				( "PAUSE" ( "NUMERO" 5.0 ) )
				( "FX_FADE" ( "NUMERO" 1.0 ) ( "BOOL" "TRUE" ) ( "VECTOR" 0.0 0.0 0.0 ) )
				( "PAUSE" ( "NUMERO" 1.0 ) )
				( "FX_FADE" ( "NUMERO" 1.0 ) ( "BOOL" "FALSE" ) ( "VECTOR" 0.0 0.0 0.0 ) )
				( "PAUSE" ( "NUMERO" 4.0 ) )
				( "FX_FADE" ( "NUMERO" 1.0 ) ( "BOOL" "TRUE" ) ( "VECTOR" 0.0 0.0 0.0 ) )
				( "PAUSE" ( "NUMERO" 1.0 ) )
				( "FX_FADE" ( "NUMERO" 1.0 ) ( "BOOL" "FALSE" ) ( "VECTOR" 0.0 0.0 0.0 ) )
				( "PAUSE" ( "NUMERO" 6.5 ) )
				( "FX_FADE" ( "NUMERO" 1.0 ) ( "BOOL" "TRUE" ) ( "VECTOR" 0.0 0.0 0.0 ) )
				( "PAUSE" ( "NUMERO" 1.0 ) )
				( "FX_FADE" ( "NUMERO" 1.0 ) ( "BOOL" "FALSE" ) ( "VECTOR" 0.0 0.0 0.0 ) )
				( "PAUSE" ( "NUMERO" 2.0 ) )
				( "VENTANA_SHOW" ( "FLI" "0005" ) ( "FLI" "0006" ) ( "FLI" "0007" ) )
			) 
		]
		[
			.ID 12
			.NOMBRE "PrisonerNPC1"
			.CARPETA ""
			.FLAGS
			[
				.TRIGGER 1
				.ENABLED 1
				.VALIDO 1
			] 
			.ACCIONES
			(
				( "PLAY_ANMBDD" ( "BICHO" 24 ) ( "ANM_BDD" 2514 ) )
				( "SET_INVISIBLE" ( "BICHO" 24 ) ( "BOOL" "TRUE" ) )
			) 
		]
		[
			.ID 13
			.NOMBRE "Viewport Distract"
			.CARPETA ""
			.FLAGS
			[
				.TRIGGER 1
				.ENABLED 1
				.VALIDO 1
			] 
			.ACCIONES
			(
				( "VIEWPORT_CREATE" ( "NUMERO" 1.0 ) ( "VECTOR" 0.7 0.25 0.0 ) ( "VECTOR" 0.925 0.475 0.0 ) )
				( "VIEWPORT_CAM_SETPOS" ( "NUMERO" 1.0 ) ( "DUMMY" 461 ) ( "DUMMY" 462 ) )
				( "VIEWPORT_CAM_SETFOV" ( "NUMERO" 1.0 ) ( "NUMERO" 70.0 ) )
				( "VIEWPORT_SETICON" ( "NUMERO" 1.0 ) ( "NUMERO" 2.0 ) )
				( "VIEWPORT_SHOW" ( "NUMERO" 1.0 ) ( "BOOL" "TRUE" ) )
				( "PAUSE" ( "NUMERO" 9.0 ) )
				( "VIEWPORT_SHOW" ( "NUMERO" 1.0 ) ( "BOOL" "FALSE" ) )
			) 
		]
		[
			.ID 14
			.NOMBRE "Wire"
			.CARPETA ""
			.FLAGS
			[
				.TRIGGER 1
				.ENABLED 1
				.VALIDO 1
			] 
			.EVENTOS
			(
				( "OBJETO_COGIDO" )
			) 
			.ACCIONES
			(
				( "IF" ( "CMP_OP_BICHO" ( "EVT_BICHO1" ) ( "OP_BOOLEAN" 0 ) ( "BICHO" 25 ) ) )
				( "SELECT_ARMA" ( "BICHO" 1 ) ( "GET_ARMA_SECUNDARIA" ( "BICHO" 1 ) ) )
				( "ENDIF" )
			) 
		]
	) 
	.POOL
	(
	) 
] 
