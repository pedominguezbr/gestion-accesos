CREATE PROCEDURE up_AplicacionAutorizanteHistorico_Buscar
(
	@IdAplicacion int,
	@IdAutorizante int
)
AS
	SET NOCOUNT ON

SELECT     ApHisto.IdHistorico, ApHisto.IdAplicacion, ApHisto.IdAutorizante, ApHisto.Accion, ApHisto.FechaModificacion, ApHisto.UsuarioModificacion, 
                      Apl.NombreAplicacion, per.IdPersona, per.Nombres, per.ApePaterno, per.ApeMaterno, per.DocumentoIdentidad, per.Correo
FROM         AplicacionAutorizanteHistorico AS ApHisto INNER JOIN
                      Aplicacion AS Apl ON ApHisto.IdAplicacion = Apl.IdAplicacion INNER JOIN
                      Autorizante AS Auto ON ApHisto.IdAutorizante = Auto.IdAutorizante INNER JOIN
                      Persona AS per ON Auto.IdPersona = per.IdPersona
WHERE (@IdAplicacion =-1 or ApHisto.IdAplicacion = @IdAplicacion) and
(@IdAutorizante =-1 or ApHisto.IdAutorizante = @IdAutorizante) 
ORDER BY ApHisto.IdAplicacion
	RETURN @@Error
GO