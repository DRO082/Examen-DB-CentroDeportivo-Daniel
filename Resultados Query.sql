-- Prueba Reto 1: Buscar Reserva por ID
EXEC sp_BuscarReserva @id_reserva = 1;
GO

-- Prueba Reto 2: Total de Reservas registradas (OUTPUT)
DECLARE @CantReservas INT;
EXEC sp_TotalReservas @total_reservas = @CantReservas OUTPUT;
SELECT @CantReservas AS TotalReservasRegistradas;
GO

-- Prueba Reto 3: Recaudo por Cancha (INPUT + OUTPUT)
DECLARE @RecaudoCancha DECIMAL(10,2);
EXEC sp_CalcularRecaudo @id_cancha = 1, @total_recaudo = @RecaudoCancha OUTPUT;
SELECT @RecaudoCancha AS TotalRecaudoCancha1;
GO