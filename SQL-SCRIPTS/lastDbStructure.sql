USE [BancoV2]
GO
/****** Object:  Table [dbo].[Dim_Cliente]    Script Date: 2/8/2022 12:00:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dim_Cliente](
	[DW_id_cliente] [int] IDENTITY(1,1) NOT NULL,
	[NroCliente] [int] NULL,
	[Actividad] [nvarchar](255) NULL,
	[Apellido] [nvarchar](255) NULL,
	[Nombre] [nvarchar](18) NULL,
	[Sexo] [nvarchar](255) NULL,
	[Email] [nvarchar](40) NULL,
	[FechaNacimiento] [datetime] NULL,
	[NroCuentaCliente] [bigint] NOT NULL,
	[SectorEconomico] [nvarchar](20) NULL,
	[CondicionIVA] [nvarchar](10) NOT NULL,
	[Tipo] [nvarchar](1) NOT NULL,
	[Segmento] [nvarchar](20) NULL,
	[TipoDocumento] [nvarchar](10) NOT NULL,
	[NroDocumento] [nvarchar](8) NOT NULL,
	[Cuit] [nvarchar](15) NULL,
	[Telefono] [nvarchar](10) NULL,
	[CuentaCobro] [nvarchar](40) NOT NULL,
	[SituacionMoraBanco] [nvarchar](40) NOT NULL,
	[SituacionMoraSF] [nvarchar](40) NOT NULL,
 CONSTRAINT [PK9] PRIMARY KEY NONCLUSTERED 
(
	[DW_id_cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dim_Domicilio]    Script Date: 2/8/2022 12:00:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dim_Domicilio](
	[DW_id_domicilio] [int] IDENTITY(1,1) NOT NULL,
	[DW_id_cliente] [int] NOT NULL,
	[DW_id_localidad] [int] NOT NULL,
	[NroCliente] [int] NULL,
	[VigenciaHasta] [datetime] NULL,
	[Calle] [nvarchar](50) NULL,
	[VigenciaDesde] [datetime] NOT NULL,
	[Puerta] [nvarchar](10) NULL,
	[Piso] [int] NULL,
	[Departamento] [nvarchar](2) NULL,
	[Provincia] [nvarchar](20) NULL,
	[Localidad] [nvarchar](50) NULL,
 CONSTRAINT [PK16] PRIMARY KEY NONCLUSTERED 
(
	[DW_id_domicilio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dim_LineasDePrestamos]    Script Date: 2/8/2022 12:00:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dim_LineasDePrestamos](
	[DW_id_linea] [int] IDENTITY(1,1) NOT NULL,
	[NroLinea] [int] NOT NULL,
	[Plazo] [int] NOT NULL,
	[MontoMaximo] [float] NOT NULL,
	[Canal] [nvarchar](50) NULL,
	[TasaInteres] [float] NOT NULL,
	[TasaDesde] [datetime] NOT NULL,
	[TasaHasta] [datetime] NULL,
	[Descripcion] [nvarchar](100) NULL,
 CONSTRAINT [PK11] PRIMARY KEY NONCLUSTERED 
(
	[DW_id_linea] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dim_Localidad]    Script Date: 2/8/2022 12:00:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dim_Localidad](
	[DW_id_localidad] [int] IDENTITY(1,1) NOT NULL,
	[NombreLocalidad] [nvarchar](60) NULL,
	[CodigoPostal] [int] NULL,
	[NroLocalidad] [int] NOT NULL,
 CONSTRAINT [PK15] PRIMARY KEY NONCLUSTERED 
(
	[DW_id_localidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dim_Sucursal]    Script Date: 2/8/2022 12:00:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dim_Sucursal](
	[DW_id_sucursal] [int] IDENTITY(1,1) NOT NULL,
	[DW_id_localidad] [int] NOT NULL,
	[NombreSucursal] [nvarchar](255) NULL,
	[NroLocalidad] [int] NULL,
	[NumeroSucursal] [int] NOT NULL,
 CONSTRAINT [PK2] PRIMARY KEY NONCLUSTERED 
(
	[DW_id_sucursal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dim_Tiempo]    Script Date: 2/8/2022 12:00:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dim_Tiempo](
	[DW_id_fecha] [int] IDENTITY(1,1) NOT NULL,
	[FechaKey] [int] NOT NULL,
	[Fecha] [datetime] NULL,
	[DiaNro] [int] NULL,
	[MesNro] [int] NULL,
	[AnioNro] [int] NULL,
	[TrimestreNro] [int] NULL,
	[CuatrimestreNro] [int] NULL,
	[SemestreNro] [int] NULL,
	[SemanaNro] [int] NULL,
 CONSTRAINT [PK19] PRIMARY KEY NONCLUSTERED 
(
	[DW_id_fecha] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fact_Prestamos]    Script Date: 2/8/2022 12:00:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fact_Prestamos](
	[DW_id_sucursal] [int] NOT NULL,
	[DW_id_linea] [int] NOT NULL,
	[DW_id_fecha] [int] NOT NULL,
	[DW_id_cliente] [int] NOT NULL,
	[MontoAdeudado] [float] NULL,
	[CantidadCuotas] [int] NULL,
	[MontoTotalPagado] [float] NULL,
	[InteresMoratorio] [float] NULL,
	[InteresPunitorio] [float] NULL,
	[InteresCompensatorio] [float] NULL,
	[DiasAtraso] [int] NULL,
	[MontoPrestado] [float] NULL,
 CONSTRAINT [PK1] PRIMARY KEY NONCLUSTERED 
(
	[DW_id_sucursal] ASC,
	[DW_id_linea] ASC,
	[DW_id_fecha] ASC,
	[DW_id_cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Dim_Cliente]  WITH CHECK ADD  CONSTRAINT [RefDim_Cliente30] FOREIGN KEY([DW_id_cliente])
REFERENCES [dbo].[Dim_Cliente] ([DW_id_cliente])
GO
ALTER TABLE [dbo].[Dim_Cliente] CHECK CONSTRAINT [RefDim_Cliente30]
GO
ALTER TABLE [dbo].[Dim_Domicilio]  WITH CHECK ADD  CONSTRAINT [FK_Cliente_30] FOREIGN KEY([DW_id_cliente])
REFERENCES [dbo].[Dim_Cliente] ([DW_id_cliente])
GO
ALTER TABLE [dbo].[Dim_Domicilio] CHECK CONSTRAINT [FK_Cliente_30]
GO
ALTER TABLE [dbo].[Dim_Domicilio]  WITH CHECK ADD  CONSTRAINT [RefDim_Domicilio30] FOREIGN KEY([DW_id_localidad])
REFERENCES [dbo].[Dim_Localidad] ([DW_id_localidad])
GO
ALTER TABLE [dbo].[Dim_Domicilio] CHECK CONSTRAINT [RefDim_Domicilio30]
GO
ALTER TABLE [dbo].[Dim_Sucursal]  WITH CHECK ADD  CONSTRAINT [RefDim_Localidad30] FOREIGN KEY([DW_id_localidad])
REFERENCES [dbo].[Dim_Localidad] ([DW_id_localidad])
GO
ALTER TABLE [dbo].[Dim_Sucursal] CHECK CONSTRAINT [RefDim_Localidad30]
GO
ALTER TABLE [dbo].[Fact_Prestamos]  WITH CHECK ADD  CONSTRAINT [RefDim_Cliente26] FOREIGN KEY([DW_id_cliente])
REFERENCES [dbo].[Dim_Cliente] ([DW_id_cliente])
GO
ALTER TABLE [dbo].[Fact_Prestamos] CHECK CONSTRAINT [RefDim_Cliente26]
GO
ALTER TABLE [dbo].[Fact_Prestamos]  WITH CHECK ADD  CONSTRAINT [RefDim_LineasDePrestamos27] FOREIGN KEY([DW_id_linea])
REFERENCES [dbo].[Dim_LineasDePrestamos] ([DW_id_linea])
GO
ALTER TABLE [dbo].[Fact_Prestamos] CHECK CONSTRAINT [RefDim_LineasDePrestamos27]
GO
ALTER TABLE [dbo].[Fact_Prestamos]  WITH CHECK ADD  CONSTRAINT [RefDim_Sucursal8] FOREIGN KEY([DW_id_sucursal])
REFERENCES [dbo].[Dim_Sucursal] ([DW_id_sucursal])
GO
ALTER TABLE [dbo].[Fact_Prestamos] CHECK CONSTRAINT [RefDim_Sucursal8]
GO
ALTER TABLE [dbo].[Fact_Prestamos]  WITH CHECK ADD  CONSTRAINT [RefDim_Tiempo42] FOREIGN KEY([DW_id_fecha])
REFERENCES [dbo].[Dim_Tiempo] ([DW_id_fecha])
GO
ALTER TABLE [dbo].[Fact_Prestamos] CHECK CONSTRAINT [RefDim_Tiempo42]
GO
/****** Object:  StoredProcedure [dbo].[sp_create_dim_time]    Script Date: 2/8/2022 12:00:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create procedure [dbo].[sp_create_dim_time] 
as
IF (EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'dbo' AND  TABLE_NAME = 'Dim_Tiempo'))
BEGIN
IF (not exists(select * from Dim_Tiempo) )
BEGIN
--GO
--CREATE TABLE	[dbo].[DimDate]
--	(	[DateKey] INT primary key, 
--		[Date] DATETIME,
--		[FullDate] CHAR(10),-- Date in MM-dd-yyyy format
--		[DayOfMonth] VARCHAR(2), -- Field will hold day number of Month
--		[DayName] VARCHAR(9), -- Contains name of the day, Sunday, Monday 
--		[DayOfWeek] CHAR(1),-- First Day Sunday=1 and Saturday=7
--		[DayOfWeekInMonth] VARCHAR(2), --1st Monday or 2nd Monday in Month
--		[DayOfWeekInYear] VARCHAR(2),
--		[DayOfQuarter] VARCHAR(3),
--		[DayOfYear] VARCHAR(3),
--		[WeekOfMonth] VARCHAR(1),-- Week Number of Month 
--		[WeekOfQuarter] VARCHAR(2), --Week Number of the Quarter
--		[WeekOfYear] VARCHAR(2),--Week Number of the Year
--		[Month] VARCHAR(2), --Number of the Month 1 to 12
--		[MonthName] VARCHAR(9),--January, February etc
--		[MonthOfQuarter] VARCHAR(2),-- Month Number belongs to Quarter
--		[Quarter] CHAR(1),
--		[QuarterName] VARCHAR(9),--First,Second..
--		[Year] CHAR(4),-- Year value of Date stored in Row
--		[YearName] CHAR(7), --CY 2012,CY 2013
--		[MonthYear] CHAR(10), --Jan-2013,Feb-2013
--		[MMYYYY] CHAR(6),
--		[FirstDayOfMonth] DATE,
--		[LastDayOfMonth] DATE,
--		[FirstDayOfQuarter] DATE,
--		[LastDayOfQuarter] DATE,
--		[FirstDayOfYear] DATE,
--		[LastDayOfYear] DATE
--	)
--GO
/********************************************************************************************/
--Specify Start Date and End date here
--Value of Start Date Must be Less than Your End Date 

