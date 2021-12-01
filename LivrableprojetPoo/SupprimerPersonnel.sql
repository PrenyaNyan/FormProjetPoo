/*Supprimer un Personnel*/
CREATE PROCEDURE DelPersonnel
as
go
alter PROCEDURE DelPersonnel
@IDPersonnel int
AS
declare @InfoPerso TABLE (IDPersonnel int,IDAdresse int);
insert into @InfoPerso values ((select IDPersonnel from Personnel where IDPersonnel=@IDPersonnel),(select IDAdresse from Personnel where IDPersonnel=@IDPersonnel))
Update Personnel
set IDPersonnel_AvoirUnPatron = NULL 
where IDPersonnel_AvoirUnPatron = @IDPersonnel;
Delete Personnel
where IDPersonnel = @IDPersonnel;
Delete Adresse
where IDAdresse in (select IDAdresse from @InfoPerso);
go