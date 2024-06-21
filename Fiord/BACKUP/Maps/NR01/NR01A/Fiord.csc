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
				(
					"CUTSCENE_EXE"
					(
						"CUTSCENE"
						2
					) 
				) 
				(
					"CONTINUE"
					(
						"CUTSCENE_EXE"
						(
							"CUTSCENE"
							65
						) 
					) 
				) 
				(
					"CUTSCENE_EXE"
					(
						"CUTSCENE"
						3
					) 
				) 
			) 
		] 
		[
			.ID 2
			.NOMBRE "CUTSCENE_InicioINIT"
			.CARPETA ""
			.FLAGS
			[
				.TRIGGER 1
				.ENABLED 1
				.VALIDO 1
			] 
		] 
		[
			.ID 3
			.NOMBRE "CUTSCENE_InicioEND"
			.CARPETA ""
			.FLAGS
			[
				.TRIGGER 1
				.ENABLED 1
				.VALIDO 1
			] 
			.ACCIONES
			(
				(
					"WAIT_CONDICION"
					(
						"CUTSCENE_FINISHED"
						(
							"CUTSCENE"
							65
						) 
					) 
				) 
			) 
		] 
		[
			.ID 7
			.NOMBRE "CUTSCENE_Fin_Puerto"
			.CARPETA ""
			.FLAGS
			[
				.TRIGGER 1
				.ENABLED 1
				.VALIDO 1
			] 
			.ACCIONES
			(
				(
					"CUTSCENE_EXE"
					(
						"CUTSCENE"
						8
					) 
				) 
				(
					"CONTINUE"
					(
						"CUTSCENE_EXE"
						(
							"CUTSCENE"
							66
						) 
					) 
				) 
				(
					"CUTSCENE_EXE"
					(
						"CUTSCENE"
						9
					) 
				) 
			) 
		] 
		[
			.ID 8
			.NOMBRE "CUTSCENE_Fin_PuertoINIT"
			.CARPETA ""
			.FLAGS
			[
				.TRIGGER 1
				.ENABLED 1
				.VALIDO 1
			] 
		] 
		[
			.ID 9
			.NOMBRE "CUTSCENE_Fin_PuertoEND"
			.CARPETA ""
			.FLAGS
			[
				.TRIGGER 1
				.ENABLED 1
				.VALIDO 1
			] 
			.ACCIONES
			(
				(
					"WAIT_CONDICION"
					(
						"CUTSCENE_FINISHED"
						(
							"CUTSCENE"
							66
						) 
					) 
				) 
			) 
		] 
		[
			.ID 21
			.NOMBRE "CUTSCENE_Inicio_Vuelo"
			.CARPETA ""
			.FLAGS
			[
				.TRIGGER 1
				.ENABLED 1
				.VALIDO 1
			] 
			.ACCIONES
			(
				(
					"CUTSCENE_EXE"
					(
						"CUTSCENE"
						22
					) 
				) 
				(
					"CONTINUE"
					(
						"CUTSCENE_EXE"
						(
							"CUTSCENE"
							56
						) 
					) 
				) 
				(
					"CUTSCENE_EXE"
					(
						"CUTSCENE"
						23
					) 
				) 
			) 
		] 
		[
			.ID 22
			.NOMBRE "CUTSCENE_Inicio_VueloINIT"
			.CARPETA ""
			.FLAGS
			[
				.TRIGGER 1
				.ENABLED 1
				.VALIDO 1
			] 
		] 
		[
			.ID 23
			.NOMBRE "CUTSCENE_Inicio_VueloEND"
			.CARPETA ""
			.FLAGS
			[
				.TRIGGER 1
				.ENABLED 1
				.VALIDO 1
			] 
			.ACCIONES
			(
				(
					"WAIT_CONDICION"
					(
						"CUTSCENE_FINISHED"
						(
							"CUTSCENE"
							56
						) 
					) 
				) 
			) 
		] 
		[
			.ID 51
			.NOMBRE "CUTSCENE_Camiones"
			.CARPETA ""
			.FLAGS
			[
				.TRIGGER 1
				.ENABLED 1
				.VALIDO 1
			] 
			.ACCIONES
			(
				(
					"CUTSCENE_EXE"
					(
						"CUTSCENE"
						52
					) 
				) 
				(
					"CONTINUE"
					(
						"CUTSCENE_EXE"
						(
							"CUTSCENE"
							64
						) 
					) 
				) 
				(
					"CUTSCENE_EXE"
					(
						"CUTSCENE"
						53
					) 
				) 
			) 
		] 
		[
			.ID 52
			.NOMBRE "CUTSCENE_CamionesINIT"
			.CARPETA ""
			.FLAGS
			[
				.TRIGGER 1
				.ENABLED 1
				.VALIDO 1
			] 
		] 
		[
			.ID 53
			.NOMBRE "CUTSCENE_CamionesEND"
			.CARPETA ""
			.FLAGS
			[
				.TRIGGER 1
				.ENABLED 1
				.VALIDO 1
			] 
			.ACCIONES
			(
				(
					"WAIT_CONDICION"
					(
						"CUTSCENE_FINISHED"
						(
							"CUTSCENE"
							64
						) 
					) 
				) 
			) 
		] 
		[
			.ID 56
			.NOMBRE "CUTSCENE_Inicio_Vuelo_GENERAL_Cámara"
			.CARPETA ""
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
						0.01
					) 
				) 
				(
					"CAMARA_EN_DUMMY"
					(
						"DUMMY"
						65
					) 
				) 
				(
					"CAM_SETFILTRO"
					(
						"CADENA"
						"<NINGUNO>"
					) 
				) 
			) 
		] 
		[
			.ID 64
			.NOMBRE "CUTSCENE_Camiones_GENERAL_Cámara"
			.CARPETA ""
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
						0.01
					) 
				) 
				(
					"CAMARA_EN_DUMMY"
					(
						"DUMMY"
						72
					) 
				) 
				(
					"CAM_SETFILTRO"
					(
						"CADENA"
						"<NINGUNO>"
					) 
				) 
				(
					"PAUSE"
					(
						"NUMERO"
						11.830005
					) 
				) 
				(
					"PAUSE"
					(
						"NUMERO"
						0.01
					) 
				) 
				(
					"CAMARA_EN_DUMMY"
					(
						"DUMMY"
						66
					) 
				) 
				(
					"CAM_SETFILTRO"
					(
						"CADENA"
						"<NINGUNO>"
					) 
				) 
				(
					"PAUSE"
					(
						"NUMERO"
						3.839995
					) 
				) 
				(
					"PAUSE"
					(
						"NUMERO"
						0.01
					) 
				) 
				(
					"CAMARA_EN_DUMMY"
					(
						"DUMMY"
						67
					) 
				) 
				(
					"CAM_SETFILTRO"
					(
						"CADENA"
						"<NINGUNO>"
					) 
				) 
				(
					"PAUSE"
					(
						"NUMERO"
						3.73
					) 
				) 
				(
					"PAUSE"
					(
						"NUMERO"
						0.01
					) 
				) 
				(
					"CAMARA_EN_DUMMY"
					(
						"DUMMY"
						69
					) 
				) 
				(
					"CAM_SETFILTRO"
					(
						"CADENA"
						"<NINGUNO>"
					) 
				) 
				(
					"PAUSE"
					(
						"NUMERO"
						1.799999
					) 
				) 
				(
					"PAUSE"
					(
						"NUMERO"
						0.01
					) 
				) 
				(
					"CAMARA_EN_DUMMY"
					(
						"DUMMY"
						70
					) 
				) 
				(
					"CAM_SETFILTRO"
					(
						"CADENA"
						"<NINGUNO>"
					) 
				) 
			) 
		] 
		[
			.ID 65
			.NOMBRE "CUTSCENE_Inicio_GENERAL_Cámara"
			.CARPETA ""
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
						0.01
					) 
				) 
				(
					"CAMARA_EN_DUMMY"
					(
						"DUMMY"
						38
					) 
				) 
				(
					"CAM_SETFILTRO"
					(
						"CADENA"
						"<NINGUNO>"
					) 
				) 
				(
					"PAUSE"
					(
						"NUMERO"
						9.810002
					) 
				) 
				(
					"PAUSE"
					(
						"NUMERO"
						0.01
					) 
				) 
				(
					"CAMARA_EN_DUMMY"
					(
						"DUMMY"
						39
					) 
				) 
				(
					"CAM_SETFILTRO"
					(
						"CADENA"
						"<NINGUNO>"
					) 
				) 
				(
					"PAUSE"
					(
						"NUMERO"
						2.78
					) 
				) 
				(
					"PAUSE"
					(
						"NUMERO"
						0.01
					) 
				) 
				(
					"CAMARA_EN_DUMMY"
					(
						"DUMMY"
						38
					) 
				) 
				(
					"CAM_SETFILTRO"
					(
						"CADENA"
						"<NINGUNO>"
					) 
				) 
				(
					"PAUSE"
					(
						"NUMERO"
						5.8
					) 
				) 
				(
					"PAUSE"
					(
						"NUMERO"
						0.01
					) 
				) 
				(
					"CAMARA_EN_DUMMY"
					(
						"DUMMY"
						39
					) 
				) 
			) 
		] 
		[
			.ID 66
			.NOMBRE "CUTSCENE_Fin_Puerto_GENERAL_Cámara"
			.CARPETA ""
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
						0.01
					) 
				) 
				(
					"CAMARA_EN_DUMMY"
					(
						"DUMMY"
						45
					) 
				) 
				(
					"PAUSE"
					(
						"NUMERO"
						13.83
					) 
				) 
				(
					"PAUSE"
					(
						"NUMERO"
						0.01
					) 
				) 
				(
					"CAMARA_EN_DUMMY"
					(
						"DUMMY"
						46
					) 
				) 
				(
					"PAUSE"
					(
						"NUMERO"
						8.82
					) 
				) 
				(
					"PAUSE"
					(
						"NUMERO"
						0.01
					) 
				) 
				(
					"CAMARA_EN_DUMMY"
					(
						"DUMMY"
						47
					) 
				) 
				(
					"PAUSE"
					(
						"NUMERO"
						6.549999
					) 
				) 
				(
					"PAUSE"
					(
						"NUMERO"
						0.01
					) 
				) 
				(
					"CAMARA_EN_DUMMY"
					(
						"DUMMY"
						48
					) 
				) 
				(
					"PAUSE"
					(
						"NUMERO"
						2.549999
					) 
				) 
				(
					"PAUSE"
					(
						"NUMERO"
						0.01
					) 
				) 
				(
					"CAMARA_EN_DUMMY"
					(
						"DUMMY"
						47
					) 
				) 
				(
					"PAUSE"
					(
						"NUMERO"
						4.260002
					) 
				) 
				(
					"PAUSE"
					(
						"NUMERO"
						0.01
					) 
				) 
				(
					"CAMARA_EN_DUMMY"
					(
						"DUMMY"
						48
					) 
				) 
				(
					"PAUSE"
					(
						"NUMERO"
						8.789997
					) 
				) 
				(
					"PAUSE"
					(
						"NUMERO"
						0.01
					) 
				) 
				(
					"CAMARA_EN_DUMMY"
					(
						"DUMMY"
						48
					) 
				) 
				(
					"CAM_SETFILTRO"
					(
						"CADENA"
						"<NINGUNO>"
					) 
				) 
			) 
		] 
	) 
	.POOL
	(
	) 
] 