DECLARE @StartDate DATETIME = '2010-01-01' --Starting value of Date Range
DECLARE @EndDate DATETIME = '2030-01-01' --End Value of Date Range

--Temporary Variables To Hold the Values During Processing of Each Date of Year
DECLARE
	@DayOfWeekInMonth INT,
	@DayOfWeekInYear INT,
	@DayOfQuarter INT,
	@WeekOfMonth INT,
	@CurrentYear INT,
	@CurrentMonth INT,
	@CurrentQuarter INT

/*Table Data type to store the day of week count for the month and year*/
DECLARE @DayOfWeek TABLE (DOW INT, MonthCount INT, QuarterCount INT, YearCount INT)

INSERT INTO @DayOfWeek VALUES (1, 0, 0, 0)
INSERT INTO @DayOfWeek VALUES (2, 0, 0, 0)
INSERT INTO @DayOfWeek VALUES (3, 0, 0, 0)
INSERT INTO @DayOfWeek VALUES (4, 0, 0, 0)
INSERT INTO @DayOfWeek VALUES (5, 0, 0, 0)
INSERT INTO @DayOfWeek VALUES (6, 0, 0, 0)
INSERT INTO @DayOfWeek VALUES (7, 0, 0, 0)

--Extract and assign various parts of Values from Current Date to Variable

