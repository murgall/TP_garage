{PROGRAMME :	GARAGE_AUTOMOBILE
BUT : Ce programme permet d'afficher plusieurs fonctionnalités de deux garages distincts
ENTREE : l'information entrée par l'utilisateur
SORTIE : le resultat de la recherche
 

TYPE adresse=ENREGISTREMENT
	Num : ENTIER
	Voie : CHAINE
	CP : ENTIER
	Ville : CHAINE
	Pays : ENTIER
	Tel : ENTIER
	Email : CHAINE
FINENREGISTREMENT

TYPE MARQUE=(A,B,C,D,E)

TYPE ENERGIE=(Essence,Diesel,GPL,Electrique,Hybride)

TYPE
	tgarage=TABLEAU[1..2] de adresse



Procedure GARAGE

VAR
	i,j,NBvehicule: ENTIER
	nom : CHAINE
	symbole : ENTIER
DEBUT
	rue<-""
	symbole<-0
	POUR i ALLANT DE 1 A 2 FAIRE
		ECRIRE ("Veuillez entrer le nom du garage : ",i)
		LIRE nom
		ECRIRE ("Veuillez entrer le numéro de la rue")
		LIRE (tgarage[i].Num)
		ECRIRE ("Veuillez entrer le nom de la rue")
		LIRE (tgarage[i].Voie)	
		ECRIRE ("Veuillez entrer le code postal de la rue")
		LIRE (tgarage[i].CP)
		ECRIRE ("Veuillez entrer la ville du garage")
		LIRE (tgarage[i].Ville)
		ECRIRE ("Veuillez entrer le pays du garage")
		LIRE (tgarage[i].Pays)
		ECRIRE ("Veuillez entrer le numéro de téléphone de la garage")
		LIRE (tgarage[i].Tel)
		SI (LONGUEUR(CHAINE(tgarage[i].Tel))<>10) ALORS
			REPETER
				ECRIRE("saisie incorrect,veuillez recommencer")
				LIRE (tgarage[i].Tel)
			JUSQU'A (LONGUEUR(CHAINE(tgarage[i].Tel))=10)
		FINSI
		ECRIRE("Veuillez entrer l'email du garage")
		LIRE (tgarage[i].Email)
		POUR j ALLANT de 1 A LONGUEUR(tgarage[i].Email) FAIRE
			SI (CARACTERE(tgarage[i].Email)="@") ALORS
				symbole<-symbole+1
			FINSI
			SI symbole<>1 ALORS
				REPETER
					ECRIRE("saisie incorrect,veuillez recommencer")
					LIRE (tgarage[i].Email)
				JUSQU'A symbole=1
			FINSI
		FINPOUR
		ECRIRE ("Veuillez entrer le nombre de voiture(6 minimum et 15 maximum)")
		LIRE (NBvehicule)
		SI (NBvehicule<6) OU (Nbvehicule>15) ALORS
			REPETER
			ECRIRE("Veuillez recommencer la saisie")
			LIRE(NBvehicule)
			JUSQU'A (NBvehicule<15) ET (NBvehicule>6)
		FINSI




VAR
	Choix : ENTIER

DEBUT
	ECRIRE("Debut du programme")
	GARAGE
FIN.


























}