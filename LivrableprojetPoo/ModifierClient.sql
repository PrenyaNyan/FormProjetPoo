/*Modifier Client*/
Update Client 
set NomClient = '', PrenomClient = '', DateDeNaissanceClient =''
where IDClient = '';
Update Habiter
set TypeAdresse = ''
where IDClient = '';
Update Adresse
set NumeroRue = '',NomRue = '',IDVille = ''
where IDAdresse = (Select IDAdresse from Habiter where IDClient = '')