DECLARE @CurrentDate AS DATETIME = @StartDate
SET @CurrentMonth = DATEPART(MM, @CurrentDate)
SET @CurrentYear = DATEPART(YY, @CurrentDate)
SET @CurrentQuarter = DATEPART(QQ, @CurrentDate)

/********************************************************************************************/
--Proceed only if Start Date(Current date ) is less than End date you specified above

WHILE @CurrentDate < @EndDate
BEGIN
 
/*Begin day of week logic*/

         /*Check for Change in Month of the Current date if Month changed then 
          Change variable value*/
	IF @CurrentMonth != DATEPART(MM, @CurrentDate) 
	BEGIN
		UPDATE @DayOfWeek
		SET MonthCount = 0
		SET @CurrentMonth = DATEPART(MM, @CurrentDate)
	END

        /* Check for Change in Quarter of the Current date if Quarter changed then change 
         Variable value*/

	IF @CurrentQuarter != DATEPART(QQ, @CurrentDate)
	BEGIN
		UPDATE @DayOfWeek
		SET QuarterCount = 0
		SET @CurrentQuarter = DATEPART(QQ, @CurrentDate)
	END
       
        /* Check for Change in Year of the Current date if Year changed then change 
         Variable value*/
	

	IF @CurrentYear != DATEPART(YY, @CurrentDate)
	BEGIN
		UPDATE @DayOfWeek
		SET YearCount = 0
		SET @CurrentYear = DATEPART(YY, @CurrentDate)
	END
	
        -- Set values in table data type created above from variables 

	UPDATE @DayOfWeek
	SET 
		MonthCount = MonthCount + 1,
		QuarterCount = QuarterCount + 1,
		YearCount = YearCount + 1
	WHERE DOW = DATEPART(DW, @CurrentDate)

	SELECT
		@DayOfWeekInMonth = MonthCount,
		@DayOfQuarter = QuarterCount,
		@DayOfWeekInYear = YearCount
	FROM @DayOfWeek
	WHERE DOW = DATEPART(DW, @CurrentDate)
	
