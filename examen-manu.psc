
//Funcion menu
Funcion opc=menu
	escribir"Bienvenido a la gestion de estudiantes"
	Escribir " "
	Escribir "1.Asignar 3 notas a cada estudiante."
	Escribir " "
	Escribir "2.Regristrar el numero de inasistencias de cada estudiante"
	Escribir " "
	Escribir "3.Mostrar el listado de estudiantes "
	Escribir " "
	Escribir "4.Calcular nota final "
	Escribir " "
	Escribir "0.Salir "
        EScrbir "Ingrese la opcion que desee: "
	leer opc

Fin Funcion
//Funcion regristro
Funcion registrar(dbalumnos,i,j ,dbcodigos)

		para i<-1 Hasta 10 Hacer
			Escribir "Ingrese el codigo de el alumno ",i
			leer codigo
			dbcodigos[i,1]=codigo
		FinPara

		Para i<-1 Hasta 10 Hacer
			Escribir "Ingrese el nombre de el alumno ",i
			leer nombres
			dbalumnos[i,1]=nombres
		FinPara
		
Fin Funcion

//funcion de asignacion de notas
Funcion asignar (dbalumnos,i,j,dbnotas)
	para j<-1 Hasta 10 Con Paso 1 Hacer
		Escribir "Ingrese la primer nota: "
		leer nota1
		dbnotas[j,1]=nota1
		Escribir "Ingrese la segunda nota: "
		leer nota2
		dbnotas[j,2]=nota2
		Escribir "Ingrese la tercer nota: "
		leer nota3
		dbnotas[j,3]=nota3
		nota="El alumno: "+dbalumnos[j,1] +"con notas: "+dbnotas[j,1] +" "+dbnotas[j,2] +" "+dbnotas[j,3]
		Escribir nota
	FinPara
	
Fin Funcion
//Funcion de inasistencias
Funcion Inasistencias( dbalumnos,i,j,dbinasistencias)
	para j<-1 hasta 10 con paso 1 Hacer
		Escribir "Ingrese las inasistencias del estudiante: "
		leer ina
		dbinasistencias[j,1]=ina
		poner<-"El alumno: "+dbalumnos[j,1]+"cuanto con "+dbinasistencias[j,1] +" inasistencias "
		Escribir poner
	FinPara
	
Fin Funcion
//Funcion listado
Funcion listado ( dbalumnos,dbcodigos,i,dbnotas,dbinasistencias,total)
	para i<-1 Hasta 10 hacer
		Escribir "Los alumnos: ",dbalumnos[i,1] , "Con codigo: " , dbcodigos[i,1]  , "con notas parciales de: ", dbnotas[i,1] , dbnotas[i,2], dbnotas[i,3] , "Inasistencias: " , dbinasistencias[i,1] , "con nota final de: ", total
	FinPara
	
Fin Funcion
//Calculo nota final
Funcion Nota_final(dbnotas,dbalumnos,dbinasistencias)
	para i<-1 hasta 10 hacer
		dbnotas[i,1]=not1
		dbnotas[i,2]=not2
		dbnotas[i,3]=not3
		dbinasistencias[i,1]=numeroIni
		Promedio_aritmetico=not1+not2+not3
		si numeroIni>10 y numeroIni<15 Entonces
			total=Promedio_aritmetico-0.5
		FinSi
		si numeroIni>=15 Entonces
			total=Promedio_aritmetico-1
		FinSi
    FinPara

Fin Funcion

Algoritmo alumnos
	//creacion de matrices y definir tipo de dato
	Dimensionar dbcodigos[10,1]
	Dimensionar dbalumnos[10,1]
	dimensionar dbnotas[10,3]
	dimensionar dbinasistencias[10,1]
	Definir not1 Como Entero
	Definir not2 Como Entero
	definir not3 Como Entero
	Definir i Como Entero
	Definir nota1 Como Entero
	Definir numeroIni Como Entero
	Definir eleccion Como Caracter
	Escribir "Registro de alumnos"
	Escribir " "
	registrar(dbalumnos,i,j ,dbcodigos)
	Repetir
		opc=menu
		Segun opc Hacer
			1:
				Escribir "Asignacion de notas"
				asignar(dbalumnos,i,j,dbnotas)
			2:
				Escribir "Regristro de inasistencias"
				Inasistencias( dbalumnos,i,j,dbinasistencias)
			3:
				Escribir "Listado de estudiantes"
				listado(dbalumnos,dbcodigos,i,dbnotas,dbinasistencias,total)
				
			4:
				Escribir "Nota final chamo "
				Nota_final(dbnotas,dbalumnos,dbinasistencias)
				
			0:
				Escribir "Saliendo"
		Fin Segun
	Hasta Que opc=0
	
FinAlgoritmo
