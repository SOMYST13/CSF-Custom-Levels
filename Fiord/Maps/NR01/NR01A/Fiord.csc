[
	.SCRIPTS
	(
		[
			.ID 1
			.NOMBRE "CUTSCENE_Inicio"
			.CARPETA ""
			.FLAGS
			[
				.TRIGGER 1
				.ENABLED 1
				.VALIDO 1
			] 
			.ACCIONES
			(
				( "CAMARA_EN_DUMMY" ( "DUMMY" 336 ) )     
			) 
		]
		[
			.ID 2
			.NOMBRE "CUTSCENE_Kms"
			.CARPETA ""
			.FLAGS
			[
				.TRIGGER 1
				.ENABLED 1
				.VALIDO 1
			] 
			.ACCIONES
			(
				( "CAMARA_EN_DUMMY" ( "DUMMY" 337 ) )     
			) 
		]
		[
			.ID 3
			.NOMBRE "CUTSCENE_Stealth"
			.CARPETA ""
			.FLAGS
			[
				.TRIGGER 1
				.ENABLED 1
				.VALIDO 1
			] 
			.ACCIONES
			(
				( "CREATE_VIEWPOINT" ( "DUMMY" 338 ) ( "BICHO" 8 ) ( "BICHO" 9 ) ( "NUMERO" 0.7 ) ) 
				( "CAMARA_EN_DUMMY" ( "DUMMY" 338 ) )
				( "TRIGGER_EXE" ( "TRIGGER" 21 ) )
			) 
		]
		[
			.ID 4
			.NOMBRE "CUTSCENE_Stealth2"
			.CARPETA ""
			.FLAGS
			[
				.TRIGGER 1
				.ENABLED 1
				.VALIDO 1
			] 
			.ACCIONES
			(
				( "CREATE_VIEWPOINT" ( "DUMMY" 339 ) ( "BICHO" 10 ) ( "BICHO" 11 ) ( "NUMERO" 0.7 ) ) 
				( "CAMARA_EN_DUMMY" ( "DUMMY" 339 ) )
				( "PAUSE" ( "NUMERO" 3.0 ) )
				( "CAMARA_EN_DUMMY" ( "DUMMY" 340 ) )
				( "PAUSE" ( "NUMERO" 8.0 ) )
				( "FX_FADE" ( "NUMERO" 1.0 ) ( "BOOL" "TRUE" ) ( "VECTOR" 0.0 0.0 0.0 ) )
				( "PAUSE" ( "NUMERO" 1.0 ) )
				( "FX_FADE" ( "NUMERO" 1.0 ) ( "BOOL" "FALSE" ) ( "VECTOR" 0.0 0.0 0.0 ) )
			) 
		]
	) 
	.POOL
	(
	) 
] 