/*End day of week logic*/


/* Populate Your Dimension Table with values*/
	
	INSERT INTO [dbo].[Dim_Tiempo]
	SELECT
		
		CONVERT (char(8),@CurrentDate,112) as FechaKey,
		--@CurrentDate AS Date,
		CONVERT (char(10),@CurrentDate,101) as Fecha,
		DATEPART(DAY, @CurrentDate) DiaNro,
		--DATEPART(DD, @CurrentDate) AS DayOfMonth,
		--DATENAME(DW, @CurrentDate) AS DayName,
		--DATEPART(DW, @CurrentDate) AS DayOfWeek,
		--@DayOfWeekInMonth AS DayOfWeekInMonth,
		--@DayOfWeekInYear AS DayOfWeekInYear,
		--@DayOfQuarter AS DayOfQuarter,
		--DATEPART(DY, @CurrentDate) AS DayOfYear,
		--DATEPART(WW, @CurrentDate) + 1 - DATEPART(WW, CONVERT(VARCHAR, 
		--DATEPART(MM, @CurrentDate)) + '/1/' + CONVERT(VARCHAR,
		--DATEPART(YY, @CurrentDate))) AS WeekOfMonth,
		--(DATEDIFF(DD, DATEADD(QQ, DATEDIFF(QQ, 0, @CurrentDate), 0), 
		--@CurrentDate) / 7) + 1 AS WeekOfQuarter,
		DATEPART(MM, @CurrentDate) AS MesNro,
		DATEPART(YEAR, @CurrentDate) AS AnioNro,
		--DATEPART(WW, @CurrentDate) AS TrimestreNro,
		--DATENAME(MM, @CurrentDate) AS MonthName,
		--CASE
		--	WHEN DATEPART(MM, @CurrentDate) IN (1, 4, 7, 10) THEN 1
		--	WHEN DATEPART(MM, @CurrentDate) IN (2, 5, 8, 11) THEN 2
		--	WHEN DATEPART(MM, @CurrentDate) IN (3, 6, 9, 12) THEN 3
		--	END AS MonthOfQuarter,
		null as TrimestreNro,
		DATEPART(QQ, @CurrentDate) AS CuatrimestreNro,
		null as SemestreNro,
		--CASE DATEPART(QQ, @CurrentDate)
		--	WHEN 1 THEN 'First'
		--	WHEN 2 THEN 'Second'
		--	WHEN 3 THEN 'Third'
		--	WHEN 4 THEN 'Fourth'
		--	END AS QuarterName,
		--'CY ' + CONVERT(VARCHAR, DATEPART(YEAR, @CurrentDate)) AS YearName,
		--LEFT(DATENAME(MM, @CurrentDate), 3) + '-' + CONVERT(VARCHAR, 
		--DATEPART(YY, @CurrentDate)) AS MonthYear,
		--RIGHT('0' + CONVERT(VARCHAR, DATEPART(MM, @CurrentDate)),2) + 
		--CONVERT(VARCHAR, DATEPART(YY, @CurrentDate)) AS MMYYYY,
		--CONVERT(DATETIME, CONVERT(DATE, DATEADD(DD, - (DATEPART(DD, 
		--@CurrentDate) - 1), @CurrentDate))) AS FirstDayOfMonth,
		--CONVERT(DATETIME, CONVERT(DATE, DATEADD(DD, - (DATEPART(DD,
		--(DATEADD(MM, 1, @CurrentDate)))), DATEADD(MM, 1,
		--@CurrentDate)))) AS LastDayOfMonth,
		--DATEADD(QQ, DATEDIFF(QQ, 0, @CurrentDate), 0) AS FirstDayOfQuarter,
		--DATEADD(QQ, DATEDIFF(QQ, -1, @CurrentDate), -1) AS LastDayOfQuarter,
		--CONVERT(DATETIME, '01/01/' + CONVERT(VARCHAR, DATEPART(YY, 
		--@CurrentDate))) AS FirstDayOfYear,
		--CONVERT(DATETIME, '12/31/' + CONVERT(VARCHAR, DATEPART(YY, 
		--@CurrentDate))) AS LastDayOfYear
		    DATENAME(Week,   @CurrentDate) as SemanaNro


	SET @CurrentDate = DATEADD(DD, 1, @CurrentDate)
