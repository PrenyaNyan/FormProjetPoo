UPDATE Personnel
   SET NomPersonnel = 'Pereon', 
       PrenomPersonnel = 'Alexandre', 
       DateDeNaissancePersonnel = '08/08/2002',
       DateEmbauchePersonnel = '01/01/2020'
 WHERE IDPersonnel = 2;

 Update Adresse
    set NomRue = 'La riviere',
        NumeroRue = 1,
        IDVille = 1
    where IDAdresse = (Select Adresse.IDAdresse from Adresse inner join Personnel on Adresse.IDAdresse=Personnel.IDAdresse where IDPersonnel = 2)