END
END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_update_dim_cliente]    Script Date: 2/8/2022 12:00:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_update_dim_cliente] 
										@nrocliente int,
										@actividad nvarchar(50),
										@apellido nvarchar(50),
										@nombre nvarchar(50),
										@sexo nvarchar(50),
										@email nvarchar(40),
										@fechanac date,
										@nrocuentacliente bigint,
										@sectoreconomico nvarchar(20),
										@condicioniva nvarchar(10),
										@tipo nvarchar(1),
										@segmento nvarchar(20),
										@tipodocumento nvarchar(10),
										@nrodocumento nvarchar(8),
										@cuit nvarchar(13),
										@telefono nvarchar(10),
										@cuentacobro nvarchar(40),
										@situacionmorabanco int,
										@situacionmorasf int
as
	update dbo.Dim_Cliente 
	set 
		NroCliente = @nrocliente,
		Actividad = @actividad,
		Apellido = @apellido,
		Nombre = @nombre,
		Sexo = @sexo,
		Email = @email,
		FechaNacimiento = @fechanac,
		NroCuentaCliente = @nrocuentacliente,
		SectorEconomico = @sectoreconomico,
		CondicionIVA = @condicioniva,
		Tipo = @tipo,
		Segmento = @segmento,
		TipoDocumento = @tipodocumento,
		NroDocumento = @nrodocumento,
		Cuit = @cuit,
		Telefono = @telefono,
		CuentaCobro = @cuentacobro,
		SituacionMoraBanco = @situacionmorabanco,
		SituacionMoraSF = @situacionmorasf
	where NroDocumento = @nrodocumento and Cuit = @cuit
GO
