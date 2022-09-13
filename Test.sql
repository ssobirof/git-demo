USE [master]
GO
/****** Object:  Database [ReportingA1_DEV]    Script Date: 30/08/2022 11:39:36 ******/
CREATE DATABASE [ReportingA1_DEV]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Reporting', FILENAME = N'F:\DATA\Reporting_Dev.mdf' , SIZE = 30617600KB , MAXSIZE = 76800000KB , FILEGROWTH = 1024000KB )
 LOG ON 
( NAME = N'Reporting_log', FILENAME = N'G:\LOG\Reporting_1_Dev.ldf' , SIZE = 8537600KB , MAXSIZE = 30720000KB , FILEGROWTH = 512000KB )
GO
ALTER DATABASE [ReportingA1_DEV] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ReportingA1_DEV].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ReportingA1_DEV] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ReportingA1_DEV] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ReportingA1_DEV] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ReportingA1_DEV] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ReportingA1_DEV] SET ARITHABORT OFF 
GO
ALTER DATABASE [ReportingA1_DEV] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ReportingA1_DEV] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ReportingA1_DEV] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ReportingA1_DEV] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ReportingA1_DEV] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ReportingA1_DEV] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ReportingA1_DEV] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ReportingA1_DEV] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ReportingA1_DEV] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ReportingA1_DEV] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ReportingA1_DEV] SET AUTO_UPDATE_STATISTICS_ASYNC ON 
GO
ALTER DATABASE [ReportingA1_DEV] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ReportingA1_DEV] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ReportingA1_DEV] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ReportingA1_DEV] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ReportingA1_DEV] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ReportingA1_DEV] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ReportingA1_DEV] SET RECOVERY FULL 
GO
ALTER DATABASE [ReportingA1_DEV] SET  MULTI_USER 
GO
ALTER DATABASE [ReportingA1_DEV] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ReportingA1_DEV] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ReportingA1_DEV] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ReportingA1_DEV] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [ReportingA1_DEV] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'ReportingA1_DEV', N'ON'
GO
ALTER DATABASE [ReportingA1_DEV] SET QUERY_STORE = OFF
GO
USE [ReportingA1_DEV]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [ReportingA1_DEV]
GO
/****** Object:  User [pbi_gateway]    Script Date: 30/08/2022 11:39:36 ******/
CREATE USER [pbi_gateway] FOR LOGIN [pbi_gateway] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [AD\Zain.Rana]    Script Date: 30/08/2022 11:39:36 ******/
CREATE USER [AD\Zain.Rana] FOR LOGIN [AD\Zain.Rana] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [AD\yvonne.harvey]    Script Date: 30/08/2022 11:39:36 ******/
CREATE USER [AD\yvonne.harvey] FOR LOGIN [AD\yvonne.harvey] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [AD\weronika.nycz]    Script Date: 30/08/2022 11:39:36 ******/
CREATE USER [AD\weronika.nycz] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [AD\Vidmantas.Marge]    Script Date: 30/08/2022 11:39:36 ******/
CREATE USER [AD\Vidmantas.Marge] FOR LOGIN [AD\Vidmantas.Marge] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [AD\temitope.reffell]    Script Date: 30/08/2022 11:39:36 ******/
CREATE USER [AD\temitope.reffell] FOR LOGIN [AD\temitope.reffell] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [AD\Tauseef.Tariq]    Script Date: 30/08/2022 11:39:36 ******/
CREATE USER [AD\Tauseef.Tariq] FOR LOGIN [AD\Tauseef.Tariq] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [AD\Tasian.Mattos]    Script Date: 30/08/2022 11:39:36 ******/
CREATE USER [AD\Tasian.Mattos] FOR LOGIN [AD\Tasian.Mattos] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [AD\sirojiddin.sobirov-s]    Script Date: 30/08/2022 11:39:36 ******/
CREATE USER [AD\sirojiddin.sobirov-s] FOR LOGIN [AD\sirojiddin.sobirov-s] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [AD\Simon.Wiggins]    Script Date: 30/08/2022 11:39:36 ******/
CREATE USER [AD\Simon.Wiggins] FOR LOGIN [ad\Simon.Wiggins] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [ad\Sharron.Green]    Script Date: 30/08/2022 11:39:36 ******/
CREATE USER [ad\Sharron.Green] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [ad\Sanjay.Patel]    Script Date: 30/08/2022 11:39:36 ******/
CREATE USER [ad\Sanjay.Patel] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [AD\Richard.Breakspeare]    Script Date: 30/08/2022 11:39:36 ******/
CREATE USER [AD\Richard.Breakspeare] FOR LOGIN [AD\Richard.Breakspeare] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [AD\Richard.Break-s]    Script Date: 30/08/2022 11:39:36 ******/
CREATE USER [AD\Richard.Break-s] FOR LOGIN [AD\Richard.Break-s] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [AD\rdrew]    Script Date: 30/08/2022 11:39:36 ******/
CREATE USER [AD\rdrew] FOR LOGIN [AD\rdrew] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [ad\Rajesh.Shah]    Script Date: 30/08/2022 11:39:36 ******/
CREATE USER [ad\Rajesh.Shah] FOR LOGIN [ad\Rajesh.Shah] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [ad\rahad.miah]    Script Date: 30/08/2022 11:39:36 ******/
CREATE USER [ad\rahad.miah] FOR LOGIN [ad\rahad.miah] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [AD\r_isaac]    Script Date: 30/08/2022 11:39:36 ******/
CREATE USER [AD\r_isaac] FOR LOGIN [AD\r_isaac] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [AD\p_legg]    Script Date: 30/08/2022 11:39:36 ******/
CREATE USER [AD\p_legg] FOR LOGIN [AD\p_legg] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [ad\Nicholas.Williamson]    Script Date: 30/08/2022 11:39:36 ******/
CREATE USER [ad\Nicholas.Williamson] FOR LOGIN [ad\Nicholas.Williamson] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [AD\Neil.Charles]    Script Date: 30/08/2022 11:39:36 ******/
CREATE USER [AD\Neil.Charles] FOR LOGIN [AD\Neil.Charles] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [AD\Nathan.Pennington]    Script Date: 30/08/2022 11:39:36 ******/
CREATE USER [AD\Nathan.Pennington] FOR LOGIN [AD\Nathan.Pennington] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [ad\Natasha.Jay]    Script Date: 30/08/2022 11:39:36 ******/
CREATE USER [ad\Natasha.Jay] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [AD\naomi.hancock]    Script Date: 30/08/2022 11:39:36 ******/
CREATE USER [AD\naomi.hancock] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [AD\Martin.Spurr]    Script Date: 30/08/2022 11:39:36 ******/
CREATE USER [AD\Martin.Spurr] FOR LOGIN [AD\Martin.Spurr] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [AD\MarshA]    Script Date: 30/08/2022 11:39:36 ******/
CREATE USER [AD\MarshA] FOR LOGIN [AD\MarshA] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [AD\Maria.Strom-s]    Script Date: 30/08/2022 11:39:36 ******/
CREATE USER [AD\Maria.Strom-s] FOR LOGIN [AD\Maria.Strom-s] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [ad\Manjit.Juttla]    Script Date: 30/08/2022 11:39:36 ******/
CREATE USER [ad\Manjit.Juttla] FOR LOGIN [AD\Manjit.Juttla] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [ad\leo.bernard]    Script Date: 30/08/2022 11:39:36 ******/
CREATE USER [ad\leo.bernard] FOR LOGIN [ad\leo.bernard] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [ad\Ketan.Bhardwa]    Script Date: 30/08/2022 11:39:36 ******/
CREATE USER [ad\Ketan.Bhardwa] FOR LOGIN [AD\Ketan.Bhardwa] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [AD\jonathan.carter]    Script Date: 30/08/2022 11:39:36 ******/
CREATE USER [AD\jonathan.carter] FOR LOGIN [AD\jonathan.carter] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [ad\James.Giordmaina]    Script Date: 30/08/2022 11:39:36 ******/
CREATE USER [ad\James.Giordmaina] FOR LOGIN [AD\James.Giordmaina] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [ad\james.dekock]    Script Date: 30/08/2022 11:39:36 ******/
CREATE USER [ad\james.dekock] FOR LOGIN [ad\james.dekock] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [AD\james.clare]    Script Date: 30/08/2022 11:39:36 ******/
CREATE USER [AD\james.clare] FOR LOGIN [AD\james.clare] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [AD\J_Powell]    Script Date: 30/08/2022 11:39:36 ******/
CREATE USER [AD\J_Powell] FOR LOGIN [AD\J_Powell] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [AD\GreeneH]    Script Date: 30/08/2022 11:39:36 ******/
CREATE USER [AD\GreeneH] FOR LOGIN [AD\GreeneH] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [AD\Glenn.Lee]    Script Date: 30/08/2022 11:39:36 ******/
CREATE USER [AD\Glenn.Lee] FOR LOGIN [AD\Glenn.Lee] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [AD\Femi.Ogun]    Script Date: 30/08/2022 11:39:36 ******/
CREATE USER [AD\Femi.Ogun] FOR LOGIN [AD\Femi.Ogun] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [AD\Emma.Papworth]    Script Date: 30/08/2022 11:39:36 ******/
CREATE USER [AD\Emma.Papworth] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [AD\Denis.Nikulin-s]    Script Date: 30/08/2022 11:39:36 ******/
CREATE USER [AD\Denis.Nikulin-s] FOR LOGIN [AD\Denis.Nikulin-s] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [AD\David.Henderson]    Script Date: 30/08/2022 11:39:36 ******/
CREATE USER [AD\David.Henderson] FOR LOGIN [AD\David.Henderson] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [AD\Coby.Armstrong]    Script Date: 30/08/2022 11:39:36 ******/
CREATE USER [AD\Coby.Armstrong] FOR LOGIN [AD\Coby.Armstrong] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [AD\chris.lei]    Script Date: 30/08/2022 11:39:36 ******/
CREATE USER [AD\chris.lei] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [AD\Charlie.Cleaver]    Script Date: 30/08/2022 11:39:36 ******/
CREATE USER [AD\Charlie.Cleaver] FOR LOGIN [AD\Charlie.Cleaver] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [AD\Aryna.Kandra-s]    Script Date: 30/08/2022 11:39:36 ******/
CREATE USER [AD\Aryna.Kandra-s] FOR LOGIN [AD\Aryna.Kandra-s] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [AD\Andy.Cabirdassou]    Script Date: 30/08/2022 11:39:36 ******/
CREATE USER [AD\Andy.Cabirdassou] FOR LOGIN [AD\Andy.Cabirdassou] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [AD\Andrei.Antonchenko-s]    Script Date: 30/08/2022 11:39:36 ******/
CREATE USER [AD\Andrei.Antonchenko-s] FOR LOGIN [AD\Andrei.Antonchenko-s] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [AD\Anastasiia.Hry-s]    Script Date: 30/08/2022 11:39:36 ******/
CREATE USER [AD\Anastasiia.Hry-s] FOR LOGIN [AD\Anastasiia.Hry-s] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [ad\Amarjit.Kundan]    Script Date: 30/08/2022 11:39:36 ******/
CREATE USER [ad\Amarjit.Kundan] FOR LOGIN [AD\Amarjit.Kundan] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [AD\_PSCMCM.Omniscope.sv]    Script Date: 30/08/2022 11:39:36 ******/
CREATE USER [AD\_PSCMCM.Omniscope.sv] FOR LOGIN [AD\_PSCMCM.Omniscope.sv] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  DatabaseRole [Media_Role]    Script Date: 30/08/2022 11:39:37 ******/
CREATE ROLE [Media_Role]
GO
/****** Object:  DatabaseRole [Hyperion_Role]    Script Date: 30/08/2022 11:39:37 ******/
CREATE ROLE [Hyperion_Role]
GO
/****** Object:  DatabaseRole [db_execproc]    Script Date: 30/08/2022 11:39:37 ******/
CREATE ROLE [db_execproc]
GO
/****** Object:  DatabaseRole [Account_Role]    Script Date: 30/08/2022 11:39:37 ******/
CREATE ROLE [Account_Role]
GO
ALTER ROLE [Media_Role] ADD MEMBER [AD\Zain.Rana]
GO
ALTER ROLE [Hyperion_Role] ADD MEMBER [AD\Tasian.Mattos]
GO
ALTER ROLE [db_owner] ADD MEMBER [AD\sirojiddin.sobirov-s]
GO
ALTER ROLE [Media_Role] ADD MEMBER [AD\Simon.Wiggins]
GO
ALTER ROLE [Media_Role] ADD MEMBER [AD\Richard.Breakspeare]
GO
ALTER ROLE [Media_Role] ADD MEMBER [AD\Richard.Break-s]
GO
ALTER ROLE [db_owner] ADD MEMBER [AD\rdrew]
GO
ALTER ROLE [Media_Role] ADD MEMBER [ad\Rajesh.Shah]
GO
ALTER ROLE [Media_Role] ADD MEMBER [ad\rahad.miah]
GO
ALTER ROLE [Media_Role] ADD MEMBER [AD\r_isaac]
GO
ALTER ROLE [Media_Role] ADD MEMBER [AD\p_legg]
GO
ALTER ROLE [Media_Role] ADD MEMBER [ad\Nicholas.Williamson]
GO
ALTER ROLE [Media_Role] ADD MEMBER [AD\Neil.Charles]
GO
ALTER ROLE [db_owner] ADD MEMBER [AD\Nathan.Pennington]
GO
ALTER ROLE [Media_Role] ADD MEMBER [AD\Martin.Spurr]
GO
ALTER ROLE [Hyperion_Role] ADD MEMBER [AD\MarshA]
GO
ALTER ROLE [db_datareader] ADD MEMBER [AD\Maria.Strom-s]
GO
ALTER ROLE [Media_Role] ADD MEMBER [ad\leo.bernard]
GO
ALTER ROLE [db_datareader] ADD MEMBER [AD\jonathan.carter]
GO
ALTER ROLE [Media_Role] ADD MEMBER [ad\james.dekock]
GO
ALTER ROLE [db_owner] ADD MEMBER [AD\J_Powell]
GO
ALTER ROLE [Media_Role] ADD MEMBER [AD\GreeneH]
GO
ALTER ROLE [db_owner] ADD MEMBER [AD\Denis.Nikulin-s]
GO
ALTER ROLE [Media_Role] ADD MEMBER [AD\David.Henderson]
GO
ALTER ROLE [Media_Role] ADD MEMBER [AD\chris.lei]
GO
ALTER ROLE [Media_Role] ADD MEMBER [AD\Charlie.Cleaver]
GO
ALTER ROLE [db_datareader] ADD MEMBER [AD\Aryna.Kandra-s]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [AD\Aryna.Kandra-s]
GO
ALTER ROLE [Media_Role] ADD MEMBER [AD\Andy.Cabirdassou]
GO
ALTER ROLE [db_owner] ADD MEMBER [AD\Andrei.Antonchenko-s]
GO
ALTER ROLE [db_owner] ADD MEMBER [AD\Anastasiia.Hry-s]
GO
/****** Object:  Schema [AccountA1]    Script Date: 30/08/2022 11:39:39 ******/
CREATE SCHEMA [AccountA1]
GO
/****** Object:  Schema [HarpPlusA1]    Script Date: 30/08/2022 11:39:39 ******/
CREATE SCHEMA [HarpPlusA1]
GO
/****** Object:  Schema [MediaA1]    Script Date: 30/08/2022 11:39:39 ******/
CREATE SCHEMA [MediaA1]
GO
/****** Object:  UserDefinedFunction [dbo].[MoneySpotAudience]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[MoneySpotAudience]
  (@comment as char(80)) RETURNS int
AS
-- created RD 20200209
-- retrieve audience from buy comment
BEGIN

DECLARE @audience int;
DECLARE @pos tinyint;
DECLARE @start tinyint;

SET @pos = 1;
SELECT
    @pos = charindex(',', @comment, @pos); -- start of second field

SET @pos = @pos + 1;
SELECT
    @pos = charindex(',', @comment, @pos); -- start of spotlength

SET @pos = @pos + 1;
SELECT
    @pos = charindex(',', @comment, @pos); -- start of audience

SET @start = @pos + 1;
SET @pos = charindex(',', @comment, @start);

SELECT
    @audience = substring(@comment, @start, @pos - @start); -- audience

RETURN @audience;

END
GO
/****** Object:  UserDefinedFunction [dbo].[MoneySpotAudience3]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[MoneySpotAudience3]
  (@comment as char(80)) RETURNS int
AS
-- created RD 20200209
-- retrieve audience3 from buy comment
BEGIN

DECLARE @audience int;
DECLARE @pos tinyint;
DECLARE @start tinyint;

SET @pos = 1;
SELECT
    @pos = charindex(',', @comment, @pos); -- start of second field

SET @pos = @pos + 1;
SELECT
    @pos = charindex(',', @comment, @pos); -- start of spotlength

SET @pos = @pos + 1;
SELECT
    @pos = charindex(',', @comment, @pos); -- start of audience

SET @pos = @pos + 1;
SELECT
    @pos = charindex(',', @comment, @pos); -- start of audience3

SET @start = @pos + 1;
SET @pos = charindex(',', @comment, @start);

SELECT
    @audience = substring(@comment, @start, @pos - @start); -- audience3

RETURN @audience;

END
GO
/****** Object:  UserDefinedFunction [dbo].[MoneySpotLength]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE FUNCTION [dbo].[MoneySpotLength]
  (@comment as char(80)) RETURNS int
AS
BEGIN

DECLARE @spotlength int;
DECLARE @pos tinyint;
DECLARE @start tinyint;

SET @pos = 1;
SELECT
    @pos = charindex(',', @comment, @pos); -- start of second field

SET @pos = @pos + 1;
SELECT
    @pos = charindex(',', @comment, @pos); -- start of spotlength
SET @start = @pos + 1;

IF charindex('/', @comment, @start) <> 0
    SET @pos = charindex('/', @comment, @start);
ELSE
    SET @pos = charindex(',', @comment, @start);
SELECT
    @spotlength = substring(@comment, @start, @pos - @start); -- spotlength

RETURN @spotlength;

END
GO
/****** Object:  UserDefinedFunction [dbo].[r_HarpBeat_Log]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[r_HarpBeat_Log] (@start_date smalldatetime, @end_date smalldatetime)
RETURNS @harpbeat_log TABLE
(
	SDTSorting datetime,
	PlannedDate char(8),
	PlannedTime varchar(32),
	ProcessName varchar(32),
	StartDate char(8),
	StartTime char(6),
	EndDate char(8),
	EndTime char(6),
	[Duration (Mins)] smallint
)

AS

-- RD created 20200420

BEGIN

SET @end_date = dateadd(dd, 1, @end_date); -- Add one day to @enddate to include in results - has 00:00 hours and minutes so is seen as less than records for that day

INSERT INTO @harpbeat_log
	(
		SDTSorting,
		PlannedDate,
		PlannedTime,
		ProcessName,
		StartDate,
		StartTime,
		Enddate,
		EndTime,
		[Duration (Mins)]
	)
	SELECT
		StartDateTime,
		ProcessParm1,
		ProcessParm2,
		ProcessName,
		format(StartDateTime, 'yyyyMMdd'),
		format(StartDateTime, 'hhmmss'),
		format(EndDatetime, 'yyyyMMdd'),
		format(EndDatetime, 'hhmmss'),
		Duration AS [Duration (Mins)]
	FROM dbo.HarpBeat_Log
	GROUP BY
		StartDateTime,
		ProcessParm1,
		ProcessParm2,
		ProcessName,
		StartDateTime,
		StartDateTime,
		EndDatetime,
		EndDatetime,
		Duration
	HAVING StartDateTime BETWEEN @start_date AND @end_date;

RETURN

END

GO
/****** Object:  UserDefinedFunction [dbo].[ur_PinergySpotLog]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[ur_PinergySpotLog] (@startdate as date, @enddate as date) returns @spotlog table
(
    [Date Sent] char(8),
    [Time Sent] char(6),
    [Sales House] varchar(8),
    [Campaign Code] char(10),
    [Caria Approval] varchar(1),
    [Barb Station Code] char(7),
    [Station Name] varchar(35),
    [Spot Serial Code] char(9),
    [Date Of Transmission] char(8),
    [Time Of Transmission] char(6),
    [Spot Length] smallint,
    [Programme Before] varchar(80),
    [Programme After] varchar(80),
    [Position In Break] varchar(10),
    [Position In Programme] varchar(10),
    [Matched] varchar(1),
    [Film Number] varchar(18),
    [Buying Audience Name] varchar(12),
    [Buying Audience TVR Forecast] decimal(9,2),
    [Buying Audience TVR Actual/Actual] decimal(9,2),
    [Univ] int,
    [Buying Audience 000s Consolidated] int,
    [Special Deal Types] varchar(8),
    [Special Off Deal] varchar(1),
    [Ta2 Name] varchar(12),
    [Ta2 Fst] decimal(9,2),
    [Ta2 Act/Act] decimal(9,2),
    [Ta2 Univ] int,
    [Ta2 000s Cons] int,
    [Ta3 Name] varchar(12),
    [Ta3 Fst] decimal(9,2),
    [Ta3 Act/Act] decimal(9,2),
    [Ta3 Univ] int,
    [Ta3 000s Cons] int,
    [Date Added] char(8),
    [Time Added] char(6),
    [Last Amended Date] char(8),
    [Last Amended Time] char(6),
    [Number Of Amendments] tinyint,
    [Last SQL Table Update Date] char(8),
    [Last SQL Table Update Time] char(6),
    [SQL Update Action] char(1),
    primary key([Spot Serial Code])
)
-- created RD 20200220
-- add primary key RD 20210616
AS
BEGIN

-- RD created 20200201
DECLARE @tv_mediacode tinyint;
SET @tv_mediacode = 0;
 -- mediaocean code for tv
DECLARE @my_suppliers table
(
    SupplierID char(6),
    SupplierName varchar(35),
    BarbCode char(7),
    GroupName varchar(8),
    primary key (SupplierID)
);
DECLARE @my_buys table
(
    MediaCode tinyint not null,
    ClientCode varchar(5),
    ProductCode int not null,
    CampaignCode int not null,
    BuyDate smalldatetime not null,
    BuySerial char(9) not null,
    SupplierID char(6) not null,
    BookedDate smalldatetime not null,
    LastAmendedDate smalldatetime,
    NumberOfAmendments tinyint not null,
    BookedTime datetime,
    LastAmendedTime datetime,
    [Action] char(1),
    primary key (BuySerial)
);
INSERT INTO @my_buys
    SELECT
        MediaCode,
        ClientCode,
        ProductCode,
        CampaignCode,
        BuyDate,
        BuySerial,
        SupplierID,
        BookedDate,
        LastAmendedDate,
        NumberOfAmendments,
        BookedTime,
        LastAmendedTime,
        [Action]
    FROM MediaA1..Buy AS b
    WHERE
        b.BuyDate BETWEEN @startdate AND @enddate
        AND b.MediaCode = @tv_mediacode
        AND b.ClientCode IN (
            SELECT
                ClientCode
            FROM dbo.UserReportClient(2) -- 2 = user report code for pinergy reports
        );

INSERT INTO @my_suppliers
    (
        SupplierID,
        SupplierName,
        BarbCode,
        GroupName
    )
    (
    SELECT
        s.SupplierID,
        s.SupplierName,
        s.BarbCode,
        tas.GroupName
    FROM MediaA1..Supplier AS s
    JOIN MediaA1..TVAreaStation AS tas
        ON s.SupplierID = tas.SupplierID
    WHERE s.MediaCode = @tv_mediacode
    );
INSERT INTO @spotlog
    (
        [Date Sent],
        [Time Sent],
        [Sales House],
        [Campaign Code],
        [Caria Approval],
        [Barb Station Code],
        [Station Name],
        [Spot Serial Code],
        [Date Of Transmission],
        [Time Of Transmission],
        [Spot Length],
        [Programme Before],
        [Programme After],
        [Position In Break],
        [Position In Programme],
        [Matched],
        [Film Number],
        [Buying Audience Name],
        [Buying Audience TVR Forecast],
        [Buying Audience TVR Actual/Actual],
        [Univ],
        [Buying Audience 000s Consolidated],
        [special Deal Types],
        [special Off Deal],
        [Ta2 Name],
        [Ta2 Fst],
        [Ta2 Act/Act],
        [Ta2 Univ],
        [Ta2 000s Cons],
        [Ta3 Name],
        [Ta3 Fst],
        [Ta3 Act/Act],
        [Ta3 Univ],
        [Ta3 000s Cons],
        [Date Added],
        [Time Added],
        [Last Amended Date],
        [Last Amended Time],
        [Number Of Amendments],
        [Last SQL Table Update Date],
        [Last SQL Table Update Time],
        [SQL Update Action]
    )
    SELECT
        format(b.BookedDate, 'ddMMyyyy'),
        format(b.BookedTime, 'HHmmss'),
        ms.GroupName,
        rtrim(b.ClientCode) + '|' + format(b.ProductCode, '00') + '|' + format(b.campaigncode, '000'),
        '',
        ms.BarbCode,
        ms.SupplierName,
        bt.BuySerial,
        bt.TransmissionDate,
        bt.TransmissionTime,
        bt.Spotlength,
        bt.SaleshouseProgrammeBefore,
        bt.SaleshouseProgrammeAfter,
        bt.PositionInBreak,
        bt.PositionOfBreak,
        bt.MatchedStatus,
        bt.FilmNumber,
        aud.AudienceShortName,
        bt.EstimatedRating,
        bt.ActualRating,
        bt.Universe,
        bt.Impressions,
        bt.SpecialDealTypes,
        bt.SpecialOffdeal,
        aud_2.AudienceShortName,
        bt.EstimatedRating2,
        bt.ActualRating2,
        bt.Universe2,
        bt.Impressions2,
        aud_3.AudienceShortName,
        bt.EstimatedRating3,
        bt.ActualRating3,
        bt.Universe3,
        bt.Impressions3,
        format(b.BookedDate, 'yyyyMMdd'),
        format(b.BookedTime, 'HHmmss'),
        format(b.LastAmendedDate, 'yyyyMMdd'),
        format(b.LastAmendedTime, 'HHmmss'),
        b.NumberOfAmendments,
        format(bt.ActDatetime, 'ddMMyyyy'),
        format(bt.ActDatetime, 'HHmmss'),
        b.[Action]
    FROM @my_buys AS b
        JOIN MediaA1..BuyTV AS bt
            ON b.BuySerial = bt.BuySerial
        JOIN @my_suppliers AS ms
            ON ms.SupplierID = b.SupplierID
        JOIN MediaA1..aud AS aud
            ON bt.AudienceType = aud.AudienceType
            AND bt.AudienceNumber = aud.AudienceNumber
        LEFT JOIN MediaA1..aud AS aud_2
            ON bt.AudienceType2 = aud_2.AudienceType
            AND bt.AudienceNumber2 = aud_2.AudienceNumber
        LEFT JOIN MediaA1..aud AS aud_3
            ON bt.AudienceType3 = aud_3.AudienceType
            AND bt.AudienceNumber3 = aud_3.AudienceNumber;
RETURN
END
GO
/****** Object:  UserDefinedFunction [dbo].[ur_PinergySpotLog_nopk]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE FUNCTION [dbo].[ur_PinergySpotLog_nopk] (@startdate as date, @enddate as date) returns @spotlog table
(
    [Date Sent] char(8),
    [Time Sent] char(6),
    [Sales House] varchar(8),
    [Campaign Code] char(10),
    [Caria Approval] varchar(1),
    [Barb Station Code] char(7),
    [Station Name] varchar(35),
    [Spot Serial Code] char(9),
    [Date Of Transmission] char(8),
    [Time Of Transmission] char(6),
    [Spot Length] smallint,
    [Programme Before] varchar(80),
    [Programme After] varchar(80),
    [Position In Break] varchar(10),
    [Position In Programme] varchar(10),
    [Matched] varchar(1),
    [Film Number] varchar(18),
    [Buying Audience Name] varchar(12),
    [Buying Audience TVR Forecast] decimal(9,2),
    [Buying Audience TVR Actual/Actual] decimal(9,2),
    [Univ] int,
    [Buying Audience 000s Consolidated] int,
    [Special Deal Types] varchar(8),
    [Special Off Deal] varchar(1),
    [Ta2 Name] varchar(12),
    [Ta2 Fst] decimal(9,2),
    [Ta2 Act/Act] decimal(9,2),
    [Ta2 Univ] int,
    [Ta2 000s Cons] int,
    [Ta3 Name] varchar(12),
    [Ta3 Fst] decimal(9,2),
    [Ta3 Act/Act] decimal(9,2),
    [Ta3 Univ] int,
    [Ta3 000s Cons] int,
    [Date Added] char(8),
    [Time Added] char(6),
    [Last Amended Date] char(8),
    [Last Amended Time] char(6),
    [Number Of Amendments] tinyint,
    [Last SQL Table Update Date] char(8),
    [Last SQL Table Update Time] char(6),
    [SQL Update Action] char(1)
)
-- created RD 20200220
-- add primary key RD 20210616
AS
BEGIN

-- RD created 20200201
DECLARE @tv_mediacode tinyint;
SET @tv_mediacode = 0;
 -- mediaocean code for tv
DECLARE @my_suppliers table
(
    SupplierID char(6),
    SupplierName varchar(35),
    BarbCode char(7),
    GroupName varchar(8),
    primary key (SupplierID)
);
DECLARE @my_buys table
(
    MediaCode tinyint not null,
    ClientCode varchar(5),
    ProductCode int not null,
    CampaignCode int not null,
    BuyDate smalldatetime not null,
    BuySerial char(9) not null,
    SupplierID char(6) not null,
    BookedDate smalldatetime not null,
    LastAmendedDate smalldatetime,
    NumberOfAmendments tinyint not null,
    BookedTime datetime,
    LastAmendedTime datetime,
    [Action] char(1),
    primary key (BuySerial)
);
INSERT INTO @my_buys
    SELECT
        MediaCode,
        ClientCode,
        ProductCode,
        CampaignCode,
        BuyDate,
        BuySerial,
        SupplierID,
        BookedDate,
        LastAmendedDate,
        NumberOfAmendments,
        BookedTime,
        LastAmendedTime,
        [Action]
    FROM MediaA1..Buy AS b
    WHERE
        b.BuyDate BETWEEN @startdate AND @enddate
        AND b.MediaCode = @tv_mediacode
        AND b.ClientCode IN (
            SELECT
                ClientCode
            FROM dbo.UserReportClient(2) -- 2 = user report code for pinergy reports
        );

INSERT INTO @my_suppliers
    (
        SupplierID,
        SupplierName,
        BarbCode,
        GroupName
    )
    (
    SELECT
        s.SupplierID,
        s.SupplierName,
        s.BarbCode,
        tas.GroupName
    FROM MediaA1..Supplier AS s
    JOIN MediaA1..TVAreaStation AS tas
        ON s.SupplierID = tas.SupplierID
    WHERE s.MediaCode = @tv_mediacode
    );
INSERT INTO @spotlog
    (
        [Date Sent],
        [Time Sent],
        [Sales House],
        [Campaign Code],
        [Caria Approval],
        [Barb Station Code],
        [Station Name],
        [Spot Serial Code],
        [Date Of Transmission],
        [Time Of Transmission],
        [Spot Length],
        [Programme Before],
        [Programme After],
        [Position In Break],
        [Position In Programme],
        [Matched],
        [Film Number],
        [Buying Audience Name],
        [Buying Audience TVR Forecast],
        [Buying Audience TVR Actual/Actual],
        [Univ],
        [Buying Audience 000s Consolidated],
        [special Deal Types],
        [special Off Deal],
        [Ta2 Name],
        [Ta2 Fst],
        [Ta2 Act/Act],
        [Ta2 Univ],
        [Ta2 000s Cons],
        [Ta3 Name],
        [Ta3 Fst],
        [Ta3 Act/Act],
        [Ta3 Univ],
        [Ta3 000s Cons],
        [Date Added],
        [Time Added],
        [Last Amended Date],
        [Last Amended Time],
        [Number Of Amendments],
        [Last SQL Table Update Date],
        [Last SQL Table Update Time],
        [SQL Update Action]
    )
    SELECT
        format(b.BookedDate, 'ddMMyyyy'),
        format(b.BookedTime, 'HHmmss'),
        ms.GroupName,
        rtrim(b.ClientCode) + '|' + format(b.ProductCode, '00') + '|' + format(b.campaigncode, '000'),
        '',
        ms.BarbCode,
        ms.SupplierName,
        bt.BuySerial,
        bt.TransmissionDate,
        bt.TransmissionTime,
        bt.Spotlength,
        bt.SaleshouseProgrammeBefore,
        bt.SaleshouseProgrammeAfter,
        bt.PositionInBreak,
        bt.PositionOfBreak,
        bt.MatchedStatus,
        bt.FilmNumber,
        aud.AudienceShortName,
        bt.EstimatedRating,
        bt.ActualRating,
        bt.Universe,
        bt.Impressions,
        bt.SpecialDealTypes,
        bt.SpecialOffdeal,
        aud_2.AudienceShortName,
        bt.EstimatedRating2,
        bt.ActualRating2,
        bt.Universe2,
        bt.Impressions2,
        aud_3.AudienceShortName,
        bt.EstimatedRating3,
        bt.ActualRating3,
        bt.Universe3,
        bt.Impressions3,
        format(b.BookedDate, 'yyyyMMdd'),
        format(b.BookedTime, 'HHmmss'),
        format(b.LastAmendedDate, 'yyyyMMdd'),
        format(b.LastAmendedTime, 'HHmmss'),
        b.NumberOfAmendments,
        format(bt.ActDatetime, 'ddMMyyyy'),
        format(bt.ActDatetime, 'HHmmss'),
        b.[Action]
    FROM @my_buys AS b
        JOIN MediaA1..BuyTV AS bt
            ON b.BuySerial = bt.BuySerial
        JOIN @my_suppliers AS ms
            ON ms.SupplierID = b.SupplierID
        JOIN MediaA1..aud AS aud
            ON bt.AudienceType = aud.AudienceType
            AND bt.AudienceNumber = aud.AudienceNumber
        LEFT JOIN MediaA1..aud AS aud_2
            ON bt.AudienceType2 = aud_2.AudienceType
            AND bt.AudienceNumber2 = aud_2.AudienceNumber
        LEFT JOIN MediaA1..aud AS aud_3
            ON bt.AudienceType3 = aud_3.AudienceType
            AND bt.AudienceNumber3 = aud_3.AudienceNumber;
RETURN
END
GO
/****** Object:  UserDefinedFunction [dbo].[ur_TungstenReport]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[ur_TungstenReport] (@startdate as date, @enddate as date) returns @tungsten table
(
    UniqueID int not null,
    AccountCode varchar(12) not null,
    AccountName varchar(36),
    acc_InvoiceNumber varchar(6) not null,
    acc_InvoiceLongNumber varchar(30) not null,
    LedgerName varchar(36),
    InvoiceDate smalldatetime,
    InvoiceReceivedDate smalldatetime,
    AddedDate smalldatetime,
    UsedDate smalldatetime,
    Amount decimal(13,2) not null,
    BuySerial varchar(9),
    ProcessMethod char(1),
    BuyDate smalldatetime,
    MediaCode int,
    MediaLetter char(1),
    SupplierID char(6),
    SupplierName varchar(35),
    FolioCode varchar(6),
    FolioName varchar(36),
    MediaDiscount money,
    PlacementID varchar(255),
    IsVouchered varchar(3),
    BuyerInitials varchar(3),
    BuyerName varchar(30),
    BuyOrder varchar(10),
    BuyingAgencyCode int,
    BuyingAgencyName varchar(30),
    OperatingCompanyCode int,
    OperatingCompanyName varchar(30),
    PayeeID int,
    PayeeName varchar(254),
    IsPayFolio varchar(3),
    Creditor varchar(12),
    EInvoiceRef varchar(254),
    EInvoiceRefType varchar(254),
    InvoiceQueryID int,
    DocumentID varchar(23),
    AdvertiserName varchar(50),
    med_InvoiceNumber varchar(30),
    Gross money,
    NetPayable money,
    VATPayable money,
    QueryAdded datetime,
    QueryClosed datetime,
    IsClosed varchar(3),
    [Status] varchar(32),
    Reason varchar(50),
    ActionerPIN int,
    ActionerInitials varchar(3),
    ActionerName varchar(30)
)
-- created RD 2021-11-01
AS

BEGIN

-- exclude SKY
DECLARE @excluded_folios table
(
    FolioCode varchar(6)
);
INSERT INTO @excluded_folios
        (
            FolioCode
        )
    SELECT
        'B0003' UNION
    SELECT
        'B0006' UNION
    SELECT
        'B0007' UNION
    SELECT
        'B0054' UNION
    SELECT
        'S0032' UNION
    SELECT
        'S0342' UNION
    SELECT
        'TV035';

DECLARE @pay_folio TABLE
    (
        MediaCode tinyint    NOT NULL,
        FolioCode varchar(6) NOT NULL,
        Creditor  varchar(7) NOT NULL,
        PayeeID   smallint,
        PayeeName varchar(254),
        PayFolio  bit,
        PRIMARY KEY (MediaCode, FolioCode),
        UNIQUE (Creditor)
    );

DECLARE @acm_invoice TABLE
    (
        UniqueID      int            NOT NULL INDEX ix,
        AccountCode   varchar(12)    NOT NULL,
        InvoiceNumber varchar(6)     NOT NULL,
        AddedDate     date,
        UsedDate      date,
        Amount        decimal(13, 2) NOT NULL
    );
DECLARE @account_media_data TABLE
    (
        UniqueID             int            NOT NULL INDEX unique_not,
        AccountCode          varchar(12)    NOT NULL,
        AccountName          varchar(36),
        InvoiceNumber        varchar(6)     NOT NULL,
        InvoiceLongNumber    varchar(30)    NOT NULL,
        LedgerName           varchar(36),
        InvoiceDate          date           NOT NULL,
        InvoiceReceivedDate  date,
        AddedDate            date           NOT NULL,
        UsedDate             date,
        Amount               decimal(13, 2) NOT NULL,
        BuySerial            char(9)        NOT NULL INDEX bs_ix,
        ProcessMethod        char(1),
        BuyDate              date           NOT NULL,
        MediaCode            tinyint        NOT NULL,
        MediaLetter          char(1)        NOT NULL,
        SupplierID           char(6)        NOT NULL,
        SupplierName         varchar(35),
        FolioCode            varchar(6),
        FolioName            varchar(36),
        MediaDiscount        money          NOT NULL,
        PlacementID          varchar(255),
        IsVouchered          bit            NOT NULL,
        BuyerInitials        varchar(3)     NOT NULL,
        BuyerName            varchar(30),
        BuyOrder             varchar(10),
        BuyingAgencyCode     smallint       NOT NULL,
        BuyingAgencyName     varchar(30),
        OperatingCompanyCode smallint       NOT NULL,
        OperatingCompanyName varchar(30),
        PayeeID              smallint,
        PayeeName            varchar(254),
        IsPayFolio           bit,
        Creditor             varchar(7),
        EInvoiceRef          varchar(254),
        EInvoiceRefType      varchar(254)
    );


WITH payee_folio_staging_pf_1
AS
(
    SELECT
        MediaCode,
        FolioCode,
        PayeeID,
        PayFolio,
        row_number()
        OVER (PARTITION BY MediaCode, FolioCode ORDER BY PayeeID DESC) AS n
    FROM
        MediaA1..PayeeFolio
    WHERE
        PayFolio = 1
)
INSERT INTO @pay_folio
        (
            MediaCode,
            FolioCode,
            Creditor,
            PayeeID,
            PayeeName,
            PayFolio
        )
    SELECT
        pfs.MediaCode,
        pfs.FolioCode,
        M.MediaLetter + pfs.FolioCode,
        pfs.PayeeID,
        p.PayeeName,
        pfs.PayFolio
    FROM
        payee_folio_staging_pf_1 AS pfs
        JOIN MediaA1..Payee AS p
            ON p.PayeeID = pfs.PayeeID
        JOIN MediaA1..Media AS M
            ON M.MediaCode = pfs.MediaCode
    WHERE
        n = 1;
WITH payee_folio_staging_pf_0
AS
(
    SELECT
        MediaCode,
        FolioCode,
        PayeeID,
        PayFolio,
        row_number()
        OVER (PARTITION BY MediaCode, FolioCode ORDER BY PayeeID DESC) AS n
    FROM
        MediaA1..PayeeFolio
    WHERE
        PayFolio = 0
)
INSERT INTO @pay_folio
        (
            MediaCode,
            FolioCode,
            Creditor,
            PayeeID,
            PayeeName,
            PayFolio
        )
    SELECT
        pfs.MediaCode,
        pfs.FolioCode,
        M.MediaLetter + pfs.FolioCode,
        pfs.PayeeID,
        p.PayeeName,
        pfs.PayFolio
    FROM
        payee_folio_staging_pf_0 AS pfs
        JOIN MediaA1..Payee AS p
            ON p.PayeeID = pfs.PayeeID
        JOIN MediaA1..Media AS M
            ON M.MediaCode = pfs.MediaCode
    WHERE
        n = 1
        AND NOT EXISTS
        (
            SELECT
                *
            FROM
                @pay_folio
            WHERE
                MediaCode = pfs.MediaCode
                AND FolioCode = pfs.FolioCode
        )

INSERT INTO @pay_folio
        (
            MediaCode,
            FolioCode,
            Creditor,
            PayeeID,
            PayeeName,
            PayFolio
        )

    SELECT
        f.MediaCode,
        f.FolioCode,
        M.MediaLetter + f.FolioCode,
        NULL,
        NULL,
        NULL
    FROM
        MediaA1..Folio AS f
        JOIN MediaA1..Media AS M
            ON M.MediaCode = f.MediaCode
    WHERE
        NOT EXISTS
        (
            SELECT
                *
            FROM
                @pay_folio
            WHERE
                MediaCode = f.MediaCode
                AND FolioCode = f.FolioCode

        );

WITH sum_spend_by_invoice_used -- get sum(spend) by creditor, invoice number and used date
AS
(
    SELECT DISTINCT
        rtrim(acm.Creditor) AS AccountCode,
        acm.InvoiceNumber,
        acm.UsedDate,
        min(acm.UsedDate) OVER (PARTITION BY acm.Creditor, acm.InvoiceNumber) AS minUsedDate,
        sum(acm.Amount) OVER (PARTITION BY acm.Creditor, acm.InvoiceNumber, acm.UsedDate) AS Amount
    FROM
        AccountA1..AccCrMaster AS acm
    WHERE
        acm.InvoiceDate BETWEEN @startdate AND @enddate
        AND acm.Amount IS NOT NULL
        AND acm.UsedDate IS NOT NULL
        AND acm.TransactionType = 10
)
INSERT INTO @acm_invoice
        (
            UniqueID,
            AccountCode,
            InvoiceNumber,
            AddedDate,
            UsedDate,
            Amount
        )

    SELECT DISTINCT
        min(acm.UniqueID) OVER (PARTITION BY ssbi.AccountCode, ssbi.InvoiceNumber, ssbi.UsedDate) AS UniqueID,
        ssbi.AccountCode,
        ssbi.InvoiceNumber,
        min(acm.AddedDate) OVER (PARTITION BY ssbi.AccountCode, ssbi.InvoiceNumber),
        ssbi.UsedDate,
        ssbi.Amount
    FROM
        sum_spend_by_invoice_used AS ssbi
        JOIN AccountA1..AccCrMaster AS acm
            ON acm.Creditor = ssbi.AccountCode
            AND acm.InvoiceNumber = ssbi.InvoiceNumber
            AND acm.UsedDate = ssbi.UsedDate
            AND acm.TransactionType = 10
            AND ssbi.Amount < 0
    WHERE
        acm.UsedDate = ssbi.minUsedDate;

WITH sum_spend_by_invoice_unused -- get sum(spend) by creditor, invoice number and used date
AS
(
    SELECT DISTINCT
        rtrim(acm.Creditor) AS AccountCode,
        acm.InvoiceNumber,
        min(acm.AddedDate) OVER (PARTITION BY acm.Creditor, acm.InvoiceNumber) AS AddedDate,
        sum(acm.Amount) OVER (PARTITION BY acm.Creditor, acm.InvoiceNumber, acm.AddedDate) AS Amount
    FROM
        AccountA1..AccCrMaster AS acm
    WHERE
        acm.InvoiceDate BETWEEN @startdate AND @enddate
        AND acm.Amount IS NOT NULL
        AND acm.UsedDate IS NULL
        AND acm.TransactionType = 10
        AND NOT EXISTS
        (
            SELECT
                *
            FROM
                @acm_invoice AS acmi
            WHERE
                acmi.AccountCode = acm.Creditor
                AND acmi.InvoiceNumber = acm.InvoiceNumber
        )
)
INSERT INTO @acm_invoice
        (
            UniqueID,
            AccountCode,
            InvoiceNumber,
            AddedDate,
            UsedDate,
            Amount
        )

    SELECT DISTINCT
        min(acm.UniqueID) OVER (PARTITION BY ssbi.AccountCode, ssbi.InvoiceNumber, ssbi.AddedDate) AS UniqueID,
        ssbi.AccountCode,
        ssbi.InvoiceNumber,
        min(acm.AddedDate) OVER (PARTITION BY ssbi.AccountCode, ssbi.InvoiceNumber),
        NULL,
        ssbi.Amount
    FROM
        sum_spend_by_invoice_unused AS ssbi
        JOIN AccountA1..AccCrMaster AS acm
            ON acm.Creditor = ssbi.AccountCode
            AND acm.InvoiceNumber = ssbi.InvoiceNumber
            AND acm.AddedDate = ssbi.AddedDate
            AND acm.TransactionType = 10
            AND ssbi.Amount < 0;

INSERT INTO @account_media_data
        (
            UniqueID,
            AccountCode,
            AccountName,
            InvoiceNumber,
            InvoiceLongNumber,
            LedgerName,
            InvoiceDate,
            InvoiceReceivedDate,
            AddedDate,
            UsedDate,
            Amount,
            BuySerial,
            ProcessMethod,
            BuyDate,
            MediaCode,
            MediaLetter,
            SupplierID,
            SupplierName,
            FolioCode,
            FolioName,
            MediaDiscount,
            PlacementID,
            IsVouchered,
            BuyerInitials,
            BuyerName,
            BuyOrder,
            BuyingAgencyCode,
            BuyingAgencyName,
            OperatingCompanyCode,
            OperatingCompanyName,
            PayeeID,
            PayeeName,
            IsPayFolio,
            Creditor,
            EInvoiceRef,
            EInvoiceRefType
        )
    SELECT
        acm.UniqueID,
        acmi.AccountCode,
        rtrim(ac.AccountName),
        acmi.InvoiceNumber,
        acm.InvoiceLongNumber,
        rtrim(ldg.LedgerName),
        acm.InvoiceDate,
        acm.InvoiceReceivedDate,
        acm.AddedDate,
        acm.UsedDate,
        acmi.Amount,
        bm.BuySerial,
        CASE
            WHEN acmed.PaymentDocumentID IS NOT NULL THEN 'E'
            ELSE 'M'
        END AS ProcessMethod,
        bm.BuyDate,
        bm.MediaCode,
        med.MediaLetter,
        bm.SupplierID,
        rtrim(su.SupplierName),
        su.FolioCode,
        rtrim(fo.FolioName),
        bm.MediaDiscount,
        bm.PlacementID,
        bm.IsVouchered,
        bm.BuyerInitials,
        rtrim(byr.BuyerName),
        im.BuyOrder,
        ba.AgencyCode AS BuyingAgencyCode,
        rtrim(ba.AgencyName) AS BuyingAgencyName,
        oc.OperatingCompanyCode,
        rtrim(oc.OperatingCompanyName),
        p.PayeeID,
        rtrim(p.PayeeName),
        pf.PayFolio,
        pf.Creditor,
        p.EInvoiceRef,
        p.EInvoiceRefType
    FROM
        @acm_invoice AS acmi
        JOIN AccountA1..AccCrMaster AS acm
            ON acm.UniqueID = acmi.UniqueID
        JOIN AccountA1..AccAccount AS ac
            ON ac.[Ledger] = acm.[Ledger]
            AND ac.AccountCode = acm.Creditor
        JOIN AccountA1..AccLedger AS ldg
            ON ldg.[Ledger] = acm.[Ledger]
        JOIN AccountA1..AccCrMedia AS acmed
            ON acmed.UniqueID = acmi.UniqueID
        JOIN MediaA1..BuyMoney AS bm
            ON bm.BuySerial = acmed.BuySerial
        JOIN MediaA1..Media AS med
            ON med.MediaCode = bm.MediaCode
        JOIN MediaA1..Supplier AS su
            ON su.MediaCode = bm.MediaCode
            AND su.SupplierID = bm.SupplierID
            AND su.FolioCode NOT IN
            (
                SELECT
                    FolioCode
                FROM
                    @excluded_folios
            )
        JOIN MediaA1..Folio AS fo
            ON fo.MediaCode = su.MediaCode
            AND fo.FolioCode = su.FolioCode
        JOIN MediaA1..Buyer AS byr
            ON byr.BuyerInitials = bm.BuyerInitials
        LEFT JOIN MediaA1..InetMedia AS im
            ON im.BuySerial = bm.BuySerial
        JOIN MediaA1..Client AS cl
            ON cl.MediaCode = bm.MediaCode
            AND cl.ClientCode = bm.ClientCode
        JOIN MediaA1..BuyingAgency AS ba
            ON ba.AgencyCode = cl.BuyingAgencyCode
        JOIN MediaA1..OperatingCompany AS oc
            ON oc.OperatingCompanyCode = ba.OperatingCompanyCode
        LEFT JOIN @pay_folio AS pf
            ON pf.MediaCode = su.MediaCode
            AND pf.FolioCode = su.FolioCode
        LEFT JOIN MediaA1..Payee AS p
            ON p.PayeeID = pf.PayeeID;

WITH all_buy_queries
AS
(
    SELECT
        acc_med_data.BuySerial,
        iqc.InvoiceQueryID
    FROM
        @account_media_data AS acc_med_data
        JOIN MediaA1..InvoiceQueryCandidate AS iqc
            ON iqc.BuySerial = acc_med_data.BuySerial

    UNION

    SELECT
        acc_med_data.BuySerial,
        iqa.InvoiceQueryID
    FROM
        @account_media_data AS acc_med_data
        JOIN MediaA1..InvoiceQueryAssigned AS iqa
            ON iqa.BuySerial = acc_med_data.BuySerial

    UNION

    SELECT
        acc_med_data.BuySerial,
        iqab.InvoiceQueryID
    FROM
        @account_media_data AS acc_med_data
        JOIN MediaA1..InvoiceQueryActionBuy AS iqab
            ON iqab.BuySerial = acc_med_data.BuySerial
),
buy_queries
AS
(
    SELECT DISTINCT
        abq.BuySerial,
        max(iq.InvoiceQueryID) OVER (PARTITION BY abq.BuySerial) AS InvoiceQueryID
    FROM
        all_buy_queries AS abq
        JOIN MediaA1..InvoiceQuery AS iq
            ON iq.InvoiceQueryID = abq.InvoiceQueryID
),
inv_query_actions
AS
(
    SELECT DISTINCT
        iq_a.InvoiceQueryID,
        max(iq_a.SequenceNumber) OVER (PARTITION BY iq_a.InvoiceQueryID) AS SequenceNumber
    FROM
        MediaA1..InvoiceQueryAction AS iq_a
        JOIN buy_queries AS bq
            ON bq.InvoiceQueryID = iq_a.InvoiceQueryID
),
invoice_queries
AS
(
    SELECT
        bq.BuySerial,
        inv_q.InvoiceQueryID,
        inv.DocumentID,
        inv.AdvertiserName,
        inv.InvoiceNumber,
        inv.Gross,
        inv.NetPayable,
        inv.VATPayable,
        inv_q.AddedDateTime AS QueryAdded,
        inv_q.Status,
        inv_q.ClosedDateTime AS QueryClosed,
        rr.Description AS Reason,
        inv_qa.ActionerPIN,
        byr.BuyerInitials,
        byr.BuyerName
    FROM
        buy_queries AS bq
        JOIN MediaA1..InvoiceQuery AS inv_q
            ON inv_q.InvoiceQueryID = bq.InvoiceQueryID
        JOIN MediaA1..Invoice AS inv
            ON inv.DocumentID = inv_q.DocumentID
        LEFT JOIN MediaA1..ReasonResolution AS rr
            ON rr.ReasonResolutionID = inv_q.ResolutionID
        JOIN inv_query_actions AS iq_a
            ON iq_a.InvoiceQueryID = inv_q.InvoiceQueryID
        JOIN MediaA1..InvoiceQueryAction AS inv_qa
            ON inv_qa.InvoiceQueryID = iq_a.InvoiceQueryID
            AND inv_qa.SequenceNumber = iq_a.SequenceNumber
        JOIN MediaA1..Buyer AS byr
            ON byr.BuyerPIN = inv_qa.ActionerPIN
)
INSERT INTO @tungsten
        (
            UniqueID,
            AccountCode,
            AccountName,
            acc_InvoiceNumber,
            acc_InvoiceLongNumber,
            LedgerName,
            InvoiceDate,
            InvoiceReceivedDate,
            AddedDate,
            UsedDate,
            Amount,
            BuySerial,
            ProcessMethod,
            BuyDate,
            MediaCode,
            MediaLetter,
            SupplierID,
            SupplierName,
            FolioCode,
            FolioName,
            MediaDiscount,
            PlacementID,
            IsVouchered,
            BuyerInitials,
            BuyerName,
            BuyOrder,
            BuyingAgencyCode,
            BuyingAgencyName,
            OperatingCompanyCode,
            OperatingCompanyName,
            PayeeID,
            PayeeName,
            IsPayFolio,
            Creditor,
            EInvoiceRef,
            EInvoiceRefType,
            InvoiceQueryID,
            DocumentID,
            AdvertiserName,
            med_InvoiceNumber,
            Gross,
            NetPayable,
            VATPayable,
            QueryAdded,
            QueryClosed,
            IsClosed,
            [Status],
            Reason,
            ActionerPIN,
            ActionerInitials,
            ActionerName
        )
    SELECT
        amd.UniqueID,
        amd.AccountCode,
        amd.AccountName,
        amd.InvoiceNumber,
        amd.InvoiceLongNumber,
        amd.LedgerName,
        amd.InvoiceDate,
        amd.InvoiceReceivedDate,
        amd.AddedDate,
        amd.UsedDate,
        amd.Amount,
        amd.BuySerial,
        amd.ProcessMethod,
        amd.BuyDate,
        amd.MediaCode,
        amd.MediaLetter,
        amd.SupplierID,
        amd.SupplierName,
        amd.FolioCode,
        amd.FolioName,
        amd.MediaDiscount,
        amd.PlacementID,
        CASE
            WHEN amd.IsVouchered = 1 THEN 'YES'
            ELSE 'NO'
        END AS IsVouchered,
        amd.BuyerInitials,
        amd.BuyerName,
        amd.BuyOrder,
        amd.BuyingAgencyCode,
        amd.BuyingAgencyName,
        amd.OperatingCompanyCode,
        amd.OperatingCompanyName,
        amd.PayeeID,
        amd.PayeeName,
        CASE
            WHEN amd.IsPayFolio = 1 THEN 'YES'
            ELSE 'NO'
        END AS IsPayFolio,
        amd.Creditor,
        amd.EInvoiceRef,
        amd.EInvoiceRefType,
        iq.InvoiceQueryID,
        iq.DocumentID,
        rtrim(iq.AdvertiserName) AS AdvertiserName,
        iq.InvoiceNumber,
        iq.Gross,
        iq.NetPayable,
        iq.VATPayable,
        iq.QueryAdded,
        iq.QueryClosed,
        CASE
            WHEN iq.[Status] = 'CLOSED' THEN 'YES'
            WHEN iq.[Status] IS NULL THEN NULL
            ELSE 'NO'
        END AS IsClosed,
        iq.[Status],
        rtrim(iq.Reason) AS Reason,
        iq.ActionerPIN,
        iq.BuyerInitials AS ActionerInitials,
        rtrim(iq.BuyerName) AS ActionerName
    FROM
        @account_media_data AS amd
        LEFT JOIN invoice_queries AS iq
            ON iq.BuySerial = amd.BuySerial

RETURN
END
GO
/****** Object:  Table [dbo].[HarpUsers]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HarpUsers](
	[UserID] [smallint] NOT NULL,
	[HasAllAgencies] [bit] NOT NULL,
	[HasAllMedia] [bit] NOT NULL,
	[HasRestrictedBookingCategories] [bit] NOT NULL,
	[HasRestrictedClients] [bit] NOT NULL,
	[HasRestrictedFields] [bit] NOT NULL,
	[CreatedDate] [smalldatetime] NOT NULL,
	[CreatedBy] [varchar](50) NOT NULL,
	[RevisedDate] [smalldatetime] NOT NULL,
	[RevisedBy] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RestrictedBookingCategories]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RestrictedBookingCategories](
	[BookingCategoryCode] [varchar](5) NOT NULL,
	[CreatedDate] [smalldatetime] NOT NULL,
	[CreatedBy] [varchar](50) NOT NULL,
	[RevisedDate] [smalldatetime] NOT NULL,
	[RevisedBy] [varchar](50) NOT NULL,
 CONSTRAINT [PK_RestrictedBookingCategory] PRIMARY KEY CLUSTERED 
(
	[BookingCategoryCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HarpUser_Agency]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HarpUser_Agency](
	[UserID] [smallint] NOT NULL,
	[AgencyCode] [int] NOT NULL,
	[AgencyType] [char](1) NOT NULL,
	[IsExcluded] [bit] NOT NULL,
	[HasAllClients] [bit] NOT NULL,
	[CreatedDate] [smalldatetime] NOT NULL,
	[CreatedBy] [varchar](50) NOT NULL,
	[RevisedDate] [smalldatetime] NOT NULL,
	[RevisedBy] [varchar](50) NOT NULL,
 CONSTRAINT [PK_HarpUser_Agency] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC,
	[AgencyCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HarpUser_Client]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HarpUser_Client](
	[UserID] [smallint] NOT NULL,
	[ClientCode] [varchar](5) NOT NULL,
	[CreatedDate] [smalldatetime] NOT NULL,
	[CreatedBy] [varchar](50) NOT NULL,
	[RevisedDate] [smalldatetime] NOT NULL,
	[RevisedBy] [varchar](50) NOT NULL,
 CONSTRAINT [PK_HarpUser_Client] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC,
	[ClientCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RestrictedClients]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RestrictedClients](
	[ClientCode] [varchar](5) NOT NULL,
	[CreatedDate] [smalldatetime] NOT NULL,
	[CreatedBy] [varchar](50) NOT NULL,
	[RevisedDate] [smalldatetime] NOT NULL,
	[RevisedBy] [varchar](50) NOT NULL,
 CONSTRAINT [PK_RestrictedClient] PRIMARY KEY CLUSTERED 
(
	[ClientCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HarpUser_OpCo]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HarpUser_OpCo](
	[UserID] [smallint] NOT NULL,
	[OpCoCode] [int] NOT NULL,
	[CreatedDate] [smalldatetime] NOT NULL,
	[CreatedBy] [varchar](50) NOT NULL,
	[RevisedDate] [smalldatetime] NOT NULL,
	[RevisedBy] [varchar](50) NOT NULL,
 CONSTRAINT [PK_HarpUser_OpCo] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC,
	[OpCoCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserID] [smallint] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](50) NOT NULL,
	[OpCoCode] [int] NOT NULL,
	[CreatedDate] [smalldatetime] NOT NULL,
	[CreatedBy] [varchar](50) NOT NULL,
	[RevisedDate] [smalldatetime] NOT NULL,
	[RevisedBy] [varchar](50) NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[HarpUserClient]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[HarpUserClient]
AS

-- Return client codes user has access to
-- Updated RD 20191008
-- Add Excluded Agency

-- get all clients
SELECT DISTINCT
    cl.ClientCode
FROM MediaA1..Client AS cl
    JOIN dbo.[Users] AS u
        ON u.UserName = system_user
    JOIN dbo.HarpUsers AS hu
        ON hu.UserID = u.UserID
            AND hu.HasAllAgencies = 1

UNION

-- get clients for opcos
SELECT DISTINCT
    cl.ClientCode
FROM MediaA1..Client AS cl
    JOIN dbo.[Users] AS u
        ON u.UserName = system_user
    JOIN dbo.HarpUser_OpCo AS oc
        ON oc.UserID = u.UserID
    JOIN MediaA1..Agency AS ba
        ON ba.OperatingCompanyCode = oc.OpCoCode
            AND ba.AgencyCode = cl.BuyingAgencyCode

EXCEPT

-- Remove excluded agencies from top level and opco level
SELECT DISTINCT
    cl.ClientCode
FROM MediaA1..Client AS cl
    JOIN dbo.[Users] AS u
        ON u.UserName = system_user
    JOIN dbo.HarpUser_Agency AS u_a
        ON u_a.AgencyCode = cl.BuyingAgencyCode
            AND u_a.UserID = u.UserID
            AND u_a.IsExcluded = 1

UNION

-- get clients where user has all clients for agency
SELECT DISTINCT
    cl.ClientCode
FROM MediaA1..Client AS cl
    JOIN dbo.[Users] AS u
        ON u.UserName = system_user
    JOIN dbo.HarpUser_Agency AS u_a
        ON u_a.AgencyCode = cl.BuyingAgencyCode
            AND u_a.UserID = u.UserID
            AND u_a.HasAllClients = 1

EXCEPT

-- remove any clients with restricted access unless user has restricted clients
SELECT
    ClientCode
FROM dbo.RestrictedClients
    JOIN dbo.[Users] AS u
        ON u.UserName = system_user
    JOIN dbo.HarpUsers AS hu
        ON hu.UserID = u.UserID
            AND hu.HasRestrictedClients = 0

UNION

-- add client specific access (includes restricted clients and excluded agencies)
-- join on MediaA1.client to validate user has access to client buying agency
SELECT DISTINCT
    hu_c.ClientCode
FROM dbo.HarpUser_Client AS hu_c
    JOIN dbo.[Users] AS u
        ON u.UserName = system_user
            AND u.UserID = hu_c.UserID
    JOIN dbo.HarpUser_Agency AS hu_a
        ON hu_a.UserID = u.UserID
    JOIN MediaA1..Client AS cl
        ON cl.ClientCode = hu_c.ClientCode
            AND cl.BuyingAgencyCode = hu_a.AgencyCode;
GO
/****** Object:  Table [dbo].[HarpUser_Media]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HarpUser_Media](
	[UserID] [smallint] NOT NULL,
	[MediaCode] [int] NOT NULL,
	[CreatedDate] [smalldatetime] NOT NULL,
	[CreatedBy] [varchar](50) NOT NULL,
	[RevisedDate] [smalldatetime] NOT NULL,
	[RevisedBy] [varchar](50) NOT NULL,
 CONSTRAINT [PK_User_Media] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC,
	[MediaCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[HarpUserMedia]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[HarpUserMedia]
AS

-- Return user's media
-- Updated RD 20191001

-- handle users with all media
SELECT DISTINCT
    m.MediaCode
FROM MediaA1..Media AS m
    JOIN dbo.[Users] AS u
        ON u.UserName = system_user
    JOIN dbo.HarpUsers AS hu
        ON hu.UserID = u.UserID
            AND hu.HasAllMedia = 1

UNION

-- add media level access
SELECT
    m.MediaCode
FROM dbo.HarpUser_Media AS hu_m
    JOIN dbo.[Users] AS u
        ON u.UserName = system_user
            AND u.UserID = hu_m.UserID
    JOIN MediaA1.dbo.Media AS m
        ON m.MediaCode = hu_m.MediaCode
GO
/****** Object:  View [dbo].[BuyMoney]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Alter View BuyMoney


CREATE VIEW [dbo].[BuyMoney]
AS

-- Updated RD 20191019
SELECT
    bm.RecordType,
    bm.[Action],
    bm.ActDatetime,
    bm.AgencyAlphaID,
    bm.BuySerial,
    bm.MediaCode,
    bm.ClientCode,
    bm.ProductCode,
    bm.CampaignCode,
    bm.SupplierID,
    bm.ScheduleNumber,
    bm.BuyerInitials,
    bm.BookedDate,
    bm.BuyDate,
    bm.[DayName],
    bm.IsCancelled,
    bm.IsDraft,
    bm.IsLocked,
    bm.IsVouchered,
    bm.IsCleared,
    bm.IsGHI,
    bm.IsScheme,
    bm.IsMaster,
    bm.IsSlave,
    bm.MasterBuySerial,
    bm.Remarks,
    bm.CurrencyCode,
    bm.Cardrate,
    bm.Gross,
    bm.ClientVolumeDiscount,
    bm.SupplierVolumeDiscount,
    bm.Net,
    bm.MediaDiscount,
    bm.Payable,
    CASE
        WHEN hu.HasRestrictedFields = 1 THEN bm.Paid
        ELSE NULL
    END
    AS Paid,
    CASE
        WHEN hu.HasRestrictedFields = 1 THEN bm.AgencyCommission
        ELSE NULL
    END
    AS AgencyCommission,
    bm.Billable,
    bm.Billed,
    bm.BillRate,
    bm.InvoiceDate,
    bm.InvoiceCode,
    bm.HasTVEntry,
    bm.HasPrintEntry,
    bm.HasBroadcastEntry,
    bm.HasRecruitmentEntry,
    bm.HasInternationalEntry,
    bm.HasExtraRatesEntry,
    bm.HasCommentsEntry,
    bm.HasPvoucheringEntry,
    bm.HasBvoucheringEntry,
    bm.HasInetMediaEntry,
    bm.HasInetServerEntry,
    bm.HasInetVoucherEntry,
    bm.HasBuyMoneyEntry,
    bm.Extra,
    bm.PlacementID,
    bm.LastAmendedDate,
    bm.LastAmendedBuyer,
    bm.PreviousInvoiceDate,
    bm.PreviousInvoiceCode,
    bm.SupplierPaymentDate,
    bm.SupplierPaymentCode,
    bm.BookingCategoryCode,
    bm.BookingCategoryShortname,
    bm.SourceSystem,
    bm.IsStationBudget,
    bm.ProductionCostsNet,
    bm.ProductionCostsCommission,
    bm.NonCommissionCosts1,
    bm.NonCommissionCosts2,
    bm.IsLevy,
    bm.LevyType,
    bm.LevyPercentage,
    bm.LevyBillable,
    bm.LevyBilled,
    bm.LevyVatBillable,
    bm.LevyVatBilled,
    bm.ClientVATPercentage,
    bm.VATBillable,
    bm.VATBilled,
    bm.SupplierVATPercentage,
    bm.VATPayable,
    bm.VATPaid,
    bm.MediaDiscountPercentage,
    bm.NumberOfAmendments,
    bm.IsQueried,
    bm.IsHeld,
    bm.IsOverride,
    bm.BuyingAgencyCommission,
    bm.CreativeAgencyCommission,
    bm.BillableCostOfSale,
    bm.AgencyCommissionOverride,
    bm.MediaDiscountOverride,
    bm.VatBillableOverride,
    bm.VatPayableOverride,
    bm.PayerInitials,
    bm.HasBookingConfirmation,
    bm.BookedTime,
    bm.LastAmendedTime,
    bm.BuyerPID,
    bm.LastAmendedPID,
    bm.JCNReference,
    bm.FormulaCode,
    bm.PurchaseOrderSerial,
    bm.BuyerPIN,
    bm.LastAmendedPIN,
    bm.PurchaseOrderLineID
FROM dbo.HarpUserMedia AS hum
    CROSS JOIN dbo.HarpUserClient AS huc
    JOIN MediaA1..BuyMoney AS bm
        ON bm.MediaCode = hum.MediaCode
            AND bm.ClientCode = huc.ClientCode
    JOIN dbo.[Users] AS u
        ON u.UserName = system_user
    JOIN dbo.HarpUsers AS hu
        ON hu.UserID = u.UserID

-- exclude restricted booking categories unless user has access
WHERE bm.BookingCategoryCode NOT IN
(
SELECT
    BookingCategoryCode
FROM dbo.RestrictedBookingCategories
    JOIN dbo.[Users] AS u
        ON u.UserName = system_user
    JOIN dbo.HarpUsers AS hu
        ON hu.UserID = u.UserID
            AND hu.HasRestrictedBookingCategories = 0
);
GO
/****** Object:  Table [dbo].[HarpUser_Office]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HarpUser_Office](
	[UserID] [smallint] NOT NULL,
	[OfficeCode] [char](2) NOT NULL,
	[CreatedDate] [smalldatetime] NOT NULL,
	[CreatedBy] [varchar](50) NOT NULL,
	[RevisedDate] [smalldatetime] NOT NULL,
	[RevisedBy] [varchar](50) NOT NULL,
 CONSTRAINT [PK_User_Office] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC,
	[OfficeCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[AccMedBuy]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Alter View AccMedBuy


CREATE VIEW [dbo].[AccMedBuy]
AS
SELECT amb.[RecordType]
      ,amb.[ActionLast]
      ,amb.[ActDatetime]
      ,amb.[Agency]
      ,amb.[Serial]
      ,amb.[Client]
      ,amb.[Product]
      ,amb.[Creditor]
      ,amb.[Supplier]
      ,amb.[SupplierShortName]
      ,amb.[TotPayable]
      ,amb.[VATPayable]
      ,amb.[TotPaid]
      ,amb.[VATPaid]
      ,amb.[TotBillable]
      ,amb.[ComBillable]
      ,amb.[VATBillable]
      ,amb.[TotBilled]
      ,amb.[ComBilled]
      ,amb.[VATBilled]
      ,amb.[NumBills]
      ,amb.[IsCancelled]
      ,amb.[InsXmtDate]
      ,amb.[Campaign]
      ,amb.[Description]
  FROM AccountA1.[dbo].[AccMedBuy] amb
  JOIN AccountA1.[dbo].accPrdClient apc ON apc.ClientCode = amb.Client
  JOIN dbo.HarpUser_Office AS l_o ON l_o.OfficeCode = apc.OfficeCode
  JOIN dbo.[Users] AS l ON l.UserID = l_o.UserID AND l.UserName = SYSTEM_USER;
GO
/****** Object:  View [dbo].[AccDrMaster]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Alter View AccDrMaster

CREATE VIEW [dbo].[AccDrMaster]
AS

SELECT
    adm.RecordType,
    adm.ActionLast,
    adm.ActDatetime,
    adm.Agency,
    adm.UniqueID,
    adm.Debtor,
    adm.ClientCode,
    adm.ProductCode,
    adm.CampaignJob,
    adm.InvoiceSource,
    adm.InvoiceDate,
    adm.InvoiceNumber,
    adm.OfficeCode,
    adm.TransactionType,
    adm.MonthOfActivity,
    adm.ReverseMonthOfActivity,
    adm.BatchReference,
    adm.ContraDate,
    adm.AddedDate,
    adm.ReversedDate,
    adm.IsDebit,
    adm.IsCredit,
    adm.IsMinus,
    adm.Amount,
    adm.DiscountAmount,
    adm.IsQueried,
    adm.IsHeld,
    adm.IsCleared,
    adm.IsExchange,
    adm.IsReversed,
    adm.IsTransferTo,
    adm.IsTransferFrom,
    adm.IsInvoice,
    adm.IsPayment,
    adm.CurrencyCode,
    adm.UserID,
    adm.VATRegionCode,
    adm.VATRegNumber
FROM AccountA1.dbo.AccDrMaster AS adm
    JOIN dbo.HarpUser_Office AS l_o
        ON l_o.OfficeCode = adm.OfficeCode
    JOIN dbo.[Users] AS l
        ON l.UserID = l_o.UserID
            AND l.UserName = SYSTEM_USER;
GO
/****** Object:  View [dbo].[AccDrCash]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE VIEW [dbo].[AccDrCash]
AS

SELECT acDrCash.[RecordType]
      ,acDrCash.[ActionLast]
      ,acDrCash.[ActDatetime]
      ,acDrCash.[Agency]
      ,acDrCash.[UniqueID]
      ,acDrCash.[PaymentReference]
      ,acDrCash.[PaymentDate]
      ,acDrCash.[DepositDate]
      ,acDrCash.[BankAccount]
  FROM AccountA1.[dbo].[AccDrCash] AS acDrCash
  JOIN AccDrMaster AS adm
        ON adm.UniqueID = acDrCash.UniqueID;
GO
/****** Object:  View [dbo].[AccDrWriteOff]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE VIEW [dbo].[AccDrWriteOff]
AS

SELECT AccDrWriteOff.[RecordType]
      ,AccDrWriteOff.[ActionLast]
      ,AccDrWriteOff.[ActDatetime]
      ,AccDrWriteOff.[Agency]
      ,AccDrWriteOff.[UniqueID]
      ,AccDrWriteOff.[WriteoffLedger]
      ,AccDrWriteOff.[WriteoffAccountCode]
      ,AccDrWriteOff.[WriteoffNumber]
      ,AccDrWriteOff.[WriteoffDate]
  FROM AccountA1.[dbo].[AccDrWriteOff] AS AccDrWriteOff
  JOIN AccDrMaster AS adm
        ON adm.UniqueID = AccDrWriteOff.UniqueID;
GO
/****** Object:  View [dbo].[AccCrMaster]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Alter View AccCrMaster

CREATE VIEW [dbo].[AccCrMaster]
AS

SELECT
    acm.RecordType,
    acm.ActionLast,
    acm.ActDatetime,
    acm.Agency,
    acm.UniqueID,
    acm.Ledger,
    acm.Creditor,
    acm.InvoiceDate,
    acm.InvoiceNumber,
    acm.OfficeCode,
    acm.TransactionType,
    acm.MonthOfActivity,
    acm.ReverseMonthOfActivity,
    acm.UsedMonthOfActivity,
    acm.BatchReference,
    acm.GroupInvoiceNumber,
    acm.InternalReference,
    acm.IsDebit,
    acm.IsCredit,
    acm.Amount,
    acm.DiscountAmount,
    acm.CurrencyCode,
    acm.AddedDate,
    acm.DueDate,
    acm.UsedDate,
    acm.SelectedDate,
    acm.ReversedDate,
    acm.IsAuthorised,
    acm.IsSelected,
    acm.IsHeld,
    acm.IsMinus,
    acm.IsContraed,
    acm.IsAdvance,
    acm.IsExchange,
    acm.IsReversed,
    acm.InvoiceLongNumber,
    acm.VATRegionCode,
    acm.VATRegNumber,
    acm.OrderNumber,
    acm.IsPartMatched,
    acm.OrderDate
FROM AccountA1.dbo.AccCrMaster AS acm
    JOIN dbo.HarpUser_Office AS l_o
        ON l_o.OfficeCode = acm.OfficeCode
    JOIN dbo.[Users] AS l
        ON l.UserID = l_o.UserID
            AND l.UserName = SYSTEM_USER;
GO
/****** Object:  View [dbo].[AccMedBill]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Alter View AccMedBill

CREATE VIEW [dbo].[AccMedBill]
AS

SELECT amb.[RecordType]
      ,amb.[ActionLast]
      ,amb.[ActDatetime]
      ,amb.[Agency]
      ,amb.[BuySerial]
      ,amb.[ClientCode]
      ,amb.[ProductCode]
      ,amb.[CampaignCode]
      ,amb.[InvoiceCode]
      ,amb.[InvoiceDate]
      ,amb.[TotalBilled]
      ,amb.[AgencyCommissionBilled]
      ,amb.[VATBilled]
      ,amb.[BuyPaySerial]
      ,amb.[GrossBilled]
      ,amb.[ClientVolumeDiscountBilled]
      ,amb.[SupplierVolumeDiscountBilled]
      ,amb.[MediaDiscountBilled]
      ,amb.[SpotIncomeBilled]
      ,amb.[XRate1Billed]
      ,amb.[XRate2Billed]
      ,amb.[NonComCost1Billed]
      ,amb.[NonComCost2Billed]
      ,amb.[ProductionNetBiled]
      ,amb.[ProductionCommissionBilled]
      ,amb.[LevyBilled]
      ,amb.[LevyVatBilled]
      ,amb.[BillableBilled]
      ,amb.[BillableCostSaleBilled]
      ,amb.[PayableBilled]
      ,amb.[BuyingAgencyCommissionBilled]
      ,amb.[CreativeAgencyCommissionBilled]
      ,amb.[MediaLetter]
      ,amb.[MediaCode]
      ,amb.[BillerPIN]
  FROM AccountA1.[dbo].[AccMedBill] amb
  JOIN AccountA1.[dbo].accPrdClient apc ON apc.ClientCode = amb.ClientCode
  JOIN dbo.HarpUser_Office AS l_o ON l_o.OfficeCode = apc.OfficeCode
  JOIN dbo.[Users] AS l ON l.UserID = l_o.UserID AND l.UserName = SYSTEM_USER;
GO
/****** Object:  View [dbo].[AccCrMedia]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[AccCrMedia]
AS

SELECT acMedia.[RecordType]
      ,acMedia.[ActionLast]
      ,acMedia.[ActDatetime]
      ,acMedia.[Agency]
      ,acMedia.[UniqueID]
      ,acMedia.[BuySerial]
      ,acMedia.[SupplierID]
      ,acMedia.[VATPaid]
      ,acMedia.[PaymentDocumentID]
  FROM AccountA1.[dbo].[AccCrMedia] AS acMedia
    JOIN AccCrMaster AS amc
        ON amc.UniqueID = acMedia.UniqueID;
GO
/****** Object:  View [dbo].[AccCrPayment]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[AccCrPayment]
AS

SELECT acPayment.[RecordType]
      ,acPayment.[ActionLast]
      ,acPayment.[ActDatetime]
      ,acPayment.[Agency]
      ,acPayment.[UniqueID]
      ,acPayment.[PaymentNumber]
      ,acPayment.[PaymentDate]
      ,acPayment.[PaymentAmount]
      ,acPayment.[PaymentLedger]
      ,acPayment.[PaymentAccount]
  FROM AccountA1.[dbo].[AccCrPayment] AS acPayment
    JOIN AccCrMaster AS amc
        ON amc.UniqueID = acPayment.UniqueID;
GO
/****** Object:  View [dbo].[AccDrBilling]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[AccDrBilling]
AS

SELECT acBilling.[RecordType]
      ,acBilling.[ActionLast]
      ,acBilling.[ActDatetime]
      ,acBilling.[Agency]
      ,acBilling.[UniqueID]
      ,acBilling.[InvoiceDueDate]
      ,acBilling.[InvoiceVatAmount]
  FROM AccountA1.[dbo].[AccDrBilling] AS acBilling
    JOIN AccDrMaster AS adm
        ON adm.UniqueID = acBilling.UniqueID;
GO
/****** Object:  UserDefinedFunction [dbo].[ur_IrcInsertDateReport]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE function [dbo].[ur_IrcInsertDateReport]
  (@StartDate datetime, @EndDate datetime, @Media varchar(max), @Client varchar(max)) RETURNS TABLE
AS
RETURN




--SET DATEFORMAT DMY
--DECLARE @StartDate DATETIME, @EndDate DATETIME
--SELECT
--	@StartDate = cast('01/01/2019' AS datetime),
--	@EndDate = cast('31/12/2019' AS datetime)
SELECT
	Media AS Med,
	Client AS Cli,
	Product AS Pro,
	Campaign AS Cam,
	Serial AS Serial,
	isnull(CANCELLED, '') AS Canc,
	Folio AS Folio,
	Supplier AS Supp,
	Shortname AS Shortname,
	isnull(convert(varchar(10), InsXmtDate, 120), '') AS InsXmtDate,
	LineType AS LineType,
	isnull(BILLNUM, '') AS BillRef,
	isnull(convert(varchar(10), BillDate, 120), '') AS BillDate,
	isnull(RcptRef, '') AS RcptRef,
	isnull(convert(varchar(10), DepoDate, 120), '') AS DepoDate,
	isnull(cast(BILLCOST AS varchar), '') AS CostofSale,
	isnull(cast(RECEIVED AS varchar), '') AS AmtRcvd,
	isnull(INVNUM, '') AS InvRef,
	isnull(convert(varchar(10), InvDate, 120), '') AS InvDate,
	isnull(PmtRef, '') AS PmtRef,
	isnull(convert(varchar(10), PmtDate, 120), '') AS PmtDate,
	isnull(cast(PAYCOST AS varchar), '') AS CostofSale1,
	isnull(CONTRAED, '') AS Contra,
	isnull(REVERSED, '') AS Rvrsd,
	isnull(WRITEOFF, '') AS WrtOff,
	isnull(TRANSFER, '') AS Trnsf
FROM (
	SELECT
		substring(MBUY.SERIAL, 1, 1) AS MEDIA,
		MBUY.Client,
		MBUY.Product,
		MBUY.Campaign,
		MBUY.SERIAL,
		CASE
			WHEN MBUY.IsCancelled = '1' THEN 'C'
		END AS CANCELLED,
		MBUY.Creditor AS FOLIO,
		MBUY.Supplier,
		rtrim(MBUY.SupplierShortName) AS SHORTNAME,
		MBUY.INSXMTDATE,
		CASE
			WHEN TransactionType = 9 THEN '2a Bill'
			ELSE '2b Receipt'
		END AS LINETYPE,
		MBILL.InvoiceCode AS BILLNUM,
		MBILL.InvoiceDate AS BILLDATE,
		coalesce(PaymentReference, CASE
			WHEN ContraDate IS NOT NULL THEN '(Contra)'
		END) AS RCPTREF,
		coalesce(DepositDate, ContraDate) AS DEPODATE,
		CASE
			WHEN TransactionType = 9 THEN (MBILL.TotalBilled - MBILL.VATBilled - MBILL.AgencyCommissionBilled)
		END AS BILLCOST,
		cast(CASE
			WHEN TransactionType <> 9 THEN round((-Amount * (MBILL.TotalBilled - MBILL.VATBilled - MBILL.AgencyCommissionBilled) / BLLS.BILLAMOUNT), 2)
		END AS decimal(9, 2)) AS RECEIVED,
		cast(NULL AS varchar) AS INVNUM,
		cast(NULL AS datetime) AS INVDATE,
		cast(NULL AS varchar) AS PMTREF,
		cast(NULL AS datetime) AS PMTDATE,
		cast(NULL AS decimal(9, 2)) AS PAYCOST,
		CASE
			WHEN ContraDate IS NOT NULL THEN 'C'
		END AS CONTRAED,
		CASE
			WHEN IsReversed = '1' THEN 'R'
		END AS REVERSED,
		CASE
			WHEN DRWOF.UniqueID IS NOT NULL THEN 'W'
		END AS WRITEOFF,
		CASE
			WHEN IsTransferFrom = '1' THEN 'F'
			WHEN IsTransferTo = '1' THEN 'T'
		END AS TRANSFER
	FROM AccMedBill AS MBILL
	LEFT JOIN AccMedBuy MBUY
		ON MBUY.SERIAL = MBILL.BuyPaySerial
	LEFT JOIN AccDrMaster DRMAS
		ON DRMAS.InvoiceNumber = MBILL.InvoiceCode
		AND DRMAS.InvoiceDate = MBILL.InvoiceDate
	LEFT JOIN AccDrCash DRCAS
		ON DRMAS.UniqueID = DRCAS.UniqueID
	LEFT JOIN AccDrBilling DRBIL
		ON DRMAS.UniqueID = DRBIL.UniqueID
	LEFT JOIN AccDrWriteOff DRWOF
		ON DRMAS.UniqueID = DRWOF.UniqueID
	LEFT JOIN (
		SELECT
			InvoiceNumber,
			InvoiceDate,
			sum(Amount) AS BILLAMOUNT,
			sum(1) AS COUNTER
		FROM AccDrMaster
		WHERE TransactionType = 9
		GROUP BY InvoiceNumber,
				 InvoiceDate
	) BLLS
		ON MBILL.InvoiceCode = BLLS.InvoiceNumber
		AND MBILL.InvoiceDate = BLLS.InvoiceDate
	WHERE (DRMAS.TransactionType = 9
	OR DRMAS.TransactionType = 30)

	UNION

	SELECT
		substring(MBUY.SERIAL, 1, 1) AS MEDIA,
		MBUY.Client,
		MBUY.Product,
		MBUY.Campaign,
		MBUY.SERIAL,
		CASE
			WHEN MBUY.IsCancelled = '1' THEN 'C'
		END AS CANCELLED,
		MBUY.Creditor AS FOLIO,
		MBUY.Supplier,
		rtrim(MBUY.SupplierShortName) AS SHORTNAME,
		MBUY.INSXMTDATE,
		'3  Payment' AS LINETYPE,
		cast(NULL AS varchar) AS BILLNUM,
		cast(NULL AS datetime) AS BILLDATE,
		cast(NULL AS varchar) AS RCPTREF,
		cast(NULL AS datetime) AS DEPODATE,
		cast(NULL AS decimal(9, 2)) AS BILLCOST,
		cast(NULL AS decimal(9, 2)) AS RECEIVED,
		InvoiceNumber AS INVNUM,
		InvoiceDate AS INVDATE,
		CASE
			WHEN IsContraed = '1' THEN '(Contra)'
			ELSE PaymentNumber
		END AS PMTREF,
		CASE
			WHEN IsContraed = '1' THEN UsedDate
			ELSE PaymentDate
		END AS PMTDATE,
		-Amount - CRMED.VATPaid AS PAYCOST,
		CASE
			WHEN IsContraed = '1' THEN 'C'
		END AS CONTRAED,
		CASE
			WHEN IsReversed = '1' THEN 'R'
		END AS REVERSED,
		cast(NULL AS varchar) AS WRITEOFF,
		cast(NULL AS varchar) AS TRANSFER
	FROM AccMedBuy MBUY
	LEFT JOIN AccCrMedia CRMED
		ON MBUY.SERIAL = CRMED.BuySerial
	LEFT JOIN AccCrMaster CRMST
		ON CRMED.UniqueID = CRMST.UniqueID
	LEFT JOIN AccCrPayment CRPMT
		ON CRMED.UniqueID = CRPMT.UniqueID
	WHERE CRMED.UniqueID IS NOT NULL
) AS ALLDATA
WHERE
    Media IN (@Media)
	AND Client IN (@Client)

	--Media IN ('B', 'C', 'D', 'K', 'P', 'R', 'T', 'V')
	--AND Client IN ('CJ8', 'C47', 'CP0')
	AND InsXmtDate BETWEEN @StartDate AND @EndDate -- in report by insert date only
--ORDER BY
--	MEDIA,
--	Client,
--	Product,
--	Campaign,
--	SERIAL,
--	substring(LINETYPE, 1, 1),
--	BILLNUM,
--	BILLDATE,
--	substring(LINETYPE, 2, 1),
--	DEPODATE,
--	INVNUM,
--	INVDATE,
--	PMTDATE
GO
/****** Object:  View [dbo].[Campaign]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[Campaign]
AS

-- Updated RD 20191014
-- added fields to version 28 RD 2021-06-10
SELECT
    ca.RecordType,
    ca.[Action],
    ca.ActDatetime,
    ca.AgencyAlphaID,
    ca.MediaCode,
    ca.ClientCode,
    ca.ProductCode,
    ca.CampaignCode,
    ca.Filter1,
    ca.Filter2,
    ca.Filter3,
    ca.AudienceType,
    ca.AudienceNumber,
    ca.AudienceType2,
    ca.AudienceNumber2,
    ca.StartDate,
    ca.EndDate,
    ca.CampaignName,
    ca.JobNumber,
    ca.Filter4,
    ca.Filter5,
    ca.Filter6,
    ca.Filter7,
    ca.Filter8,
    ca.Filter9,
    ca.CampaignReference,
    ca.LastChanged,
    ca.ClientReference,
    ca.BudgetCostFlag,
    CASE
        WHEN hu.HasRestrictedFields = 1 THEN ca.InvoicableCommissionRate
        ELSE NULL
    END
    AS InvoicableCommissionRate,
    ca.FormulaSchemeCode,
    ca.IsLocked,
    ca.IsHeld,
    ca.DaypartScheme,
    ca.CPTScheme,
    ca.BuyingCurrency,
    ca.CommentsLine1,
    ca.CommentsLine2,
    ca.WeekCommencing,
    ca.AddedDateTime,
    ca.ClientReferenceLine2,
    ca.TeamID,
    ca.IsPOTracked,
    ca.IsMultiplePO
FROM dbo.HarpUserMedia AS hum
    CROSS JOIN dbo.HarpUserClient AS huc
    JOIN MediaA1..Campaign AS ca
        ON ca.MediaCode = hum.MediaCode
            AND ca.ClientCode = huc.ClientCode
    JOIN dbo.[Users] AS u
        ON u.UserName = system_user
    JOIN dbo.HarpUsers AS hu
        ON hu.UserID = u.UserID;
GO
/****** Object:  View [dbo].[CampaignBookingCategory]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Alter View CampaignBookingCategory


CREATE VIEW [dbo].[CampaignBookingCategory]
AS

-- Updated RD 20191014
SELECT 
    cbc.RecordType,
    cbc.[Action],
    cbc.ActDatetime,
    cbc.AgencyAlphaID,
    cbc.MediaCode,
    cbc.ClientCode,
    cbc.ProductCode,
    cbc.CampaignCode,
    cbc.BookingCategoryCode,
    cbc.CommissionFormula,
    cbc.CommissionRate,
    cbc.FormulaSchemeCode
FROM dbo.HarpUserMedia AS hum
    CROSS JOIN dbo.HarpUserClient AS huc
    JOIN MediaA1..CampaignBookingCategory AS cbc
        ON cbc.MediaCode = hum.MediaCode
            AND cbc.ClientCode = huc.ClientCode

-- exclude restricted booking categories unless user has access
WHERE cbc.BookingCategoryCode NOT IN
(
SELECT
    BookingCategoryCode
FROM dbo.RestrictedBookingCategories
    JOIN dbo.[Users] AS u
        ON u.UserName = system_user
    JOIN dbo.HarpUsers AS hu
        ON hu.UserID = u.UserID
            AND hu.HasRestrictedBookingCategories = 0
);
GO
/****** Object:  View [dbo].[Client]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[Client]
AS

-- Updated RD 20191014
SELECT
    cl.RecordType,
    cl.[Action],
    cl.ActDatetime,
    cl.AgencyAlphaID,
    cl.MediaCode,
    cl.ClientCode,
    cl.ClientShortName,
    cl.Filter1,
    cl.Filter2,
    cl.Filter3,
    cl.CreativeAgencyCode,
    cl.BuyingAgencyCode,
    cl.BillingGroup,
    cl.SchemeID,
    cl.ClientName,
    cl.Address1,
    cl.Address2,
    cl.Address3,
    cl.Address4,
    CASE
        WHEN hu.HasRestrictedFields = 1 THEN cl.InvoicableCommissionRate
        ELSE NULL
    END
    AS InvoicableCommissionRate,
    cl.VATType,
    cl.FormulaSchemeCode,
    cl.Filter4,
    cl.Filter5,
    cl.Filter6,
    cl.Filter7,
    cl.Filter8,
    cl.Filter9,
    cl.BudgetCostFlag,
    cl.LimitAccess1,
    cl.LimitAccess2,
    cl.VatRegNo,
    cl.DueDateRule,
    cl.Contact,
    cl.TelephoneNumber,
    cl.FaxNumber,
    cl.IsLocked,
    cl.SurchargePercentage,
    cl.MaxBillAmount,
    cl.DaypartScheme,
    cl.CPTScheme,
    cl.BudgetOverspendPercentage,
    cl.CurrencyCode,
    cl.BillCurrency,
    cl.Comment,
    cl.VatRegionCode,
    cl.VatRegionDescription,
    cl.AddedDateTime,
    cl.LastChangedDateTime,
    cl.OverpayAccount,
    cl.OverpayAmount,
    cl.OverpayCostingAccount,
    cl.UnderpayAccount,
    cl.UnderpayAmount,
    cl.UnderpayCostingAccount,
    cl.UnclaimedBalanceAccount,
    cl.UnclaimedBalanceCostingAccount,
    cl.PurchaseOrderInclude,
    cl.PurchaseOrderExclude,
    cl.PurchaseOrderMultiple,
    cl.PurchaseOrderApprovalRequired,
    cl.ExternalSystemStart,
    cl.ExternalSystemOverride
FROM dbo.HarpUserMedia AS hum
    CROSS JOIN dbo.HarpUserClient AS huc
    JOIN MediaA1..Client AS cl
        ON cl.MediaCode = hum.MediaCode
            AND cl.ClientCode = huc.ClientCode
    JOIN dbo.[Users] AS u
        ON u.UserName = system_user
    JOIN dbo.HarpUsers AS hu
        ON hu.UserID = u.UserID;
GO
/****** Object:  View [dbo].[ClientBookingCategory]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Alter View ClientBookingCategory

CREATE VIEW [dbo].[ClientBookingCategory]
AS

-- Updated RD 20191014
SELECT
    cbc.RecordType,
    cbc.[Action],
    cbc.ActDatetime,
    cbc.AgencyAlphaID,
    cbc.MediaCode,
    cbc.ClientCode,
    cbc.BookingCategoryCode,
    cbc.CommissionFormula,
    cbc.CommissionRate,
    cbc.FormulaSchemeCode
FROM dbo.HarpUserMedia AS hum
    CROSS JOIN dbo.HarpUserClient AS huc
    JOIN MediaA1..ClientBookingCategory AS cbc
        ON cbc.MediaCode = hum.MediaCode
            AND cbc.ClientCode = huc.ClientCode

-- exclude restricted booking categories unless user has access
WHERE cbc.BookingCategoryCode NOT IN
(
SELECT
    BookingCategoryCode
FROM dbo.RestrictedBookingCategories
    JOIN dbo.[Users] AS u
        ON u.UserName = system_user
    JOIN dbo.HarpUsers AS hu
        ON hu.UserID = u.UserID
            AND hu.HasRestrictedBookingCategories = 0
);
GO
/****** Object:  View [dbo].[Product]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[Product]
AS

-- Updated RD 20191014
SELECT
    p.RecordType,
    p.[Action],
    p.ActDatetime,
    p.AgencyAlphaID,
    p.MediaCode,
    p.ClientCode,
    p.ProductCode,
    p.ProductShortName,
    p.ProductName,
    p.Filter1,
    p.Filter2,
    p.Filter3,
    p.CreativeAgencyCode,
    p.BuyingAgencyCode,
    p.AudienceType,
    p.AudienceNumber,
    p.AudienceType2,
    p.AudienceNumber2,
    p.Address1,
    p.Address2,
    p.Address3,
    p.Address4,
    CASE
        WHEN hu.HasRestrictedFields = 1 THEN p.InvoicableCommissionRate
        ELSE NULL
    END
    AS InvoicableCommissionRate,
    p.VATType,
    p.FormulaSchemeCode,
    p.Filter4,
    p.Filter5,
    p.Filter6,
    p.Filter7,
    p.Filter8,
    p.Filter9,
    p.VatRegNo,
    p.DueDateRule,
    p.Contact,
    p.TelephoneNumber,
    p.FaxNumber,
    p.IsLocked,
    p.SurchargePercent,
    p.BuyingCurrencyCode,
    p.BillingCurrency,
    p.Comment,
    p.VatRegionCode,
    p.VatRegionDescription,
    p.AddedDateTime,
    p.LastChangedDateTime,
    p.OverpayAccount,
    p.OverpayAmount,
    p.OverpayCostingAccount,
    p.UnderpayAccount,
    p.UnderpayAmount,
    p.UnderpayCostingAccount,
    p.UnclaimedBalanceAccount,
    p.UnclaimedBalanceCostingAccount,
    p.ExternalSystemStart,
    p.ExternalSystemOverride
FROM dbo.HarpUserMedia AS hum
    CROSS JOIN dbo.HarpUserClient AS huc
    JOIN MediaA1..Product AS p
        ON p.MediaCode = hum.MediaCode
            AND p.ClientCode = huc.ClientCode
    JOIN dbo.[Users] AS u
        ON u.UserName = system_user
    JOIN dbo.HarpUsers AS hu
        ON hu.UserID = u.UserID;
GO
/****** Object:  View [dbo].[ProductBookingCategory]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Alter View ProductBookingCategory

CREATE VIEW [dbo].[ProductBookingCategory]
AS

-- Updated RD 20191014
SELECT
    pbc.RecordType,
    pbc.[Action],
    pbc.ActDatetime,
    pbc.AgencyAlphaID,
    pbc.MediaCode,
    pbc.ClientCode,
    pbc.ProductCode,
    pbc.BookingCategoryCode,
    pbc.CommissionFormula,
    pbc.CommissionRate,
    pbc.FormulaSchemeCode
FROM dbo.HarpUserMedia AS hum
    CROSS JOIN dbo.HarpUserClient AS huc
    JOIN MediaA1..ProductBookingCategory AS pbc
        ON pbc.MediaCode = hum.MediaCode
            AND pbc.ClientCode = huc.ClientCode

-- exclude restricted booking categories unless user has access
WHERE pbc.BookingCategoryCode NOT IN
(
SELECT
    BookingCategoryCode
FROM dbo.RestrictedBookingCategories
    JOIN dbo.[Users] AS u
        ON u.UserName = system_user
    JOIN dbo.HarpUsers AS hu
        ON hu.UserID = u.UserID
            AND hu.HasRestrictedBookingCategories = 0
);
GO
/****** Object:  Table [dbo].[User_Report]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_Report](
	[UserID] [smallint] NOT NULL,
	[ReportID] [int] NOT NULL,
	[HasAllAgencies] [bit] NOT NULL,
	[HasAllMedia] [bit] NOT NULL,
	[HasAllOffices] [bit] NOT NULL,
	[HasRestrictedBookingCategories] [bit] NOT NULL,
	[HasRestrictedClients] [bit] NOT NULL,
	[CreatedDate] [smalldatetime] NOT NULL,
	[CreatedBy] [varchar](50) NOT NULL,
	[RevisedDate] [smalldatetime] NOT NULL,
	[RevisedBy] [varchar](50) NOT NULL,
 CONSTRAINT [PK_User_Report] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC,
	[ReportID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User_Report_Agency]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_Report_Agency](
	[UserID] [smallint] NOT NULL,
	[ReportID] [int] NOT NULL,
	[AgencyCode] [int] NOT NULL,
	[AgencyType] [char](1) NOT NULL,
	[IsExcluded] [bit] NOT NULL,
	[HasAllClients] [bit] NOT NULL,
	[CreatedDate] [smalldatetime] NOT NULL,
	[CreatedBy] [varchar](50) NOT NULL,
	[RevisedDate] [smalldatetime] NOT NULL,
	[RevisedBy] [varchar](50) NOT NULL,
 CONSTRAINT [PK_User_Report_Agency] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC,
	[ReportID] ASC,
	[AgencyCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User_Report_Client]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_Report_Client](
	[UserID] [smallint] NOT NULL,
	[ReportID] [int] NOT NULL,
	[ClientCode] [varchar](5) NOT NULL,
	[CreatedDate] [smalldatetime] NOT NULL,
	[CreatedBy] [varchar](50) NOT NULL,
	[RevisedDate] [smalldatetime] NOT NULL,
	[RevisedBy] [varchar](50) NOT NULL,
 CONSTRAINT [PK_User_Report_Client] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC,
	[ReportID] ASC,
	[ClientCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User_Report_OpCo]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_Report_OpCo](
	[UserID] [smallint] NOT NULL,
	[ReportID] [int] NOT NULL,
	[OpCoCode] [int] NOT NULL,
	[CreatedDate] [smalldatetime] NOT NULL,
	[CreatedBy] [varchar](50) NOT NULL,
	[RevisedDate] [smalldatetime] NOT NULL,
	[RevisedBy] [varchar](50) NOT NULL,
 CONSTRAINT [PK_User_Report_OpCo] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC,
	[ReportID] ASC,
	[OpCoCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [dbo].[UserReportClient]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Create Function UserReportClient
-- Alter Function UserReportClient
-- Add Excluded Agencies from top level and opcos

CREATE FUNCTION [dbo].[UserReportClient]
  (@reportID int) RETURNS TABLE
AS

-- clients for this user/report
-- updated RD 20191020
RETURN

-- get clients for user/report with all agencies
SELECT DISTINCT
    c.ClientCode
FROM MediaA1..Client AS c
    JOIN dbo.[Users] AS u
        ON u.UserName = system_user
    JOIN dbo.User_Report AS u_r
        ON u_r.UserID = u.UserID
        AND u_r.ReportID = @reportID
        AND u_r.HasAllAgencies = 1

UNION

-- get clients where user/report has opcos

SELECT DISTINCT
    cl.ClientCode
FROM MediaA1..Client AS cl
    JOIN dbo.[Users] AS u
        ON u.UserName = system_user
    JOIN dbo.User_Report_OpCo AS u_r_o
        ON u_r_o.UserID = u.UserID
        AND u_r_o.ReportID = @reportID
    JOIN MediaA1..Agency AS ba
        ON ba.OperatingCompanyCode = u_r_o.OpCoCode
        AND ba.AgencyCode = cl.BuyingAgencyCode

EXCEPT 

-- remove any excluded agencies from top level or opco access
SELECT DISTINCT
    c.ClientCode
FROM MediaA1..Client AS c
    JOIN dbo.[Users] AS u
        ON u.UserName = system_user
    JOIN dbo.User_Report_Agency AS u_r_a
        ON u_r_a.AgencyCode = c.BuyingAgencyCode
        AND u_r_a.UserID = u.UserID
        AND u_r_a.ReportID = @reportID
        AND u_r_a.IsExcluded = 1

UNION

-- get clients where user/report has all clients for agency
SELECT DISTINCT
    c.ClientCode
FROM MediaA1..Client AS c
    JOIN dbo.[Users] AS u
        ON u.UserName = system_user
    JOIN dbo.User_Report_Agency AS u_r_a
        ON u_r_a.AgencyCode = c.BuyingAgencyCode
        AND u_r_a.UserID = u.UserID
        AND u_r_a.ReportID = @reportID
        AND u_r_a.HasAllClients = 1

EXCEPT

-- remove clients with restricted access unless user/report has restricted clients
SELECT
    ClientCode
FROM dbo.RestrictedClients
    JOIN dbo.[Users] AS u
        ON u.UserName = system_user
    JOIN dbo.User_Report AS u_r
        ON u_r.UserID = u.UserID
        AND u_r.ReportID = @reportID
        AND u_r.HasRestrictedClients = 0

UNION

-- add client level access (includes restricted clients and excluded agencies)
-- join on MediaA1.client to validate user/report/client belongs to  user_report/agency
SELECT DISTINCT
    u_r_c.ClientCode
FROM dbo.User_Report_Client AS u_r_c
    JOIN dbo.[Users] AS u
        ON u.UserName = system_user
        AND u.UserID = u_r_c.UserID
        AND u_r_c.ReportID = @reportID
    JOIN dbo.User_Report_Agency AS u_r_a
        ON u_r_a.UserID = u.UserID
    JOIN MediaA1..Client AS c
        ON c.ClientCode = u_r_c.ClientCode
        AND c.BuyingAgencyCode = u_r_a.AgencyCode;

GO
/****** Object:  Table [dbo].[User_Report_Media]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_Report_Media](
	[UserID] [smallint] NOT NULL,
	[ReportID] [int] NOT NULL,
	[MediaCode] [int] NOT NULL,
	[CreatedDate] [smalldatetime] NOT NULL,
	[CreatedBy] [varchar](50) NOT NULL,
	[RevisedDate] [smalldatetime] NOT NULL,
	[RevisedBy] [varchar](50) NOT NULL,
 CONSTRAINT [PK_User_Report_Media] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC,
	[ReportID] ASC,
	[MediaCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [dbo].[UserReportMedia]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Create Function UserReportMedia


CREATE FUNCTION [dbo].[UserReportMedia]
  (@reportID int) RETURNS TABLE
AS

-- media for this user/report
-- updated RD 20191020
RETURN

-- get media where user/report has all media
SELECT DISTINCT
    m.MediaCode
FROM MediaA1..Media AS m
    JOIN dbo.[Users] AS u
        ON u.UserName = system_user
    JOIN dbo.User_Report AS u_r
        ON u_r.UserID = u.UserID
        AND u_r.ReportID = @reportID
        AND u_r.HasAllMedia = 1

UNION

-- get media for user/report
SELECT
    m.MediaCode
FROM dbo.User_Report_Media AS u_r_m
    JOIN dbo.[Users] AS u
        ON u.UserName = system_user
        AND u.UserID = u_r_m.UserID
        AND u_r_m.ReportID = @reportID
    JOIN MediaA1.dbo.Media AS m
        ON m.MediaCode = u_r_m.MediaCode
GO
/****** Object:  UserDefinedFunction [dbo].[ur_PassbackReport_SI]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE FUNCTION [dbo].[ur_PassbackReport_SI]
  (
  @startdate date,
  @enddate date) RETURNS TABLE
AS

-- created RD 2020-06-18
-- include draft and exclude client reporting names 2020-07-22
-- remove Draft ?? column RD 2020-07-30
-- add source and rename ismaster and isslave to pay-only and bill-only
-- add buying,creative and agency commission and unbilled spot incomve 2020-10-29
-- unbilled spot income = 0 when is pay only (is master) = 1
-- pick up campaign filter 2 value from mediaa1..filtervalue RD 2020-11-26
-- add paid status and rename bill only to true bill only
-- add si code and name RD 2021-03-29

RETURN

WITH si
AS
(
    SELECT
        [Unit] + [Ledger] + [AccountCode] AS SICode,
        AccAccount.AccountName
    FROM
        AccountA1..AccAccount
    WHERE
        Unit = 'S'
        AND Ledger = 'I'
        AND IsLowLevel = '1'
),
bcsi
AS
(
    SELECT
        bc.BookingCategoryCode,
        bcm.BookingCategoryMediaCode,
        bcm.IncomeAccount AS SICode,
        si.AccountName AS SICodeName
    FROM
        MediaA1..BookingCategory AS bc
        JOIN MediaA1..BookingCategoryMedia AS bcm
            ON bcm.BookingCategoryCode = bc.BookingCategoryCode
        JOIN si
            ON bcm.IncomeAccount = si.SICode
)

SELECT DISTINCT
    oc.OperatingCompanyCode,
    RTRIM(oc.OperatingCompanyName) AS OperatingCompanyName,
    bm.InvoiceCode AS [Cli Inv #],
    FORMAT(bm.InvoiceDate, 'yyyy MM') AS [Invoice Month],
    RTRIM(bc.BookingCategoryName) AS [BookingCategory],
    bcsi.SICode,
    bcsi.SICodeName,
    cl.ClientCode AS Client,
    RTRIM(cl.ClientName) AS [ClientFullName],
    m.MediaName AS Media,
    FORMAT([BuyDate], 'yyyy MM') AS [Activity Month],
    RTRIM(ba.AgencyName) AS [BuyingAgencyFullName],
    fv.FilterValueName AS [Filter2FullName],
    RTRIM(b.BuyerName) AS BuyerName,
    UPPER(bm.SourceSystem) AS Source,
    RTRIM(pr.ProductName) AS [ProductFullName],
    bm.ProductCode AS [Product #],
    RTRIM(ca.CampaignName) AS [CampaignName],
    bm.CampaignCode AS [Campaign #],
    RTRIM(su.SupplierName) AS [SupplierFullName],
    su.FolioCode AS Folio,
    RTRIM(fo.FolioName) AS [FolioName],
    bm.BuySerial AS [SerialNumber],
    bm.Gross,
    CASE
        WHEN bm.IsMaster = 1 THEN 0
        WHEN bm.BillRate = 0 THEN bm.Gross
        ELSE bm.BillRate
    END AS [BillRate],
    bm.Billable,
    bm.BuyingAgencyCommission AS [BuyingAgyComm],
    bm.CreativeAgencyCommission AS [CreativeAgyComm],
    bm.AgencyCommission AS [AgyComm],
    bm.Billable - bm.Billed AS UnBilled,
    CASE
        WHEN bm.InvoiceCode IS NULL THEN bm.BuyingAgencyCommission
        ELSE bm.BuyingAgencyCommission - SUM(amb.BuyingAgencyCommissionBilled) OVER (PARTITION BY amb.BuySerial)
    END AS [UnBilled_BA Comm],
    CASE
        WHEN bm.InvoiceCode IS NULL THEN bm.CreativeAgencyCommission
        ELSE bm.CreativeAgencyCommission - SUM(amb.CreativeAgencyCommissionBilled) OVER (PARTITION BY amb.BuySerial)
    END AS [UnBilled_CA Comm],
    CASE
        WHEN bm.InvoiceCode IS NULL THEN bm.AgencyCommission
        ELSE bm.AgencyCommission - SUM(amb.AgencyCommissionBilled) OVER (PARTITION BY amb.BuySerial)
    END AS [UnBilled_A Comm],
    bm.Payable,
    bm.Payable - bm.Paid AS UnPaid,
    CASE
        WHEN bm.Payable > 0
            AND (bm.Payable - bm.Paid) = bm.Payable THEN 'UNPAID'
        WHEN bm.Paid > 0
            AND bm.Paid < bm.Payable THEN 'PART-PAID'
        WHEN bm.Payable > 0
            AND bm.Payable = bm.Paid THEN 'FULL-PAID'
        WHEN bm.Payable = 0
            AND bm.Paid = 0 THEN 'BILL-ONLY'
        ELSE 'UNKNOWN'
    END AS PaidStatus,
    bm.BillableCostOfSale,
    CASE
        WHEN bm.IsMaster = 1 THEN 0
        WHEN bm.BillRate = 0 THEN 0 -- billrate = 0 -> billrate = gross hence gross - gross = 0
        ELSE bm.BillRate - bm.Gross
    END AS [GrossSpotIncome],
    CASE
        WHEN bm.IsMaster = 1 THEN 0
        WHEN bm.BillRate = 0 THEN 0 -- same logic as gross
        ELSE CONVERT(MONEY, ROUND((bm.BillRate - bm.Gross) - ((bm.BillRate - bm.Gross) * (bm.MediaDiscountPercentage / 100.0)), 2))
    END AS [NetSpotIncome],
    --
    CASE
        WHEN bm.IsMaster = 1 THEN 0
        WHEN bm.InvoiceCode IS NULL THEN bm.BillableCostOfSale - bm.Payable
        ELSE (bm.BillableCostOfSale - bm.Payable) -
        SUM(amb.BillableCostSaleBilled - amb.PayableBilled) OVER (PARTITION BY amb.BuySerial)
    END AS [UnBilledSpotIncome],
    CASE
        WHEN bm.IsCancelled = 1 THEN 'YES'
        ELSE 'NO'
    END AS Cancelled,
    CASE
        WHEN bm.IsDraft = 1 THEN 'YES'
        ELSE 'NO'
    END AS Draft,
    bm.BuyDate AS [Date],
    CASE
        WHEN bm.IsMaster = 1 THEN 'YES'
        ELSE 'NO'
    END AS [PayOnly],
    CASE
        WHEN bm.IsSlave = 1 THEN 'YES'
        ELSE 'NO'
    END AS [BillOnlyFlag]
FROM
    MediaA1..BuyMoney AS bm
    JOIN UserReportClient(3) AS urc
        ON urc.ClientCode = bm.ClientCode
    JOIN UserReportMedia(3) AS urm
        ON urm.MediaCode = bm.MediaCode
    LEFT JOIN AccountA1..AccMedBill AS amb
        ON amb.BuySerial = bm.BuySerial
    JOIN MediaA1..Client AS cl
        ON bm.MediaCode = cl.MediaCode
        AND bm.ClientCode = cl.ClientCode
    JOIN MediaA1..BuyingAgency AS ba
        ON cl.BuyingAgencyCode = ba.AgencyCode
    JOIN MediaA1..OperatingCompany AS oc
        ON ba.OperatingCompanyCode = oc.OperatingCompanyCode
    JOIN MediaA1..Media AS m
        ON bm.MediaCode = m.MediaCode
    JOIN MediaA1..BookingCategory AS bc
        ON bm.BookingCategoryCode = bc.BookingCategoryCode
    JOIN MediaA1..Product AS pr
        ON bm.MediaCode = pr.MediaCode
        AND bm.ClientCode = pr.ClientCode
        AND bm.ProductCode = pr.ProductCode
    JOIN MediaA1..Campaign AS ca
        ON bm.MediaCode = ca.MediaCode
        AND bm.ClientCode = ca.ClientCode
        AND bm.ProductCode = ca.ProductCode
        AND bm.CampaignCode = ca.CampaignCode
    LEFT JOIN MediaA1..FilterValue AS fv
        ON fv.FilterNumber = 2
        AND fv.FilterValue = ca.Filter2
    JOIN MediaA1..Supplier AS su
        ON bm.MediaCode = su.MediaCode
        AND bm.SupplierID = su.SupplierID
    JOIN MediaA1..Folio AS fo
        ON su.MediaCode = fo.MediaCode
        AND su.FolioCode = fo.FolioCode
    LEFT JOIN MediaA1..Buyer AS b
        ON bm.BuyerInitials = b.BuyerInitials
    LEFT JOIN bcsi
        ON bcsi.BookingCategoryCode = bm.BookingCategoryCode
        AND bcsi.BookingCategoryMediaCode = bm.MediaCode
WHERE
    bm.BuyDate BETWEEN @startdate AND @enddate;
GO
/****** Object:  UserDefinedFunction [dbo].[UserReportOpco]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[UserReportOpco]
  (@reportID int) RETURNS TABLE
AS

-- opcos for this user/report
-- created RD 2021-04-28
RETURN

-- get opcos for user/report with all agencies
SELECT DISTINCT
    oc.OperatingCompanyCode
FROM MediaA1..OperatingCompany AS oc
    JOIN dbo.[Users] AS u
        ON u.UserName = system_user
    JOIN dbo.User_Report AS u_r
        ON u_r.UserID = u.UserID
        AND u_r.ReportID = @reportID
        AND u_r.HasAllAgencies = 1

UNION

-- get opcos where user/report has opcos

SELECT DISTINCT
    uro.OpCoCode
FROM MediaA1..OperatingCompany as oc
    JOIN dbo.[Users] AS u
        ON u.UserName = system_user
    JOIN dbo.User_Report_OpCo AS uro
        ON uro.UserID = u.UserID
        AND uro.ReportID = @reportID

GO
/****** Object:  UserDefinedFunction [dbo].[ur_MQSFullData]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE FUNCTION [dbo].[ur_MQSFullData]
  (@opco int) RETURNS TABLE
AS

-- MQS Full Data
-- created RD 2021-04-29
-- added AdvertiserName RD 2021-05-10

RETURN

-- set opco(s) from report parameter
-- -1 returns all opcos otherwise returns the opco parameter
WITH opcos (opco_code)
AS
(
    SELECT
        OperatingCompanyCode
    FROM
        MediaA1..OperatingCompany
    WHERE
        @opco = -1
    UNION
    SELECT
        @opco
    WHERE
        @opco <> -1
)
-- select top max integer | hack to allow order by
SELECT TOP 2147483647
    iqa.ActionerPIN,
    COALESCE(b.BuyerName, '') AS ActionerName,
    i.OperatingCompanyCode,
    COALESCE(oc.OperatingCompanyName, '') AS OperatingCompanyName,
    COALESCE(i.BuyingAgencyCode, '') AS BuyingAgencyCode,
    COALESCE(iqa.BuyerInitials, '') AS BuyerInitials,
    COALESCE(b1.BuyerName, '') AS BuyerName,
    i.AdvertiserName,
    i.PayeeID,
    p.PayeeName,
    iqa.InvoiceQueryID,
    i.DocumentID,
    i.InvoiceNumber,
    iqa.SequenceNumber,
    iqa.AddedDateTime AS ActionAddedDate,
    FORMAT(iqa.AddedDateTime, 'yyyy-MM') AS ActionAddedMonth,
    COALESCE(iqa.Comments, '') AS ActionComments,
    1 AS [#ActionsSum],
    iq.InvoiceQueryID & '-' & iqa.SequenceNumber AS [#QueryActionsCount],
    iq.[Status],
    CASE
        WHEN iq.[Status] = 'Closed' THEN 'Closed'
        ELSE 'Open'
    END AS [Closed/Open],
    iq.AddedDateTime AS QueryAdded,
    COALESCE(CONVERT(CHAR(10), iq.ClosedDateTime, 103), '') AS QueryClosed,
    COALESCE(rr.Description, '') AS QueryReasonDescription,
    COALESCE(rr1.Description, '') AS QueryResolutionDescription,
    i.Gross,
    i.NetPayable,
    i.VATPayable
FROM
    MediaA1..Invoice AS i
    -- filter on opcos user running the report is configured to see
    -- report id is 8
    JOIN dbo.UserReportOpco(8) AS uro
        ON uro.OperatingCompanyCode = i.OperatingCompanyCode
    -- filter on report parameter -1 = all opcos the user can see otherwise the report parameter
    -- for example if the report parameter is -1 (all opcos) and the user only has visibility to opcos 2 and 3 the user will see opcos 2 and 3 (all he has access to)
    JOIN opcos AS poc
        ON poc.opco_code = uro.OperatingCompanyCode
    JOIN MediaA1..InvoiceQuery AS iq
        ON i.DocumentID = iq.DocumentID
    JOIN MediaA1..OperatingCompany AS oc
        ON i.OperatingCompanyCode = oc.OperatingCompanyCode
    JOIN MediaA1..InvoiceQueryAction AS iqa
        ON iq.InvoiceQueryID = iqa.InvoiceQueryID
    LEFT JOIN MediaA1..Buyer AS b
        ON iqa.ActionerPIN = b.BuyerPIN
    LEFT JOIN MediaA1..Buyer AS b1
        ON iqa.BuyerInitials = b1.BuyerInitials
    LEFT JOIN MediaA1..ReasonResolution AS rr
        ON iq.ReasonID = rr.ReasonResolutionID
    LEFT JOIN MediaA1..ReasonResolution AS rr1
        ON iq.ResolutionID = rr1.ReasonResolutionID
    JOIN MediaA1..Payee AS p
        ON i.PayeeID = p.PayeeID
ORDER BY
    iqa.InvoiceQueryID,
    iqa.SequenceNumber,
    iqa.AddedDateTime;

GO
/****** Object:  View [dbo].[ur_AccPrdUnbilledReport]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE view  [dbo].[ur_AccPrdUnbilledReport] AS

-- ticket 3014 Provide dataset for Unbilled Report – powerBI dashboard
-- created Denis Nkulin (EPAM) 2021-09-23
-- return bm.buydate to current date RD 2021-12-09
-- removed end date | return all bookings at Cengiz's request RD 2021-12-08

	SELECT 
		cl.ClientName AS [Client Full Name]
		,apc.BillingGroup AS [Billing Group]
		,CONCAT(RTRIM(LTRIM(bm.ClientCode)),'/',bm.ProductCode,'/',bm.CampaignCode) AS [CliProCamp]
		,app.ProductName AS [ProductName]
		,app.ProductShortName AS [ProductFullName]
		,cam.CampaignName AS [Campaign Name]
		,convert(NVARCHAR, cam.StartDate, 101)+' - '+convert(NVARCHAR, cam.EndDate, 101) AS [Campaign Dates]
		,cam.ClientReference AS [Campaign Client Reference(s)]
		,cam.CampaignReference AS [Campaign Reference]
		,b.BuyerName AS [Buyer Name]
		,bm.MediaCode AS [Media]
		,med.MediaLetter AS [MediaLetter]
		, case coalesce(iv.VoucherStatus, brv.VoucherStatus, pv.VoucherStatus)
			 when 'V' then 'Vouchered'  
			 when 'T' then 'No Trace'  
			 when 'R' then 'Rejected'  
			 when 'Q' then 'Queried'  
			 when 'U' then 'Unvouchered'  
			 else 'Not determined'  
		  end AS [VoucherStatus]
		,bc.BookingCategoryName AS [Booking Category]
		,s.SupplierName AS [Supplier Full Name]
		,ba.AgencyCode AS [Buying Agency Number]
		,ba.AgencyName AS [Buying Agency Full Name]
 		,fv.FilterValueName AS [Hyperion Full Name]
		,fv2.FilterValueName AS [BILLING/CREDIT CONTROL FULL NAME]
		,YEAR (bm.BuyDate) AS [Year]
		,CONCAT (YEAR(bm.BuyDate),'/',MONTH(bm.BuyDate)) AS [Year Month]
		,sum(bm.Billable-bm.Billed) AS [Unbilled] 
		,sum(bm.Billed+bm.LevyBilled) AS [Total Billed]
		,sum(bm.Billable+bm.LevyBillable) AS [Total Billable]
		,sum(bm.LevyBillable-bm.LevyBilled) AS [ASBOF Unbilled]
		,cl.ClientShortName AS [Client Name]
		,oc.OperatingCompanyName AS [OpCo]
		,DATEDIFF (day, bm.BuyDate, GETDATE()) AS [Datediff]
		,sum(case when DATEDIFF (day, bm.BuyDate, GETDATE()) between 0 AND 30 then (bm.Billable+bm.LevyBillable)-(bm.Billed+bm.LevyBilled) else 0 end) AS [0-30 days]
		,sum(case when DATEDIFF (day, bm.BuyDate, GETDATE()) between 31 AND 60 then (bm.Billable+bm.LevyBillable)-(bm.Billed+bm.LevyBilled) else 0 end) AS [31-60 days]
		,sum(case when DATEDIFF (day, bm.BuyDate, GETDATE()) between 61 AND 90 then (bm.Billable+bm.LevyBillable)-(bm.Billed+bm.LevyBilled) else 0 end) AS [61-90 days]
		,sum(case when DATEDIFF (day, bm.BuyDate, GETDATE()) between 91 AND 120 then (bm.Billable+bm.LevyBillable)-(bm.Billed+bm.LevyBilled) else 0 end) AS [91-120 days]
		,sum(case when DATEDIFF (day, bm.BuyDate, GETDATE()) between 121 AND 180 then (bm.Billable+bm.LevyBillable)-(bm.Billed+bm.LevyBilled) else 0 end) AS [121-180 days]
		,sum(case when DATEDIFF (day, bm.BuyDate, GETDATE()) between 181 AND 365 then (bm.Billable+bm.LevyBillable)-(bm.Billed+bm.LevyBilled) else 0 end) AS [181-365 days]
		,sum(case when DATEDIFF (day, bm.BuyDate, GETDATE()) > 365 then (bm.Billable+bm.LevyBillable)-(bm.Billed+bm.LevyBilled) else 0 end) AS [> 365 days]
		,DATEDIFF (day, DATEADD(MM, DATEDIFF(MM, 0, bm.buydate), 0), GETDATE()) AS [Datediff FirstD] 
		,sum(case when DATEDIFF (day, DATEADD(MM, DATEDIFF(MM, 0, bm.buydate), 0), GETDATE()) between 0 AND 30 then (bm.Billable+bm.LevyBillable)-(bm.Billed+bm.LevyBilled) else 0 end) AS [0-30 days FirstD] 
		,sum(case when DATEDIFF (day, DATEADD(MM, DATEDIFF(MM, 0, bm.buydate), 0), GETDATE()) between 31 AND 60 then (bm.Billable+bm.LevyBillable)-(bm.Billed+bm.LevyBilled) else 0 end) AS [31-60 days FirstD]
		,sum(case when DATEDIFF (day, DATEADD(MM, DATEDIFF(MM, 0, bm.buydate), 0), GETDATE()) between 61 AND 90 then (bm.Billable+bm.LevyBillable)-(bm.Billed+bm.LevyBilled) else 0 end) AS [61-90 days FirstD]
		,sum(case when DATEDIFF (day, DATEADD(MM, DATEDIFF(MM, 0, bm.buydate), 0), GETDATE()) between 91 AND 120 then (bm.Billable+bm.LevyBillable)-(bm.Billed+bm.LevyBilled) else 0 end) AS [91-120 days FirstD]
		,sum(case when DATEDIFF (day, DATEADD(MM, DATEDIFF(MM, 0, bm.buydate), 0), GETDATE()) between 121 AND 180 then (bm.Billable+bm.LevyBillable)-(bm.Billed+bm.LevyBilled) else 0 end) AS [121-180 days FirstD]
		,sum(case when DATEDIFF (day, DATEADD(MM, DATEDIFF(MM, 0, bm.buydate), 0), GETDATE()) between 181 AND 365 then (bm.Billable+bm.LevyBillable)-(bm.Billed+bm.LevyBilled) else 0 end) AS [181-365 days FirstD]
		,sum(case when DATEDIFF (day, DATEADD(MM, DATEDIFF(MM, 0, bm.buydate), 0), GETDATE()) > 365 then (bm.Billable+bm.LevyBillable)-(bm.Billed+bm.LevyBilled) else 0 end) AS [> 365 days FirstD]
	FROM MediaA1..[BuyMoney] AS bm 
		JOIN MediaA1..[Client] AS cl
			ON bm.MediaCode = cl.MediaCode 
			AND bm.ClientCode = cl.ClientCode
		JOIN MediaA1..BuyingAgency AS ba 
			ON cl.BuyingAgencyCode = ba.AgencyCode
		JOIN MediaA1..OperatingCompany AS oc 
			ON ba.OperatingCompanyCode = oc.OperatingCompanyCode
		JOIN dbo.UserReportOpco(15) as rep --ur_AccPrdUnbilledReport
			ON ba.OperatingCompanyCode = rep.OperatingCompanyCode
		JOIN AccountA1..[AccPrdClient] AS apc 
			ON bm.ClientCode = apc.ClientCode
		JOIN MediaA1..[BookingCategory] AS bc 
			ON bm.BookingCategoryCode = bc.BookingCategoryCode
		JOIN MediaA1..[Campaign] AS cam 
			ON bm.MediaCode = cam.MediaCode 
			AND bm.ClientCode = cam.ClientCode
			AND bm.ProductCode = cam.ProductCode
			AND bm.CampaignCode = cam.CampaignCode
		JOIN MediaA1..Product AS app 
			ON bm.ClientCode = app.ClientCode
			AND bm.ProductCode = app.ProductCode
			AND bm.MediaCode = app.MediaCode
		JOIN MediaA1..Media AS med 
			ON bm.MediaCode = med.MediaCode
		LEFT JOIN MediaA1..InetVoucher AS iv 
			ON bm.BuySerial = iv.BuySerial
		LEFT JOIN MediaA1..BuyPrintVoucher AS pv 
			ON bm.BuySerial = pv.BuySerial
		LEFT JOIN MediaA1..BuyBroadcastVoucher AS brv 
			ON bm.BuySerial = brv.BuySerial
		LEFT JOIN MediaA1..[Supplier] AS s 
			ON bm.MediaCode = s.MediaCode
			AND bm.SupplierID = s.SupplierID
		LEFT JOIN MediaA1..[Buyer] AS b 
			ON bm.BuyerInitials = b.BuyerInitials
		LEFT JOIN MediaA1..[FilterValue] AS fv 
			ON cl.filter1 = fv.FilterValue
			AND fv.FilterNumber = 1
		LEFT JOIN MediaA1..[FilterValue] AS fv2 
			ON cl.filter5 = fv2.FilterValue 
			AND fv2.FilterNumber = 5
	--WHERE
	--    bm.BuyDate <= getdate()
	GROUP BY
		cl.ClientName
		,apc.BillingGroup
		,bm.ClientCode
		,bm.ProductCode
		,bm.CampaignCode
		,app.ProductName
		,app.ProductShortName
		,cam.CampaignName
		,cam.StartDate
		,cam.EndDate
		,cam.ClientReference
		,cam.CampaignReference
		,b.BuyerName
		,bm.MediaCode
		,med.MediaLetter
		,case coalesce(iv.VoucherStatus, brv.VoucherStatus, pv.VoucherStatus)
			 when 'V' then 'Vouchered'  
			 when 'T' then 'No Trace'  
			 when 'R' then 'Rejected'  
			 when 'Q' then 'Queried'  
			 when 'U' then 'Unvouchered'  
			 else 'Not determined'  
		  end
		,bc.BookingCategoryName
		,s.SupplierName
		,ba.AgencyCode
		,ba.AgencyName
 		,fv.FilterValueName
		,fv2.FilterValueName
		,cl.ClientShortName
		,oc.OperatingCompanyName
		,bm.BuyDate
	HAVING sum((bm.Billable+bm.LevyBillable+bm.VATBillable+bm.LevyVatBillable)-(bm.Billed+bm.LevyBilled+bm.VATBilled+bm.LevyVatBilled)) <> 0
		



GO
/****** Object:  Table [dbo].[AccPrdOfficeOperatingCompany]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccPrdOfficeOperatingCompany](
	[OfficeCode] [char](10) NOT NULL,
	[OfficeName] [varchar](50) NULL,
	[OperatingCompanyCode] [varchar](10) NULL,
	[OperatingCompanyName] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[OfficeCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 93) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[ur_AccPrdDebtorsReport]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[ur_AccPrdDebtorsReport] AS

-- ticket 3015 Create Data Dictionary for Debtor report
-- created Denis Nkulin (EPAM) 2021-09-23
-- remove where clause restricting report to end of previous month RD 2021-12-08
-- add DueStatus field RD 2021-12-15
-- fix DueStatus - cast getdate() as date for correct date comparison RD 2022-01-06
-- add fields (drm.sumAmountInv, [CreditNote?]) and filter (drm.sumAmountInv <> 0) Denis Nkulin (EPAM) 2022-01-12
-- add due stats for Invoice Date RD 2022-02-07
-- add no due date column to due date aging columns RD 2022-03-17

SELECT
    drm.Debtor AS [ACC CODE],
    aa.AccountName AS [CUST NAME],
    rtrim(apc.ClientCode) AS ClientCode,
    apc.ClientName AS [CLIENT],
    drm.InvoiceSource AS [MEDIA],
    drm.InvoiceNumber AS [INV NO],
    drm.TransactionType,
    drm.MonthOfActivity,
    rtrim(drm.Debtor) + drm.InvoiceNumber
    + cast(sum(CASE
        WHEN adb.InvoiceDueDate < dateadd(MM, datediff(MM, 0, getdate()) + 1, 0) THEN drm.Amount
        ELSE 0
    END) AS nvarchar) AS [CONCINV],
    drm.InvoiceDate AS [INV DATE],
    adb.InvoiceDueDate AS [DUE DATE],
    CASE
        WHEN drm.InvoiceDate IS NULL THEN NULL
        WHEN drm.InvoiceDate < cast(getdate() AS date) THEN 'Overdue'
        WHEN drm.InvoiceDate <= eomonth(cast(getdate() AS date)) THEN 'Due Month End'
        ELSE 'Current'
    END AS [StatusByInvoiceDate],
    CASE
        WHEN adb.InvoiceDueDate IS NULL THEN NULL
        WHEN adb.InvoiceDueDate < cast(getdate() AS date) THEN 'Overdue'
        WHEN adb.InvoiceDueDate <= eomonth(cast(getdate() AS date)) THEN 'Due Month End'
        ELSE 'Current'
    END AS [StatusByDueDate],
    datediff(DAY, drm.InvoiceDate, adb.InvoiceDueDate) AS [PT],
    datediff(DAY, adb.InvoiceDueDate, getdate()) AS [Days past due],
    sum(CASE
        WHEN adb.InvoiceDueDate < dateadd(MM, datediff(MM, 0, getdate()), 0) THEN drm.Amount
        ELSE 0
    END) AS [TOTAL Overdue],
    sum(CASE
        WHEN adb.InvoiceDueDate < dateadd(MM, datediff(MM, 0, getdate()) + 1, 0) THEN drm.Amount
        ELSE 0
    END) AS [TOTAL Due by next month end],
    sum(drm.Amount) AS [Total (GBP)],
    aac.CurrencyCode AS [CURRENCY],
    sum(aac.Amount) AS [AMOUNT (CUR)],
    drm.[PO NUMBER],
    apd.ProductCode + ' ' + apd.ProductName AS [PRODUCT],
    drm.CAMPAIGN AS CAMPAIGN,
    drm.[CAMP REF],
    'Not available' AS [Invicta Status],
    'Not available' AS [PTP],
    'Not available' AS [General Comments],
    'Not available' AS [Query Code],
    'Not available' AS [Query Comments],
    'Not available' AS [Ageing note?],
    'Not available' AS [QUERY?],
    'Not available' AS [Status],
    'Not available' AS [Credit controller],
    sum(CASE
        WHEN datediff(DAY, adb.InvoiceDueDate, getdate()) < 0 THEN drm.Amount
        ELSE 0
    END) AS [NOT DUE],
    sum(CASE
        WHEN adb.InvoiceDueDate IS NULL THEN drm.Amount
        ELSE 0
    END) AS [NO DUE DATE],
    sum(CASE
        WHEN datediff(DAY, adb.InvoiceDueDate, getdate()) BETWEEN 0 AND 30 THEN drm.Amount
        ELSE 0
    END) AS [0-30 DAYS due],
    sum(CASE
        WHEN datediff(DAY, adb.InvoiceDueDate, getdate()) BETWEEN 31 AND 60 THEN drm.Amount
        ELSE 0
    END) AS [31-60 DAYS due],
    sum(CASE
        WHEN datediff(DAY, adb.InvoiceDueDate, getdate()) BETWEEN 61 AND 90 THEN drm.Amount
        ELSE 0
    END) AS [61-90 DAYS due],
    sum(CASE
        WHEN datediff(DAY, adb.InvoiceDueDate, getdate()) BETWEEN 91 AND 120 THEN drm.Amount
        ELSE 0
    END) AS [91-120 DAYS due],
    sum(CASE
        WHEN datediff(DAY, adb.InvoiceDueDate, getdate()) BETWEEN 121 AND 180 THEN drm.Amount
        ELSE 0
    END) AS [121-180 DAYS due],
    sum(CASE
        WHEN datediff(DAY, adb.InvoiceDueDate, getdate()) BETWEEN 181 AND 365 THEN drm.Amount
        ELSE 0
    END) AS [181-365 DAYS due],
    sum(CASE
        WHEN datediff(DAY, adb.InvoiceDueDate, getdate()) > 365 THEN drm.Amount
        ELSE 0
    END) AS [>365 DAYS due],
    sum(CASE
        WHEN datediff(DAY, adb.InvoiceDueDate, getdate()) BETWEEN 121 AND 150 THEN drm.Amount
        ELSE 0
    END) AS [121-150 DAYS due],
    sum(CASE
        WHEN datediff(DAY, adb.InvoiceDueDate, getdate()) BETWEEN 151 AND 180 THEN drm.Amount
        ELSE 0
    END) AS [151-180 DAYS due],
    sum(CASE
        WHEN datediff(DAY, adb.InvoiceDueDate, getdate()) > 181 THEN drm.Amount
        ELSE 0
    END) AS [181+ DAYS due],
    sum(CASE
        WHEN datediff(DAY, drm.InvoiceDate, getdate()) < 0 THEN drm.Amount
        ELSE 0
    END) AS [FUTURE BILL],
    sum(CASE
        WHEN datediff(DAY, drm.InvoiceDate, getdate()) BETWEEN 0 AND 30 THEN drm.Amount
        ELSE 0
    END) AS [0-30 DAYS],
    sum(CASE
        WHEN datediff(DAY, drm.InvoiceDate, getdate()) BETWEEN 31 AND 60 THEN drm.Amount
        ELSE 0
    END) AS [31-60 DAYS],
    sum(CASE
        WHEN datediff(DAY, drm.InvoiceDate, getdate()) BETWEEN 61 AND 90 THEN drm.Amount
        ELSE 0
    END) AS [61-90 DAYS],
    sum(CASE
        WHEN datediff(DAY, drm.InvoiceDate, getdate()) BETWEEN 91 AND 120 THEN drm.Amount
        ELSE 0
    END) AS [91-120 DAYS],
    sum(CASE
        WHEN datediff(DAY, drm.InvoiceDate, getdate()) BETWEEN 121 AND 150 THEN drm.Amount
        ELSE 0
    END) AS [121-150 DAYS],
    sum(CASE
        WHEN datediff(DAY, drm.InvoiceDate, getdate()) BETWEEN 151 AND 180 THEN drm.Amount
        ELSE 0
    END) AS [151-180 DAYS],
    sum(CASE
        WHEN datediff(DAY, drm.InvoiceDate, getdate()) > 180 THEN drm.Amount
        ELSE 0
    END) AS [181+ DAYS],
    sum(CASE
        WHEN datediff(DAY, drm.InvoiceDate, getdate()) BETWEEN 181 AND 365 THEN drm.Amount
        ELSE 0
    END) AS [181-365 DAYS],
    sum(CASE
        WHEN datediff(DAY, drm.InvoiceDate, getdate()) > 365 THEN drm.Amount
        ELSE 0
    END) AS [>365 DAYS],
    drm.OfficeName AS [OFFICE],
    drm.OperatingCompanyName AS [Agency],
    'Not determined' AS [DIVISION],
    CASE
        WHEN drm.IsInvoice = 1
            AND sum(drm.sumAmountInv) < 0 THEN 'Yes'
        ELSE 'No'
    END AS [CreditNote?],
    drm.IsInvoice
FROM
    (
        SELECT
            drm.*,
            camp.ClientReference AS [PO NUMBER],
            cast(camp.CampaignCode AS nvarchar) + ' ' + camp.CampaignName AS [CAMPAIGN],
            camp.CampaignReference AS [CAMP REF],
            apoc.OfficeName,
            apoc.OperatingCompanyName,
            sum(drm.Amount) OVER (PARTITION BY drm.InvoiceNumber, drm.Debtor, drm.Officecode) AS sumAmountInv
        FROM
            AccountA1..[AccDrMaster] AS drm
            JOIN dbo.[AccPrdOfficeOperatingCompany] AS apoc
                ON drm.OfficeCode = apoc.OfficeCode
            JOIN dbo.UserReportOpco(14) AS rep --ur_AccPrdDebtorsReport
                ON cast(apoc.OperatingCompanyCode AS int) = rep.OperatingCompanyCode
            LEFT JOIN MediaA1..MEDIA AS med
                ON drm.InvoiceSource = med.[MediaName]
            LEFT JOIN MediaA1..[CAMPAIGN] AS camp
                ON drm.ClientCode = camp.ClientCode
                AND try_cast(drm.ProductCode AS int) = camp.ProductCode
                AND try_cast(drm.CampaignJob AS int) = camp.CampaignCode
                AND med.MediaCode = camp.MediaCode
    ) AS drm
    LEFT JOIN AccountA1..[AccPrdClient] AS apc
        ON drm.ClientCode = apc.ClientCode
    LEFT JOIN (
            SELECT DISTINCT
                AccountCode,
                AccountName
            FROM
                AccountA1..[AccAccount]
            WHERE
                IsLowLevel = '1'
                AND Unit = 'S'
                AND Ledger = 'R'
        ) AS aa
        ON drm.Debtor = aa.AccountCode
    LEFT JOIN AccountA1..[AccPrdProduct] AS apd
        ON drm.ClientCode = apd.ClientCode
        AND drm.ProductCode = apd.ProductCode
    LEFT JOIN AccountA1..[AccDrBilling] AS adb
        ON drm.UniqueID = adb.UniqueID
    LEFT JOIN AccountA1..[AccAllCurrency] AS aac
        ON drm.UniqueID = aac.UniqueID
WHERE
    drm.sumAmountInv <> 0
-- WHERE drm.MonthOfActivity <= DATEFROMPARTS(DATEPART(YEAR, DATEADD(MONTH, -1, GETDATE())), DATEPART(MONTH, DATEADD(MONTH, -1, GETDATE())), 1) -- month_of_activity | previous month to this month
GROUP BY
    drm.Debtor,
    aa.AccountName,
    drm.TransactionType,
    rtrim(apc.ClientCode),
    apc.ClientName,
    drm.InvoiceSource,
    drm.InvoiceNumber,
    drm.MonthOfActivity,
    drm.InvoiceDate,
    adb.InvoiceDueDate,
    aac.CurrencyCode,
    drm.[PO NUMBER],
    apd.ProductCode,
    apd.ProductName,
    drm.[CAMPAIGN],
    drm.[CAMP REF],
    drm.OfficeName,
    drm.OperatingCompanyName,
    drm.IsInvoice
HAVING
    sum(drm.Amount) <> 0


GO
/****** Object:  View [dbo].[AccAccount]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[AccAccount]
AS

SELECT
    RecordType,
    ActionLast,
    ActDatetime,
    Agency,
    Unit,
    Ledger,
    AccountCode,
    AccountName,
    Filter1,
    Filter2,
    Filter3,
    Filter4,
    Filter5,
    OfficeCode,
    [Security],
    IsLocked,
    Address1,
    Address2,
    Address3,
    Address4,
    Address5,
    IsLowLevel
FROM AccountA1.dbo.AccAccount;

GO
/****** Object:  View [dbo].[ur_qryAccAccount_CreditorLedgers]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[ur_qryAccAccount_CreditorLedgers] AS 



SELECT a.Unit, a.Ledger, a.AccountCode, a.AccountName
FROM dbo.AccAccount a
WHERE (((a.Unit)='S') AND ((a.Ledger) IN ('F','V','X')));

GO
/****** Object:  View [dbo].[ur_qryAppendSofyDataFor_Sales_PaymentDate]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[ur_qryAppendSofyDataFor_Sales_PaymentDate] AS

SELECT a.Debtor
, a.OfficeCode
, a.InvoiceNumber
, a.InvoiceDate
, Max(a.IsDebit) AS MaxOfIsDebit
, Max(a.IsCredit) AS MaxOfIsCredit
, Sum(a.Amount) AS SumOfAmount
, (SELECT TOP 1 TransactionType FROM AccDrMaster ORDER BY TransactionType DESC) AS LastOfTransactionType --Last(dbo_AccDrMaster.TransactionType) AS LastOfTransactionType --Last not a function in SQL Server
, Max(IIf([TransactionType]=30,[AddedDate],NULL)) AS CashDate
, Max(a.ContraDate) AS ContraDate
, Max(a.ReversedDate) AS ReversedDate
, Max(a.IsInvoice) AS MaxOfIsInvoice
, Max(a.IsPayment) AS MaxOfIsPayment
, Max(a.IsReversed) AS MaxOfIsReversed
FROM AccDrMaster a --AccountA1
WHERE a.MonthOfActivity Between '2022-01-01' AND '2022-02-01' --Between [Forms]![frm_MainMenu]![StartDate] And [Forms]![frm_MainMenu]![EndDate])) --insert dates using variables
GROUP BY a.Debtor, a.OfficeCode, a.InvoiceNumber, a.InvoiceDate
HAVING Max(a.ContraDate) Is Not Null
GO
/****** Object:  Table [dbo].[tblOffice_Entity_VAT_RegListing]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblOffice_Entity_VAT_RegListing](
	[OfficeCode] [varchar](2) NOT NULL,
	[LegalEntityName] [varchar](50) NULL,
	[CompanyRegNo] [varchar](10) NULL,
	[VATGroupName] [varchar](50) NULL,
	[VATRegNo] [varchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblGroupMTaxCodeMapping]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblGroupMTaxCodeMapping](
	[System] [varchar](20) NOT NULL,
	[TaxCodeId] [varchar](10) NOT NULL,
	[Description] [varchar](50) NULL,
	[TaxReportingCountry] [varchar](3) NULL,
	[TransactionType] [varchar](20) NULL,
	[Rate] [money] NULL,
	[Recoverability] [varchar](20) NULL,
	[BoxNet] [varchar](20) NULL,
	[BoxTax] [varchar](20) NULL,
	[Comments] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [dbo].[ur_tblPorchases Fields Horizontal]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--INSERT INTO [tblPorchases Fields Horizontal] ( 
--DataLineNo
--, [Line Identifier]
--, [Entity ID]
--, [Entity Name]
--, [Entity Country]
--, [VAT Registration Number]
--, [System]
--, [Purchase Invoice Type]
--, [Document Number]
--, [Document Identifier]
--, [Posting Date]
--, [Document Date]
--, [Clearing Date]
--, [Vendor ID]
--, [Vendor Name]
--, [Invoice Currency]
--, [Entity Currency]
--, [Net Value (Entity Currency)]
--, [Net Value (Reporting Currency)]
--, [Tax Value (Entity Currency)]
--, [Tax Value (Reporting Currency)]
--, [Gross Value (Entity Currency)]
--, [Gross Value (Reporting Currency)]
--, [Tax Code Type]
--, [Tax Code ID]
--, [Tax Code Description]
--, [Tax Percentage]
--, [Tax Reporting Country]
--, [Tax Recoverable Flag]
--, [Recoverable/Irrecoverable Tax Rate]
--, [Effective Tax Rate]
--, [Cost Centre] )

CREATE FUNCTION [dbo].[ur_tblPorchases Fields Horizontal] 
(@DateStart date, @DateEnd date) RETURNS TABLE
as

-- ticket 6495 Media Discrepancy Report SQL optimization
-- created Nathan Pennington 2022-04-13

RETURN

SELECT 1 AS DataLineNo
, FORMAT([MonthOfActivity],'yyyy-MM') + ' MOA' AS 'Line Identifier'
--, CAST(YEAR([MonthOfActivity]) AS varchar) + '-' + CAST(MONTH([MonthOfActivity]) AS varchar) + ' MOA' AS MOA   --Format([MonthOfActivity],"yyyy-mm") & " MOA" AS MOA -- sql " and & need converting as well as format
, tblOffice_Entity_VAT_RegListing.[CompanyRegNo] AS 'Entity ID'
, tblOffice_Entity_VAT_RegListing.[LegalEntityName] AS 'Entity Name'
, tblGroupMTaxCodeMapping.[TaxReportingCountry] AS 'Entity Country'
, tblOffice_Entity_VAT_RegListing.[VATRegNo] AS 'VAT Registration Number'
, tblGroupMTaxCodeMapping.[System] AS 'System'
, ReportingA1.dbo.AccTranType.TranTypeName AS 'Purchase Invoice Type'
, AccountA1.dbo.AccVATMaster.TransactionReference AS 'Document Number'
, LTRIM(RTRIM(AccountA1.dbo.AccVATMaster.[AccountCode])) + '-' + AccountA1.dbo.AccVATMaster.[OfficeCode] + '-' + [ContraUnit] + [ContraLedger] + LTRIM(RTRIM([ContraAccountCode])) + '-' + [TranTypeName] + '-' + 'Inv ' + LTRIM(RTRIM([TransactionLongReference])) + '-' + 'Dte ' + CAST([TransactionDate] AS varchar) + '-' + 'Vat £' + CAST([Amount] AS varchar) AS 'Document Identifier'  --Trim([dbo_AccVATMaster]![AccountCode]) & "-" & [OfficeCode] & "-" & [ContraUnit] & [ContraLedger] & Trim([ContraAccountCode]) & "-" & [TranTypeName] & "-" & "Inv " & Trim([TransactionLongReference]) & "-" & "Dte " & CAST([TransactionDate] AS varchar) & "-" & "Vat £" & [Amount] AS DocumentIdentifier --sql & and " need converting
, AccountA1.dbo.AccVATMaster.AddedDate AS 'Posting Date'
, AccountA1.dbo.AccVATMaster.TransactionDate AS 'Document Date'
, AccountA1.dbo.AccCrPayment.PaymentDate AS 'Clearing Date'
, [ContraUnit] + [ContraLedger] + LTRIM(RTRIM([ContraAccountCode])) AS 'Vendor ID' --Contra_AccountCode --sql & need converting
, LTRIM(RTRIM([AccountName])) AS 'Vendor Name' --Account_Name
, IIf([CurrencyCode] Is Null,'GBP',[CurrencyCode]) AS 'Invoice Currency' --[Invoice Currency] -- sql " need converting
, 'GBP' AS 'Entity Currency' --[Entity Currency] -- sql " need converting
, AccountA1.dbo.AccVATMaster.NetInvoiceAmount AS 'Net Value (Entity Currency)' --[Net Value Entity]
, AccountA1.dbo.AccVATMaster.NetInvoiceAmount AS 'Net Value (Reporting Currency)' --[Net Value Reporting]
, AccountA1.dbo.AccVATMaster.Amount AS 'Tax Value (Entity Currency)' --[Amount Entity]
, AccountA1.dbo.AccVATMaster.Amount AS 'Tax Value (Reporting Currency)' -- [Amount Reporting]
, [NetInvoiceAmount]+[Amount] AS 'Gross Value (Entity Currency)' --[Gross Value Entity]
, [NetInvoiceAmount]+[Amount] AS 'Gross Value (Reporting Currency)' -- [Gross Value Reporting]
, tblGroupMTaxCodeMapping.[TransactionType] AS 'Tax Code Type'
, LTRIM(RTRIM(AccountA1.dbo.AccVATMaster.AccountCode)) AS 'Tax Code ID' --TaxCodeID
, Null AS 'Tax Code Description' --TaxDescription
, Null AS 'Tax Percentage' --Taxrate
, Null AS 'Tax Reporting Country' --TaxReportingCountry 
, Null AS 'Tax Recoverable Flag' -- Box_Tax 
, Null AS 'Recoverable/Irrecoverable Tax Rate' -- RecoverableTax 
, (IIf([NetInvoiceAmount]=0,0,Abs([Amount]/[NetInvoiceAmount]))*100) AS 'Effective Tax Rate'  --[Effective Rate]
, AccountA1.dbo.AccVATMaster.OfficeCode AS 'Cost Centre'
FROM AccountA1.dbo.AccVATMaster --AccountA1
LEFT JOIN ReportingA1_DEV.dbo.tblGroupMTaxCodeMapping ON AccountA1.dbo.AccVATMaster.AccountCode = tblGroupMTaxCodeMapping.[TaxCodeId] -- 	Table provided by GroupM Finance
LEFT JOIN ReportingA1_DEV.dbo.tblOffice_Entity_VAT_RegListing ON AccountA1.dbo.AccVATMaster.OfficeCode = tblOffice_Entity_VAT_RegListing.OfficeCode -- 	Table provided by GroupM Finance
LEFT JOIN ReportingA1.dbo.AccTranType ON AccountA1.dbo.AccVATMaster.TransactionType = ReportingA1.dbo.AccTranType.TranTypeNo --ReportingA1
LEFT JOIN AccountA1.dbo.AccCrPayment ON AccountA1.dbo.AccVATMaster.UniqueID = AccountA1.dbo.AccCrPayment.UniqueID --AccountA1
LEFT JOIN ReportingA1_DEV.dbo.ur_qryAccAccount_CreditorLedgers ON (AccountA1.dbo.AccVATMaster.ContraUnit = ur_qryAccAccount_CreditorLedgers.Unit) AND (AccountA1.dbo.AccVATMaster.ContraLedger = ur_qryAccAccount_CreditorLedgers.Ledger) AND (AccountA1.dbo.AccVATMaster.ContraAccountCode = ur_qryAccAccount_CreditorLedgers.AccountCode) ---See 3
--WHERE (AccountA1.dbo.AccVATMaster.MonthOfActivity Between CAST('2022-01-01 00:00:00' AS smalldatetime) AND CAST('2022-02-01 00:00:00' AS smalldatetime)) AND (AccountA1.dbo.AccVATMaster.AccountCode Like 'P%')    -- Between [Forms]![frm_MainMenu]![StartDate] And [Forms]![frm_MainMenu]![EndDate]) AND ((dbo_AccVATMaster.AccountCode) Like "P*")); --sql variables need creating for start and end dates and " and * need converting
WHERE (AccountA1.dbo.AccVATMaster.MonthOfActivity Between @DateStart AND @DateEnd) AND (AccountA1.dbo.AccVATMaster.AccountCode Like 'P%')
GO
/****** Object:  View [dbo].[ur_qryAccPrdProduct_Code_Name]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[ur_qryAccPrdProduct_Code_Name] AS


SELECT 'S' AS Unit
, 'J' AS Ledger
, ClientCode
, ProductCode
, LTRIM(RTRIM([ClientCode])) + [ProductCode] AS CliProd --TRIM does not see to be available SQL server 2017 onwards so RTIM, LRIM work around
, ProductName
FROM AccountA1.dbo.AccPrdProduct
GO
/****** Object:  UserDefinedFunction [dbo].[ur_tblSales Data Extract-Horizontl]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--INSERT INTO [tblSales Data Extract-Horizontl] ( 
--DataLineNo
--, [Line Identifier]
--, [Entity ID]
--, [Entity Name]
--, [Entity Country]
--, [VAT Registration Number]
--, [System]
--, [Sales Invoice Type]
--, [Document Number]
--, [Document Identifier]
--, [Posting Date]
--, [Document Date]
--, [Clearing Date]
--, [Sold-to ID]
--, [Sold-to Name]
--, [Product ID]
--, Product
--, [Invoice Currency]
--, [Entity Currency]
--, [Net Value (Entity Currency)]
--, [Net Value (Reporting Currency)]
--, [Tax Value (Entity Currency)]
--, [Tax Value (Reporting Currency)]
--, [Gross Value (Entity Currency)]
--, [Gross Value (Reporting Currency)]
--, [Tax Code Type]
--, [Tax Code ID]
--, [Tax Code Description]
--, [Tax Code Rate]
--, [Tax Reporting Country]
--, [Effective Tax Rate], Division )

CREATE FUNCTION [dbo].[ur_tblSales Data Extract-Horizontl] 
(@DateStart date, @DateEnd date) RETURNS TABLE
as

-- ticket 6495 Media Discrepancy Report SQL optimization
-- created Nathan Pennington 2022-04-13

RETURN


SELECT 1 AS DataLineNo  --checked runs without errors
, FORMAT([MonthOfActivity],'yyyy-MM') + ' MOA' AS 'Line Identifier' --MOA
--, CAST(YEAR([MonthOfActivity]) AS varchar) + '-' + CAST(MONTH([MonthOfActivity]) AS varchar) + ' MOA' AS MOA   --Format([MonthOfActivity],'yyyy-mm') + ' MOA' AS MOA  --Format([MonthOfActivity],"yyyy-mm") & " MOA" AS MOA --sql convert " and &
, ReportingA1_DEV.dbo.tblOffice_Entity_VAT_RegListing.[CompanyRegNo] AS 'Entity ID'
, ReportingA1_DEV.dbo.tblOffice_Entity_VAT_RegListing.[LegalEntityName] AS 'Entity Name'
, ReportingA1_DEV.dbo.tblGroupMTaxCodeMapping.[TaxReportingCountry] AS 'Entity Country'
, ReportingA1_DEV.dbo.tblOffice_Entity_VAT_RegListing.[VATRegNo] AS 'VAT Registration Number'
, ReportingA1_DEV.dbo.tblGroupMTaxCodeMapping.[System]
, ReportingA1.dbo.AccTranType.TranTypeName AS [Sales Invoice Type]
, a.TransactionReference AS 'Document Number'
, LTRIM(RTRIM(a.AccountCode)) + '-' + a.[OfficeCode] + '-' + LTRIM(RTRIM([Debtor])) + '-' + [ContraUnit] + [ContraLedger] + LTRIM(RTRIM([ContraAccountCode])) + '-' + [TranTypeName] + '-' + 'Inv ' + LTRIM(RTRIM([TransactionReference])) + '-' + 'Dte ' + CAST([TransactionDate] AS varchar) + '-' + 'Vat £' + CAST([Amount]*-1 AS varchar) AS 'Document Identifier'  --Trim([dbo_AccVATMaster]![AccountCode]) & "-" & [dbo_AccVATMaster]![OfficeCode] & "-" & Trim([Debtor]) & "-" & [ContraUnit] & [ContraLedger] & Trim([ContraAccountCode]) & "-" & [TranTypeName] & "-" & "Inv " & Trim([TransactionReference]) & "-" & "Dte " & [TransactionDate] & "-" & "Vat £" & [Amount]*-1 AS DocumentIdentifier --sql need to convert & and "
, a.AddedDate AS 'Posting Date'
, a.TransactionDate AS 'Document Date'
, [ReportingA1_DEV].[dbo].[ur_qryAppendSofyDataFor_Sales_PaymentDate].[CashDate] AS 'Clearing Date' --PaymentDate
, Left([ContraAccountCode],3) AS 'Sold-to ID' --SoldToID
, ReportingA1_DEV.dbo.ur_qryAccPrdProduct_Code_Name.ClientCode AS 'Sold-to Name' --SoldToName
, ReportingA1_DEV.dbo.ur_qryAccPrdProduct_Code_Name.CliProd AS 'Product ID' -- ProductID
, LTRIM(RTRIM([ProductName])) AS 'Product' --Product_Name
, IIf([CurrencyCode] Is Null,'GBP',[CurrencyCode]) AS 'Invoice Currency' --Currency_Code --sql convert "
, 'GBP' AS [Entity Currency] --sql convert "
, a.NetInvoiceAmount AS 'Net Value (Entity Currency)' --[Net Value Entity]
, a.NetInvoiceAmount AS 'Net Value (Reporting Currency)' --[Net Value Reporting]
, [Amount]*-1 AS 'Tax Value (Entity Currency)' -- [VAT Amount Entity]
, [Amount]*-1 AS 'Tax Value (Reporting Currency)' --[VAT Amount Reporting]
, [NetInvoiceAmount]+[Amount]*-1 AS 'Gross Value (Entity Currency)' --[Gross Value Entity]
, [NetInvoiceAmount]+[Amount]*-1 AS 'Gross Value (Reporting Currency)' --[Gross Value Reporting]
, ReportingA1_DEV.dbo.tblGroupMTaxCodeMapping.[TransactionType] AS 'Tax Code Type'
, LTRIM(RTRIM(a.AccountCode)) AS 'Tax Code ID' --TaxCodeID
, Null AS 'Tax Code Description' --TaxDescription
, Null AS 'Tax Code Rate' --taxrate
, Null AS 'Tax Reporting Country' --TaxReportingCountry
, IIf([NetInvoiceAmount]=0,0,Abs(([Amount]*100)/[NetInvoiceAmount])) AS 'Effective Tax Rate' --[Effective Rate]
, a.OfficeCode AS 'Division'
FROM AccountA1.dbo.AccVATMaster a --AccountA1
LEFT JOIN [ReportingA1_DEV].[dbo].[tblGroupMTaxCodeMapping] ON a.[AccountCode] = [ReportingA1_DEV].[dbo].[tblGroupMTaxCodeMapping].[TaxCodeId] --Table provided by GroupM Finance
LEFT JOIN [ReportingA1_DEV].[dbo].[tblOffice_Entity_VAT_RegListing] ON a.[OfficeCode] = [ReportingA1_DEV].[dbo].[tblOffice_Entity_VAT_RegListing].[OfficeCode] --Table provided by GroupM Finance
LEFT JOIN [ReportingA1].[dbo].[AccTranType] ON a.[TransactionType] = [ReportingA1].[dbo].[AccTranType].[TranTypeNo] --ReportingA1
LEFT JOIN [ReportingA1_DEV].[dbo].[ur_qryAppendSofyDataFor_Sales_PaymentDate] ON (a.[TransactionDate] = [ReportingA1_DEV].[dbo].[ur_qryAppendSofyDataFor_Sales_PaymentDate].[InvoiceDate]) AND (a.TransactionReference = ReportingA1_DEV.dbo.ur_qryAppendSofyDataFor_Sales_PaymentDate.InvoiceNumber) AND (a.OfficeCode = ReportingA1_DEV.dbo.ur_qryAppendSofyDataFor_Sales_PaymentDate.OfficeCode) --See 7
LEFT JOIN ReportingA1_DEV.dbo.ur_qryAccPrdProduct_Code_Name ON (a.ContraUnit = ReportingA1_DEV.dbo.ur_qryAccPrdProduct_Code_Name.Unit) AND (a.ContraLedger = ReportingA1_DEV.dbo.ur_qryAccPrdProduct_Code_Name.Ledger) AND (a.ContraAccountCode = ReportingA1_DEV.dbo.ur_qryAccPrdProduct_Code_Name.CliProd) --See 6
--WHERE a.MonthOfActivity Between '2022-01-01' AND '2022-02-01'; --sql # updated with ' and date format updated
WHERE a.MonthOfActivity Between @DateStart AND @DateEnd

GO
/****** Object:  View [dbo].[ur_PinergyTvSpotLog]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[ur_PinergyTvSpotLog]

AS

-- Created RD 20191224
-- Updated RD 20200203

-- spot log query
SELECT
    b.BuyDate,
    format(b.BookedDate, 'ddMMyyyy') AS [date sent],
    format(b.BookedTime, 'HHmmss') AS [time sent],
    rtrim(tas.GroupName) AS [sales house],
    rtrim(ca.ClientCode) + '|' + format(ca.ProductCode, '00') + '|' + format(ca.campaigncode, '000') AS campaigncode,
    '' AS [caria approval],
    s.BarbCode AS [barb station code],
    rtrim(s.SupplierName) AS [station name],
    bt.BuySerial AS [spot serial code],
    bt.TransmissionDate AS [date of transmission],
    rtrim(bt.TransmissionTime) AS [time of transmission],
    bt.Spotlength AS [spot length],
    coalesce(rtrim(bt.SaleshouseProgrammeBefore), '') AS [programme before],
    coalesce(rtrim(bt.SaleshouseProgrammeAfter), '') AS [programme after],
    coalesce(rtrim(bt.PositionInBreak), '') AS [position in break],
    coalesce(rtrim(bt.PositionOfBreak), '') AS [position in programme],
    bt.MatchedStatus AS matched,
    coalesce(rtrim(bt.FilmNumber), '') AS [film number],
    rtrim(aud.AudienceShortName) AS [buying audience name],
    format(round(bt.EstimatedRating, 2, 1), 'n2') AS [buying audience tvr forecast],
    format(round(bt.ActualRating, 2, 1), 'n2') AS [buying audience tvr actual/actual],
    bt.Universe AS univ,
    bt.Impressions AS [buying audience 000s consolidated],
    coalesce(rtrim(bt.SpecialDealTypes), '') AS [SpecialDealTypes],
    coalesce(rtrim(bt.SpecialOffdeal), '') AS [SpecialOffdeal],
    coalesce(rtrim(aud_2.AudienceShortName), '') AS [ta2 name],
    format(round(bt.EstimatedRating2, 2, 1), 'n2') AS [ta2 fst],
    format(round(bt.ActualRating2, 2, 1), 'n2') AS [ta2 act/act],
    bt.Universe2 AS [ta2 univ],
    bt.Impressions2 AS [ta2 000 cons],
    coalesce(rtrim(aud_3.AudienceShortName), '') AS [ta3 name],
    format(round(bt.EstimatedRating3, 2, 1), 'n2') AS [ta3 fst],
    format(round(bt.ActualRating3, 2, 1), 'n2') AS [ta3 act/act],
    bt.Universe3 AS [ta3 univ],
    bt.Impressions3 AS [ta3 000 cons],
    format(b.BookedDate, 'yyyyMMdd') AS dateadded,
    format(b.BookedTime, 'HHmmss') AS timeadded,
    format(b.LastAmendedDate, 'yyyyMMdd') AS [lastamended date],
    format(b.LastAmendedTime, 'HHmmss') AS [lastamended time],
    b.NumberOfAmendments,
    format(bt.ActDatetime, 'yyyyMMdd') AS lastsqltableupdate,
    format(bt.ActDatetime, 'HHmmss') AS lastsqltableuptime,
    b.Action AS sqlupdateaction
FROM MediaA1..Buy AS b
    JOIN MediaA1..BuyTV AS bt
        ON b.BuySerial = bt.BuySerial
    JOIN MediaA1..Supplier AS s
        ON b.MediaCode = s.MediaCode
        AND b.SupplierID = s.SupplierID
    JOIN MediaA1..TVAreaStation AS tas
        ON s.SupplierID = tas.SupplierID
    JOIN MediaA1..Campaign AS ca
        ON b.MediaCode = ca.MediaCode
        AND b.ClientCode = ca.ClientCode
        AND b.ProductCode = ca.ProductCode
        AND b.campaigncode = ca.campaigncode
    JOIN MediaA1..Aud AS aud
        ON bt.AudienceType = aud.AudienceType
        AND bt.AudienceNumber = aud.AudienceNumber
    JOIN dbo.UserReportClient(2) AS urc
        ON urc.ClientCode = b.ClientCode
    LEFT JOIN MediaA1..Aud AS aud_2
        ON bt.AudienceType2 = aud_2.AudienceType
        AND bt.AudienceNumber2 = aud_2.AudienceNumber
    LEFT JOIN MediaA1..Aud AS aud_3
        ON bt.AudienceNumber3 = aud_3.AudienceNumber
        AND bt.AudienceType3 = aud_3.AudienceType
WHERE
    ca.MediaCode = 0 -- TV only
    AND b.IsCancelled = 0

GO
/****** Object:  UserDefinedFunction [dbo].[ur_PassbackReport]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE FUNCTION [dbo].[ur_PassbackReport]
  (
  @startdate date,
  @enddate date) RETURNS TABLE
AS

-- created RD 2020-06-18
-- include draft and exclude client reporting names 2020-07-22
-- remove Draft ?? column RD 2020-07-30
-- add source and rename ismaster and isslave to pay-only and bill-only
-- add buying,creative and agency commission and unbilled spot incomve 2020-10-29
-- unbilled spot income = 0 when is pay only (is master) = 1
-- pick up campaign filter 2 value from mediaa1..filtervalue RD 2020-11-26
-- add paid status and rename bill only to true bill only
-- add si code and name RD 2021-03-29
-- add invoice month RD 2021-06-30 requested by Alin Ghizila

RETURN

WITH si
AS
(
    SELECT
        [Unit] + [Ledger] + [AccountCode] AS SICode,
        AccAccount.AccountName
    FROM
        AccountA1..AccAccount
    WHERE
        Unit = 'S'
        AND Ledger = 'I'
        AND IsLowLevel = '1'
),
bcsi
AS
(
    SELECT
        bc.BookingCategoryCode,
        bcm.BookingCategoryMediaCode,
        bcm.IncomeAccount AS SICode,
        si.AccountName AS SICodeName
    FROM
        MediaA1..BookingCategory AS bc
        JOIN MediaA1..BookingCategoryMedia AS bcm
            ON bcm.BookingCategoryCode = bc.BookingCategoryCode
        JOIN si
            ON bcm.IncomeAccount = si.SICode
)

SELECT DISTINCT
    oc.OperatingCompanyCode,
    RTRIM(oc.OperatingCompanyName) AS OperatingCompanyName,
    bm.InvoiceCode AS [Cli Inv #],
    FORMAT(bm.InvoiceDate, 'yyyy MM') AS [Invoice Month],
    RTRIM(bc.BookingCategoryName) AS [BookingCategory],
    bcsi.SICode,
    bcsi.SICodeName,
    cl.ClientCode AS Client,
    RTRIM(cl.ClientName) AS [ClientFullName],
    m.MediaName AS Media,
    FORMAT([BuyDate], 'yyyy MM') AS [Activity Month],
    RTRIM(ba.AgencyName) AS [BuyingAgencyFullName],
    fv.FilterValueName AS [Filter2FullName],
    RTRIM(b.BuyerName) AS BuyerName,
    UPPER(bm.SourceSystem) AS Source,
    RTRIM(pr.ProductName) AS [ProductFullName],
    bm.ProductCode AS [Product #],
    RTRIM(ca.CampaignName) AS [CampaignName],
    bm.CampaignCode AS [Campaign #],
    RTRIM(su.SupplierName) AS [SupplierFullName],
    su.FolioCode AS Folio,
    RTRIM(fo.FolioName) AS [FolioName],
    bm.BuySerial AS [SerialNumber],
    bm.Gross,
    CASE
        WHEN bm.IsMaster = 1 THEN 0
        WHEN bm.BillRate = 0 THEN bm.Gross
        ELSE bm.BillRate
    END AS [BillRate],
    bm.Billable,
    bm.BuyingAgencyCommission AS [BuyingAgyComm],
    bm.CreativeAgencyCommission AS [CreativeAgyComm],
    bm.AgencyCommission AS [AgyComm],
    bm.Billable - bm.Billed AS UnBilled,
    CASE
        WHEN bm.InvoiceCode IS NULL THEN bm.BuyingAgencyCommission
        ELSE bm.BuyingAgencyCommission - SUM(amb.BuyingAgencyCommissionBilled) OVER (PARTITION BY amb.BuySerial)
    END AS [UnBilled_BA Comm],
    CASE
        WHEN bm.InvoiceCode IS NULL THEN bm.CreativeAgencyCommission
        ELSE bm.CreativeAgencyCommission - SUM(amb.CreativeAgencyCommissionBilled) OVER (PARTITION BY amb.BuySerial)
    END AS [UnBilled_CA Comm],
    CASE
        WHEN bm.InvoiceCode IS NULL THEN bm.AgencyCommission
        ELSE bm.AgencyCommission - SUM(amb.AgencyCommissionBilled) OVER (PARTITION BY amb.BuySerial)
    END AS [UnBilled_A Comm],
    bm.Payable,
    bm.Payable - bm.Paid AS UnPaid,
    CASE
        WHEN bm.Payable > 0
            AND (bm.Payable - bm.Paid) = bm.Payable THEN 'UNPAID'
        WHEN bm.Paid > 0
            AND bm.Paid < bm.Payable THEN 'PART-PAID'
        WHEN bm.Payable > 0
            AND bm.Payable = bm.Paid THEN 'FULL-PAID'
        WHEN bm.Payable = 0
            AND bm.Paid = 0 THEN 'BILL-ONLY'
        ELSE 'UNKNOWN'
    END AS PaidStatus,
    bm.BillableCostOfSale,
    CASE
        WHEN bm.IsMaster = 1 THEN 0
        WHEN bm.BillRate = 0 THEN 0 -- billrate = 0 -> billrate = gross hence gross - gross = 0
        ELSE bm.BillRate - bm.Gross
    END AS [GrossSpotIncome],
    CASE
        WHEN bm.IsMaster = 1 THEN 0
        WHEN bm.BillRate = 0 THEN 0 -- same logic as gross
        ELSE CONVERT(MONEY, ROUND((bm.BillRate - bm.Gross) - ((bm.BillRate - bm.Gross) * (bm.MediaDiscountPercentage / 100.0)), 2))
    END AS [NetSpotIncome],
    --
    CASE
        WHEN bm.IsMaster = 1 THEN 0
        WHEN bm.InvoiceCode IS NULL THEN bm.BillableCostOfSale - bm.Payable
        ELSE (bm.BillableCostOfSale - bm.Payable) -
        SUM(amb.BillableCostSaleBilled - amb.PayableBilled) OVER (PARTITION BY amb.BuySerial)
    END AS [UnBilledSpotIncome],
    CASE
        WHEN bm.IsCancelled = 1 THEN 'YES'
        ELSE 'NO'
    END AS Cancelled,
    CASE
        WHEN bm.IsDraft = 1 THEN 'YES'
        ELSE 'NO'
    END AS Draft,
    bm.BuyDate AS [Date],
    CASE
        WHEN bm.IsMaster = 1 THEN 'YES'
        ELSE 'NO'
    END AS [PayOnly],
    CASE
        WHEN bm.IsSlave = 1 THEN 'YES'
        ELSE 'NO'
    END AS [BillOnlyFlag]
FROM
    MediaA1..BuyMoney AS bm
    JOIN UserReportClient(3) AS urc
        ON urc.ClientCode = bm.ClientCode
    JOIN UserReportMedia(3) AS urm
        ON urm.MediaCode = bm.MediaCode
    LEFT JOIN AccountA1..AccMedBill AS amb
        ON amb.BuySerial = bm.BuySerial
    JOIN MediaA1..Client AS cl
        ON bm.MediaCode = cl.MediaCode
        AND bm.ClientCode = cl.ClientCode
    JOIN MediaA1..BuyingAgency AS ba
        ON cl.BuyingAgencyCode = ba.AgencyCode
    JOIN MediaA1..OperatingCompany AS oc
        ON ba.OperatingCompanyCode = oc.OperatingCompanyCode
    JOIN MediaA1..Media AS m
        ON bm.MediaCode = m.MediaCode
    JOIN MediaA1..BookingCategory AS bc
        ON bm.BookingCategoryCode = bc.BookingCategoryCode
    JOIN MediaA1..Product AS pr
        ON bm.MediaCode = pr.MediaCode
        AND bm.ClientCode = pr.ClientCode
        AND bm.ProductCode = pr.ProductCode
    JOIN MediaA1..Campaign AS ca
        ON bm.MediaCode = ca.MediaCode
        AND bm.ClientCode = ca.ClientCode
        AND bm.ProductCode = ca.ProductCode
        AND bm.CampaignCode = ca.CampaignCode
    LEFT JOIN MediaA1..FilterValue AS fv
        ON fv.FilterNumber = 2
        AND fv.FilterValue = ca.Filter2
    JOIN MediaA1..Supplier AS su
        ON bm.MediaCode = su.MediaCode
        AND bm.SupplierID = su.SupplierID
    JOIN MediaA1..Folio AS fo
        ON su.MediaCode = fo.MediaCode
        AND su.FolioCode = fo.FolioCode
    LEFT JOIN MediaA1..Buyer AS b
        ON bm.BuyerInitials = b.BuyerInitials
    LEFT JOIN bcsi
        ON bcsi.BookingCategoryCode = bm.BookingCategoryCode
        AND bcsi.BookingCategoryMediaCode = bm.MediaCode
WHERE
    bm.BuyDate BETWEEN @startdate AND @enddate;
GO
/****** Object:  UserDefinedFunction [dbo].[ur_PinergyCampaignList]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Alter Function ur_PinergyCampaignList

CREATE FUNCTION [dbo].[ur_PinergyCampaignList]
  (@from_date smalldatetime, @to_date smalldatetime) RETURNS TABLE
AS

-- created RD 20191215
-- updated RD 20200219 capitalize column headings

RETURN

SELECT DISTINCT
    rtrim(ca.ClientCode) + '|' + format(ca.ProductCode, '00') + '|' + format(ca.campaigncode, '000') AS CampaignCode,
    rtrim(ca.CampaignName) AS Campaign,
    rtrim(c.ClientName) AS Advertiser,
    rtrim(p.ProductName) AS Product,
    rtrim(a.AgencyName) AS [Buying Agency],
    format(ca.StartDate, 'ddMMyyyy') AS [Campaign Start Date],
    format(ca.EndDate, 'ddMMyyyy') AS [Campaign End Date]
FROM dbo.UserReportClient(2) AS urc -- 2 = pinergy report id
    JOIN MediaA1..Campaign AS ca
        ON ca.MediaCode = 0 -- tv media code
        AND ca.ClientCode = urc.ClientCode
    JOIN MediaA1..Client AS c
        ON c.MediaCode = ca.MediaCode
        AND c.ClientCode = ca.ClientCode
    JOIN MediaA1..Product AS p
        ON p.MediaCode = ca.MediaCode
        AND p.ClientCode = ca.ClientCode
        AND p.ProductCode = ca.ProductCode
    JOIN MediaA1..Agency AS a
        ON a.AgencyCode = c.BuyingAgencyCode
        AND a.AgencyType = 'B'
    JOIN MediaA1..Buy AS b
        ON b.MediaCode = ca.MediaCode
        AND b.ClientCode = ca.ClientCode
        AND b.ProductCode = ca.ProductCode
        AND b.CampaignCode = ca.CampaignCode
        AND b.BuyDate BETWEEN @from_date AND @to_date
    JOIN MediaA1..BuyTV bt
        ON bt.BuySerial = b.BuySerial;
GO
/****** Object:  View [dbo].[r_TvSupplierAreaSalesHouse]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[r_TvSupplierAreaSalesHouse]
AS

-- Updated RD 20191120

SELECT
    ta.SupplierID,
    ta.AreaName AS AreaName,
    m.AreaName AS SubGroupName,
    g.AreaName AS GroupName,
    sh.SaleshouseID,
    sh.SaleshouseName
FROM MediaA1..TVArea ta
LEFT JOIN MediaA1..TVArea m
    ON m.TVAreaGroupID = ta.TVAreaGroupID
    AND m.TVAreaSubAreaID = ta.TVAreaSubAreaID
    AND m.TVAreaType = 'M'
LEFT JOIN MediaA1..TVArea g
    ON g.TVAreaGroupID = ta.TVAreaGroupID
    AND g.TVAreaType = 'G'
JOIN MediaA1..Supplier AS su
    ON su.SupplierID = ta.SupplierID
JOIN MediaA1.dbo.Saleshouse AS sh
    ON sh.SaleshouseID = su.SaleshouseID
WHERE
    ta.TVAreaType = 'S'

GO
/****** Object:  Table [dbo].[Dayparts]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dayparts](
	[DaypartNumber] [int] NOT NULL,
	[DaypartName] [varchar](16) NOT NULL,
	[MinTime] [char](6) NOT NULL,
	[MaxTime] [char](6) NOT NULL,
	[CreatedDate] [smalldatetime] NOT NULL,
	[CreatedBy] [varchar](50) NOT NULL,
	[RevisedDate] [smalldatetime] NOT NULL,
	[RevisedBy] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Daypart] PRIMARY KEY CLUSTERED 
(
	[DaypartNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [dbo].[MoneyBuySpotLength]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[MoneyBuySpotLength](@comment as char(80)) RETURNS TABLE
AS
RETURN
SELECT
    CASE
        WHEN charindex('/', @comment, 1) = 0 THEN substring(@comment, charindex(',', @comment, charindex(',', @comment, 1) + 1) + 1,
            charindex(',', @comment, charindex(',', @comment, charindex(',', @comment, 1) + 1) + 1) - (charindex(',', @comment, charindex(',', @comment, 1) + 1) + 1))
        ELSE substring(@comment, charindex(',', @comment, charindex(',', @comment, 1) + 1) + 1,
            charindex('/', @comment, charindex(',', @comment, charindex(',', @comment, 1) + 1) + 1) - (charindex(',', @comment, charindex(',', @comment, 1) + 1) + 1))
    END AS val
GO
/****** Object:  UserDefinedFunction [dbo].[MoneyBuyAudience1]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[MoneyBuyAudience1](@comment as char(80)) RETURNS TABLE
AS
RETURN
SELECT
    substring(@comment, charindex(',', @comment, charindex(',', @comment, charindex(',', @comment, 1) + 1) + 1) + 1,
    charindex(',', @comment, charindex(',', @comment, charindex(',', @comment, charindex(',', @comment, 1) + 1) + 1) + 1)
    - (charindex(',', @comment, charindex(',', @comment, charindex(',', @comment, 1) + 1) + 1) + 1)) AS val
GO
/****** Object:  UserDefinedFunction [dbo].[MoneyBuyAudience3]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[MoneyBuyAudience3](@comment as char(80)) RETURNS TABLE
AS

-- RD updated to return null not zero where no audience 3
-- @Comment = '010010000000,2015-01,30,18,,GBP'
-- assumes audience 3 is the only optional field
-- hence consecutive commas means no audience 3
RETURN
SELECT
    CASE
        WHEN patindex('%,,%', @Comment) = 0 -- no '%,,%' found hence must be an audience 3
        THEN substring
            (
                @comment,
                charindex(',', @comment, charindex(',', @comment, charindex(',', @comment, charindex(',', @comment, 1) + 1) + 1) + 1) + 1,
                charindex(',', @comment, charindex(',', @comment, charindex(',', @comment, charindex(',', @comment, charindex(',', @comment, 1) + 1) + 1) + 1) + 1)
                - (charindex(',', @comment, charindex(',', @comment, charindex(',', @comment, charindex(',', @comment, 1) + 1) + 1) + 1) + 1)
            )
        ELSE NULL
    END AS val
GO
/****** Object:  UserDefinedFunction [dbo].[ur_TvPerformance]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Alter Function ur_TvPerformance


CREATE FUNCTION [dbo].[ur_TvPerformance]
  (
  @startdate date,
  @enddate date) RETURNS TABLE
AS

-- tv performance report
-- created RD 20200216
RETURN

WITH money_buys (BuyingAgencyName, MediaCode, ClientCode, ProductCode, CampaignCode, ClientName, ProductName, CampaignName, BuySerial, SalesHouseName, GroupName, SubGroupName, AreaName, BuyDate, [Day], Secs, BookingCategoryName, Audience1, Audience3, Gross, BillRate, CariaApprovalNumber, BookingType)
AS
(
    SELECT
        ag.AgencyName,
        buy.MediaCode,
        buy.ClientCode,
        buy.ProductCode,
        buy.CampaignCode,
        cl.ClientName,
        pr.ProductName,
        ca.CampaignName,
        buy.BuySerial,
        tash.SalesHouseName,
        tash.GroupName,
        tash.SubGroupName,
        tash.AreaName,
        buy.BuyDate,
        upper(left(datename(WEEKDAY, buy.BuyDate), 3)),
        (
            SELECT
                val
            FROM dbo.MoneyBuySpotLength(com.Comment)
        )
        AS Secs,
        cat.BookingCategoryName,
        (
            SELECT
                val
            FROM dbo.MoneyBuyAudience1(com.Comment)
        )
        AS Audience1,
        (
            SELECT
                val
            FROM dbo.MoneyBuyAudience3(com.Comment)
        )
        AS Audience3,
        buy.Gross,
        buy.BillRate,
        buy.PlacementID,
        'MONEY'
    FROM MediaA1..buy AS buy
    LEFT JOIN MediaA1..BuyComment AS com
        ON com.BuySerial = buy.BuySerial
        AND com.CommentStyle = 'O'
        AND com.CommentLineSequence = 1
        AND com.Comment LIKE '%,%,%,%,%,%'
        AND buy.IsStationBudget = 1
    JOIN MediaA1..BookingCategory AS cat
        ON cat.BookingCategoryCode = buy.BookingCategoryCode
    JOIN MediaA1..Client AS cl
        ON cl.MediaCode = buy.MediaCode
        AND cl.ClientCode = buy.ClientCode
    JOIN MediaA1..Product AS pr
        ON pr.MediaCode = buy.MediaCode
        AND pr.ClientCode = buy.ClientCode
        AND pr.ProductCode = buy.ProductCode
    JOIN MediaA1..Campaign AS ca
        ON ca.MediaCode = buy.MediaCode
        AND ca.ClientCode = buy.ClientCode
        AND ca.ProductCode = buy.ProductCode
        AND ca.CampaignCode = buy.CampaignCode
    JOIN MediaA1.dbo.BuyingAgency AS ag
        ON ag.AgencyCode = cl.BuyingAgencyCode
    JOIN dbo.r_TvSupplierAreaSalesHouse AS tash
        ON tash.SupplierID = buy.SupplierID
    WHERE buy.BuyDate BETWEEN @startdate AND @enddate
    AND buy.MediaCode = 0 -- tv
    AND buy.IsCancelled = 0
    AND buy.Gross <> 0
    AND buy.ClientCode IN (
        SELECT
            ClientCode
        FROM dbo.UserReportClient(1)
    )
)
SELECT
    BuyingAgencyName,
    MediaCode,
    ClientCode,
    ProductCode,
    CampaignCode,
    ClientName,
    ProductName,
    CampaignName,
    BuySerial,
    SalesHouseName,
    GroupName,
    SubGroupName,
    AreaName,
    BuyDate,
    [Day],
    '' AS [Time],
    '' AS ProgrammeBefore,
    '' AS ProgrammeAfter,
    '' AS SaleshouseProgrammeBefore,
    '' AS SaleshouseProgrammeAfter,
    Secs,
    0 AS EquivalenceFactor,
    '' AS MatchedStatus,
    0 AS Impressions,
    0 AS [Actual Imp1],
    0 AS [Est Imp1],
    0 AS [Actual Imp2],
    0 AS [Est Imp2],
    0 AS [Actual Imp3],
    0 AS [Est Imp3],
    0 AS DayPart,
    '' AS DayPartName,
    BookingCategoryName,
    Audience1,
    aud1.AudienceShortName AS AudienceShortName1,
    convert(varchar(8), aud1.AudienceNumber) + ' ' + aud1.AudienceShortName AS AudienceNumberAndName1,
    aud1.AudienceCategory AS [AudienceCategory1],
    aud1.AudienceCategoryName AS [AudienceCategoryName1],
    0 AS Universe1,
    0 AS EstimatedRating1,
    0 AS ActualRating1,
    0 AS Audience2,
    '' AS AudienceShortName2,
    '' AS AudienceNumberAndName2,
    0 AS AudienceCategory2,
    '' AS AudienceCategoryName2,
    0 AS Universe2,
    0 AS EstimatedRating2,
    0 AS ActualRating2,
    Audience3,
    aud3.AudienceShortName AS AudienceShortName3,
    convert(varchar(8), aud3.AudienceNumber) + ' ' + aud3.AudienceShortName AS AudienceNumberAndName3,
    aud3.AudienceCategory AS AudienceCategory3,
    aud3.AudienceCategoryName AS AudiencCategoryName3,
    0 AS Universe3,
    0 AS EstimatedRating3,
    0 AS ActualRating3,
    '' AS FilmNumber,
    Gross,
    BillRate,
    CariaApprovalNumber,
    '' AS PIB,
    '' AS POB,
    '' AS CvE,
    BookingType
FROM money_buys AS mb
    LEFT JOIN MediaA1..Aud AS aud1
        ON aud1.AudienceNumber = mb.Audience1
        AND aud1.AudienceType = 'C'
    LEFT JOIN MediaA1..Aud AS aud3
        ON aud3.AudienceNumber = mb.Audience3
        AND aud3.AudienceType = 'C'
UNION

SELECT
    ag.AgencyName,
    ca.MediaCode,
    cl.ClientCode,
    pr.ProductCode,
    ca.CampaignCode,
    cl.ClientName,
    pr.ProductName,
    ca.CampaignName,
    buy.BuySerial,
    tash.SalesHouseName,
    tash.GroupName,
    tash.SubGroupName,
    tash.AreaName,
    buy.BuyDate,
    upper(left(datename(WEEKDAY, buy.BuyDate), 3)) AS [Day],
    bt.BookedTime AS [Time],
    bt.ProgrammeBefore,
    bt.ProgrammeAfter,
    bt.SaleshouseProgrammeBefore,
    bt.SaleshouseProgrammeAfter,
    bt.Spotlength AS [Secs],
    bt.EquivalenceFactor,
    bt.MatchedStatus,
    bt.Impressions,
    CASE
        WHEN bt.MatchedStatus = 'M' THEN bt.Impressions
        ELSE 0
    END AS [Actual Imp1],
    CASE
        WHEN bt.MatchedStatus <> 'M' THEN bt.Impressions
        ELSE 0
    END AS [Est Imp1],
    CASE
        WHEN bt.MatchedStatus = 'M' THEN bt.Impressions2
        ELSE 0
    END AS [Actual Imp2],
    CASE
        WHEN bt.MatchedStatus <> 'M' THEN bt.Impressions2
        ELSE 0
    END AS [Est Imp2],
    CASE
        WHEN bt.MatchedStatus = 'M' THEN bt.Impressions3
        ELSE 0
    END AS [Actual Imp3],
    CASE
        WHEN bt.MatchedStatus <> 'M' THEN bt.Impressions3
        ELSE 0
    END AS [Est Imp3],
    bt.DaypartNumber AS [Daypart],
    dp.DaypartName,
    rtrim(cat.BookingCategoryName) AS BookingCategoryName,
    bt.AudienceNumber AS [Audience1],
    aud1.AudienceShortName AS [AudienceShortName1],
    convert(varchar(8), aud1.AudienceNumber) + ' ' + aud1.AudienceShortName AS AudienceNumberAndName1,
    aud1.AudienceCategory AS [AudienceCategory1],
    aud1.AudienceCategoryName AS [AudienceCategoryName1],
    bt.Universe AS [Universe1],
    bt.EstimatedRating AS [EstimatedRating1],
    bt.ActualRating AS [ActualRating1],
    bt.AudienceNumber2 AS [Audience2],
    aud2.AudienceShortName AS AudienceShortName2,
    convert(varchar(8), aud2.AudienceNumber) + ' ' + aud2.AudienceShortName AS AudienceNumberAndName2,
    aud2.AudienceCategory AS AudienceCategory2,
    aud2.AudienceCategoryName AS AudienceCategoryName2,
    bt.Universe2 AS [Universe2],
    bt.EstimatedRating2 AS EstimatedRating2,
    bt.ActualRating2 AS ActualRating2,
    bt.AudienceNumber3 AS [Audience3],
    aud3.AudienceShortName AS AudienceShortName3,
    convert(varchar(8), aud3.AudienceNumber) + ' ' + aud3.AudienceShortName AS AudienceNumberAndName3,
    aud3.AudienceCategory AS AudienceCategory3,
    aud3.AudienceCategoryName AS AudienceCategory3,
    bt.Universe3 AS [Universe3],
    bt.EstimatedRating3 AS EstimatedRating3,
    bt.ActualRating3 AS ActualRating3,
    bt.FilmNumber,
    buy.Gross,
    buy.BillRate,
    buy.PlacementID AS CariaApprovalNumber,
    bt.PositionInBreak AS [PIB],
    bt.PositionOfBreak AS [POB],
    bt.SpecialDealTypes AS [CvE],
    'TRANSMISSION' AS BookingType
FROM MediaA1..buy AS buy
    JOIN MediaA1..BuyTV AS bt
        ON bt.BuySerial = buy.BuySerial
        AND bt.Impressions <> 0
    LEFT JOIN dbo.Dayparts AS dp
        ON dp.DaypartNumber = bt.DaypartNumber
    JOIN dbo.r_TvSupplierAreaSalesHouse AS tash
        ON tash.SupplierID = buy.SupplierID
    JOIN MediaA1..BookingCategory AS cat
        ON cat.BookingCategoryCode = buy.BookingCategoryCode
    JOIN MediaA1..Client AS cl
        ON cl.MediaCode = buy.MediaCode
        AND cl.ClientCode = buy.ClientCode
    JOIN MediaA1..Product AS pr
        ON pr.MediaCode = buy.MediaCode
        AND pr.ClientCode = buy.ClientCode
        AND pr.ProductCode = buy.ProductCode
    JOIN MediaA1..Campaign AS ca
        ON ca.MediaCode = buy.MediaCode
        AND ca.ClientCode = buy.ClientCode
        AND ca.ProductCode = buy.ProductCode
        AND ca.CampaignCode = buy.CampaignCode
    JOIN MediaA1.dbo.BuyingAgency AS ag
        ON ag.AgencyCode = cl.BuyingAgencyCode
    LEFT JOIN MediaA1..Aud AS aud1
        ON aud1.AudienceNumber = bt.AudienceNumber
        AND aud1.AudienceType = bt.AudienceType
    LEFT JOIN MediaA1..Aud AS aud2
        ON aud2.AudienceNumber = bt.AudienceNumber2
        AND aud2.AudienceType = bt.AudienceType2
    LEFT JOIN MediaA1..Aud AS aud3
        ON aud3.AudienceNumber = bt.AudienceNumber3
        AND aud3.AudienceType = bt.AudienceType3
WHERE
    buy.BuyDate BETWEEN @startdate AND @enddate
    AND buy.MediaCode = 0
    AND buy.ClientCode IN (
        SELECT
            ClientCode
        FROM dbo.UserReportClient(1)
    )
GO
/****** Object:  UserDefinedFunction [dbo].[ur_TvPerformance_nulls]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Alter Function ur_TvPerformance_nulls

CREATE FUNCTION [dbo].[ur_TvPerformance_nulls]
  (
  @startdate date,
  @enddate date) RETURNS TABLE
AS

-- tv performance report
-- created RD 20200217
-- with nulls instead of zero's and empty strings
RETURN

WITH money_buys (BuyingAgencyName, MediaCode, ClientCode, ProductCode, CampaignCode, ClientName, ProductName, CampaignName, BuySerial, SalesHouseName, GroupName, SubGroupName, AreaName, BuyDate, [Day], Secs, BookingCategoryName, Audience1, Audience3, Gross, BillRate, CariaApprovalNumber, BookingType)
AS
(
    SELECT
        ag.AgencyName,
        buy.MediaCode,
        buy.ClientCode,
        buy.ProductCode,
        buy.CampaignCode,
        cl.ClientName,
        pr.ProductName,
        ca.CampaignName,
        buy.BuySerial,
        tash.SalesHouseName,
        tash.GroupName,
        tash.SubGroupName,
        tash.AreaName,
        buy.BuyDate,
        upper(left(datename(WEEKDAY, buy.BuyDate), 3)),
        (
            SELECT
                val
            FROM dbo.MoneyBuySpotLength(com.Comment)
        )
        AS Secs,
        cat.BookingCategoryName,
        (
            SELECT
                val
            FROM dbo.MoneyBuyAudience1(com.Comment)
        )
        AS Audience1,
        (
            SELECT
                val
            FROM dbo.MoneyBuyAudience3(com.Comment)
        )
        AS Audience3,
        buy.Gross,
        buy.BillRate,
        buy.PlacementID,
        'MONEY'
    FROM MediaA1..buy AS buy
    LEFT JOIN MediaA1..BuyComment AS com
        ON com.BuySerial = buy.BuySerial
        AND com.CommentStyle = 'O'
        AND com.CommentLineSequence = 1
        AND com.Comment LIKE '%,%,%,%,%,%'
        AND buy.IsStationBudget = 1
    JOIN MediaA1..BookingCategory AS cat
        ON cat.BookingCategoryCode = buy.BookingCategoryCode
    JOIN MediaA1..Client AS cl
        ON cl.MediaCode = buy.MediaCode
        AND cl.ClientCode = buy.ClientCode
    JOIN MediaA1..Product AS pr
        ON pr.MediaCode = buy.MediaCode
        AND pr.ClientCode = buy.ClientCode
        AND pr.ProductCode = buy.ProductCode
    JOIN MediaA1..Campaign AS ca
        ON ca.MediaCode = buy.MediaCode
        AND ca.ClientCode = buy.ClientCode
        AND ca.ProductCode = buy.ProductCode
        AND ca.CampaignCode = buy.CampaignCode
    JOIN MediaA1.dbo.BuyingAgency AS ag
        ON ag.AgencyCode = cl.BuyingAgencyCode
    JOIN dbo.r_TvSupplierAreaSalesHouse AS tash
        ON tash.SupplierID = buy.SupplierID
    WHERE buy.BuyDate BETWEEN @startdate AND @enddate
    AND buy.MediaCode = 0 -- tv
    AND buy.IsCancelled = 0
    AND buy.Gross <> 0
    AND buy.ClientCode IN (
        SELECT
            ClientCode
        FROM dbo.UserReportClient(1)
    )
)
SELECT
    BuyingAgencyName,
    MediaCode,
    ClientCode,
    ProductCode,
    CampaignCode,
    ClientName,
    ProductName,
    CampaignName,
    BuySerial,
    SalesHouseName,
    GroupName,
    SubGroupName,
    AreaName,
    BuyDate,
    [Day],
    NULL AS [Time],
    NULL AS ProgrammeBefore,
    NULL AS ProgrammeAfter,
    NULL AS SaleshouseProgrammeBefore,
    NULL AS SaleshouseProgrammeAfter,
    Secs,
    NULL AS EquivalenceFactor,
    NULL AS MatchedStatus,
    NULL AS Impressions,
    NULL AS [Actual Imp1],
    NULL AS [Est Imp1],
    NULL AS [Actual Imp2],
    NULL AS [Est Imp2],
    NULL AS [Actual Imp3],
    NULL AS [Est Imp3],
    NULL AS DayPart,
    NULL AS DayPartName,
    BookingCategoryName,
    Audience1,
    aud1.AudienceShortName AS AudienceShortName1,
    convert(varchar(8), aud1.AudienceNumber) + ' ' + aud1.AudienceShortName AS AudienceNumberAndName1,
    aud1.AudienceCategory AS [AudienceCategory1],
    aud1.AudienceCategoryName AS [AudienceCategoryName1],
    NULL AS Universe1,
    NULL AS EstimatedRating1,
    NULL AS ActualRating1,
    NULL AS Audience2,
    NULL AS AudienceShortName2,
    NULL AS AudienceNumberAndName2,
    NULL AS AudienceCategory2,
    NULL AS AudienceCategoryName2,
    NULL AS Universe2,
    NULL AS EstimatedRating2,
    NULL AS ActualRating2,
    Audience3,
    aud3.AudienceShortName AS AudienceShortName3,
    convert(varchar(8), aud3.AudienceNumber) + ' ' + aud3.AudienceShortName AS AudienceNumberAndName3,
    aud3.AudienceCategory AS AudienceCategory3,
    aud3.AudienceCategoryName AS AudiencCategoryName3,
    NULL AS Universe3,
    NULL AS EstimatedRating3,
    NULL AS ActualRating3,
    NULL AS FilmNumber,
    Gross,
    BillRate,
    CariaApprovalNumber,
    NULL AS PIB,
    NULL AS POB,
    NULL AS CvE,
    BookingType
FROM money_buys AS mb
    LEFT JOIN MediaA1..Aud AS aud1
        ON aud1.AudienceNumber = mb.Audience1
        AND aud1.AudienceType = 'C'
    LEFT JOIN MediaA1..Aud AS aud3
        ON aud3.AudienceNumber = mb.Audience3
        AND aud3.AudienceType = 'C'
UNION

SELECT
    ag.AgencyName,
    ca.MediaCode,
    cl.ClientCode,
    pr.ProductCode,
    ca.CampaignCode,
    cl.ClientName,
    pr.ProductName,
    ca.CampaignName,
    buy.BuySerial,
    tash.SalesHouseName,
    tash.GroupName,
    tash.SubGroupName,
    tash.AreaName,
    buy.BuyDate,
    upper(left(datename(WEEKDAY, buy.BuyDate), 3)) AS [Day],
    bt.BookedTime AS [Time],
    bt.ProgrammeBefore,
    bt.ProgrammeAfter,
    bt.SaleshouseProgrammeBefore,
    bt.SaleshouseProgrammeAfter,
    bt.Spotlength AS [Secs],
    bt.EquivalenceFactor,
    bt.MatchedStatus,
    bt.Impressions,
    CASE
        WHEN bt.MatchedStatus = 'M' THEN bt.Impressions
        ELSE 0
    END AS [Actual Imp1],
    CASE
        WHEN bt.MatchedStatus <> 'M' THEN bt.Impressions
        ELSE 0
    END AS [Est Imp1],
    CASE
        WHEN bt.MatchedStatus = 'M' THEN bt.Impressions2
        ELSE 0
    END AS [Actual Imp2],
    CASE
        WHEN bt.MatchedStatus <> 'M' THEN bt.Impressions2
        ELSE 0
    END AS [Est Imp2],
    CASE
        WHEN bt.MatchedStatus = 'M' THEN bt.Impressions3
        ELSE 0
    END AS [Actual Imp3],
    CASE
        WHEN bt.MatchedStatus <> 'M' THEN bt.Impressions3
        ELSE 0
    END AS [Est Imp3],
    bt.DaypartNumber AS [Daypart],
    dp.DaypartName,
    rtrim(cat.BookingCategoryName) AS BookingCategoryName,
    bt.AudienceNumber AS [Audience1],
    aud1.AudienceShortName AS [AudienceShortName1],
    convert(varchar(8), aud1.AudienceNumber) + ' ' + aud1.AudienceShortName AS AudienceNumberAndName1,
    aud1.AudienceCategory AS [AudienceCategory1],
    aud1.AudienceCategoryName AS [AudienceCategoryName1],
    bt.Universe AS [Universe1],
    bt.EstimatedRating AS [EstimatedRating1],
    bt.ActualRating AS [ActualRating1],
    bt.AudienceNumber2 AS [Audience2],
    aud2.AudienceShortName AS AudienceShortName2,
    convert(varchar(8), aud2.AudienceNumber) + ' ' + aud2.AudienceShortName AS AudienceNumberAndName2,
    aud2.AudienceCategory AS AudienceCategory2,
    aud2.AudienceCategoryName AS AudienceCategoryName2,
    bt.Universe2 AS [Universe2],
    bt.EstimatedRating2 AS EstimatedRating2,
    bt.ActualRating2 AS ActualRating2,
    bt.AudienceNumber3 AS [Audience3],
    aud3.AudienceShortName AS AudienceShortName3,
    convert(varchar(8), aud3.AudienceNumber) + ' ' + aud3.AudienceShortName AS AudienceNumberAndName3,
    aud3.AudienceCategory AS AudienceCategory3,
    aud3.AudienceCategoryName AS AudienceCategory3,
    bt.Universe3 AS [Universe3],
    bt.EstimatedRating3 AS EstimatedRating3,
    bt.ActualRating3 AS ActualRating3,
    bt.FilmNumber,
    buy.Gross,
    buy.BillRate,
    buy.PlacementID AS CariaApprovalNumber,
    bt.PositionInBreak AS [PIB],
    bt.PositionOfBreak AS [POB],
    bt.SpecialDealTypes AS [CvE],
    'TRANSMISSION' AS BookingType
FROM MediaA1..buy AS buy
    JOIN MediaA1..BuyTV AS bt
        ON bt.BuySerial = buy.BuySerial
        AND bt.Impressions <> 0
    LEFT JOIN dbo.Dayparts AS dp
        ON dp.DaypartNumber = bt.DaypartNumber
    JOIN dbo.r_TvSupplierAreaSalesHouse AS tash
        ON tash.SupplierID = buy.SupplierID
    JOIN MediaA1..BookingCategory AS cat
        ON cat.BookingCategoryCode = buy.BookingCategoryCode
    JOIN MediaA1..Client AS cl
        ON cl.MediaCode = buy.MediaCode
        AND cl.ClientCode = buy.ClientCode
    JOIN MediaA1..Product AS pr
        ON pr.MediaCode = buy.MediaCode
        AND pr.ClientCode = buy.ClientCode
        AND pr.ProductCode = buy.ProductCode
    JOIN MediaA1..Campaign AS ca
        ON ca.MediaCode = buy.MediaCode
        AND ca.ClientCode = buy.ClientCode
        AND ca.ProductCode = buy.ProductCode
        AND ca.CampaignCode = buy.CampaignCode
    JOIN MediaA1.dbo.BuyingAgency AS ag
        ON ag.AgencyCode = cl.BuyingAgencyCode
    LEFT JOIN MediaA1..Aud AS aud1
        ON aud1.AudienceNumber = bt.AudienceNumber
        AND aud1.AudienceType = bt.AudienceType
    LEFT JOIN MediaA1..Aud AS aud2
        ON aud2.AudienceNumber = bt.AudienceNumber2
        AND aud2.AudienceType = bt.AudienceType2
    LEFT JOIN MediaA1..Aud AS aud3
        ON aud3.AudienceNumber = bt.AudienceNumber3
        AND aud3.AudienceType = bt.AudienceType3
WHERE
    buy.BuyDate BETWEEN @startdate AND @enddate
    AND buy.MediaCode = 0
    AND buy.ClientCode IN (
        SELECT
            ClientCode
        FROM dbo.UserReportClient(1)
    )
GO
/****** Object:  UserDefinedFunction [dbo].[mxBillRate]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[mxBillRate](@isMaster AS bit, @gross AS money, @harpBillRate AS money) RETURNS TABLE
AS
RETURN SELECT
    CASE
        WHEN @isMaster = 1 THEN 0
        WHEN @harpBillRate = 0 THEN @gross
        ELSE @harpBillRate
    END AS val
;
GO
/****** Object:  Table [dbo].[BillingDates]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BillingDates](
	[MediaCode] [tinyint] NOT NULL,
	[BookingDate] [date] NOT NULL,
	[BillingDate] [date] NOT NULL,
	[BillingDateLogId] [smallint] NOT NULL,
 CONSTRAINT [PK_BillingDates] PRIMARY KEY CLUSTERED 
(
	[MediaCode] ASC,
	[BookingDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [dbo].[ur_LateBookingReport]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE FUNCTION [dbo].[ur_LateBookingReport]
  (@opco int, @startdate date, @enddate date, @lateBookingsOnly bit) RETURNS TABLE
AS

-- late booking report
-- created RD 20200809
-- hooked up to user_report RD 20200814
-- corrected is master to 1 from -1

RETURN

WITH opcos (opco_code)
AS
(
    SELECT
        OperatingCompanyCode
    FROM MediaA1..OperatingCompany
    WHERE @opco = -1
    UNION
    SELECT
        @opco
    WHERE @opco <> -1
)
SELECT
    ba.OperatingCompanyCode AS OpCoCode,
    rtrim(oc.OperatingCompanyName) AS OperatingCompanyName,
    cl.BuyingAgencyCode AS BACode,
    ba.AgencyName AS BuyingAgencyName,
    bm.ClientCode,
    rtrim(cl.ClientName) AS ClientName,
    bm.ProductCode,
    rtrim(pr.ProductName) AS ProductName,
    bm.CampaignCode,
    rtrim(ca.CampaignName) AS CampaignName,
    fv.FilterNumber,
    fv.FilterValue,
    fv.FilterValueName,
    bm.MediaCode,
    md.MediaLetter,
    md.[MediaName],
    upper(bm.SourceSystem) AS BuyingSystem,
    rtrim(bu.BuyerName) AS BuyerName,
    bm.BuyerInitials,
    bu.BuyerPID,
    su.FolioCode,
    fo.FolioName,
    --'= "' + bm.SupplierID + '"' AS SupplierID,
    bm.SupplierID,
    rtrim(su.SupplierName) AS SupplierName,
    bm.BookingCategoryCode AS SMBCCode,
    rtrim(bc.BookingCategoryName) AS SMBCName,
    bm.BuySerial,
    convert(date, bm.BuyDate) AS BookingDate,
    convert(date, bm.BookedDate) AS DateAdded,
    bd.BillingDate AS Normal_InvoicingDate,
    CASE
        WHEN bm.BookedDate <= bd.BillingDate THEN bd.BillingDate
        ELSE bda.BillingDate
    END
    AS Added_InvoicingDate,
    '' AS Normal_DueDate,
    '' AS Added_DueDate,
    datediff(dd, BuyDate, BookedDate) AS DaysLateAdded,
    datediff(dd, bd.BillingDate, BookedDate) AS DaysLateInvoicing,
    CASE
        WHEN datediff(dd, bd.BillingDate, BookedDate) <= 0 THEN 0.0
        ELSE round(convert(float, datediff(dd, bd.BillingDate, BookedDate)) / 365.0 * 0.05 * bm.Gross, 2)
    END AS DaysLateInterest,
    CASE
        WHEN datediff(dd, BuyDate, BookedDate) > 0 THEN 'YES'
        ELSE 'NO'
    END AS LateByInsStatus,
    CASE
        WHEN datediff(dd, bd.BillingDate, BookedDate) > 0 THEN 'YES'
        ELSE 'NO'
    END AS LateByBilStatus,
    CASE
        WHEN datediff(dd, BuyDate, BookedDate) > 0 AND
            datediff(dd, bd.BillingDate, BookedDate) <= 0 THEN '1 (I_)'
        WHEN datediff(dd, BuyDate, BookedDate) <= 0 AND
            datediff(dd, bd.BillingDate, BookedDate) > 0 THEN '2 (_B)'
        WHEN datediff(dd, BuyDate, BookedDate) > 0 AND
            datediff(dd, bd.BillingDate, BookedDate) > 0 THEN '3 (IB)'
        ELSE '="??"'
    END AS LateCode,
    month(BuyDate) AS BuyMonth,
    month(BookedDate) AS AddedMonth,
    0 AS InvoicingMonth,
    0.5 AS Rate,
    bm.InvoiceCode,
    convert(date, bm.InvoiceDate) AS InvoiceDate,
    bm.PreviousInvoiceCode,
    bm.PreviousInvoiceDate,
    convert(date, bm.InvoiceDate) AS LastBilledDate,
    bm.Gross,
    (
        SELECT
            val
        FROM dbo.mxBillRate(bm.IsMaster, bm.Gross, bm.BillRate)
    )
    AS [BillRate],
    bm.MediaDiscount,
    bm.AgencyCommission,
    bm.BuyingAgencyCommission,
    bm.Billable,
    bm.Billed,
    bm.Billable - bm.Billed AS UnBilled,
    bm.Payable,
    bm.Paid,
    bm.Payable - bm.Paid AS UnPaid,
    bm.CurrencyCode,
    CASE
        WHEN bm.IsLocked = 0 THEN 'No'
        ELSE 'Yes'
    END AS BuyLocked,
    CASE
        WHEN bm.IsCancelled = 0 THEN 'No'
        ELSE 'Yes'
    END AS BuyCancelled,
    CASE
        WHEN bm.IsHeld = 0 THEN 'No'
        ELSE 'Yes'
    END AS BuyBillingHeld,
    bm.PlacementID,
    bm.JCNReference,
    bm.PurchaseOrderSerial,
    CASE
        WHEN bm.IsMaster = 1 THEN 'Yes'
        ELSE 'No'
    END AS PayOnlyBooking
FROM MediaA1..BuyMoney AS bm
    JOIN MediaA1..Client AS cl
        ON bm.ClientCode = cl.ClientCode
        AND bm.MediaCode = cl.MediaCode
    JOIN dbo.UserReportClient(4) as uc
        on uc.ClientCode = bm.ClientCode
    JOIN dbo.UserReportMedia(4) as um
        on um.MediaCode = bm.MediaCode
    JOIN MediaA1..BuyingAgency AS ba
        ON cl.BuyingAgencyCode = ba.AgencyCode
    JOIN MediaA1..BookingCategory AS bc
        ON bm.BookingCategoryCode = bc.BookingCategoryCode
    JOIN MediaA1..OperatingCompany AS oc
        ON ba.OperatingCompanyCode = oc.OperatingCompanyCode
    JOIN MediaA1..Media AS md
        ON bm.MediaCode = md.MediaCode
    JOIN MediaA1..Product AS pr
        ON bm.ProductCode = pr.ProductCode
        AND bm.ClientCode = pr.ClientCode
        AND bm.MediaCode = pr.MediaCode
    JOIN MediaA1..Campaign AS ca
        ON bm.CampaignCode = ca.CampaignCode
        AND bm.ProductCode = ca.ProductCode
        AND bm.ClientCode = ca.ClientCode
        AND bm.MediaCode = ca.MediaCode
    LEFT JOIN MediaA1..Buyer AS bu
        ON bm.BuyerInitials = bu.BuyerInitials
    JOIN MediaA1..Supplier AS su
        ON bm.SupplierID = su.SupplierID
        AND bm.MediaCode = su.MediaCode
    JOIN MediaA1..Folio AS fo
        ON su.FolioCode = fo.FolioCode
        AND su.MediaCode = fo.MediaCode
    LEFT JOIN dbo.BillingDates AS bd
        ON bd.BookingDate = bm.BuyDate
        AND bd.MediaCode = bm.MediaCode
    LEFT JOIN dbo.BillingDates AS bda
        ON bda.BookingDate = bm.BookedDate
        AND bda.MediaCode = bm.MediaCode
    LEFT JOIN MediaA1..FilterValue AS fv
        ON fv.FilterValue = ca.Filter2
        AND fv.FilterNumber = 2
        AND fv.FilterValueName <> ''
WHERE
    bm.BookedDate BETWEEN @startdate AND @enddate
    AND ba.OperatingCompanyCode IN (
        SELECT
            opco_code
        FROM opcos
    )
    AND bm.IsDraft = 0
    AND (datediff(dd, BuyDate, BookedDate) > 0 OR datediff(dd, bd.BillingDate, BookedDate) > 0)

UNION

SELECT
    ba.OperatingCompanyCode AS OpCoCode,
    rtrim(oc.OperatingCompanyName) AS OperatingCompanyName,
    cl.BuyingAgencyCode AS BACode,
    ba.AgencyName AS BuyingAgencyName,
    bm.ClientCode,
    rtrim(cl.ClientName) AS ClientName,
    bm.ProductCode,
    rtrim(pr.ProductName) AS ProductName,
    bm.CampaignCode,
    rtrim(ca.CampaignName) AS CampaignName,
    fv.FilterNumber,
    fv.FilterValue,
    fv.FilterValueName,
    bm.MediaCode,
    md.MediaLetter,
    md.[MediaName],
    upper(bm.SourceSystem) AS BuyingSystem,
    rtrim(bu.BuyerName) AS BuyerName,
    bm.BuyerInitials,
    bu.BuyerPID,
    su.FolioCode,
    fo.FolioName,
    --'= "' + bm.SupplierID + '"' AS SupplierID,
    bm.SupplierID,
    rtrim(su.SupplierName) AS SupplierName,
    bm.BookingCategoryCode AS SMBCCode,
    rtrim(bc.BookingCategoryName) AS SMBCName,
    bm.BuySerial,
    convert(date, bm.BuyDate) AS BookingDate,
    convert(date, bm.BookedDate) AS DateAdded,
    bd.BillingDate AS Normal_InvoicingDate,
    CASE
        WHEN bm.BookedDate <= bd.BillingDate THEN bd.BillingDate
        ELSE bda.BillingDate
    END
    AS Added_InvoicingDate,
    '' AS Normal_DueDate,
    '' AS Added_DueDate,
    datediff(dd, BuyDate, BookedDate) AS DaysLateAdded,
    datediff(dd, bd.BillingDate, BookedDate) AS DaysLateInvoicing,
    0 AS DaysLateInterest,
    'NO' AS LateByInsStatus,
    'NO' AS LateByBilStatus,
    '0 (__)' AS LateCode,
    month(BuyDate) AS BuyMonth,
    month(BookedDate) AS AddedMonth,
    0 AS InvoicingMonth,
    0.5 AS Rate,
    bm.InvoiceCode,
    convert(date, bm.InvoiceDate) AS InvoiceDate,
    bm.PreviousInvoiceCode,
    bm.PreviousInvoiceDate,
    convert(date, bm.InvoiceDate) AS LastBilledDate,
    bm.Gross,
    (
        SELECT
            val
        FROM dbo.mxBillRate(bm.IsMaster, bm.Gross, bm.BillRate)
    )
    AS [BillRate],
    bm.MediaDiscount,
    bm.AgencyCommission,
    bm.BuyingAgencyCommission,
    bm.Billable,
    bm.Billed,
    bm.Billable - bm.Billed AS UnBilled,
    bm.Payable,
    bm.Paid,
    bm.Payable - bm.Paid AS UnPaid,
    bm.CurrencyCode,
    CASE
        WHEN bm.IsLocked = 0 THEN 'No'
        ELSE 'Yes'
    END AS BuyLocked,
    CASE
        WHEN bm.IsCancelled = 0 THEN 'No'
        ELSE 'Yes'
    END AS BuyCancelled,
    CASE
        WHEN bm.IsHeld = 0 THEN 'No'
        ELSE 'Yes'
    END AS BuyBillingHeld,
    bm.PlacementID,
    bm.JCNReference,
    bm.PurchaseOrderSerial,
    CASE
        WHEN bm.IsMaster = 1 THEN 'Yes'
        ELSE 'No'
    END AS PayOnlyBooking
FROM MediaA1..BuyMoney AS bm
    JOIN MediaA1..Client AS cl
        ON bm.ClientCode = cl.ClientCode
        AND bm.MediaCode = cl.MediaCode
    JOIN dbo.UserReportClient(4) as uc
        on uc.ClientCode = bm.ClientCode
    JOIN dbo.UserReportMedia(4) as um
        on um.MediaCode = bm.MediaCode
    JOIN MediaA1..BuyingAgency AS ba
        ON cl.BuyingAgencyCode = ba.AgencyCode
    JOIN MediaA1..BookingCategory AS bc
        ON bm.BookingCategoryCode = bc.BookingCategoryCode
    JOIN MediaA1..OperatingCompany AS oc
        ON ba.OperatingCompanyCode = oc.OperatingCompanyCode
    JOIN MediaA1..Media AS md
        ON bm.MediaCode = md.MediaCode
    JOIN MediaA1..Product AS pr
        ON bm.ProductCode = pr.ProductCode
        AND bm.ClientCode = pr.ClientCode
        AND bm.MediaCode = pr.MediaCode
    JOIN MediaA1..Campaign AS ca
        ON bm.CampaignCode = ca.CampaignCode
        AND bm.ProductCode = ca.ProductCode
        AND bm.ClientCode = ca.ClientCode
        AND bm.MediaCode = ca.MediaCode
    LEFT JOIN MediaA1..Buyer AS bu
        ON bm.BuyerInitials = bu.BuyerInitials
    JOIN MediaA1..Supplier AS su
        ON bm.SupplierID = su.SupplierID
        AND bm.MediaCode = su.MediaCode
    JOIN MediaA1..Folio AS fo
        ON su.FolioCode = fo.FolioCode
        AND su.MediaCode = fo.MediaCode
    LEFT JOIN dbo.BillingDates AS bd
        ON bd.BookingDate = bm.BuyDate
        AND bd.MediaCode = bm.MediaCode
    LEFT JOIN dbo.BillingDates AS bda
        ON bda.BookingDate = bm.BookedDate
        AND bda.MediaCode = bm.MediaCode
    LEFT JOIN MediaA1..FilterValue AS fv
        ON fv.FilterValue = ca.Filter2
        AND fv.FilterNumber = 2
        AND fv.FilterValueName <> ''
WHERE
    bm.BookedDate BETWEEN @startdate AND @enddate
    AND ba.OperatingCompanyCode IN (
        SELECT
            opco_code
        FROM opcos
    )
    AND bm.IsDraft = 0
    AND (datediff(dd, BuyDate, BookedDate) <= 0 AND datediff(dd, bd.BillingDate, BookedDate) <= 0)
    AND @lateBookingsOnly = 0
GO
/****** Object:  UserDefinedFunction [dbo].[ur_TvPerformance_Ver_2]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Alter Function ur_TvPerformance_Ver_2

CREATE FUNCTION [dbo].[ur_TvPerformance_Ver_2]
  (
  @startdate date,
  @enddate date) RETURNS TABLE
AS

-- tv performance report with bought audience => audience_9
-- if audience 3 is zero then audience 1 is audience_9 else audience 3 is
-- RD: created 20200220
-- RD: format buy date 20200227
-- RD: updated test for money spot audience_9 to if audience 3 is null 20200309
-- RD: update add impressions_2, _3 and _9 and suffix all audience related fields _# 20200309
-- RD: fix typo for audienceshortname_9 for transmission bookings 20200310
-- RD: return 0 where Impressions_3 and ActualImp_3 are null 20200316

RETURN

WITH money_buys (BuyingAgencyName, MediaCode, ClientCode, ProductCode, CampaignCode, ClientName, ProductName, CampaignName, BuySerial, SalesHouseName, GroupName, SubGroupName, AreaName, BuyDate, [Day], Secs, BookingCategoryName, Audience1, Audience3, Gross, BillRate, CariaApprovalNumber, BookingType)
AS
(
    SELECT
        ag.AgencyName,
        buy.MediaCode,
        buy.ClientCode,
        buy.ProductCode,
        buy.CampaignCode,
        cl.ClientName,
        pr.ProductName,
        ca.CampaignName,
        buy.BuySerial,
        tash.SalesHouseName,
        tash.GroupName,
        tash.SubGroupName,
        tash.AreaName,
        buy.BuyDate,
        upper(left(datename(WEEKDAY, buy.BuyDate), 3)),
        (
            SELECT
                val
            FROM dbo.MoneyBuySpotLength(com.Comment)
        )
        AS Secs,
        cat.BookingCategoryName,
        (
            SELECT
                val
            FROM dbo.MoneyBuyAudience1(com.Comment)
        )
        AS Audience1,
        (
            SELECT
                val
            FROM dbo.MoneyBuyAudience3(com.Comment)
        )
        AS Audience3,
        buy.Gross,
        buy.BillRate,
        buy.PlacementID,
        'MONEY'
    FROM MediaA1..buy AS buy
    LEFT JOIN MediaA1..BuyComment AS com
        ON com.BuySerial = buy.BuySerial
        AND com.CommentStyle = 'O'
        AND com.CommentLineSequence = 1
        AND com.Comment LIKE '%,%,%,%,%,%'
        AND buy.IsStationBudget = 1
    JOIN MediaA1..BookingCategory AS cat
        ON cat.BookingCategoryCode = buy.BookingCategoryCode
    JOIN MediaA1..Client AS cl
        ON cl.MediaCode = buy.MediaCode
        AND cl.ClientCode = buy.ClientCode
    JOIN MediaA1..Product AS pr
        ON pr.MediaCode = buy.MediaCode
        AND pr.ClientCode = buy.ClientCode
        AND pr.ProductCode = buy.ProductCode
    JOIN MediaA1..Campaign AS ca
        ON ca.MediaCode = buy.MediaCode
        AND ca.ClientCode = buy.ClientCode
        AND ca.ProductCode = buy.ProductCode
        AND ca.CampaignCode = buy.CampaignCode
    JOIN MediaA1.dbo.BuyingAgency AS ag
        ON ag.AgencyCode = cl.BuyingAgencyCode
    JOIN dbo.r_TvSupplierAreaSalesHouse AS tash
        ON tash.SupplierID = buy.SupplierID
    WHERE buy.BuyDate BETWEEN @startdate AND @enddate
    AND buy.MediaCode = 0 -- tv
    AND buy.IsCancelled = 0
    AND buy.Gross <> 0
    AND buy.ClientCode IN (
        SELECT
            ClientCode
        FROM dbo.UserReportClient(1)
    )
)
SELECT
    BuyingAgencyName,
    MediaCode,
    ClientCode,
    ProductCode,
    CampaignCode,
    ClientName,
    ProductName,
    CampaignName,
    BuySerial,
    SalesHouseName,
    GroupName,
    SubGroupName,
    AreaName,
    format(BuyDate, 'dd/MM/yyyy') AS [BuyDate],
    [Day],
    '' AS [Time],
    '' AS ProgrammeBefore,
    '' AS ProgrammeAfter,
    '' AS SaleshouseProgrammeBefore,
    '' AS SaleshouseProgrammeAfter,
    Secs,
    0 AS EquivalenceFactor,
    '' AS MatchedStatus,
    0 AS Impressions_1,
    0 AS [ActualImp_1],
    0 AS [EstImp_1],
    0 AS Impressions_2,
    0 AS [ActualImp_2],
    0 AS [EstImp_2],
    0 as Impressions_3,
    0 AS [ActualImp_3],
    0 AS [EstImp_3],
    0 AS Impressions_9,
    0 AS [ActualImp_9],
    0 AS [EstImp_9],
    0 AS DayPart,
    '' AS DayPartName,
    BookingCategoryName,
    Audience1 AS Audience_1,
    aud1.AudienceShortName AS AudienceShortName_1,
    convert(varchar(8), aud1.AudienceNumber) + ' ' + aud1.AudienceShortName AS AudienceNumberAndName_1,
    aud1.AudienceCategory AS [AudienceCategory_1],
    aud1.AudienceCategoryName AS [AudienceCategoryName_1],
    0 AS Universe_1,
    0 AS EstimatedRating_1,
    0 AS ActualRating_1,
    0 AS Audience_2,
    '' AS AudienceShortName_2,
    '' AS AudienceNumberAndName_2,
    0 AS AudienceCategory_2,
    '' AS AudienceCategoryName_2,
    0 AS Universe_2,
    0 AS EstimatedRating_2,
    0 AS ActualRating_2,
    Audience3 AS Audience_3,
    aud3.AudienceShortName AS AudienceShortName_3,
    convert(varchar(8), aud3.AudienceNumber) + ' ' + aud3.AudienceShortName AS AudienceNumberAndName_3,
    aud3.AudienceCategory AS AudienceCategory_3,
    aud3.AudienceCategoryName AS AudiencCategoryName_3,
    0 AS Universe_3,
    0 AS EstimatedRating_3,
    0 AS ActualRating_3,
    CASE
        WHEN Audience3 IS NULL THEN Audience1
        ELSE Audience3
    END AS Audience_9,
    CASE
        WHEN Audience3 IS NULL THEN aud1.AudienceShortName
        ELSE aud3.AudienceShortName
    END AS AudienceShortName_9,
    CASE
        WHEN Audience3 IS NULL THEN convert(varchar(8), aud1.AudienceNumber) + ' ' + aud1.AudienceShortName
        ELSE convert(varchar(8), aud3.AudienceNumber) + ' ' + aud3.AudienceShortName
    END AS AudienceNumberAndName_9,
    CASE
        WHEN Audience3 IS NULL THEN aud1.AudienceCategory
        ELSE aud3.AudienceCategory
    END AS AudienceCategory_9,
    CASE
        WHEN Audience3 IS NULL THEN aud1.AudienceCategoryName
        ELSE aud3.AudienceCategoryName
    END AS AudienceCategoryName_9,
    0 AS Universe_9,
    0 AS EstimatedRating_9,
    0 AS ActualRating_9,
    '' AS FilmNumber,
    Gross,
    BillRate,
    CariaApprovalNumber,
    '' AS PIB,
    '' AS POB,
    '' AS CvE,
    BookingType
FROM money_buys AS mb
    LEFT JOIN MediaA1..Aud AS aud1
        ON aud1.AudienceNumber = mb.Audience1
        AND aud1.AudienceType = 'C'
    LEFT JOIN MediaA1..Aud AS aud3
        ON aud3.AudienceNumber = mb.Audience3
        AND aud3.AudienceType = 'C'
UNION

SELECT
    ag.AgencyName,
    ca.MediaCode,
    cl.ClientCode,
    pr.ProductCode,
    ca.CampaignCode,
    cl.ClientName,
    pr.ProductName,
    ca.CampaignName,
    buy.BuySerial,
    tash.SalesHouseName,
    tash.GroupName,
    tash.SubGroupName,
    tash.AreaName,
    format(buy.BuyDate, 'dd/MM/yyy') AS [BuyDate],
    upper(left(datename(WEEKDAY, buy.BuyDate), 3)) AS [Day],
    bt.BookedTime AS [Time],
    bt.ProgrammeBefore,
    bt.ProgrammeAfter,
    bt.SaleshouseProgrammeBefore,
    bt.SaleshouseProgrammeAfter,
    bt.Spotlength AS [Secs],
    bt.EquivalenceFactor,
    bt.MatchedStatus,
    bt.Impressions AS Impressions_1,
    CASE
        WHEN bt.MatchedStatus = 'M' THEN bt.Impressions
        ELSE 0
    END AS [ActualImp_1],
    CASE
        WHEN bt.MatchedStatus <> 'M' THEN bt.Impressions
        ELSE 0
    END AS [EstImp_1],
    bt.Impressions2 AS Impressions_2,
    CASE
        WHEN bt.MatchedStatus = 'M' THEN bt.Impressions2
        ELSE 0
    END AS [ActualImp_2],
    CASE
        WHEN bt.MatchedStatus <> 'M' THEN bt.Impressions2
        ELSE 0
    END AS [EstImp_2],
    isnull(bt.Impressions3, 0) AS Impressions_3,
    CASE
        WHEN bt.MatchedStatus = 'M' THEN isnull(bt.Impressions3, 0)
        ELSE 0
    END AS [ActualImp_3],
    CASE
        WHEN bt.MatchedStatus <> 'M' THEN isnull(bt.Impressions3, 0)
        ELSE 0
    END AS [EstImp_3],
    CASE
        WHEN bt.Impressions3 IS NULL
        THEN bt.Impressions
        ELSE bt.Impressions3
    END AS Impressions_9,
    CASE
        WHEN bt.AudienceNumber3 IS NULL AND
            bt.MatchedStatus = 'M' THEN bt.Impressions
        WHEN bt.AudienceNumber3 IS NOT NULL AND
            bt.MatchedStatus = 'M' THEN bt.Impressions3
        ELSE 0
    END AS [ActualImp_9],
    CASE
        WHEN bt.AudienceNumber3 IS NULL AND
            bt.MatchedStatus <> 'M' THEN bt.Impressions
        WHEN bt.AudienceNumber3 IS NOT NULL AND
            bt.MatchedStatus <> 'M' THEN bt.Impressions3
        ELSE 0
    END AS [EstImp_9],
    bt.DaypartNumber AS [Daypart],
    dp.DaypartName,
    rtrim(cat.BookingCategoryName) AS BookingCategoryName,
    bt.AudienceNumber AS [Audience_1],
    aud1.AudienceShortName AS [AudienceShortName_1],
    convert(varchar(8), aud1.AudienceNumber) + ' ' + aud1.AudienceShortName AS AudienceNumberAndName_1,
    aud1.AudienceCategory AS [AudienceCategory_1],
    aud1.AudienceCategoryName AS [AudienceCategoryName_1],
    bt.Universe AS [Universe_1],
    bt.EstimatedRating AS [EstimatedRating_1],
    bt.ActualRating AS [ActualRating_1],
    bt.AudienceNumber2 AS [Audience_2],
    aud2.AudienceShortName AS AudienceShortName_2,
    convert(varchar(8), aud2.AudienceNumber) + ' ' + aud2.AudienceShortName AS AudienceNumberAndName_2,
    aud2.AudienceCategory AS AudienceCategory_2,
    aud2.AudienceCategoryName AS AudienceCategoryName_2,
    bt.Universe2 AS [Universe_2],
    bt.EstimatedRating2 AS EstimatedRating_2,
    bt.ActualRating2 AS ActualRating_2,
    bt.AudienceNumber3 AS [Audience_3],
    aud3.AudienceShortName AS AudienceShortName_3,
    convert(varchar(8), aud3.AudienceNumber) + ' ' + aud3.AudienceShortName AS AudienceNumberAndName_3,
    aud3.AudienceCategory AS AudienceCategory_3,
    aud3.AudienceCategoryName AS AudienceCategory_3,
    bt.Universe3 AS [Universe_3],
    bt.EstimatedRating3 AS EstimatedRating_3,
    bt.ActualRating3 AS ActualRating_3,
    CASE
        WHEN bt.AudienceNumber3 IS NULL THEN bt.AudienceNumber
        ELSE bt.AudienceNumber3
    END AS Audience_9,
    CASE
        WHEN bt.AudienceNumber3 IS NULL THEN aud1.AudienceShortName
        ELSE aud3.AudienceShortName
    END AS AudienceShortName_9,
    CASE
        WHEN bt.AudienceNumber3 IS NULL THEN convert(varchar(8), aud1.AudienceNumber) + ' ' + aud1.AudienceShortName
        ELSE convert(varchar(8), aud3.AudienceNumber) + ' ' + aud3.AudienceShortName
    END AS AudienceNumberAndName_9,
    CASE
        WHEN bt.AudienceNumber3 IS NULL THEN aud1.AudienceCategory
        ELSE aud3.AudienceCategory
    END AS AudienceCategory_9,
    CASE
        WHEN bt.AudienceNumber3 IS NULL THEN aud1.AudienceCategoryName
        ELSE aud3.AudienceCategoryName
    END AS AudienceCategory_9,
    CASE
        WHEN bt.AudienceNumber3 IS NULL THEN bt.Universe
        ELSE bt.Universe3
    END AS Universe_9,
    CASE
        WHEN bt.AudienceNumber3 IS NULL THEN bt.EstimatedRating
        ELSE bt.EstimatedRating3
    END AS EstimatedRating_9,
    CASE
        WHEN bt.AudienceNumber3 IS NULL THEN bt.ActualRating
        ELSE bt.ActualRating3
    END AS ActualRating_9,
    bt.FilmNumber,
    buy.Gross,
    buy.BillRate,
    buy.PlacementID AS CariaApprovalNumber,
    bt.PositionInBreak AS [PIB],
    bt.PositionOfBreak AS [POB],
    bt.SpecialDealTypes AS [CvE],
    'TRANSMISSION' AS BookingType
FROM MediaA1..buy AS buy
    JOIN MediaA1..BuyTV AS bt
        ON bt.BuySerial = buy.BuySerial
        AND bt.Impressions <> 0
    LEFT JOIN dbo.Dayparts AS dp
        ON dp.DaypartNumber = bt.DaypartNumber
    JOIN dbo.r_TvSupplierAreaSalesHouse AS tash
        ON tash.SupplierID = buy.SupplierID
    JOIN MediaA1..BookingCategory AS cat
        ON cat.BookingCategoryCode = buy.BookingCategoryCode
    JOIN MediaA1..Client AS cl
        ON cl.MediaCode = buy.MediaCode
        AND cl.ClientCode = buy.ClientCode
    JOIN MediaA1..Product AS pr
        ON pr.MediaCode = buy.MediaCode
        AND pr.ClientCode = buy.ClientCode
        AND pr.ProductCode = buy.ProductCode
    JOIN MediaA1..Campaign AS ca
        ON ca.MediaCode = buy.MediaCode
        AND ca.ClientCode = buy.ClientCode
        AND ca.ProductCode = buy.ProductCode
        AND ca.CampaignCode = buy.CampaignCode
    JOIN MediaA1.dbo.BuyingAgency AS ag
        ON ag.AgencyCode = cl.BuyingAgencyCode
    LEFT JOIN MediaA1..Aud AS aud1
        ON aud1.AudienceNumber = bt.AudienceNumber
        AND aud1.AudienceType = bt.AudienceType
    LEFT JOIN MediaA1..Aud AS aud2
        ON aud2.AudienceNumber = bt.AudienceNumber2
        AND aud2.AudienceType = bt.AudienceType2
    LEFT JOIN MediaA1..Aud AS aud3
        ON aud3.AudienceNumber = bt.AudienceNumber3
        AND aud3.AudienceType = bt.AudienceType3
WHERE
    buy.BuyDate BETWEEN @startdate AND @enddate
    AND buy.MediaCode = 0
    AND buy.ClientCode IN (
        SELECT
            ClientCode
        FROM dbo.UserReportClient(1)
    );
GO
/****** Object:  UserDefinedFunction [dbo].[ur_TVFrontSheet]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Alter Function ur_TVFrontSheet
-- Alter Function ur_TvPerformance_Ver_3

CREATE FUNCTION [dbo].[ur_TVFrontSheet]
  (
  @startdate date,
  @enddate date) RETURNS TABLE
AS

-- tv performance report with bought audience => audience_9
-- if audience 3 is zero then audience 1 is audience_9 else audience 3 is
-- RD: created 20200220
-- RD: format buy date 20200227
-- RD: updated test for money spot audience_9 to if audience 3 is null 20200309
-- RD: update add impressions_2, _3 and _9 and suffix all audience related fields _# 20200309
-- RD: fix typo for audienceshortname_9 for transmission bookings 20200310
-- RD: return 0 where Impressions_3 and ActualImp_3 are null 20200316
-- RD: switch money buy equivalence factor to null so that avg() equivalence can be calculated (SQL ignores nulls in avg())

RETURN

WITH money_buys (BuyingAgencyName, MediaCode, ClientCode, ProductCode, CampaignCode, ClientName, ProductName, CampaignName, BuySerial, SalesHouseName, GroupName, SubGroupName, AreaName, BuyDate, [Day], Secs, BookingCategoryName, Audience1, Audience3, Gross, BillRate, CariaApprovalNumber, BookingType)
AS
(
    SELECT
        ag.AgencyName,
        buy.MediaCode,
        buy.ClientCode,
        buy.ProductCode,
        buy.CampaignCode,
        cl.ClientName,
        pr.ProductName,
        ca.CampaignName,
        buy.BuySerial,
        tash.SalesHouseName,
        tash.GroupName,
        tash.SubGroupName,
        tash.AreaName,
        buy.BuyDate,
        upper(left(datename(WEEKDAY, buy.BuyDate), 3)),
        (
            SELECT
                val
            FROM dbo.MoneyBuySpotLength(com.Comment)
        )
        AS Secs,
        cat.BookingCategoryName,
        (
            SELECT
                val
            FROM dbo.MoneyBuyAudience1(com.Comment)
        )
        AS Audience1,
        (
            SELECT
                val
            FROM dbo.MoneyBuyAudience3(com.Comment)
        )
        AS Audience3,
        buy.Gross,
        buy.BillRate,
        buy.PlacementID,
        'MONEY'
    FROM MediaA1..buy AS buy
    LEFT JOIN MediaA1..BuyComment AS com
        ON com.BuySerial = buy.BuySerial
        AND com.CommentStyle = 'O'
        AND com.CommentLineSequence = 1
        AND com.Comment LIKE '%,%,%,%,%,%'
        AND buy.IsStationBudget = 1
    JOIN MediaA1..BookingCategory AS cat
        ON cat.BookingCategoryCode = buy.BookingCategoryCode
    JOIN MediaA1..Client AS cl
        ON cl.MediaCode = buy.MediaCode
        AND cl.ClientCode = buy.ClientCode
    JOIN MediaA1..Product AS pr
        ON pr.MediaCode = buy.MediaCode
        AND pr.ClientCode = buy.ClientCode
        AND pr.ProductCode = buy.ProductCode
    JOIN MediaA1..Campaign AS ca
        ON ca.MediaCode = buy.MediaCode
        AND ca.ClientCode = buy.ClientCode
        AND ca.ProductCode = buy.ProductCode
        AND ca.CampaignCode = buy.CampaignCode
    JOIN MediaA1.dbo.BuyingAgency AS ag
        ON ag.AgencyCode = cl.BuyingAgencyCode
    JOIN dbo.r_TvSupplierAreaSalesHouse AS tash
        ON tash.SupplierID = buy.SupplierID
    WHERE buy.BuyDate BETWEEN @startdate AND @enddate
    AND buy.MediaCode = 0 -- tv
    AND buy.IsCancelled = 0
    AND buy.Gross <> 0
    AND buy.ClientCode IN (
        SELECT
            ClientCode
        FROM dbo.UserReportClient(1)
    )
)
SELECT
    BuyingAgencyName,
    MediaCode,
    ClientCode,
    ProductCode,
    CampaignCode,
    ClientName,
    ProductName,
    CampaignName,
    BuySerial,
    SalesHouseName,
    GroupName,
    SubGroupName,
    AreaName,
    format(BuyDate, 'dd/MM/yyyy') AS [BuyDate],
    [Day],
    '' AS [Time],
    '' AS ProgrammeBefore,
    '' AS ProgrammeAfter,
    '' AS SaleshouseProgrammeBefore,
    '' AS SaleshouseProgrammeAfter,
    Secs,
    null AS EquivalenceFactor,
    '' AS MatchedStatus,
    0 AS Impressions_1,
    0 AS [ActualImp_1],
    0 AS [EstImp_1],
    0 AS Impressions_2,
    0 AS [ActualImp_2],
    0 AS [EstImp_2],
    0 as Impressions_3,
    0 AS [ActualImp_3],
    0 AS [EstImp_3],
    0 AS Impressions_9,
    0 AS [ActualImp_9],
    0 AS [EstImp_9],
    0 AS DayPart,
    '' AS DayPartName,
    BookingCategoryName,
    Audience1 AS Audience_1,
    aud1.AudienceShortName AS AudienceShortName_1,
    convert(varchar(8), aud1.AudienceNumber) + ' ' + aud1.AudienceShortName AS AudienceNumberAndName_1,
    aud1.AudienceCategory AS [AudienceCategory_1],
    aud1.AudienceCategoryName AS [AudienceCategoryName_1],
    0 AS Universe_1,
    0 AS EstimatedRating_1,
    0 AS ActualRating_1,
    0 AS Audience_2,
    '' AS AudienceShortName_2,
    '' AS AudienceNumberAndName_2,
    0 AS AudienceCategory_2,
    '' AS AudienceCategoryName_2,
    0 AS Universe_2,
    0 AS EstimatedRating_2,
    0 AS ActualRating_2,
    Audience3 AS Audience_3,
    aud3.AudienceShortName AS AudienceShortName_3,
    convert(varchar(8), aud3.AudienceNumber) + ' ' + aud3.AudienceShortName AS AudienceNumberAndName_3,
    aud3.AudienceCategory AS AudienceCategory_3,
    aud3.AudienceCategoryName AS AudiencCategoryName_3,
    0 AS Universe_3,
    0 AS EstimatedRating_3,
    0 AS ActualRating_3,
    CASE
        WHEN Audience3 IS NULL THEN Audience1
        ELSE Audience3
    END AS Audience_9,
    CASE
        WHEN Audience3 IS NULL THEN aud1.AudienceShortName
        ELSE aud3.AudienceShortName
    END AS AudienceShortName_9,
    CASE
        WHEN Audience3 IS NULL THEN convert(varchar(8), aud1.AudienceNumber) + ' ' + aud1.AudienceShortName
        ELSE convert(varchar(8), aud3.AudienceNumber) + ' ' + aud3.AudienceShortName
    END AS AudienceNumberAndName_9,
    CASE
        WHEN Audience3 IS NULL THEN aud1.AudienceCategory
        ELSE aud3.AudienceCategory
    END AS AudienceCategory_9,
    CASE
        WHEN Audience3 IS NULL THEN aud1.AudienceCategoryName
        ELSE aud3.AudienceCategoryName
    END AS AudienceCategoryName_9,
    0 AS Universe_9,
    0 AS EstimatedRating_9,
    0 AS ActualRating_9,
    '' AS FilmNumber,
    Gross,
    BillRate,
    CariaApprovalNumber,
    '' AS PIB,
    '' AS POB,
    '' AS CvE,
    BookingType
FROM money_buys AS mb
    LEFT JOIN MediaA1..Aud AS aud1
        ON aud1.AudienceNumber = mb.Audience1
        AND aud1.AudienceType = 'C'
    LEFT JOIN MediaA1..Aud AS aud3
        ON aud3.AudienceNumber = mb.Audience3
        AND aud3.AudienceType = 'C'
UNION

SELECT
    ag.AgencyName,
    ca.MediaCode,
    cl.ClientCode,
    pr.ProductCode,
    ca.CampaignCode,
    cl.ClientName,
    pr.ProductName,
    ca.CampaignName,
    buy.BuySerial,
    tash.SalesHouseName,
    tash.GroupName,
    tash.SubGroupName,
    tash.AreaName,
    format(buy.BuyDate, 'dd/MM/yyy') AS [BuyDate],
    upper(left(datename(WEEKDAY, buy.BuyDate), 3)) AS [Day],
    bt.BookedTime AS [Time],
    bt.ProgrammeBefore,
    bt.ProgrammeAfter,
    bt.SaleshouseProgrammeBefore,
    bt.SaleshouseProgrammeAfter,
    bt.Spotlength AS [Secs],
    bt.EquivalenceFactor,
    bt.MatchedStatus,
    bt.Impressions AS Impressions_1,
    CASE
        WHEN bt.MatchedStatus = 'M' THEN bt.Impressions
        ELSE 0
    END AS [ActualImp_1],
    CASE
        WHEN bt.MatchedStatus <> 'M' THEN bt.Impressions
        ELSE 0
    END AS [EstImp_1],
    bt.Impressions2 AS Impressions_2,
    CASE
        WHEN bt.MatchedStatus = 'M' THEN bt.Impressions2
        ELSE 0
    END AS [ActualImp_2],
    CASE
        WHEN bt.MatchedStatus <> 'M' THEN bt.Impressions2
        ELSE 0
    END AS [EstImp_2],
    isnull(bt.Impressions3, 0) AS Impressions_3,
    CASE
        WHEN bt.MatchedStatus = 'M' THEN isnull(bt.Impressions3, 0)
        ELSE 0
    END AS [ActualImp_3],
    CASE
        WHEN bt.MatchedStatus <> 'M' THEN isnull(bt.Impressions3, 0)
        ELSE 0
    END AS [EstImp_3],
    CASE
        WHEN bt.Impressions3 IS NULL
        THEN bt.Impressions
        ELSE bt.Impressions3
    END AS Impressions_9,
    CASE
        WHEN bt.AudienceNumber3 IS NULL AND
            bt.MatchedStatus = 'M' THEN bt.Impressions
        WHEN bt.AudienceNumber3 IS NOT NULL AND
            bt.MatchedStatus = 'M' THEN bt.Impressions3
        ELSE 0
    END AS [ActualImp_9],
    CASE
        WHEN bt.AudienceNumber3 IS NULL AND
            bt.MatchedStatus <> 'M' THEN bt.Impressions
        WHEN bt.AudienceNumber3 IS NOT NULL AND
            bt.MatchedStatus <> 'M' THEN bt.Impressions3
        ELSE 0
    END AS [EstImp_9],
    bt.DaypartNumber AS [Daypart],
    dp.DaypartName,
    rtrim(cat.BookingCategoryName) AS BookingCategoryName,
    bt.AudienceNumber AS [Audience_1],
    aud1.AudienceShortName AS [AudienceShortName_1],
    convert(varchar(8), aud1.AudienceNumber) + ' ' + aud1.AudienceShortName AS AudienceNumberAndName_1,
    aud1.AudienceCategory AS [AudienceCategory_1],
    aud1.AudienceCategoryName AS [AudienceCategoryName_1],
    bt.Universe AS [Universe_1],
    bt.EstimatedRating AS [EstimatedRating_1],
    bt.ActualRating AS [ActualRating_1],
    bt.AudienceNumber2 AS [Audience_2],
    aud2.AudienceShortName AS AudienceShortName_2,
    convert(varchar(8), aud2.AudienceNumber) + ' ' + aud2.AudienceShortName AS AudienceNumberAndName_2,
    aud2.AudienceCategory AS AudienceCategory_2,
    aud2.AudienceCategoryName AS AudienceCategoryName_2,
    bt.Universe2 AS [Universe_2],
    bt.EstimatedRating2 AS EstimatedRating_2,
    bt.ActualRating2 AS ActualRating_2,
    bt.AudienceNumber3 AS [Audience_3],
    aud3.AudienceShortName AS AudienceShortName_3,
    convert(varchar(8), aud3.AudienceNumber) + ' ' + aud3.AudienceShortName AS AudienceNumberAndName_3,
    aud3.AudienceCategory AS AudienceCategory_3,
    aud3.AudienceCategoryName AS AudienceCategory_3,
    bt.Universe3 AS [Universe_3],
    bt.EstimatedRating3 AS EstimatedRating_3,
    bt.ActualRating3 AS ActualRating_3,
    CASE
        WHEN bt.AudienceNumber3 IS NULL THEN bt.AudienceNumber
        ELSE bt.AudienceNumber3
    END AS Audience_9,
    CASE
        WHEN bt.AudienceNumber3 IS NULL THEN aud1.AudienceShortName
        ELSE aud3.AudienceShortName
    END AS AudienceShortName_9,
    CASE
        WHEN bt.AudienceNumber3 IS NULL THEN convert(varchar(8), aud1.AudienceNumber) + ' ' + aud1.AudienceShortName
        ELSE convert(varchar(8), aud3.AudienceNumber) + ' ' + aud3.AudienceShortName
    END AS AudienceNumberAndName_9,
    CASE
        WHEN bt.AudienceNumber3 IS NULL THEN aud1.AudienceCategory
        ELSE aud3.AudienceCategory
    END AS AudienceCategory_9,
    CASE
        WHEN bt.AudienceNumber3 IS NULL THEN aud1.AudienceCategoryName
        ELSE aud3.AudienceCategoryName
    END AS AudienceCategory_9,
    CASE
        WHEN bt.AudienceNumber3 IS NULL THEN bt.Universe
        ELSE bt.Universe3
    END AS Universe_9,
    CASE
        WHEN bt.AudienceNumber3 IS NULL THEN bt.EstimatedRating
        ELSE bt.EstimatedRating3
    END AS EstimatedRating_9,
    CASE
        WHEN bt.AudienceNumber3 IS NULL THEN bt.ActualRating
        ELSE bt.ActualRating3
    END AS ActualRating_9,
    bt.FilmNumber,
    buy.Gross,
    buy.BillRate,
    buy.PlacementID AS CariaApprovalNumber,
    bt.PositionInBreak AS [PIB],
    bt.PositionOfBreak AS [POB],
    bt.SpecialDealTypes AS [CvE],
    'TRANSMISSION' AS BookingType
FROM MediaA1..buy AS buy
    JOIN MediaA1..BuyTV AS bt
        ON bt.BuySerial = buy.BuySerial
        AND bt.Impressions <> 0
    LEFT JOIN dbo.Dayparts AS dp
        ON dp.DaypartNumber = bt.DaypartNumber
    JOIN dbo.r_TvSupplierAreaSalesHouse AS tash
        ON tash.SupplierID = buy.SupplierID
    JOIN MediaA1..BookingCategory AS cat
        ON cat.BookingCategoryCode = buy.BookingCategoryCode
    JOIN MediaA1..Client AS cl
        ON cl.MediaCode = buy.MediaCode
        AND cl.ClientCode = buy.ClientCode
    JOIN MediaA1..Product AS pr
        ON pr.MediaCode = buy.MediaCode
        AND pr.ClientCode = buy.ClientCode
        AND pr.ProductCode = buy.ProductCode
    JOIN MediaA1..Campaign AS ca
        ON ca.MediaCode = buy.MediaCode
        AND ca.ClientCode = buy.ClientCode
        AND ca.ProductCode = buy.ProductCode
        AND ca.CampaignCode = buy.CampaignCode
    JOIN MediaA1.dbo.BuyingAgency AS ag
        ON ag.AgencyCode = cl.BuyingAgencyCode
    LEFT JOIN MediaA1..Aud AS aud1
        ON aud1.AudienceNumber = bt.AudienceNumber
        AND aud1.AudienceType = bt.AudienceType
    LEFT JOIN MediaA1..Aud AS aud2
        ON aud2.AudienceNumber = bt.AudienceNumber2
        AND aud2.AudienceType = bt.AudienceType2
    LEFT JOIN MediaA1..Aud AS aud3
        ON aud3.AudienceNumber = bt.AudienceNumber3
        AND aud3.AudienceType = bt.AudienceType3
WHERE
    buy.BuyDate BETWEEN @startdate AND @enddate
    AND buy.MediaCode = 0
    AND buy.ClientCode IN (
        SELECT
            ClientCode
        FROM dbo.UserReportClient(1)
    );
GO
/****** Object:  View [dbo].[BookingCategory]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Alter View BookingCategory

CREATE VIEW [dbo].[BookingCategory]
AS
-- RD updated 2020401
SELECT
    bc.RecordType,
    bc.[Action],
    bc.ActDatetime,
    bc.AgencyAlphaID,
    bc.BookingCategoryCode,
    bc.BookingCategoryName,
    bc.BookingCategoryMedia,
    bc.BookingCategoryShortname,
    bc.Locked,
    bc.CommissionFormula,
    bc.CommissionRate,
    bc.BillingFilter,
    bc.FormulaSchemeCode
FROM dbo.HarpUserMedia AS hum -- restrict to media user can see
    JOIN MediaA1..BookingCategoryMedia AS bcm
        ON bcm.BookingCategoryMediaCode = hum.MediaCode
    JOIN MediaA1..BookingCategory AS bc
        ON bc.BookingCategoryCode = bcm.BookingCategoryCode

EXCEPT -- exclude restricted categories unless user has access set in dbo.HarpUser table

SELECT
    bc.RecordType,
    bc.[Action],
    bc.ActDatetime,
    bc.AgencyAlphaID,
    bc.BookingCategoryCode,
    bc.BookingCategoryName,
    bc.BookingCategoryMedia,
    bc.BookingCategoryShortname,
    bc.Locked,
    bc.CommissionFormula,
    bc.CommissionRate,
    bc.BillingFilter,
    bc.FormulaSchemeCode
FROM dbo.HarpUserMedia AS hum
    JOIN MediaA1..BookingCategoryMedia AS bcm
        ON bcm.BookingCategoryMediaCode = hum.MediaCode
    JOIN MediaA1..BookingCategory AS bc
        ON bc.BookingCategoryCode = bcm.BookingCategoryCode
    JOIN dbo.RestrictedBookingCategories AS rbc
        ON rbc.BookingCategoryCode = bc.BookingCategoryCode
    JOIN dbo.[Users] AS u
        ON u.UserName = system_user
    JOIN dbo.HarpUsers AS hu
        ON hu.UserID = u.UserID
        AND NOT (hu.HasRestrictedBookingCategories = 1);
GO
/****** Object:  View [dbo].[ur_TvPerformanceReport]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Alter View ur_TvPerformanceReport

CREATE VIEW [dbo].[ur_TvPerformanceReport]
AS

-- Updated RD 20191120

SELECT
    ba.OperatingCompanyCode,
    ba.AgencyCode,
    ba.AgencyName,
    ca.MediaCode,
    cl.ClientCode,
    pr.ProductCode,
    ca.CampaignCode,
    cl.ClientName,
    pr.ProductName,
    ca.CampaignName,
    b.BuySerial,
    ta.SaleshouseName,
    ta.GroupName,
    ta.SubGroupName,
    ta.AreaName,
    b.BuyDate,
    upper(left(datename(WEEKDAY, b.BuyDate), 3)) AS [Day],
    bt.BookedTime AS [Time],
    bt.ProgrammeBefore,
    bt.ProgrammeAfter,
    bt.SaleshouseProgrammeBefore,
    bt.SaleshouseProgrammeAfter,
    bt.Spotlength AS [Secs],
    bt.EquivalenceFactor,
    bt.MatchedStatus,
    bt.Impressions,
    CASE
        WHEN bt.MatchedStatus = 'M' THEN bt.Impressions
        ELSE 0
    END AS [Actual Imp1],
    CASE
        WHEN bt.MatchedStatus <> 'M' THEN bt.Impressions
        ELSE 0
    END AS [Est Imp1],
    bt.DaypartNumber AS [Daypart],
    dp.DaypartName,
    rtrim(bc.BookingCategoryName) AS BookingCategoryName,
    bt.AudienceNumber AS [Audience1],
    au.AudienceShortName,
    convert(varchar(8), au.AudienceNumber) + ' ' + au.AudienceShortName AS AudienceNumberAndName,
    au.AudienceCategoryName AS [AudienceCategory],
    bt.Universe AS [Universe1],
    bt.EstimatedRating,
    bt.ActualRating,
    bt.FilmNumber,
    b.Gross,
    b.BillRate,
    b.PlacementID AS CariaApprovalNumber,
    bt.PositionInBreak AS [PIB],
    bt.PositionOfBreak AS [POB],
    bt.SpecialDealTypes AS [CvE],
    CASE
        WHEN b.IsStationBudget = 1 THEN 'MONEY'
        ELSE 'TRANSMISSION'
    END AS BookingType
FROM dbo.UserReportClient(1) AS urc -- report id 1
CROSS JOIN dbo.UserReportMedia(1) AS urm -- report id 1
JOIN MediaA1..Campaign AS ca
    ON ca.MediaCode = urm.MediaCode
    AND ca.ClientCode = urc.ClientCode
JOIN MediaA1..Product AS pr
    ON pr.MediaCode = ca.MediaCode
    AND pr.ClientCode = ca.ClientCode
    AND pr.ProductCode = ca.ProductCode
JOIN MediaA1..Client AS cl
    ON cl.MediaCode = ca.MediaCode
    AND cl.ClientCode = ca.ClientCode
JOIN MediaA1..Agency AS ba
    ON ba.AgencyCode = cl.BuyingAgencyCode
    AND ba.AgencyType = 'B'
JOIN MediaA1..Buy AS b
    ON b.MediaCode = ca.MediaCode
    AND b.ClientCode = ca.ClientCode
    AND b.ProductCode = ca.ProductCode
    AND b.CampaignCode = ca.CampaignCode
JOIN dbo.BookingCategory AS bc
    ON bc.BookingCategoryCode = b.BookingCategoryCode
JOIN dbo.r_TvSupplierAreaSalesHouse AS ta
    ON ta.SupplierID = b.SupplierID
LEFT JOIN MediaA1..BuyTV bt
    ON bt.BuySerial = b.BuySerial
LEFT JOIN dbo.Dayparts AS dp
    ON dp.DaypartNumber = bt.DaypartNumber
LEFT JOIN MediaA1..Aud AS au
    ON au.AudienceNumber = bt.AudienceNumber
    AND au.AudienceType = bt.AudienceType
WHERE
    NOT (b.gross = 0
    AND bt.Impressions = 0)
    AND b.IsCancelled = 0;
GO
/****** Object:  View [dbo].[ur_TvPerformanceReport_new]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Alter View ur_TvPerformanceReport_new

CREATE VIEW [dbo].[ur_TvPerformanceReport_new]
AS

-- Created RD 20191120
-- Updated RD 20200103

SELECT
    ba.OperatingCompanyCode,
    ba.AgencyCode,
    ba.AgencyName,
    ca.MediaCode,
    cl.ClientCode,
    pr.ProductCode,
    ca.CampaignCode,
    cl.ClientName,
    pr.ProductName,
    ca.CampaignName,
    b.BuySerial,
    ta.SaleshouseName,
    ta.GroupName,
    ta.SubGroupName,
    ta.AreaName,
    b.BuyDate,
    upper(left(datename(WEEKDAY, b.BuyDate), 3)) AS [Day],
    bt.BookedTime AS [Time],
    bt.ProgrammeBefore,
    bt.ProgrammeAfter,
    bt.SaleshouseProgrammeBefore,
    bt.SaleshouseProgrammeAfter,
    bt.Spotlength AS [Secs],
    bt.EquivalenceFactor,
    bt.MatchedStatus,
    bt.Impressions,
    CASE
        WHEN bt.MatchedStatus = 'M' THEN bt.Impressions
        ELSE 0
    END AS [Actual Imp1],
    CASE
        WHEN bt.MatchedStatus <> 'M' THEN bt.Impressions
        ELSE 0
    END AS [Est Imp1],
    bt.DaypartNumber AS [Daypart],
    dp.DaypartName,
    rtrim(bc.BookingCategoryName) AS BookingCategoryName,
    bt.AudienceNumber AS [Audience1],
    au.AudienceShortName,
    convert(varchar(8), au.AudienceNumber) + ' ' + au.AudienceShortName AS AudienceNumberAndName,
    au.AudienceCategoryName AS [AudienceCategory],
    bt.Universe AS [Universe1],
    bt.EstimatedRating,
    bt.ActualRating,
    bt.FilmNumber,
    b.Gross,
    b.BillRate,
    b.PlacementID AS CariaApprovalNumber,
    bt.PositionInBreak AS [PIB],
    bt.PositionOfBreak AS [POB],
    bt.SpecialDealTypes AS [CvE],
    CASE
        WHEN b.IsStationBudget = 1 THEN 'MONEY'
        ELSE 'TRANSMISSION'
    END AS BookingType
FROM dbo.UserReportClient(1) AS urc -- report id 1
JOIN MediaA1..Campaign AS ca
    ON ca.MediaCode = 0 -- TV only
    AND ca.ClientCode = urc.ClientCode
JOIN MediaA1..Product AS pr
    ON pr.MediaCode = ca.MediaCode
    AND pr.ClientCode = ca.ClientCode
    AND pr.ProductCode = ca.ProductCode
JOIN MediaA1..Client AS cl
    ON cl.MediaCode = ca.MediaCode
    AND cl.ClientCode = ca.ClientCode
JOIN MediaA1..Agency AS ba
    ON ba.AgencyCode = cl.BuyingAgencyCode
    AND ba.AgencyType = 'B'
JOIN MediaA1..Buy AS b
    ON b.MediaCode = ca.MediaCode
    AND b.ClientCode = ca.ClientCode
    AND b.ProductCode = ca.ProductCode
    AND b.CampaignCode = ca.CampaignCode
JOIN dbo.BookingCategory AS bc
    ON bc.BookingCategoryCode = b.BookingCategoryCode
JOIN dbo.r_TvSupplierAreaSalesHouse AS ta
    ON ta.SupplierID = b.SupplierID
LEFT JOIN MediaA1..BuyTV bt
    ON bt.BuySerial = b.BuySerial
LEFT JOIN dbo.Dayparts AS dp
    ON dp.DaypartNumber = bt.DaypartNumber
LEFT JOIN MediaA1..Aud AS au
    ON au.AudienceNumber = bt.AudienceNumber
    AND au.AudienceType = bt.AudienceType
WHERE
    NOT (b.gross = 0
    AND bt.Impressions = 0)
    AND b.IsCancelled = 0;
GO
/****** Object:  View [dbo].[Buy]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[Buy]
AS

-- Updated RD 20191019
-- added new fields to version 28 RD 2021-06-10
SELECT
    b.RecordType,
    b.[Action],
    b.ActDatetime,
    b.AgencyAlphaID,
    b.BuySerial,
    b.MediaCode,
    b.ClientCode,
    b.ProductCode,
    b.CampaignCode,
    b.SupplierID,
    b.ScheduleNumber,
    b.BuyerInitials,
    b.BookedDate,
    b.BuyDate,
    b.[DayName],
    b.IsCancelled,
    b.IsDraft,
    b.IsLocked,
    b.IsVouchered,
    b.IsCleared,
    b.IsGHI,
    b.IsScheme,
    b.IsMaster,
    b.IsSlave,
    b.MasterBuySerial,
    b.Remarks,
    b.CurrencyCode,
    b.Cardrate,
    b.Gross,
    b.ClientVolumeDiscount,
    b.SupplierVolumeDiscount,
    b.Net,
    b.MediaDiscount,
    b.Payable,
    CASE
        WHEN hu.HasRestrictedFields = 1 THEN b.Paid
        ELSE NULL
    END
    AS Paid,
    CASE
        WHEN hu.HasRestrictedFields = 1 THEN b.AgencyCommission
        ELSE NULL
    END
    AS AgencyCommission,
    b.Billable,
    b.Billed,
    b.BillRate,
    b.InvoiceDate,
    b.InvoiceCode,
    b.HasTVEntry,
    b.HasPrintEntry,
    b.HasBroadcastEntry,
    b.HasRecruitmentEntry,
    b.HasInternationalEntry,
    b.HasExtraRatesEntry,
    b.HasCommentsEntry,
    b.HasPvoucheringEntry,
    b.HasBvoucheringEntry,
    b.HasInetMediaEntry,
    b.HasInetServerEntry,
    b.HasInetVoucherEntry,
    b.HasBuyMoneyEntry,
    b.Extra,
    b.PlacementID,
    b.LastAmendedDate,
    b.LastAmendedBuyer,
    b.PreviousInvoiceDate,
    b.PreviousInvoiceCode,
    b.SupplierPaymentDate,
    b.SupplierPaymentCode,
    b.BookingCategoryCode,
    b.BookingCategoryShortname,
    b.SourceSystem,
    b.IsStationBudget,
    b.ProductionCostsNet,
    b.ProductionCostsCommission,
    b.NonCommissionCosts1,
    b.NonCommissionCosts2,
    b.IsLevy,
    b.LevyType,
    b.LevyPercentage,
    b.LevyBillable,
    b.LevyBilled,
    b.LevyVatBillable,
    b.LevyVatBilled,
    b.ClientVATPercentage,
    b.VATBillable,
    b.VATBilled,
    b.SupplierVATPercentage,
    b.VATPayable,
    b.VATPaid,
    b.MediaDiscountPercentage,
    b.NumberOfAmendments,
    b.IsQueried,
    b.IsHeld,
    b.IsOverride,
    b.BuyingAgencyCommission,
    b.CreativeAgencyCommission,
    b.BillableCostOfSale,
    b.AgencyCommissionOverride,
    b.MediaDiscountOverride,
    b.VatBillableOverride,
    b.VatPayableOverride,
    b.PayerInitials,
    b.HasBookingConfirmation,
    b.BookedTime,
    b.LastAmendedTime,
    b.BuyerPID,
    b.LastAmendedPID,
    b.JCNReference,
    b.FormulaCode,
    b.PurchaseOrderSerial,
    b.BuyerPIN,
    b.LastAmendedPIN,
    b.PurchaseOrderLineID,
    b.JUR,
    b.SupplierMediaDiscount,
    b.BillRateOverridden,
    b.AgencySerialNumber,
    b.ApprovedForBilling,
    b.ApprovedForLevel1Billing,
    b.InternalCampaignCode,
    b.ExternalCampaignCode
FROM dbo.HarpUserMedia AS hum
    CROSS JOIN dbo.HarpUserClient AS huc
    JOIN MediaA1..Buy AS b
        ON b.MediaCode = hum.MediaCode
            AND b.ClientCode = huc.ClientCode
    JOIN dbo.[Users] AS u
        ON u.UserName = system_user
    JOIN dbo.HarpUsers AS hu
        ON hu.UserID = u.UserID

-- exclude restricted booking categories unless user has access
WHERE b.BookingCategoryCode NOT IN
(
SELECT
    BookingCategoryCode
FROM dbo.RestrictedBookingCategories
    JOIN dbo.[Users] AS u
        ON u.UserName = system_user
    JOIN dbo.HarpUsers AS hu
        ON hu.UserID = u.UserID
            AND hu.HasRestrictedBookingCategories = 0
);
GO
/****** Object:  View [dbo].[BuyBroadcast]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE VIEW [dbo].[BuyBroadcast]
AS

-- join on buy for user's access
-- Updated RD 20190929
SELECT
    bb.RecordType,
    bb.[Action],
    bb.ActDatetime,
    bb.AgencyAlphaID,
    bb.BuySerial,
    bb.BroadcastSeconds,
    bb.BroadcastTime,
    bb.FirstBraodcastDate,
    bb.LastBraodcastDate,
    bb.RadioTypeNumber
FROM MediaA1..BuyBroadcast AS bb
    JOIN dbo.Buy AS b
        ON b.BuySerial = bb.BuySerial

GO
/****** Object:  View [dbo].[BuyBroadcastVoucher]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[BuyBroadcastVoucher]
AS

-- join on buy for user's access
-- Updated RD 20190929
SELECT
    bbv.RecordType,
    bbv.[Action],
    bbv.ActDatetime,
    bbv.AgencyAlphaID,
    bbv.BuySerial,
    bbv.VoucherStatus,
    bbv.SecondsLength,
    bbv.TransmissionTime,
    bbv.TransmissionDate,
    bbv.Remarks,
    bbv.VoucheredDate,
    bbv.VouchererInitials
FROM MediaA1..BuyBroadcastVoucher AS bbv
    JOIN dbo.Buy AS b
        ON b.BuySerial = bbv.BuySerial

GO
/****** Object:  View [dbo].[BuyCommentsTransposed]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[BuyCommentsTransposed]
AS

-- join on buy for user's access
-- Updated RD 20190929
SELECT
    bc.BuySerial, 
    MAX(CASE WHEN bc.CommentStyle = 'B' AND bc.CommentLineSequence = 1 THEN bc.Comment ELSE NULL END) AS BillComments, 
    MAX(CASE WHEN bc.CommentStyle = 'O' AND bc.CommentLineSequence = 1 THEN bc.Comment ELSE NULL END) AS OrderComments1, 
    MAX(CASE WHEN bc.CommentStyle = 'O' AND bc.CommentLineSequence = 2 THEN bc.Comment ELSE NULL END) AS OrderComments2, 
    MAX(CASE WHEN bc.CommentStyle = 'O' AND bc.CommentLineSequence = 3 THEN bc.Comment ELSE NULL END) AS OrderComments3, 
    MAX(CASE WHEN bc.CommentStyle = 'O' AND bc.CommentLineSequence = 4 THEN bc.Comment ELSE NULL END) AS OrderComments4, 
    MAX(CASE WHEN bc.CommentStyle = 'P' AND bc.CommentLineSequence = 1 THEN bc.Comment ELSE NULL END) AS PositionComments, 
    MAX(CASE WHEN bc.CommentStyle = 'Q' AND bc.CommentLineSequence = 1 THEN bc.Comment ELSE NULL END) AS QueryComments1, 
    MAX(CASE WHEN bc.CommentStyle = 'Q' AND bc.CommentLineSequence = 2 THEN bc.Comment ELSE NULL END) AS QueryComments2, 
    MAX(CASE WHEN bc.CommentStyle = 'V' AND bc.CommentLineSequence = 1 THEN bc.Comment ELSE NULL END) AS VouchComments1, 
    MAX(CASE WHEN bc.CommentStyle = 'V' AND bc.CommentLineSequence = 2 THEN bc.Comment ELSE NULL END) AS VouchComments2, 
    MAX(CASE WHEN bc.CommentStyle = 'V' AND bc.CommentLineSequence = 3 THEN bc.Comment ELSE NULL END) AS VouchComments3, 
    MAX(CASE WHEN bc.CommentStyle = 'V' AND bc.CommentLineSequence = 4 THEN bc.Comment ELSE NULL END) AS VouchComments4, 
    MAX(CASE WHEN bc.CommentStyle = 'X' AND bc.CommentLineSequence = 1 THEN bc.Comment ELSE NULL END) AS ExtraComments1, 
    MAX(CASE WHEN bc.CommentStyle = 'X' AND bc.CommentLineSequence = 2 THEN bc.Comment ELSE NULL END) AS ExtraComments2, 
    MAX(CASE WHEN bc.CommentStyle = 'X' AND bc.CommentLineSequence = 3 THEN bc.Comment ELSE NULL END) AS ExtraComments3, 
    MAX(CASE WHEN bc.CommentStyle = 'X' AND bc.CommentLineSequence = 4 THEN bc.Comment ELSE NULL END) AS ExtraComments4, 
    MAX(CASE WHEN bc.CommentStyle = 'X' AND bc.CommentLineSequence = 5 THEN bc.Comment ELSE NULL END) AS ExtraComments5, 
    MAX(CASE WHEN bc.CommentStyle = 'X' AND bc.CommentLineSequence = 6 THEN bc.Comment ELSE NULL END) AS ExtraComments6, 
    MAX(CASE WHEN bc.CommentStyle = 'X' AND bc.CommentLineSequence = 7 THEN bc.Comment ELSE NULL END) AS ExtraComments7, 
    MAX(CASE WHEN bc.CommentStyle = 'X' AND bc.CommentLineSequence = 8 THEN bc.Comment ELSE NULL END) AS ExtraComments8
FROM MediaA1..BuyComment AS bc
    JOIN dbo.Buy AS b
        ON b.BuySerial = bc.BuySerial
GROUP BY bc.BuySerial

GO
/****** Object:  View [dbo].[BuyExtraRates]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[BuyExtraRates]
AS

-- join on buy for user's access
-- Updated RD 20191019
SELECT
    ber.RecordType,
    ber.[Action],
    ber.ActDatetime,
    ber.AgencyAlphaID,
    ber.BuySerial,
    ber.ExtraRate1,
    ber.ExtraRate2,
    ber.ExtraRate3,
    ber.ExtraRate4,
    ber.ExtraRate5,
    ber.ExtraRate6,
    ber.ExtraRate7,
    ber.ExtraRate8,
    ber.ExtraRate9
FROM MediaA1..BuyExtraRates AS ber
    JOIN dbo.Buy AS b
        ON b.BuySerial = ber.BuySerial;

GO
/****** Object:  View [dbo].[BuyInternational]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[BuyInternational]
AS

-- join on buy for user's access
-- Updated RD 20190929
SELECT
    bi.RecordType,
    bi.[Action],
    bi.ActDatetime,
    bi.AgencyAlphaID,
    bi.BuySerial,
    bi.LocalCurrencyCode,
    bi.BudgetingCurrencyCode,
    bi.LocalCurrencyCost,
    bi.AccountExchRateNumerator,
    bi.AccountExchRateDenominator,
    bi.BookExchRateNumerator,
    bi.BookExchRateDenominator,
    bi.BudgetExchRateNumerator,
    bi.BudgetExchRateDenominator,
    bi.NonCommission1,
    bi.NonCommission2
FROM MediaA1..BuyInternational AS bi
    JOIN dbo.Buy AS b
        ON b.BuySerial = bi.BuySerial;

GO
/****** Object:  View [dbo].[BuyPrint]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[BuyPrint]
AS

-- join on buy for user's access
-- Updated RD 20191001
SELECT
    bp.RecordType,
    bp.[Action],
    bp.ActDatetime,
    bp.AgencyAlphaID,
    bp.BuySerial,
    bp.Position,
    bp.Colour,
    bp.BPContactName,
    bp.PrintSpace,
    bp.Category,
    bp.IsNewPress,
    bp.VolumeValue,
    bp.VolumeUnits,
    bp.VolumeType,
    bp.Type1Code,
    bp.Type2Code,
    bp.ColourText,
    bp.MediaCode
FROM MediaA1..BuyPrint AS bp
    JOIN dbo.Buy AS b
        ON b.BuySerial = bp.BuySerial;

GO
/****** Object:  View [dbo].[BuyPrintVoucher]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[BuyPrintVoucher]
AS

-- join on buy for user's access
-- Updated RD 20191001
SELECT
    bpv.RecordType,
    bpv.[Action],
    bpv.ActDatetime,
    bpv.AgencyAlphaID,
    bpv.BuySerial,
    bpv.VoucherStatus,
    bpv.VoucherPage,
    bpv.VoucherPosition,
    bpv.CompetitivePage,
    bpv.VoucherSpace,
    bpv.InsertionDate,
    bpv.VoucheredDate,
    bpv.VouchererInitials,
    bpv.ColumnCentimeters
FROM MediaA1..BuyPrintVoucher AS bpv
    JOIN dbo.Buy AS b
        ON b.BuySerial = bpv.BuySerial;

GO
/****** Object:  Table [dbo].[PrintType1Data]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PrintType1Data](
	[MediaCode] [tinyint] NOT NULL,
	[Type1Code] [varchar](8) NOT NULL,
	[Type1Name] [varchar](32) NOT NULL,
 CONSTRAINT [PK_PrintType1Data] PRIMARY KEY CLUSTERED 
(
	[MediaCode] ASC,
	[Type1Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [dbo].[ur_RRT]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[ur_RRT]
  (@startdate date, @enddate date) RETURNS TABLE
AS

-- Richard Issacs RRT report
-- created RD 20201104
-- deleted and recreated 20201105 as not being seen by sql server???
-- ReportID 5
-- fixed date format mm => MM RD 2021-03-1
-- added CliCamReference, PO Reference, PayOnlyBuy removed isMaster, isSlave, MasterBuySerial and BillRate - kept Bill_Rate | renamed Bill_Rate to BillRate - this is MX version RD 2021-05-20
-- remove media code, press type code, purchase order line id, purchase order serial and volume type | Rename BookedDate to Date_Added RD 2021-06-10

RETURN

SELECT
    bm.MediaCode,
    me.MediaLetter AS [Media Letter],
    me.MediaName AS [Media Name],
    rtrim(bc.BookingCategoryName) AS [Booking Category],
    it.InternetTypeName AS [Internet Type],
    im.Format AS [Internet Format],
    bp.Type1Code AS PressTypeCode,
    ptd.Type1Name AS [Press Type Name],
    oc.OperatingCompanyCode,
    oc.OperatingCompanyName,
    cl.BuyingAgencyCode,
    ba.AgencyName AS [Buying Agency Full Name],
    ba.OfficeCode AS [Office Code],
    cl.ClientCode AS Client,
    cl.ClientName AS [Client Full Name],
    bm.ProductCode AS [Product #],
    pr.ProductName,
    bm.CampaignCode AS [Campaign #],
    ca.CampaignName AS [Campaign Name],
    su.FolioCode AS Folio,
    fo.FolioName AS [Folio Name],
    bm.SupplierID AS [Supplier #],
    su.SupplierName AS [Supplier Full Name],
    bm.BuyerInitials,
    bu.BuyerName,
    im.ContactType AS Contacts,
    bp.VolumeUnits AS [Volume Unit],
    bp.Position AS [Position Code],
    bp.ColourText AS [Colour Code],
    --IIf([bm]![MediaCode]<>1,Null,[InterestCode]) AS Interest_Code,
    CASE
        WHEN bm.MediaCode <> 1 THEN NULL
        ELSE su.InterestCode
    END AS Interest_Code,
    CASE
        WHEN bm.MediaCode <> 1 THEN NULL
        ELSE su.InterestName
    END AS Interest_Name,
    format(bm.BuyDate, 'yyyy') AS [Year],
    format(bm.BuyDate, 'yy-MM') AS MonthYYDD,
    format(bm.BuyDate, 'MMMM') AS [Month],
    format(bm.BuyDate, 'yyyy-MM-dd') AS [Date],
    format(bm.BookedDate, 'yyyy-MM-dd') AS Date_Added,
    bm.BuySerial AS [Serial Number],
    ca.ClientReference,
    ca.CampaignReference,
    bm.PurchaseOrderSerial,
    bm.PurchaseOrderLineID,
    COALESCE(ca.ClientReference, ca.CampaignReference) AS CliCamReference,
    COALESCE(po.Reference, ca.ClientReference, ca.CampaignReference) AS [PO Reference],
    bm.Billable - bm.AgencyCommission AS [Net Billable],
    (
        SELECT
            val
        FROM dbo.mxBillRate(bm.IsMaster, bm.Gross, bm.BillRate)
    )
    AS [BillRate],
    CASE
        WHEN bm.Gross = 0
            AND bm.BillRate > 0 THEN bm.BillRate
        ELSE bm.Gross
    END AS Gross_Amount,
    bm.Gross,
    bm.MediaDiscount,
    bm.MediaDiscountPercentage,
    bm.Gross * bm.MediaDiscountPercentage / 100 AS MedDisPay,
    (
        SELECT
            val
        FROM dbo.mxBillRate(bm.IsMaster, bm.Gross, bm.BillRate)
    )
    * bm.MediaDiscountPercentage / 100 AS MedDisBill,
    bm.Payable,
    bm.AgencyCommission,
    bm.BuyingAgencyCommission,
    bm.CreativeAgencyCommission,
    bm.Billable,
    (   -- Bill_Rate
        SELECT
            val
        FROM dbo.mxBillRate(bm.IsMaster, bm.Gross, bm.BillRate)
    )
    -
    (  -- MedDisBill
    (
        SELECT
            val
        FROM dbo.mxBillRate(bm.IsMaster, bm.Gross, bm.BillRate)
    )
    * bm.MediaDiscountPercentage / 100
    )
    AS [Net BillRate],
    im.AgreedNumber AS [Agreed Contacts],
    bp.VolumeValue AS Volume,
    bp.VolumeType,
    CASE
        WHEN bm.IsMaster = 0 THEN 'No'
        ELSE 'Yes'
    END AS PayOnlyBuy,
    format(bm.LastAmendedDate, 'yyyy-MM-dd') AS LastAmended_Date
FROM MediaA1..BuyMoney AS bm
    JOIN MediaA1..Client AS cl
        ON cl.MediaCode = bm.MediaCode
        AND cl.ClientCode = bm.ClientCode
    JOIN dbo.UserReportClient(5) AS urc
        ON urc.ClientCode = cl.ClientCode
    JOIN MediaA1..BuyingAgency AS ba
        ON ba.AgencyCode = cl.BuyingAgencyCode
    JOIN MediaA1..OperatingCompany AS oc
        ON oc.OperatingCompanyCode = ba.OperatingCompanyCode
    left JOIN MediaA1..PurchaseOrder as po
        on po.PurchaseOrderSerial = bm.PurchaseOrderSerial
    JOIN MediaA1..Media AS me
        ON me.MediaCode = bm.MediaCode
    JOIN MediaA1..BookingCategory AS bc
        ON bc.BookingCategoryCode = bm.BookingCategoryCode
    JOIN MediaA1..Product AS pr
        ON pr.MediaCode = bm.MediaCode
        AND pr.ClientCode = bm.ClientCode
        AND pr.ProductCode = bm.ProductCode
    JOIN MediaA1..Campaign AS ca
        ON ca.MediaCode = bm.MediaCode
        AND ca.ClientCode = bm.ClientCode
        AND ca.ProductCode = bm.ProductCode
        AND ca.CampaignCode = bm.CampaignCode
    JOIN MediaA1..Supplier AS su
        ON su.MediaCode = bm.MediaCode
        AND su.SupplierID = bm.SupplierID
    JOIN MediaA1..Folio AS fo
        ON fo.MediaCode = su.MediaCode
        AND fo.FolioCode = su.FolioCode
    LEFT JOIN MediaA1..Buyer AS bu
        ON bu.BuyerInitials = bm.BuyerInitials
    LEFT JOIN MediaA1..InetMedia AS im
        ON im.BuySerial = bm.BuySerial
    LEFT JOIN MediaA1..InternetType AS it
        ON it.InternetTypeNumber = im.InternetTypeNumber
    LEFT JOIN MediaA1..BuyPrint AS bp
        ON bp.BuySerial = bm.BuySerial
    LEFT JOIN dbo.PrintType1Data AS ptd
        ON ptd.Type1Code = bp.Type1Code
        AND bp.MediaCode = 1
WHERE
    bm.IsCancelled = 0
    AND bm.IsDraft = 0
    AND bm.BuyDate BETWEEN @startdate AND @enddate;

GO
/****** Object:  View [dbo].[BuyTVRating]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[BuyTVRating]
AS

-- join on buy for user's access
-- Updated RD 20191014
SELECT
    btr.RecordType,
    btr.[Action],
    btr.ActDatetime,
    btr.AgencyAlphaID,
    btr.BuySerial,
    btr.AudienceType,
    btr.AudienceNumber,
    btr.Rating,
    btr.Impressions,
    btr.Universe
FROM MediaA1..BuyTVRating AS btr
    JOIN dbo.Buy AS b
        ON b.BuySerial = btr.BuySerial

GO
/****** Object:  UserDefinedFunction [dbo].[ur_RRT_Clients]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE FUNCTION [dbo].[ur_RRT_Clients] () RETURNS TABLE
AS

-- Richard Issacs RRT report client list
-- created RD 20201105
-- ReportID 5
-- could be implemented as a view
-- implementing as a TVF for consistency and as it's dependent on the report id
-- not ideal as otherwise it's a generic query but don't want to impose entering a reportid on the call
-- means we'll need a separate implementation for each report this is required for.
-- can review if it becomes an issue

RETURN

SELECT
    me.MediaLetter AS [Media Letter],
    me.MediaName AS [Media Name],
    cl.ClientCode AS [Client Code],
    cl.ClientName AS [Client Full Name],
    ba.OfficeCode AS [Office Code],
    cl.BuyingAgencyCode AS [Buying Agency Code],
    ba.AgencyName AS [Buying Agency Name],
    ba.OperatingCompanyCode AS [Operating Company Code],
    oc.OperatingCompanyName AS [Operating Company Name]
FROM dbo.UserReportClient(5) AS urc
    JOIN MediaA1..Client AS cl
        ON cl.ClientCode = urc.ClientCode
    JOIN MediaA1..BuyingAgency AS ba
        ON ba.AgencyCode = cl.BuyingAgencyCode
    JOIN MediaA1..OperatingCompany AS oc
        ON oc.OperatingCompanyCode = ba.OperatingCompanyCode
    JOIN MediaA1..Media AS me
        ON me.MediaCode = cl.MediaCode;
GO
/****** Object:  View [dbo].[Folio]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[Folio]
AS

-- Updated RD 20191014
SELECT
    f.RecordType,
    f.[Action],
    f.ActDatetime,
    f.AgencyAlphaID,
    f.MediaCode,
    f.FolioCode,
    f.FolioName,
    f.LastChanged,
    f.Address1,
    f.Address2,
    f.Address3,
    f.Address4,
    f.TelephoneNumber,
    f.FaxNumber,
    f.EmailAddress,
    f.Filert1,
    f.Filert2,
    f.Filert3,
    f.Filert4,
    f.Filert5,
    f.DueDateRule,
    f.VatNumber,
    f.PaymentMethod,
    f.BankSortCode,
    f.BSRoleNumber,
    f.BankAccountNumber,
    f.BankAccountName,
    f.BankName,
    f.OnlineMemo,
    f.FactoringCompany,
    f.ActiveEndDate,
    f.AddedDateTime
FROM dbo.HarpUserMedia AS hum
    JOIN MediaA1..Folio AS f
        ON f.MediaCode = hum.MediaCode

GO
/****** Object:  UserDefinedFunction [dbo].[ur_DellBillingReport_DBR]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[ur_DellBillingReport_DBR] 
(@InvoiceDateStart date, @InvoiceDateEnd date) RETURNS TABLE

AS

-- ticket 1324 DELL BILLING REPORT
-- created Denis Nkulin (EPAM) 2021-09-23

RETURN
 

			SELECT
				opc.OperatingCompanyName, 
				ba.AgencyName AS BuyingAgency, cl.BillingGroup, cl.BuyingAgencyCode, 
				acm.MediaCode, med.[MediaName], 
				acm.ClientCode, cl.ClientName, 
				acm.ProductCode, prd.ProductName, 
				acm.CampaignCode, acamp.CampaignName,
				fol.FolioCode, fol.FolioName, 
				sup.SupplierID, sup.SupplierName,
				FORMAT(acm.InvoiceDate, 'yyyy-MM') AS InvoiceMonth, acm.InvoiceDate, acm.InvoiceCode, 
				acm.BuySerial, bm.BuyDate, 
				amst.Amount AS DebtorAmount_f, 
				acm.TotalBilled AS TotalBilled_f, 
				case
					when bint.LocalCurrencyCode = 'GBP' then acm.TotalBilled
					else acm.TotalBilled * (bint.AccountExchRateNumerator/bint.AccountExchRateDenominator) 
				end AS TotalBilled_Cur,
				case 
					when bint.LocalCurrencyCode = 'GBP' then amst.Amount
					else bint.LocalCurrencyCost
				end AS InvoiceCurrencyAmount,
				bint.AccountExchRateNumerator/bint.AccountExchRateDenominator AS ExchangeRate,
				bint.LocalCurrencyCode AS CurCode,
				acm.GrossBilled AS  GrossBilled_f, acm.GrossBilled*(bint.AccountExchRateNumerator/bint.AccountExchRateDenominator) AS GrossBilled_Cur,
				acm.BillableBilled AS ClientCost_f, acm.BillableBilled*(bint.AccountExchRateNumerator/bint.AccountExchRateDenominator) AS ClientCost_Cur,
				acm.PayableBilled AS SupplierCost_f, acm.PayableBilled*(bint.AccountExchRateNumerator/bint.AccountExchRateDenominator) AS SupplierCost_Cur, 
				acm.AgencyCommissionBilled AS IncomeBilled_f, acm.AgencyCommissionBilled*(bint.AccountExchRateNumerator/bint.AccountExchRateDenominator) AS IncomeBilled_Cur,
				acm.MediaDiscountBilled AS SupplierDiscount_f, acm.MediaDiscountBilled*(bint.AccountExchRateNumerator/bint.AccountExchRateDenominator) AS SupplierDiscount_Cur
			FROM AccountA1..AccMedBill AS acm
				JOIN MediaA1..Client AS cl
					ON acm.ClientCode = cl.ClientCode 
					AND acm.MediaCode = cl.MediaCode 
				JOIN AccountA1..AccDrMaster AS amst
					ON acm.InvoiceDate = amst.InvoiceDate 
					AND acm.InvoiceCode = amst.InvoiceNumber 
					AND acm.CampaignCode = amst.CampaignJob 
					AND acm.ProductCode = amst.ProductCode 
					AND acm.ClientCode = amst.ClientCode
				JOIN AccountA1..AccPrdProduct AS prd
					ON acm.ProductCode = prd.ProductCode 
					AND acm.ClientCode = prd.ClientCode 
				JOIN AccountA1..AccMedCampaign AS acamp
					ON acm.MediaLetter = acamp.MediaLetter 
					AND acm.CampaignCode = acamp.CampaignCode 
					AND acm.ProductCode = acamp.ProductCode 
					AND acm.ClientCode = acamp.ClientCode
				JOIN MediaA1..BuyInternational  AS bint
					ON acm.BuySerial = bint.BuySerial
				JOIN MediaA1..BuyMoney  AS bm
					ON acm.BuySerial = bm.BuySerial
				JOIN MediaA1..Supplier AS sup 
					ON bm.SupplierID = sup.SupplierID 
					AND bm.MediaCode = sup.MediaCode
				JOIN MediaA1..Folio AS fol
					ON sup.FolioCode = fol.FolioCode 
					AND sup.MediaCode = fol.MediaCode 
				JOIN MediaA1..BuyingAgency AS ba
					ON cl.BuyingAgencyCode = ba.AgencyCode
				JOIN MediaA1..OperatingCompany AS opc
					ON ba.OperatingCompanyCode = opc.OperatingCompanyCode
				JOIN dbo.UserReportOpco(16) as rep
					on ba.OperatingCompanyCode = rep.OperatingCompanyCode
				JOIN MediaA1..Media AS med
					ON amst.InvoiceSource = med.[MediaName] 
					AND acm.MediaCode = med.MediaCode
				LEFT JOIN AccountA1..AccAllCurrency AS  acur
					ON amst.UniqueID = acur.UniqueID
				WHERE cast(acm.InvoiceDate AS date) between @InvoiceDateStart AND @InvoiceDateEnd
				AND cl.BillingGroup = 'DE' 
				AND amst.TransactionType = 9

GO
/****** Object:  View [dbo].[InetMedia]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[InetMedia]
AS

-- Updated RD 20200403
SELECT
	im.RecordType,
	im.[Action],
	im.ActDateTime,
	im.Alphaid,
	im.BuySerial,
	im.BuyOrder,
	im.Contact,
	im.StartDate,
	im.Enddate,
	im.Times,
	im.[Page],
	im.Position,
	im.[Format],
	im.[Type],
	im.Size,
	im.ContactType,
	im.AgreedNumber,
	im.BonusNumber,
	im.InternetTypeNumber,
	im.InternalCampaignCode,
	im.ExternalCampaignCode
FROM MediaA1..InetMedia AS im
	JOIN dbo.buy AS buy -- restrict to users client access
		ON buy.BuySerial = im.BuySerial;

GO
/****** Object:  UserDefinedFunction [dbo].[ur_CashFlowReport]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE FUNCTION [dbo].[ur_CashFlowReport] 
(@BuyDateStart date, @BuyDateEnd date) RETURNS TABLE
as

-- ticket 539 Provide Dataset for CashFlow (Mediacom)
-- created Denis Nkulin (EPAM) 2021-10-04

RETURN

	SELECT 
		cf.OperatingCompanyName, 
		cf.AgencyCode, cf.AgencyName, cf.AgencyShortName, 
		cf.ClientName, cf.ClientShortName, cf.ClientCode,
		cf.ProductName, cf.ProductShortName, cf.ProductCode, 
		cf.CampaignName, cf.CampaignCode, 
		cf.MediaCode, cf.MediaLetter, cf.MediaName,
		cf.SupplierID, cf.SupplierName, cf.SupplierShortName,
		cf.FolioCode, cf.FolioName,
		cf.BuySerial, cf.BuyDate,
		cf.[Client amount billed], 
		case when cf.[Total Client amount paid] = 0 then 0 else cf.[Client amount billed]*abs(cf.[Total Client amount billed]/cf.[Total Client amount paid]) end AS [Client amount paid],
		case when cf.[Total Client amount paid] = 0 then 0 else abs(cf.[Total Client amount billed]/cf.[Total Client amount paid])*100 end AS [Percentage Client amount paid],
		case when cf.[Total Client amount paid] = 0 then cf.[Client amount billed] else cf.[Client amount billed]-(cf.[Client amount billed]*abs(cf.[Total Client amount billed]/cf.[Total Client amount paid])) end AS [Cashflow position Client],
		sum(case
			when cmst.TransactionType = 10 then cmst.Amount
			else 0
		end
		+ISNULL(cmed.VATPaid, 0)) AS [Supplier amount invoiced],
		sum(case 
				when cmst.UsedDate is not null then case
														when cmst.TransactionType = 10 then cmst.Amount
														else 0
													end
													+ISNULL(cmed.VATPaid, 0)
			else 0
		end) AS [Supplier amount paid],
		sum(case
			when cmst.TransactionType = 10 then cmst.Amount
			else 0
		end
		+ISNULL(cmed.VATPaid, 0))
		-
		sum(case 
				when cmst.UsedDate is not null then case
														when cmst.TransactionType = 10 then cmst.Amount
														else 0
													end
													+ISNULL(cmed.VATPaid, 0)
			else 0
		end) AS [Cashflow position Supplier]
	FROM (
			SELECT 
				rtrim(oc.OperatingCompanyName) AS OperatingCompanyName,
				ba.AgencyCode, ba.AgencyName, ba.AgencyShortName, 
				cl.ClientName, cl.ClientShortName, cl.ClientCode,
				pr.ProductName, pr.ProductShortName, pr.ProductCode, 
				camp.CampaignName, camp.CampaignCode, 
				med.MediaCode, med.MediaLetter, med.MediaName,
				sup.SupplierID, sup.SupplierName, sup.SupplierShortName,
				fol.FolioCode, fol.FolioName, 
				bm.BuySerial, bm.BuyDate,
				ISNULL(mdb.BillableCostSaleBilled, 0)-ISNULL(mdb.SpotIncomeBilled, 0) AS [Client amount billed],
				sum(case 
						when mst.TransactionType = 9 then mst.[Amount] 
						else 0 
				end) AS [Total Client amount billed],
				sum(case 
						when mst.TransactionType <> 9 then mst.[Amount] 
						else 0 
				end) AS [Total Client amount paid]
			FROM MediaA1..BuyMoney AS bm 
				JOIN MediaA1..Client AS cl 
					ON bm.MediaCode = cl.MediaCode 
					AND bm.ClientCode = cl.ClientCode	
				JOIN MediaA1..BuyingAgency AS ba 
					ON cl.BuyingAgencyCode = ba.AgencyCode
				JOIN MediaA1..OperatingCompany AS oc 
					ON ba.OperatingCompanyCode = oc.OperatingCompanyCode
				JOIN dbo.UserReportOpco(11) as rep
					on ba.OperatingCompanyCode = rep.OperatingCompanyCode
				JOIN MediaA1..Product AS pr 
					ON bm.ProductCode = pr.ProductCode
					AND bm.MediaCode = pr.MediaCode 
					AND bm.ClientCode = pr.ClientCode
				JOIN MediaA1..Campaign AS camp 
					ON bm.MediaCode = camp.MediaCode 
					AND bm.ClientCode = camp.ClientCode
					AND bm.ProductCode = camp.ProductCode
					AND bm.CampaignCode = camp.CampaignCode 
				JOIN MediaA1..Media AS med 
					ON bm.MediaCode = med.MediaCode
				LEFT JOIN AccountA1..AccMedBill mdb
					ON bm.InvoiceCode = mdb.InvoiceCode
					AND bm.InvoiceDate = mdb.InvoiceDate
					AND bm.BuySerial = mdb.BuySerial
				JOIN AccountA1..AccDrMaster AS mst
					ON mdb.InvoiceCode = mst.InvoiceNumber
					AND mdb.InvoiceDate = mst.InvoiceDate
					AND mdb.ClientCode = mst.ClientCode
				LEFT JOIN MediaA1..Supplier AS sup 
					ON bm.MediaCode = sup.MediaCode
					AND bm.SupplierID = sup.SupplierID
				LEFT JOIN MediaA1..Folio AS fol 
					ON sup.MediaCode = fol.MediaCode
					AND sup.FolioCode = fol.FolioCode
			WHERE cast(bm.BuyDate as date) between @BuyDateStart AND @BuyDateEnd
			GROUP BY rtrim(oc.OperatingCompanyName), ba.AgencyCode, ba.AgencyName, ba.AgencyShortName, 
			cl.ClientName, cl.ClientShortName, cl.ClientCode,
			pr.ProductName, pr.ProductShortName, pr.ProductCode, 
			camp.CampaignName, camp.CampaignCode, 
			med.MediaCode, med.MediaLetter, med.MediaName,
			sup.SupplierID, sup.SupplierName, sup.SupplierShortName,
			fol.FolioCode, fol.FolioName, bm.BuySerial, bm.BuyDate,  ISNULL(mdb.BillableCostSaleBilled, 0)-ISNULL(mdb.SpotIncomeBilled, 0)
		
		) AS cf
		LEFT JOIN AccountA1..AccCrMedia AS cmed
			ON cf.BuySerial = cmed.BuySerial
		JOIN AccountA1..AccCrMaster AS cmst
			ON cmed.UniqueID = cmst.UniqueID
	GROUP BY cf.OperatingCompanyName, 
	cf.AgencyCode, cf.AgencyName, cf.AgencyShortName, 
	cf.ClientName, cf.ClientShortName, cf.ClientCode,
	cf.ProductName, cf.ProductShortName, cf.ProductCode, 
	cf.CampaignName, cf.CampaignCode, 
	cf.MediaCode, cf.MediaLetter, cf.MediaName,
	cf.SupplierID, cf.SupplierName, cf.SupplierShortName,
	cf.FolioCode, cf.FolioName,
	cf.BuySerial, cf.BuyDate,
	cf.[Client amount billed],
	case when cf.[Total Client amount paid] = 0 then 0 else cf.[Client amount billed]*abs(cf.[Total Client amount billed]/cf.[Total Client amount paid]) end,
	case when cf.[Total Client amount paid] = 0 then 0 else abs(cf.[Total Client amount billed]/cf.[Total Client amount paid])*100 end,
	case when cf.[Total Client amount paid] = 0 then cf.[Client amount billed] else cf.[Client amount billed]-(cf.[Client amount billed]*abs(cf.[Total Client amount billed]/cf.[Total Client amount paid])) end



GO
/****** Object:  View [dbo].[InternetTypeBookingCategory]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[InternetTypeBookingCategory]
AS

-- Updated RD 20191014
SELECT
    itbc.RecordType,
    itbc.[Action],
    itbc.ActDateTime,
    itbc.AgencyAlphaID,
    itbc.InternetTypeNumber,
    itbc.BookingCategoryCode
FROM MediaA1..InternetTypeBookingCategory AS itbc

    -- join on booking category view to restrict to user's agencies and categories
    JOIN dbo.BookingCategory AS bc
        ON bc.BookingCategoryCode = itbc.BookingCategoryCode;

GO
/****** Object:  View [dbo].[Media]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[Media]
AS

-- Updated RD 20191009
SELECT
    m.RecordType,
    m.[Action],
    m.ActDatetime,
    m.AgencyAlphaID,
    m.MediaCode,
    m.MediaLetter,
    m.MediaType,
    m.[MediaName],
    m.FolioMediaCode,
    m.FolioMediaLetter,
    m.CommissionAccount,
    m.BillAccount,
    m.BillAccountName,
    m.ASBOFAccount,
    m.ASAIAccount,
    m.SurchargeAccount,
    m.SurchargeCostAccount,
    m.ServiceFeeAccount,
    m.FeeCostAccount,
    m.RebateAccount,
    m.RebateCostAccount,
    m.ProdCommissionAccount,
    m.ProdCommissionCostAcccount,
    m.DiscountAccount,
    m.DiscountCostAccount,
    m.SpotIncomeAccount,
    m.SpotIncomeCostAccount,
    m.ME10FormatXAccount,
    m.ME10XCostAccount,
    m.PayCompanyAccount,
    m.BillDueDateRule,
    m.PayDueDateRule,
    m.OverpayAccount,
    m.OverpayAmount,
    m.OverpayCostingAccount,
    m.UnderpayAccount,
    m.UnderpayAmount,
    m.UnderpayCostingAccount,
    m.UnclaimedBalanceAccount,
    m.UnclaimedBalanceCostingAccount,
    m.TVBroadcast,
    m.Broadcast,
    m.InternetMedium,
    m.PrintMedia,
    m.Recruitment,
    m.BookingConfirmation,
    m.iDeskMedium
FROM dbo.HarpUserMedia AS hum
    JOIN MediaA1..Media AS m
        ON m.MediaCode = hum.MediaCode;

GO
/****** Object:  View [dbo].[PrintPosition]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[PrintPosition]
AS

-- Updated RD 20191014
SELECT
    pp.RecordType,
    pp.[Action],
    pp.ActDateTime,
    pp.AgencyAlphaID,
    pp.MediaCode,
    pp.Position,
    pp.PositionDescription
FROM MediaA1..PrintPosition AS pp
    JOIN dbo.HarpUserMedia AS hum
        ON hum.MediaCode = pp.MediaCode

GO
/****** Object:  Table [dbo].[User_Report_Office]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_Report_Office](
	[UserID] [smallint] NOT NULL,
	[ReportID] [int] NOT NULL,
	[OfficeCode] [char](2) NOT NULL,
	[CreatedDate] [smalldatetime] NOT NULL,
	[CreatedBy] [varchar](50) NOT NULL,
	[RevisedDate] [smalldatetime] NOT NULL,
	[RevisedBy] [varchar](50) NOT NULL,
 CONSTRAINT [PK_User_Report_Office] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC,
	[ReportID] ASC,
	[OfficeCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [dbo].[UserReportOffice]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE FUNCTION [dbo].[UserReportOffice]
  (@reportID int) RETURNS TABLE
AS

-- offices for this user/report
-- created RD 2021-05-19
RETURN

SELECT
    p_off.OfficeCode
FROM AccountA1..AccPrdOffice AS p_off
    JOIN dbo.[Users] AS u
        ON u.UserName = system_user
    JOIN dbo.User_Report AS u_r
        ON u_r.UserID = u.UserID
        AND u_r.ReportID = @reportID
        AND u_r.HasAllOffices = 1

UNION

-- get offices where user/report has office level access

SELECT
    p_off.OfficeCode
FROM AccountA1..AccPrdOffice AS p_off
    JOIN dbo.[Users] AS u
        ON u.UserName = system_user
    JOIN dbo.User_Report_Office AS uro
        ON uro.UserID = u.UserID
        AND uro.ReportID = @reportID
        AND uro.OfficeCode = p_off.OfficeCode

GO
/****** Object:  Table [dbo].[LVMH_ClientCodes]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LVMH_ClientCodes](
	[CliCode] [nvarchar](50) NOT NULL,
	[ReportName] [nvarchar](50) NOT NULL,
	[Alias] [nvarchar](300) NOT NULL,
	[Client Groups] [nvarchar](150) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CliCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 93) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [dbo].[ur_LV_MedSys_MER]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create FUNCTION [dbo].[ur_LV_MedSys_MER] 
(@BuyDateStart date, @BuyDateEnd date) RETURNS TABLE
as

-- ticket 6545 Media Expense Recognitions SQL optimization
-- created Denis Nkulin (EPAM) 2021-10-20

RETURN

	SELECT 
		m.MediaLetter AS [Media Type], 
		fol.FolioName AS [Media Group],
		sup.SupplierName AS Publication, 
		sup.SupplierID AS [Supplier Code],
		buy.BuyDate AS [Date],
		buy.Remarks AS [Format],
		buy.BuySerial,
		buy.ClientCode,
		'LVMH' AS [Client Name],
		prd.ProductName,  
		camp.CampaignName,
		buy.Gross,
		buy.MediaDiscountPercentage AS [Agency Discount],
		buy.Payable AS Net, 
		buy.BuyingAgencyCommission AS [Agency Fee],
		buy.Billable AS [Client Cost]
	FROM MediaA1..Buy AS buy 
		JOIN MediaA1..Media AS m 
			ON buy.MediaCode = m.MediaCode 
		JOIN MediaA1..Supplier AS sup 
			ON buy.MediaCode = sup.MediaCode 
			AND buy.SupplierID = sup.SupplierID
		JOIN MediaA1..Folio AS fol
			ON sup.MediaCode = fol.MediaCode 
			AND sup.FolioCode = fol.FolioCode
		JOIN MediaA1..Client AS cl
			ON buy.MediaCode = cl.MediaCode 
			AND buy.ClientCode = cl.ClientCode 
		JOIN MediaA1..Product AS prd
			ON buy.MediaCode = prd.MediaCode
			AND buy.ClientCode = prd.ClientCode 
			AND buy.ProductCode = prd.ProductCode
		JOIN MediaA1..Campaign camp
			ON buy.CampaignCode = camp.CampaignCode
			AND buy.MediaCode = camp.MediaCode
			AND buy.ClientCode = camp.ClientCode
			AND buy.ProductCode = camp.ProductCode
		JOIN dbo.LVMH_ClientCodes AS clc
			ON buy.ClientCode = clc.CliCode
	WHERE cast(buy.BuyDate AS date) between @BuyDateStart AND @BuyDateEnd
	AND cl.BuyingAgencyCode = 6 
	AND buy.IsCancelled = 0


GO
/****** Object:  UserDefinedFunction [dbo].[ur_LV_MedSys_MDR]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create FUNCTION [dbo].[ur_LV_MedSys_MDR] 
(@BuyDateStart date, @BuyDateEnd date) RETURNS TABLE
as

-- ticket 6495 Media Discrepancy Report SQL optimization
-- created Denis Nkulin (EPAM) 2021-10-20

RETURN

	SELECT 
		sup.SupplierName AS Network, 
		cl.ClientName AS EST, 
		prd.ProductName AS Product,  
		sum(buy.Payable) AS OrderedNetTotal, 
		sum(buy.Paid) AS TotalClearedNet, 
		sum(case
			when [SupplierPaymentCode] is not null then [Payable]-[Paid]
			else 0
		end) AS MatchedPayable, 
		sum(case
			when [SupplierPaymentCode] is null then [Payable]-[Paid]
			else 0
		end) AS UnMatchedPayable
	FROM MediaA1..Buy AS buy  
		JOIN MediaA1..Supplier AS sup 
			ON buy.MediaCode = sup.MediaCode 
			AND buy.SupplierID = sup.SupplierID
		JOIN MediaA1..Folio AS fol
			ON sup.MediaCode = fol.MediaCode 
			AND sup.FolioCode = fol.FolioCode
		JOIN MediaA1..Client AS cl
			ON buy.MediaCode = cl.MediaCode 
			AND buy.ClientCode = cl.ClientCode 
		JOIN MediaA1..Product AS prd
			ON buy.MediaCode = prd.MediaCode
			AND buy.ClientCode = prd.ClientCode 
			AND buy.ProductCode = prd.ProductCode
		JOIN dbo.LVMH_ClientCodes AS clc
			ON buy.ClientCode = clc.CliCode
	WHERE cast(buy.BuyDate AS date) between @BuyDateStart AND @BuyDateEnd
	AND cl.BuyingAgencyCode = 6 
	AND buy.IsCancelled = 0
	GROUP BY sup.SupplierName, cl.ClientName, prd.ProductName


GO
/****** Object:  View [dbo].[ur_DebtorsReport]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- Alter View ur_DebtorsReport


CREATE VIEW [dbo].[ur_DebtorsReport]

AS

-- created RD 2021-05-20
-- add client code RD 2021-06-18

WITH d_acc
AS
(
    SELECT
        Unit,
        [Ledger],
        AccountCode,
        AccountName,
        IsLowLevel
    FROM
        AccountA1..AccAccount
    WHERE
        Unit = 'S'
        AND [Ledger] = 'R'
        AND IsLowLevel = '1'
),
os_inv
AS
(
    SELECT
        d_mas.OfficeCode + ' ' + p_off.OfficeName AS Office,
        d_mas.OfficeCode,
        p_off.OfficeName,
        d_mas.Debtor,
        d_acc.AccountName,
        MAX(RTRIM(LTRIM(d_mas.Debtor)) + ' ' + RTRIM(LTRIM(d_acc.AccountName))) AS Product,
        MAX(d_mas.ClientCode) AS MaxOfClientCode,
        MAX(d_mas.ProductCode) AS MaxOfProductCode,
        MAX(d_mas.CampaignJob) AS MaxOfCampaignJob,
        MAX(d_mas.InvoiceSource) AS MediaType,
        MAX(med.MediaCode) AS MaxOfMediaCode,
        MAX(med.MediaLetter) AS MaxOfMediaLetter,
        d_mas.InvoiceNumber,
        d_mas.InvoiceDate,
        MAX(d_bil.InvoiceDueDate) AS DueDate,
        SUM(d_bil.InvoiceVatAmount) AS InvoiceVatAmount,
        SUM(d_mas.Amount) AS SumOfAmount,
        SUM(all_c.Amount) AS SumOfCurrencyAmount,
        MAX(all_c.CurrencyCode) AS MaxOfCurrencyCode,
        MAX(all_c.ExchangeRate) AS MaxOfExchangeRate
    FROM
        AccountA1..AccDrMaster AS d_mas
        JOIN dbo.UserReportOffice(9) AS u_r_o -- debtor's report id = 9
            ON u_r_o.OfficeCode = d_mas.OfficeCode
        LEFT JOIN d_acc
            ON d_mas.Debtor = d_acc.AccountCode
        LEFT JOIN AccountA1..AccAllCurrency AS all_c
            ON d_mas.UniqueID = all_c.UniqueID
        LEFT JOIN AccountA1..AccDrBilling AS d_bil
            ON d_mas.UniqueID = d_bil.UniqueID
        LEFT JOIN MediaA1..Media AS med
            ON d_mas.InvoiceSource = med.[MediaName]
        LEFT JOIN AccountA1..AccPrdOffice AS p_off
            ON d_mas.OfficeCode = p_off.OfficeCode
    WHERE
        d_mas.MonthOfActivity <= DATEFROMPARTS(DATEPART(YEAR, DATEADD(MONTH, -1, GETDATE())), DATEPART(MONTH, DATEADD(MONTH, -1, GETDATE())), 1) -- month_of_activity | previous month to this month
    GROUP BY
        d_mas.OfficeCode + ' ' + [OfficeName],
        d_mas.OfficeCode,
        p_off.OfficeName,
        d_mas.Debtor,
        d_acc.AccountName,
        d_mas.InvoiceNumber,
        d_mas.InvoiceDate
    HAVING
        SUM(d_mas.Amount) <> 0
--ORDER BY AccDrMaster.Debtor, AccDrMaster.InvoiceNumber
)
SELECT
    os_inv.Debtor AS [Account Code],
    os_inv.AccountName AS [Account Name],
    os_inv.[OfficeCode] AS [Office Code],
    os_inv.[OfficeName] AS [Office Name],
    CONVERT(VARCHAR(10), os_inv.InvoiceDate, 103) AS [Bill Date],
    COALESCE(CONVERT(VARCHAR(10), os_inv.DueDate, 103), '') AS [Due Date],
    os_inv.Product,
    COALESCE(m_cam.ClientCode, '') AS [Client Code],
    COALESCE(m_cam.CampaignName, '') AS [Camp Name],
    COALESCE(m_cam.CampaignReference, '') AS PO,
    os_inv.InvoiceNumber AS [Inv No],
    os_inv.MediaType,
    CASE
        WHEN DATEDIFF(DAY, os_inv.InvoiceDate, GETDATE()) <= 0 THEN os_inv.SumOfAmount
        ELSE 0
    END AS [Not yet due],
    CASE
        WHEN DATEDIFF(DAY, os_inv.InvoiceDate, GETDATE()) > 0
            AND DATEDIFF(DAY, os_inv.InvoiceDate, GETDATE()) <= 30 THEN os_inv.SumOfAmount
        ELSE 0
    END AS [1-30 DAYS],
    CASE
        WHEN DATEDIFF(DAY, os_inv.InvoiceDate, GETDATE()) > 30
            AND DATEDIFF(DAY, os_inv.InvoiceDate, GETDATE()) <= 60 THEN os_inv.SumOfAmount
        ELSE 0
    END AS [31-60 DAYS],
    CASE
        WHEN DATEDIFF(DAY, os_inv.InvoiceDate, GETDATE()) > 60
            AND DATEDIFF(DAY, os_inv.InvoiceDate, GETDATE()) <= 90 THEN os_inv.SumOfAmount
        ELSE 0
    END AS [61-90 DAYS],
    CASE
        WHEN DATEDIFF(DAY, os_inv.InvoiceDate, GETDATE()) > 90
            AND DATEDIFF(DAY, os_inv.InvoiceDate, GETDATE()) <= 120 THEN os_inv.SumOfAmount
        ELSE 0
    END AS [91-120 DAYS],
    CASE
        WHEN DATEDIFF(DAY, os_inv.InvoiceDate, GETDATE()) > 120 THEN os_inv.SumOfAmount
        ELSE 0
    END AS [121+ DAYS],
    os_inv.SumOfAmount AS [Total (GBP)],
    COALESCE(os_inv.MaxOfCurrencyCode, 'GBP') AS Currency,
    COALESCE(os_inv.SumOfCurrencyAmount, 0) AS [Total (Curr)],
    COALESCE(os_inv.InvoiceVatAmount, 0) AS InvoiceVatAmount,
    COALESCE(os_inv.SumOfAmount - os_inv.InvoiceVatAmount, 0) AS [Current]
FROM
    os_inv
    LEFT JOIN AccountA1..AccMedCampaign AS m_cam
        ON os_inv.MaxOfCampaignJob = m_cam.CampaignCode
        AND os_inv.MaxOfProductCode = m_cam.ProductCode
        AND os_inv.MaxOfClientCode = m_cam.ClientCode
        AND os_inv.MaxOfMediaLetter = m_cam.MediaLetter;
GO
/****** Object:  UserDefinedFunction [dbo].[ur_LV_MedSys_UMR]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[ur_LV_MedSys_UMR] 
(@BuyDateStart date, @BuyDateEnd date) RETURNS TABLE
as

-- ticket 8336 Unclaimed media report SQL optimization
-- created Denis Nkulin (EPAM) 2021-11-19

RETURN

	SELECT 
		cl.ClientName,
		prd.ProductName AS Product,
		m.[MediaName],
		sum(acm.PaidToSupplier) as [Paid To Supplier],
		sum(buy.Payable) AS [Net Payable To Supplier]		
	FROM MediaA1..Buy AS buy 
		JOIN MediaA1..Media AS m 
			ON buy.MediaCode = m.MediaCode 
		JOIN MediaA1..Client AS cl
			ON buy.MediaCode = cl.MediaCode 
			AND buy.ClientCode = cl.ClientCode 
		JOIN MediaA1..Product AS prd
			ON buy.MediaCode = prd.MediaCode
			AND buy.ClientCode = prd.ClientCode 
			AND buy.ProductCode = prd.ProductCode
		JOIN dbo.LVMH_ClientCodes AS clc
			ON buy.ClientCode = clc.CliCode
		LEFT JOIN (
					SELECT 
						acms.Ledger, 
						acms.OfficeCode, 
						acme.BuySerial, 
						case
							when acrp.[PaymentDate] is not null then  acrp.[PaymentDate]
							when  acms.[IsContraed] = '1' then  acms.[UsedDate]
							else null
						end AS PaymentDate,
						acms.IsContraed,
						Sum(acms.Amount) AS PaidToSupplier
					FROM AccountA1..AccCrMaster AS acms
						JOIN AccountA1..AccCrMedia AS acme
							ON acms.UniqueID = acme.UniqueID 
						LEFT JOIN AccountA1..AccCrPayment AS acrp
							ON acms.UniqueID = acrp.UniqueID
					WHERE acms.Ledger = 'F' 
					AND acms.OfficeCode = 'AE' 
					AND acme.BuySerial is not null
					GROUP BY 
					acms.Ledger, 
					acms.OfficeCode, 
					acme.BuySerial,
					acms.IsContraed,
					case
						when acrp.[PaymentDate] is not null then  acrp.[PaymentDate]
						when  acms.[IsContraed] = '1' then acms.[UsedDate]
						else null
					end
			) AS acm
			ON buy.BuySerial = acm.BuySerial
	WHERE cast(buy.BuyDate AS date) between @BuyDateStart AND @BuyDateEnd
	AND cl.BuyingAgencyCode = 6 
	AND buy.IsCancelled = 0
	GROUP BY 
	cl.ClientName,
	prd.ProductName,
	m.[MediaName]


GO
/****** Object:  View [dbo].[PurchaseOrder]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[PurchaseOrder]
AS

-- RD updated 20200404

WITH purchase_orders_for_user_media (PurchaseOrderSerial) -- purchase orders for media user can see
AS
(
SELECT
    pom.PurchaseOrderSerial
FROM dbo.HarpUserMedia AS hum
    JOIN MediaA1..PurchaseOrderMedia AS pom
        ON pom.MediaCode = hum.MediaCode
)
SELECT DISTINCT
    po.RecordType,
    po.[Action],
    po.ActDatetime,
    po.AgencyAlphaID,
    po.PurchaseOrderSerial,
    po.PrimaryClientCode,
    po.Reference,
    po.PurchaseOrderName,
    po.IssueDate,
    po.StartDate,
    po.EndDate,
    po.Amount,
    po.CurrencyCode,
    po.IncludesMediaLevy,
    po.IncludesVAT,
    po.IsApproved,
    po.IsLocked,
    po.ApprovedPID,
    po.ApprovedDate,
    po.Document,
    po.AddedDateTime,
    po.LastChangedDateTime,
    po.ApprovedPIN,
    po.ClientContact
FROM dbo.HarpUserClient AS huc
    JOIN MediaA1..PurchaseOrder AS po -- filter on clients user can see
        ON po.PrimaryClientCode = huc.ClientCode
    JOIN purchase_orders_for_user_media AS pom -- filter on media user can see
        ON pom.PurchaseOrderSerial = po.PurchaseOrderSerial;
GO
/****** Object:  View [dbo].[PurchaseOrderMedia]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[PurchaseOrderMedia]
AS

-- Updated RD 20200404

SELECT
	pom.RecordType,
	pom.[Action],
	pom.ActDatetime,
	pom.AgencyAlphaID,
	pom.PurchaseOrderSerial,
	pom.MediaCode
FROM MediaA1..PurchaseOrderMedia AS pom
	JOIN dbo.PurchaseOrder AS po -- filter on user's clients
		ON po.PurchaseOrderSerial = pom.PurchaseOrderSerial
	JOIN dbo.HarpUserMedia AS hum -- filter on user's media
		ON hum.MediaCode = pom.MediaCode;
GO
/****** Object:  Table [dbo].[np_MasterClient_Mediacom]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[np_MasterClient_Mediacom](
	[ClientCode] [varchar](32) NOT NULL,
	[Alias] [varchar](150) NOT NULL,
	[ClientGroups] [varchar](150) NOT NULL,
	[KR: LMVH/Non LMVH] [varchar](150) NOT NULL,
	[ULTIMATE CLIENT GROUP] [varchar](150) NOT NULL,
	[Business Unit] [varchar](150) NOT NULL,
	[Mapping for WIP] [varchar](150) NOT NULL,
	[Office] [varchar](150) NOT NULL,
	[Cartesis Client Code] [varchar](150) NOT NULL,
	[Cartesis Name] [varchar](150) NOT NULL,
	[Cartesis Bonus Code] [varchar](150) NOT NULL,
	[Cartesis Bonuses Name] [varchar](150) NOT NULL,
	[ModDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[np_MasterClient_SMI]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[np_MasterClient_SMI](
	[Country] [varchar](50) NOT NULL,
	[SourceApplication] [varchar](32) NULL,
	[HarpVersion] [varchar](2) NOT NULL,
	[HarpClientCode] [varchar](10) NOT NULL,
	[HarpClientName] [varchar](150) NOT NULL,
	[MasterClientCode] [varchar](10) NULL,
	[MasterClientName] [varchar](150) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[np_MasterClient_MDS]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[np_MasterClient_MDS](
	[LocalClientName] [varchar](150) NOT NULL,
	[Code] [varchar](32) NOT NULL,
	[MasterClientCodeFull] [varchar](100) NULL,
	[Country] [varchar](50) NOT NULL,
	[SourceApplication] [varchar](32) NOT NULL,
	[HarpVersion] [varchar](2) NOT NULL,
	[HarpClientCode] [varchar](5) NOT NULL,
	[MasterClientCode] [varchar](5) NULL,
	[MasterClientName] [varchar](150) NULL
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[ur_Client_Groups]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- =============================================
-- Author:		Nathan Pennington
-- Create date: 2022-06-21
-- Description:	Create Group of Clients for Finance Dashboard Reporting (MQS by Agency and Client) -  ur_Client_Groups


-- =============================================



CREATE view [dbo].[ur_Client_Groups] AS





SELECT DISTINCT n.AgencyAlphaID, n.ClientCode, n.ClientName, 
CASE WHEN mds.MasterClientName = 'UNKNOWN CLIENT' THEN COALESCE(rtrim(med.[ULTIMATE CLIENT GROUP]), rtrim(smi.MasterClientName), n.ClientName)
ELSE COALESCE(rtrim(mds.MasterClientName), rtrim(med.[ULTIMATE CLIENT GROUP]), rtrim(smi.MasterClientName), n.ClientName) END AS MasterClient 
  FROM [MediaA1].[dbo].[Client] n
  FULL OUTER JOIN [ReportingA1_DEV].[dbo].[np_MasterClient_MDS] mds ON n.ClientCode = mds.HarpClientCode AND n.AgencyAlphaID = mds.HarpVersion
  FULL OUTER JOIN [ReportingA1_DEV].[dbo].[np_MasterClient_Mediacom] med ON n.ClientCode = med.ClientCode AND n.AgencyAlphaID = 'A1'
  FULL OUTER JOIN [ReportingA1_DEV].[dbo].[np_MasterClient_SMI] smi ON n.ClientCode = smi.HarpClientCode AND n.AgencyAlphaID = 'A1'
  WHERE n.AgencyAlphaID = 'A1'

GO
/****** Object:  View [dbo].[Agency]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[Agency]
AS

-- Updated RD 20190929
SELECT DISTINCT
    a.Action,
    a.ActDatetime,
    a.AgencyAlphaID,
    a.AgencyType,
    a.AgencyCode,
    a.AgencyAlphaID2,
    a.IPACode,
    a.AgencyShortName,
    a.CurrencyCode,
    a.CountryCode,
    a.AgencyName,
    a.UserID,
    a.PurchaseOrderInclude,
    a.PurchaseOrderMultiple,
    a.OperatingCompanyCode,
    a.OfficeCode,
    a.AgencyID
FROM dbo.HarpUserClient AS huc
    JOIN MediaA1..Client AS c
        ON c.ClientCode = huc.ClientCode
    JOIN MediaA1..Agency AS a
        ON a.AgencyCode = c.BuyingAgencyCode;
GO
/****** Object:  View [dbo].[RadioTypeBookingCategory]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[RadioTypeBookingCategory]
AS

-- Updated RD 20191014
SELECT
    rtbc.RecordType,
    rtbc.[Action],
    rtbc.ActDateTime,
    rtbc.AgencyAlphaID,
    rtbc.RadioTypeNumber,
    rtbc.BookingCategoryCode
FROM MediaA1..RadioTypeBookingCategory AS rtbc
    JOIN MediaA1..RadioType AS rt
        ON rt.RadioTypeNumber = rtbc.RadioTypeNumber

    -- join on booking category view to restrict to user's agencies and category access
    JOIN dbo.BookingCategory AS bc
        ON bc.BookingCategoryCode = rtbc.BookingCategoryCode;
GO
/****** Object:  View [dbo].[BuyComment]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[BuyComment]
AS

-- join on buy for user's access
-- Created RD 20210611
SELECT
    bc.RecordType,
    bc.[Action],
    bc.ActDatetime,
    bc.AgencyAlphaID,
    bc.BuySerial,
    bc.CommentStyle,
    bc.CommentLineSequence,
    bc.Comment
FROM MediaA1..BuyComment AS bc
    JOIN dbo.Buy AS b
        ON b.BuySerial = bc.BuySerial
GO
/****** Object:  View [dbo].[Supplier]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[Supplier]
AS

-- Updated RD 20191014
SELECT
    s.RecordType,
    s.[Action],
    s.ActDatetime,
    s.AgencyAlphaID,
    s.MediaCode,
    s.SupplierID,
    s.SupplierShortName,
    s.SupplierName,
    s.FolioCode,
    s.Currency,
    s.MediaDiscount,
    s.CashDiscount,
    s.TVAreaID,
    s.IsTVArea,
    s.IsTVContractor,
    s.IsTVmultiple,
    s.IsTVstation,
    s.IsTVsatellite,
    s.InterestCode,
    s.FrequencyCode,
    s.InterestName,
    s.FrequencyName,
    s.MediabaseNumber,
    s.IPASupplierCode,
    s.TitleIndicator,
    s.TitleSupplierCode,
    s.LastChanged,
    s.TVStationEndDate,
    s.IsLocked,
    s.Address1,
    s.Address2,
    s.Address3,
    s.Address4,
    s.Address5,
    s.Address6,
    s.IsBarbReported,
    s.IssueDays,
    s.CoverDays,
    s.DueDate,
    s.LevyType,
    s.TelephoneNumber,
    s.FaxNumber,
    s.EmailAddress,
    s.Sortkey,
    s.OrderRequired,
    s.Comments,
    s.VATCurrency,
    s.Staggercast,
    s.ContractorNumber,
    s.VatRegionCode,
    s.VatRegionDescription,
    s.CtryVatRegNo,
    s.VATInputPercentage,
    s.CopyDays,
    s.CopyInstruction1,
    s.CopyInstruction2,
    s.CopyNotes1,
    s.CopyNotes2,
    s.CopyNotes3,
    s.CopyNotes4,
    s.CopyAddress1,
    s.CopyAddress2,
    s.CopyAddress3,
    s.CopyAddress4,
    s.CopyTelephoneNumber,
    s.CopyFaxNumber,
    s.AddedDateTime,
    s.FolioMediaCode,
    s.SaleshouseID,
    s.BARBCode
FROM dbo.HarpUserMedia AS hum
    JOIN MediaA1..Supplier AS s
        ON s.MediaCode = hum.MediaCode;

GO
/****** Object:  View [dbo].[SupplierBookingCategory]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[SupplierBookingCategory]
AS

-- Updated RD 20191014
SELECT
    sbc.RecordType,
    sbc.[Action],
    sbc.ActDateTime,
    sbc.AgencyAlphaID,
    sbc.MediaCode,
    sbc.SupplierID,
    sbc.BookingCategoryCode
FROM dbo.HarpUserMedia AS hum
    JOIN MediaA1..SupplierBookingCategory AS sbc
        ON sbc.MediaCode = hum.MediaCode

    -- join on booking category view to restrict to user's agencies and category access
    JOIN dbo.BookingCategory AS bc
        ON bc.BookingCategoryCode = sbc.BookingCategoryCode;

GO
/****** Object:  View [dbo].[SupplierDiscounts]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[SupplierDiscounts]
AS

-- Updated RD 20191014
SELECT
    sd.RecordType,
    sd.[Action],
    sd.ActDatetime,
    sd.AgencyAlphaID,
    sd.MediaCode,
    sd.SupplierID,
    sd.MediaDiscountPercentage,
    sd.MediaDiscountDescription,
    sd.DefaultDiscount
FROM dbo.HarpUserMedia AS hum
    JOIN MediaA1..SupplierDiscounts AS sd
        ON sd.MediaCode = hum.MediaCode;

GO
/****** Object:  View [dbo].[SupplierGroup]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[SupplierGroup]
AS

-- Updated RD 20191014
SELECT
    sg.RecordType,
    sg.[Action],
    sg.ActDateTime,
    sg.AgencyAlphaID,
    sg.MediaCode,
    sg.GroupCode,
    sg.MajorCode,
    sg.MinorCode,
    sg.GroupName,
    sg.MemberType,
    sg.LastChangedInitials,
    sg.LastChangedDate
FROM dbo.HarpUserMedia AS hum
    JOIN MediaA1..SupplierGroup AS sg
        ON sg.MediaCode = hum.MediaCode;

GO
/****** Object:  View [dbo].[SupplierGroupMember]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[SupplierGroupMember]
AS

-- Updated RD 20191014
SELECT
   sgm.RecordType,
   sgm.[Action],
   sgm.ActDateTime,
   sgm.AgencyAlphaID,
   sgm.MediaCode,
   sgm.GroupCode,
   sgm.MajorCode,
   sgm.MinorCode,
   sgm.MemberID,
   sgm.MemberType
FROM dbo.HarpUserMedia AS hum
    JOIN MediaA1..SupplierGroupMember AS sgm
        ON sgm.MediaCode = hum.MediaCode;

GO
/****** Object:  UserDefinedFunction [dbo].[VoucherDate]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[VoucherDate] (@buyserial char(9), @media tinyint)
RETURNS TABLE
AS
	RETURN

	SELECT
		CASE
			WHEN @media = 1 THEN (
					SELECT
						VoucheredDate
					FROM
						MediaA1..BuyPrintVoucher
					WHERE
						BuySerial = @buyserial
				)
			WHEN @media = 5 THEN (
					SELECT
						VoucherDate
					FROM
						MediaA1..InetVoucher
					WHERE
						BuySerial = @buyserial
				)
			ELSE NULL
		END AS Val;


GO
/****** Object:  UserDefinedFunction [dbo].[InvoiceQueryID]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[InvoiceQueryID] (@buyserial char(9))
RETURNS TABLE
AS

RETURN

WITH queries (InvoiceQueryID)
AS
(
    SELECT
        iqc.InvoiceQueryID
    FROM MediaA1..InvoiceQueryCandidate AS iqc
        JOIN MediaA1..InvoiceQuery AS iq
            ON iq.InvoiceQueryID = iqc.InvoiceQueryID
            AND iq.Status <> 'Closed'
    WHERE iqc.BuySerial = @buyserial

    UNION

    SELECT
        iqa.InvoiceQueryID
    FROM MediaA1..InvoiceQueryAssigned AS iqa
        JOIN MediaA1..InvoiceQuery AS iq
            ON iq.InvoiceQueryID = iqa.InvoiceQueryID
            AND iq.Status <> 'Closed'
    WHERE BuySerial = @buyserial

    UNION

    SELECT
        iqab.InvoiceQueryID
    FROM MediaA1..InvoiceQueryActionBuy iqab
        JOIN MediaA1..InvoiceQuery AS iq
            ON iq.InvoiceQueryID = iqab.InvoiceQueryID
            AND iq.Status <> 'Closed'
    WHERE BuySerial = @buyserial
)
    SELECT
        MAX(InvoiceQueryID) AS Val
    FROM queries;

GO
/****** Object:  UserDefinedFunction [dbo].[InvoiceQueryGross]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[InvoiceQueryGross] (@buyserial char(9))
RETURNS TABLE
AS

RETURN

WITH queries
AS
(
    SELECT
        iqc.InvoiceQueryID
    FROM MediaA1..InvoiceQueryCandidate AS iqc
    JOIN MediaA1..InvoiceQuery AS iq
        ON iq.InvoiceQueryID = iqc.InvoiceQueryID
        AND iq.Status <> 'Closed'
    WHERE iqc.BuySerial = @buyserial

    UNION

    SELECT
        iqa.InvoiceQueryID
    FROM MediaA1..InvoiceQueryAssigned AS iqa
    JOIN MediaA1..InvoiceQuery AS iq
        ON iq.InvoiceQueryID = iqa.InvoiceQueryID
        AND iq.Status <> 'Closed'
    WHERE BuySerial = @buyserial

    UNION

    SELECT
        iqab.InvoiceQueryID
    FROM MediaA1..InvoiceQueryActionBuy iqab
    JOIN MediaA1..InvoiceQuery AS iq
        ON iq.InvoiceQueryID = iqab.InvoiceQueryID
        AND iq.Status <> 'Closed'
    WHERE BuySerial = @buyserial
)
SELECT
    QueriedGross AS Val
FROM MediaA1..InvoiceQuery AS iq
WHERE iq.InvoiceQueryID =
(
    SELECT MAX(InvoiceQueryID)
    FROM queries
);

GO
/****** Object:  UserDefinedFunction [dbo].[InvoiceQueryStatus]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[InvoiceQueryStatus] (@buyserial char(9))
RETURNS TABLE
AS

RETURN

WITH queries
AS
(
    SELECT
        iqc.InvoiceQueryID
    FROM MediaA1..InvoiceQueryCandidate AS iqc
    JOIN MediaA1..InvoiceQuery AS iq
        ON iq.InvoiceQueryID = iqc.InvoiceQueryID
        AND iq.Status <> 'Closed'
    WHERE iqc.BuySerial = @buyserial

    UNION

    SELECT
        iqa.InvoiceQueryID
    FROM MediaA1..InvoiceQueryAssigned AS iqa
    JOIN MediaA1..InvoiceQuery AS iq
        ON iq.InvoiceQueryID = iqa.InvoiceQueryID
        AND iq.Status <> 'Closed'
    WHERE BuySerial = @buyserial

    UNION

    SELECT
        iqab.InvoiceQueryID
    FROM MediaA1..InvoiceQueryActionBuy iqab
    JOIN MediaA1..InvoiceQuery AS iq
        ON iq.InvoiceQueryID = iqab.InvoiceQueryID
        AND iq.Status <> 'Closed'
    WHERE BuySerial = @buyserial
)
SELECT
    Status AS Val
FROM MediaA1..InvoiceQuery AS iq
WHERE iq.InvoiceQueryID =
(
    SELECT MAX(InvoiceQueryID)
    FROM queries
);

GO
/****** Object:  UserDefinedFunction [dbo].[ur_CampaignManagementReport]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE FUNCTION [dbo].[ur_CampaignManagementReport]
  (
  @startdate date,
  @enddate date) RETURNS TABLE
AS

-- created RD 2020-12-17
-- clone of dbo.ur_PassbackReport
-- report id 6 -> UserReportClient(6) UserReportMedia(6)
-- RD updated IQ fields to return latest invoice query (highest invoicequeryid) for open queries 2021-01-28

RETURN

SELECT DISTINCT
    oc.OperatingCompanyCode,
    rtrim(oc.OperatingCompanyName) AS OperatingCompanyName,
    bm.InvoiceCode AS [Cli Inv #],
    rtrim(bc.BookingCategoryName) AS [BookingCategory],
    cl.ClientCode AS Client,
    rtrim(cl.ClientName) AS [ClientFullName],
    m.MediaName AS Media,
    format(bm.BuyDate, 'yyyy MM') AS [Year Month],
    rtrim(ba.AgencyName) AS [BuyingAgencyFullName],
    fv.FilterValueName AS [Filter2FullName],
    rtrim(b.BuyerName) AS BuyerName,
    upper(bm.SourceSystem) AS Source,
    rtrim(pr.ProductName) AS [ProductFullName],
    bm.ProductCode AS [Product #],
    rtrim(ca.CampaignName) AS [CampaignName],
    bm.CampaignCode AS [Campaign #],
    rtrim(su.SupplierName) AS [SupplierFullName],
    su.FolioCode AS Folio,
    rtrim(fo.FolioName) AS [FolioName],
    bm.BuySerial AS [SerialNumber],
    bm.Gross,
    CASE
        WHEN bm.IsMaster = 1 THEN 0
        WHEN bm.BillRate = 0 THEN bm.Gross
        ELSE bm.BillRate
    END AS [BillRate],
    bm.Billable,
    bm.BuyingAgencyCommission AS [BuyingAgyComm],
    bm.CreativeAgencyCommission AS [CreativeAgyComm],
    bm.AgencyCommission AS [AgyComm],
    bm.Billable - bm.Billed AS UnBilled,
    CASE
        WHEN bm.InvoiceCode IS NULL THEN bm.BuyingAgencyCommission
        ELSE bm.BuyingAgencyCommission - sum(amb.BuyingAgencyCommissionBilled) OVER (PARTITION BY amb.BuySerial)
    END AS [UnBilled_BA Comm],
    CASE
        WHEN bm.InvoiceCode IS NULL THEN bm.CreativeAgencyCommission
        ELSE bm.CreativeAgencyCommission - sum(amb.CreativeAgencyCommissionBilled) OVER (PARTITION BY amb.BuySerial)
    END AS [UnBilled_CA Comm],
    CASE
        WHEN bm.InvoiceCode IS NULL THEN bm.AgencyCommission
        ELSE bm.AgencyCommission - sum(amb.AgencyCommissionBilled) OVER (PARTITION BY amb.BuySerial)
    END AS [UnBilled_A Comm],
    bm.Payable,
    bm.Payable - bm.Paid AS UnPaid,
	CASE
		WHEN bm.Payable > 0 AND (bm.Payable - bm.Paid) = bm.Payable
			THEN 'UNPAID'
		WHEN bm.Paid > 0 AND bm.Paid < bm.Payable
			THEN 'PART-PAID'
		WHEN bm.Payable > 0 AND bm.Payable = bm.Paid
			THEN 'FULL-PAID'
		WHEN bm.Payable = 0 AND bm.Paid = 0 
			THEN 'BILL-ONLY'
		ELSE 'UNKNOWN'
	END AS PaidStatus,
    bm.BillableCostOfSale,
    CASE
        WHEN bm.IsMaster = 1 THEN 0
        WHEN bm.BillRate = 0 THEN 0 -- billrate = 0 -> billrate = gross hence gross - gross = 0
        ELSE bm.BillRate - bm.Gross
    END AS [GrossSpotIncome],
    CASE
        WHEN bm.IsMaster = 1 THEN 0
        WHEN bm.BillRate = 0 THEN 0 -- same logic as gross
        ELSE convert(money, round((bm.BillRate - bm.Gross) - ((bm.BillRate - bm.Gross) * (bm.MediaDiscountPercentage / 100.0)), 2))
    END AS [NetSpotIncome],
    CASE
        WHEN bm.IsMaster = 1 THEN 0
        WHEN bm.InvoiceCode IS NULL THEN bm.BillableCostOfSale - bm.Payable
        ELSE (bm.BillableCostOfSale - bm.Payable) -
            sum(amb.BillableCostSaleBilled - amb.PayableBilled) OVER (PARTITION BY amb.BuySerial)
    END AS [UnBilledSpotIncome],
    CASE
        WHEN bm.IsCancelled = 1 THEN 'YES'
        ELSE 'NO'
    END AS Cancelled,
    CASE
        WHEN bm.IsDraft = 1 THEN 'YES'
        ELSE 'NO'
    END AS Draft,
    format(bm.BuyDate, 'dd/MM/yyyy') AS [Date],
    CASE
        WHEN bm.IsMaster = 1 THEN 'YES'
        ELSE 'NO'
    END AS [PayOnly],
    CASE
        WHEN bm.IsSlave = 1 THEN 'YES'
        ELSE 'NO'
    END AS [BillOnlyFlag],
    format(bm.BookedDate, 'dd/MM/yyyy') AS [Input Date],
    format(bm.BuyDate, 'dd/MM/yyyy') AS [Booking Date],
    format(ca.StartDate, 'dd/MM/yyyy') AS [Campaign Start Date],
    format(ca.EndDate, 'dd/MM/yyyy') AS [Campaign End Date],
	format((SELECT Val FROM dbo.VoucherDate(bm.BuySerial, bm.MediaCode)), 'dd/MM/yyyy') AS [VoucheredDate],
    CASE
        WHEN bm.IsVouchered = 1 AND bm.MediaCode IN (1, 5) THEN 'Y'
        WHEN bm.IsVouchered = 0 AND bm.MediaCode IN (1, 5) THEN 'N'
    ELSE 'N/A'
    END AS [Vouch Y or N],
    po.PurchaseOrderName AS [PO Name],
    bm.PurchaseOrderSerial AS [PO Number],
    bi.LocalCurrencyCost AS [Gross (Currency)],
    bm.CurrencyCode AS Currency,
    ROUND(bi.AccountExchRateNumerator / bi.AccountExchRateDenominator, 2) AS [Ex Rate],
    CASE
        WHEN bm.IsLocked = 1 THEN 'Y'
    ELSE 'N'
    END AS [Paid Y or N],
    bm.Paid AS [Paid £],
    bm.BuyerPID,
    (SELECT val FROM dbo.InvoiceQueryStatus(bm.BuySerial)) AS [Invoice Query Status],
    (SELECT val FROM dbo.InvoiceQueryID(bm.BuySerial)) AS [QID No],
    (SELECT val FROM dbo.InvoiceQueryGross(bm.BuySerial)) AS [QID £]
    FROM MediaA1..BuyMoney AS bm
    JOIN UserReportClient(6) AS urc
        ON urc.ClientCode = bm.ClientCode
    JOIN UserReportMedia(6) AS urm
        ON urm.MediaCode = bm.MediaCode
    LEFT JOIN AccountA1..AccMedBill AS amb
        ON amb.BuySerial = bm.BuySerial
    LEFT JOIN MediaA1..PurchaseOrder AS po
        ON po.PurchaseOrderSerial = bm.PurchaseOrderSerial
    LEFT JOIN MediaA1..BuyInternational AS bi
        ON bi.BuySerial = bm.BuySerial
    JOIN MediaA1..Client AS cl
        ON bm.MediaCode = cl.MediaCode
        AND bm.ClientCode = cl.ClientCode
    JOIN MediaA1..BuyingAgency AS ba
        ON cl.BuyingAgencyCode = ba.AgencyCode
    JOIN MediaA1..OperatingCompany AS oc
        ON ba.OperatingCompanyCode = oc.OperatingCompanyCode
    JOIN MediaA1..Media AS m
        ON bm.MediaCode = m.MediaCode
    JOIN MediaA1..BookingCategory AS bc
        ON bm.BookingCategoryCode = bc.BookingCategoryCode
    JOIN MediaA1..Product AS pr
        ON bm.MediaCode = pr.MediaCode
        AND bm.ClientCode = pr.ClientCode
        AND bm.ProductCode = pr.ProductCode
    JOIN MediaA1..Campaign AS ca
        ON bm.MediaCode = ca.MediaCode
        AND bm.ClientCode = ca.ClientCode
        AND bm.ProductCode = ca.ProductCode
        AND bm.CampaignCode = ca.CampaignCode
    LEFT JOIN MediaA1..FilterValue AS fv
        ON fv.FilterNumber = 2
        AND fv.FilterValue = ca.Filter2
    JOIN MediaA1..Supplier AS su
        ON bm.MediaCode = su.MediaCode
        AND bm.SupplierID = su.SupplierID
    JOIN MediaA1..Folio AS fo
        ON su.MediaCode = fo.MediaCode
        AND su.FolioCode = fo.FolioCode
    LEFT JOIN MediaA1..Buyer AS b
        ON bm.BuyerInitials = b.BuyerInitials
WHERE
    bm.BuyDate BETWEEN @startdate AND @enddate;

GO
/****** Object:  View [dbo].[PurchaseOrderLink]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- RD updated 20200404

CREATE VIEW [dbo].[PurchaseOrderLink]

AS

-- Updated RD 20200404

SELECT
    pol.RecordType,
    pol.[Action],
    pol.ActDatetime,
    pol.AgencyAlphaID,
    pol.PurchaseOrderSerial,
    pol.ClientCode,
    pol.ProductCode,
    pom.MediaCode
FROM dbo.HarpUserClient AS huc -- restrict to user's clients
    CROSS JOIN dbo.HarpUserMedia AS hum -- restrict to user's media
    JOIN MediaA1..PurchaseOrderLink AS pol
        ON pol.ClientCode = huc.ClientCode
    JOIN MediaA1..PurchaseOrderMedia AS pom
        ON pom.PurchaseOrderSerial = pol.PurchaseOrderSerial
        AND pom.MediaCode = hum.MediaCode;
GO
/****** Object:  View [dbo].[PurchaseOrderAllocation]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[PurchaseOrderAllocation]
AS

-- Updated RD 20200404

SELECT
    poa.RecordType,
    poa.[Action],
    poa.ActDatetime,
    poa.AgencyAlphaID,
    poa.PurchaseOrderSerial,
    poa.MediaCode,
    poa.ClientCode,
    poa.ProductCode,
    poa.CampaignCode
FROM dbo.HarpUserClient AS huc
    CROSS JOIN dbo.HarpUserMedia AS hum
    JOIN MediaA1..PurchaseOrderAllocation AS poa
        ON poa.ClientCode = huc.ClientCode
            AND poa.MediaCode = hum.MediaCode;
GO
/****** Object:  Table [dbo].[OpCoByOfficeCode]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OpCoByOfficeCode](
	[OperatingCompany] [nvarchar](50) NOT NULL,
	[OperatingCompanyCode] [int] NOT NULL,
	[OfficeCode] [nvarchar](10) NOT NULL,
	[OfficeName] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[OfficeCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 93) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [dbo].[ur_OraclePnL]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[ur_OraclePnL] 
(@MonthOfActivity nvarchar(5), @OpCoCode int) RETURNS TABLE

AS

-- ticket 11781 Oracle Data Extracts 
-- created Denis Nkulin (EPAM) 2022-01-17

RETURN
 
	SELECT aci.OfficeCode, 
		rtrim(aci.Unit) + rtrim(aci.Ledger) + rtrim(aci.AccountCode) AS Account_Code,  
		acc.AccountName,  
		aci.UniqueID, 
		rtrim(aci.ContraUnit) + rtrim(aci.ContraLedger) + rtrim(aci.ContraAccountCode) AS ContraAccount,
		left(DATENAME(mm, aci.[MonthOfActivity]), 3)+'-'+right(year(aci.[MonthOfActivity]), 2) as [Month],
		aci.DebitAmount AS Debits,  
		aci.CreditAmount AS Credits, 
		aci.DebitAmount+aci.CreditAmount AS NetAmount,  
		aci.TransactionDate AS [Date],  
		aci.TransactionType AS BatchType,  
		aci.TransactionReference AS Ref, 
		null AS UserID,  
		aci.BatchReference AS BatchRef, 
		ltrim(rtrim(acn.Narrative)) AS Narrative, 
		null AS Person,  
		aci.ClientCode AS Clients, 
		null AS SojurceClient,
		oc.OperatingCompany,
		oc.OperatingCompanyCode
	FROM AccountA1..AccIncMaster AS aci
		JOIN AccountA1..AccAccount AS acc 
			ON aci.AccountCode = acc.[AccountCode]
			AND aci.Ledger = acc.Ledger 
			AND aci.Unit = acc.Unit
			AND acc.Unit = 'S'
			AND acc.Ledger in ('E', 'I') 
			AND acc.IsLowLevel = '1'
		JOIN dbo.OpCoByOfficeCode AS oc
			ON aci.OfficeCode = oc.OfficeCode
		JOIN dbo.UserReportOpco(17) as rep --ur_OraclePnL
			on oc.OperatingCompanyCode = rep.OperatingCompanyCode
		LEFT JOIN AccountA1..AccAllNarrative AS acn
			ON aci.UniqueID = acn.UniqueID
	WHERE oc.OperatingCompanyCode = @OpCoCode
	AND aci.Unit = 'S'
	AND aci.Ledger in ('E', 'I') 
	AND left(DATENAME(mm, aci.[MonthOfActivity]), 3)+right(year(aci.[MonthOfActivity]), 2) = @MonthOfActivity

GO
/****** Object:  View [dbo].[ProductRadioType]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[ProductRadioType]
AS

-- Updated RD 20191014
SELECT
    prt.RecordType,
    prt.[Action],
    prt.ActDatetime,
    prt.AgencyAlphaID,
    prt.MediaCode,
    prt.ClientCode,
    prt.ProductCode,
    prt.RadioTypeNumber,
    prt.CommissionRate,
    prt.FormulaSchemeCode
FROM dbo.HarpUserMedia AS hum
    CROSS JOIN dbo.HarpUserClient AS huc
    JOIN MediaA1..ProductRadioType AS prt
        ON prt.MediaCode = hum.MediaCode
            AND prt.ClientCode = huc.ClientCode;

GO
/****** Object:  View [dbo].[ProductInternetType]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[ProductInternetType]
AS

-- Updated RD 20191012
SELECT
    pit.RecordType,
    pit.[Action],
    pit.ActDatetime,
    pit.AgencyAlphaID,
    pit.MediaCode,
    pit.ClientCode,
    pit.ProductCode,
    pit.InternetTypeNumber,
    pit.CommissionRate,
    pit.FormulaSchemeCode
FROM dbo.HarpUserMedia AS hum
    CROSS JOIN dbo.HarpUserClient AS huc
    JOIN MediaA1..ProductInternetType AS pit
        ON pit.MediaCode = hum.MediaCode
            AND pit.ClientCode = huc.ClientCode;

GO
/****** Object:  UserDefinedFunction [dbo].[ur_OracleIncForecast]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[ur_OracleIncForecast] 
(@OpCoCode int, @InvoiceDateStart nvarchar(10), @InvoiceDateEnd nvarchar(10)) RETURNS TABLE

AS

-- ticket 6199 Oracle Finance Forecasting Reporting - Passback (Generic agency)
-- created Denis Nkulin (EPAM) 2022-01-20

RETURN

SELECT oc.OperatingCompanyCode,
oc.OperatingCompanyName, 
ba.AgencyName AS BuyingAgencyFullName, 
bcm.IncomeAccount AS SICode_AgyCom, 
bm.ClientCode,
cl.ClientName, 
cl.ClientShortName, 
med.[MediaName] AS [Media],
Format(acm.InvoiceDate, 'yyyy')+' '+left(right(acm.InvoiceDate, 7), 2) AS InvoiceMonth, 
Format(bm.BuyDate, 'yyyy')+' '+left(right(bm.BuyDate, 7), 2) AS ActivityMonth,
case
	when bm.MediaDiscountPercentage = 100 then acm.GrossBilled
	else acm.PayableBilled/(1-bm.MediaDiscountPercentage/100)
end AS Gross,
acm.GrossBilled AS BillRate, 
acm.BillableBilled, 
acm.BuyingAgencyCommissionBilled AS BuyingAgencyComm, 
acm.CreativeAgencyCommissionBilled AS CreativeAgencyComm, 
acm.AgencyCommissionBilled AS AgyComm, 
bm.Billable - bm.Billed AS UnBilled, 
bm.BuyingAgencyCommission - acm.BuyingAgencyCommissionBilled AS [UnBilled_BA Comm],
bm.CreativeAgencyCommission - acm.CreativeAgencyCommissionBilled AS [UnBilled_CA Comm],
bm.AgencyCommission - acm.AgencyCommissionBilled AS [UnBilled_A Comm],
bm.Payable, 
bm.Payable - bm.Paid AS UnPaid,
acm.BillableCostSaleBilled AS BillableCostOfSale, 
case
	when acm.SpotIncomeBilled = 0 then 0
	else acm.SpotIncomeBilled/(100-bm.MediaDiscountPercentage)*100
end AS GrossSpotIncome,
acm.SpotIncomeBilled AS NetSpotIncome, 
bm.BillableCostOfSale - bm.Payable - acm.SpotIncomeBilled AS UnBilledSpotIncome,
acm.AgencyCommissionBilled + acm.SpotIncomeBilled AS TotalIncome, 
case
	when bm.Billable - bm.Billed = 0 then 'Fully Billed'
	when bm.Billed = 0 then 'Fully UnBilled'
	when bm.Billable - bm.Billed <> 0 and bm.Billed <> 0 then 'Part UnBilled'
	else null
end AS Billed_Status
	FROM MediaA1..BuyMoney AS bm
		JOIN MediaA1..Client AS cl
			ON bm.ClientCode = cl.ClientCode
			AND bm.MediaCode = cl.MediaCode
		JOIN MediaA1..BuyingAgency AS ba
			ON cl.BuyingAgencyCode = ba.AgencyCode
		JOIN MediaA1..OperatingCompany AS oc
			ON ba.OperatingCompanyCode = oc.OperatingCompanyCode
		JOIN dbo.UserReportOpco(18) as rep --ur_OracleIncForecast
			on oc.OperatingCompanyCode = rep.OperatingCompanyCode
		JOIN MediaA1..Media AS med 
			ON bm.MediaCode = med.MediaCode
		LEFT JOIN MediaA1..BookingCategoryMedia AS bcm
			ON bm.BookingCategoryCode = bcm.BookingCategoryCode
			AND bm.MediaCode = bcm.BookingCategoryMediaCode
		LEFT JOIN AccountA1..AccMedBill AS acm
			ON bm.BuySerial = acm.BuySerial
			AND bm.InvoiceCode = acm.InvoiceCode
			AND bm.InvoiceDate = acm.InvoiceDate
	WHERE oc.OperatingCompanyCode = @OpCoCode AND bm.IsDraft = 0 
	and (acm.InvoiceDate Between convert(date, @InvoiceDateStart, 103) and convert(date, @InvoiceDateEnd, 103)
		OR (bm.BuyDate Between '2015-01-01' and convert(date, @InvoiceDateEnd, 103) AND (bm.Billable - bm.Billed) <> 0))
GO
/****** Object:  View [dbo].[ClientRadioType]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[ClientRadioType]
AS

-- Updated RD 20191014
SELECT
    crt.RecordType,
    crt.[Action],
    crt.ActDatetime,
    crt.AgencyAlphaID,
    crt.MediaCode,
    crt.ClientCode,
    crt.RadioTypeNumber,
    crt.CommissionRate,
    crt.FormulaSchemeCode
FROM dbo.HarpUserMedia AS hum
    CROSS JOIN dbo.HarpUserClient AS huc
    JOIN MediaA1..ClientRadioType AS crt
        ON crt.MediaCode = hum.MediaCode
            AND crt.ClientCode = huc.ClientCode;

GO
/****** Object:  View [dbo].[ClientInternetType]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[ClientInternetType]

AS
-- Updated RD 20191014
SELECT
    cit.RecordType,
    cit.[Action],
    cit.ActDatetime,
    cit.AgencyAlphaID,
    cit.MediaCode,
    cit.ClientCode,
    cit.InternetTypeNumber,
    cit.CommissionRate,
    cit.FormulaSchemeCode
FROM dbo.HarpUserMedia AS hum
    CROSS JOIN dbo.HarpUserClient AS huc
    JOIN MediaA1..ClientInternetType AS cit
        ON cit.MediaCode = hum.MediaCode
            AND cit.ClientCode = huc.ClientCode;

GO
/****** Object:  Table [dbo].[PublicHolidays]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PublicHolidays](
	[HolidayDate] [date] NOT NULL,
	[Holiday] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[HolidayDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Calendar]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Calendar](
	[TheDate] [date] NOT NULL,
	[TheMonthStart] [date] NOT NULL,
	[IsWeekend] [bit] NOT NULL,
 CONSTRAINT [PK_Calendar] PRIMARY KEY CLUSTERED 
(
	[TheDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[ur_MrecReport_WF]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[ur_MrecReport_WF]
AS
-- ticket 6667 MREC Report 
-- created Denis Nkulin (EPAM) 2021-11-18
-- updated Nataliia Morozova 2022-08-09
WITH calendar_tbl
AS (
    SELECT dt.TheDate,
        dt.IsWeekend,
        ph.HolidayDate,
        dt.TheMonthStart,
        CASE 
            WHEN dt.IsWeekend = 1
                OR ph.HolidayDate IS NOT NULL
                THEN 'DO'
            ELSE 'W'
            END AS WorkDay_ind, --(DO: Day-Off /W:  Working
        ROW_NUMBER() OVER (
            PARTITION BY dt.TheMonthStart,
            CASE 
                WHEN dt.IsWeekend = 1
                    OR ph.HolidayDate IS NOT NULL
                    THEN 'DO'
                ELSE 'W'
                END ORDER BY dt.TheDate ASC
            ) AS RN
    FROM dbo.Calendar AS dt
    LEFT JOIN dbo.PublicHolidays AS ph
        ON dt.TheDate = ph.HolidayDate
            --ORDER BY  dt.TheDate, WorkDay_ind
    ),
workingday
AS (
    SELECT c.TheMonthStart,
        c.TheDate AS FifthWorkday
    FROM calendar_tbl AS c
    WHERE c.WorkDay_ind = 'W'
        AND c.rn = 5
    )
SELECT rtrim(oc.OperatingCompanyName) AS OperatingCompanyName,
    ba.OperatingCompanyCode,
    rtrim(ba.AgencyName) AS [Buying Agency],
    CASE 
        WHEN bm.IsVouchered = 1
            THEN 'V'
        ELSE 'No'
        END AS [Status V],
    bm.BuySerial AS [Serial Number],
    bm.ClientCode AS [Cli Code],
    rtrim(cl.ClientName) AS [Client Name],
    bm.CampaignCode AS [Cam Num],
    rtrim(camp.CampaignName) AS [Campaign Name],
    FORMAT(bm.BuyDate, 'yyyy-MM') AS MonthYear,
    DATENAME(month, bm.BuyDate) + RIGHT(year(bm.BuyDate), 2) AS MonthYearName,
    bm.BuyDate,
    rtrim(byr.BuyerName) AS [Buyer Name],
    byr.BuyerPIN,
    rtrim(bc.BookingCategoryName) AS [Booking Category],
    im.[Type] AS [Type],
    rtrim(sup.SupplierName) AS [Supplier Name],
    coalesce(camp.ClientReference, camp.CampaignReference) AS [PO Ref #],
    im.InternalCampaignCode AS [CAMPID],
    bm.Gross AS [Gross],
    bm.Billable AS [Billable],
    bm.Paid AS [Paid],
    CASE 
        WHEN bm.IsLocked = 1
            THEN 'Locked'
        ELSE 'Unlocked'
        END AS [Booking Locked Status],
    WD.FifthWorkDay,
    CASE 
        WHEN iv.VoucherStatus = 'V'
            THEN iv.VoucherDate
        END AS [Voucher Date]
FROM MediaA1..[BuyMoney] bm
JOIN MediaA1..[Client] cl
    ON bm.MediaCode = cl.MediaCode
        AND bm.ClientCode = cl.ClientCode
JOIN MediaA1..BuyingAgency ba
    ON cl.BuyingAgencyCode = ba.AgencyCode
JOIN MediaA1..OperatingCompany AS oc
    ON ba.OperatingCompanyCode = oc.OperatingCompanyCode
JOIN MediaA1..Campaign camp
    ON bm.CampaignCode = camp.CampaignCode
        AND bm.ProductCode = camp.ProductCode
        AND bm.MediaCode = camp.MediaCode
        AND bm.ClientCode = camp.ClientCode
JOIN MediaA1..[Supplier] sup
    ON bm.SupplierID = sup.SupplierID
JOIN MediaA1..[BookingCategory] bc
    ON bm.BookingCategoryCode = bc.BookingCategoryCode
JOIN MediaA1..Buyer byr
    ON bm.BuyerInitials = byr.BuyerInitials
LEFT JOIN MediaA1..[InetMedia] im
    ON bm.BuySerial = im.BuySerial
LEFT JOIN MediaA1..InetVoucher iv
    ON iv.BuySerial = bm.BuySerial
LEFT JOIN WorkingDay AS wd
    ON DATEFROMPARTS(Year(bm.BuyDate), Month(bm.BuyDate), '01') = DATEADD(mm, 1, wd.TheMonthStart)
WHERE FORMAT(bm.BuyDate, 'yyyy-MM') >= FORMAT(DATEADD(m, - 6, getdate()), 'yyyy-MM')
    AND FORMAT(bm.BuyDate, 'yyyy-MM') <= FORMAT(getdate(), 'yyyy-MM')
    AND bm.MediaCode = 5 --DIGITAL
GO
/****** Object:  View [dbo].[BuyTV]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[BuyTV]
AS

-- join on buy for user's access
-- Updated RD 20191014
-- added new fields to version 28
SELECT
    bt.RecordType,
    bt.[Action],
    bt.ActDatetime,
    bt.AgencyAlphaID,
    bt.BuySerial,
    bt.MatchedStatus,
    bt.TVAreaID,
    bt.TVChannel,
    bt.[DayofWeek],
    bt.BookedTime,
    bt.DaypartNumber,
    bt.Spotlength,
    bt.EquivalenceFactor,
    bt.PackageGuaranteedRating,
    bt.PackageNetworkRating,
    bt.PackageEstimatedSpots,
    bt.PackageTransmittedSpots,
    bt.EquivalencedCost,
    bt.PackagedEquivalencedCost,
    bt.TransmissionDate,
    bt.TransmissionTime,
    bt.TransmissionSpotlength,
    bt.LastTransmissionDate,
    bt.LastTransmissionTime,
    bt.LastTransmissionSpotlength,
    bt.AudienceType,
    bt.AudienceNumber,
    bt.EstimatedRating,
    bt.ActualRating,
    bt.Impressions,
    bt.Universe,
    bt.AudienceType2,
    bt.AudienceNumber2,
    bt.EstimatedRating2,
    bt.ActualRating2,
    bt.Impressions2,
    bt.Universe2,
    bt.ProgrammeBefore,
    bt.ProgrammeAfter,
    bt.SpecialOffdeal,
    bt.Disputed,
    bt.PackageGHI,
    bt.SpecialDealTypes,
    bt.SpecialDealDiscountType,
    bt.SpecialDealDiscount,
    bt.BrandNumber,
    bt.AudienceType3,
    bt.AudienceNumber3,
    bt.EstimatedRating3,
    bt.ActualRating3,
    bt.Impressions3,
    bt.Universe3,
    bt.FilmNumber,
    bt.BrandName,
    bt.PositionInBreak,
    bt.PositionOfBreak,
    bt.FilmName,
    bt.FilmPhoneNumber,
    bt.FilmWebAddress,
    bt.SaleshouseID,
    bt.ScheduleID,
    bt.SaleshouseProgrammeBefore,
    bt.SaleshouseProgrammeAfter,
    bt.SpotNumber
FROM MediaA1..BuyTV AS bt
    JOIN dbo.Buy AS b
        ON b.BuySerial = bt.BuySerial
GO
/****** Object:  View [dbo].[AccUnitSMaster]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Alter View AccUnitSMaster

CREATE VIEW [dbo].[AccUnitSMaster]
AS

SELECT [RecordType]
      ,[ActionLast]
      ,[ActDateTime]
      ,[Agency]
      ,[UniqueID]
      ,[Unit]
      ,[Ledger]
      ,[AccountCode]
      ,[ContraUnit]
      ,[ContraLedger]
      ,[ContraAccountCode]
      ,[ClientCode]
      ,[ProductCode]
      ,[AddedDate]
      ,[TransactionDate]
      ,[TransactionReference]
      ,aim.[OfficeCode]
      ,[TransactionType]
      ,[MonthOfActivity]
      ,[BatchReference]
      ,[IsDebit]
      ,[IsCredit]
      ,[Amount]
      ,[DebitAmount]
      ,[CreditAmount]
      ,[BalanceAmount]
      ,[CurrencyCode]
      ,[IsReversal]
      ,[ReverseMonthOfActivity]
      ,[ReversedDate]
      ,[IsArchived]
      ,[BookingCategoryShortName]
      ,[MediaTypeCode]
FROM AccountA1.dbo.AccIncMaster AS aim
    JOIN dbo.HarpUser_Office AS l_o
        ON l_o.OfficeCode = aim.OfficeCode
    JOIN dbo.[Users] AS l
        ON l.UserID = l_o.UserID
            AND l.UserName = SYSTEM_USER;
GO
/****** Object:  View [dbo].[ur_IrcPaymentDateReport_PBI]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE VIEW [dbo].[ur_IrcPaymentDateReport_PBI]

AS

SELECT
	Media AS Med,
	Client AS Cli,
	Product AS Pro,
	Campaign AS Cam,
	Serial AS Serial,
	isnull(CANCELLED, '') AS Canc,
	Folio AS Folio,
	Supplier AS Supp,
	Shortname AS Shortname,
	isnull(convert(varchar(10), InsXmtDate, 120), '') AS InsXmtDate,
	LineType AS LineType,
	isnull(BILLNUM, '') AS BillRef,
	isnull(convert(varchar(10), BillDate, 120), '') AS BillDate,
	isnull(RcptRef, '') AS RcptRef,
	isnull(convert(varchar(10), DepoDate, 120), '') AS DepoDate,
	isnull(cast(BILLCOST AS varchar), '') AS CostofSale,
	isnull(cast(RECEIVED AS varchar), '') AS AmtRcvd,
	isnull(INVNUM, '') AS InvRef,
	isnull(convert(varchar(10), InvDate, 120), '') AS InvDate,
	isnull(PmtRef, '') AS PmtRef,
	isnull(convert(varchar(10), PmtDate, 120), '') AS PmtDate,
	isnull(cast(PAYCOST AS varchar), '') AS CostofSale1,
	isnull(CONTRAED, '') AS Contra,
	isnull(REVERSED, '') AS Rvrsd,
	isnull(WRITEOFF, '') AS WrtOff,
	isnull(TRANSFER, '') AS Trnsf,
	isnull(PAYMENTDATE, '') AS PaymentDate
FROM (
	SELECT
		substring(MBUY.SERIAL, 1, 1) AS MEDIA,
		MBUY.Client,
		MBUY.Product,
		MBUY.Campaign,
		MBUY.SERIAL,
		CASE
			WHEN MBUY.IsCancelled = '1' THEN 'C'
		END AS CANCELLED,
		MBUY.Creditor AS FOLIO,
		MBUY.Supplier,
		rtrim(MBUY.SupplierShortName) AS SHORTNAME,
		MBUY.INSXMTDATE,
		CASE
			WHEN TransactionType = 9 THEN '2a Bill'
			ELSE '2b Receipt'
		END AS LINETYPE,
		MBILL.InvoiceCode AS BILLNUM,
		MBILL.InvoiceDate AS BILLDATE,
		coalesce(PaymentReference, CASE
			WHEN ContraDate IS NOT NULL THEN '(Contra)'
		END) AS RCPTREF,
		coalesce(DepositDate, ContraDate) AS DEPODATE,
		CASE
			WHEN TransactionType = 9 THEN (MBILL.TotalBilled - MBILL.VATBilled - MBILL.AgencyCommissionBilled)
		END AS BILLCOST,
		cast(CASE
			WHEN TransactionType <> 9 THEN round((-Amount * (MBILL.TotalBilled - MBILL.VATBilled - MBILL.AgencyCommissionBilled) / BLLS.BILLAMOUNT), 2)
		END AS decimal(9, 2)) AS RECEIVED,
		cast(NULL AS varchar) AS INVNUM,
		cast(NULL AS datetime) AS INVDATE,
		cast(NULL AS varchar) AS PMTREF,
		cast(NULL AS datetime) AS PMTDATE,
		cast(NULL AS decimal(9, 2)) AS PAYCOST,
		CASE
			WHEN ContraDate IS NOT NULL THEN 'C'
		END AS CONTRAED,
		CASE
			WHEN IsReversed = '1' THEN 'R'
		END AS REVERSED,
		CASE
			WHEN DRWOF.UniqueID IS NOT NULL THEN 'W'
		END AS WRITEOFF,
		CASE
			WHEN IsTransferFrom = '1' THEN 'F'
			WHEN IsTransferTo = '1' THEN 'T'
		END AS TRANSFER,
		DRCAS.DepositDate AS PAYMENTDATE

	FROM AccMedBill AS MBILL
	LEFT JOIN AccMedBuy MBUY
		ON MBUY.SERIAL = MBILL.BuyPaySerial
	LEFT JOIN AccDrMaster DRMAS
		ON DRMAS.InvoiceNumber = MBILL.InvoiceCode
		AND DRMAS.InvoiceDate = MBILL.InvoiceDate
	LEFT JOIN AccDrCash DRCAS
		ON DRMAS.UniqueID = DRCAS.UniqueID
	LEFT JOIN AccDrBilling DRBIL
		ON DRMAS.UniqueID = DRBIL.UniqueID
	LEFT JOIN AccDrWriteOff DRWOF
		ON DRMAS.UniqueID = DRWOF.UniqueID
	LEFT JOIN (
		SELECT
			InvoiceNumber,
			InvoiceDate,
			sum(Amount) AS BILLAMOUNT,
			sum(1) AS COUNTER
		FROM AccDrMaster
		WHERE TransactionType = 9
		GROUP BY InvoiceNumber,
				 InvoiceDate
	) BLLS
		ON MBILL.InvoiceCode = BLLS.InvoiceNumber
		AND MBILL.InvoiceDate = BLLS.InvoiceDate
	WHERE (DRMAS.TransactionType = 9
	OR DRMAS.TransactionType = 30)
	AND DRCAS.DepositDate BETWEEN '2022-08-01' AND '2022-08-01' --GETDATE() -- in payment date report only
	--AND BLLS.BILLAMOUNT <> 0
	UNION

	SELECT
		substring(MBUY.SERIAL, 1, 1) AS MEDIA,
		MBUY.Client,
		MBUY.Product,
		MBUY.Campaign,
		MBUY.SERIAL,
		CASE
			WHEN MBUY.IsCancelled = '1' THEN 'C'
		END AS CANCELLED,
		MBUY.Creditor AS FOLIO,
		MBUY.Supplier,
		rtrim(MBUY.SupplierShortName) AS SHORTNAME,
		MBUY.INSXMTDATE,
		'3  Payment' AS LINETYPE,
		cast(NULL AS varchar) AS BILLNUM,
		cast(NULL AS datetime) AS BILLDATE,
		cast(NULL AS varchar) AS RCPTREF,
		cast(NULL AS datetime) AS DEPODATE,
		cast(NULL AS decimal(9, 2)) AS BILLCOST,
		cast(NULL AS decimal(9, 2)) AS RECEIVED,
		InvoiceNumber AS INVNUM,
		InvoiceDate AS INVDATE,
		CASE
			WHEN IsContraed = '1' THEN '(Contra)'
			ELSE PaymentNumber
		END AS PMTREF,
		CASE
			WHEN IsContraed = '1' THEN UsedDate
			ELSE PaymentDate
		END AS PMTDATE,
		-Amount - CRMED.VATPaid AS PAYCOST,
		CASE
			WHEN IsContraed = '1' THEN 'C'
		END AS CONTRAED,
		CASE
			WHEN IsReversed = '1' THEN 'R'
		END AS REVERSED,
		cast(NULL AS varchar) AS WRITEOFF,
		cast(NULL AS varchar) AS TRANSFER,
		CRPMT.PaymentDate AS PAYMENTDATE
	FROM AccMedBuy MBUY
	LEFT JOIN AccCrMedia CRMED
		ON MBUY.SERIAL = CRMED.BuySerial
	LEFT JOIN AccCrMaster CRMST
		ON CRMED.UniqueID = CRMST.UniqueID
	LEFT JOIN AccCrPayment CRPMT
		ON CRMED.UniqueID = CRPMT.UniqueID
	WHERE CRMED.UniqueID IS NOT NULL
	AND CRPMT.PaymentDate BETWEEN '2022-08-01' AND '2022-08-01' --GETDATE() -- in payment date report only
) AS ALLDATA

GO
/****** Object:  View [dbo].[r_HarpBeatToday_Log]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[r_HarpBeatToday_Log]
AS

-- updated RD 20191203 added 4 wk avg duration
-- updated RD 20200107 added 4 wk max duration
-- updated RD 20200129 added yesterday
-- updated RD 20210219 added harpchheck to plannedtime

WITH today (StartDateTime, PlannedDate, PlannedTime, ProcessName, StartDate, StartTime, EndDate, EndTime, [Duration (Mins)])
AS
(
    SELECT
        FORMAT(StartDateTime, 'd/M/yyyy HH:mm:ss') AS StartDateTime,
        RTRIM(ProcessParm1) AS PlannedDate,
        RTRIM(ProcessParm2) AS PlannedTime,
        RTRIM(ProcessName) AS ProcessName,
        FORMAT(StartDateTime, 'yyyyMMdd') AS StartDate,
        FORMAT(StartDateTime, 'HHmmss') AS StartTime,
        FORMAT(EndDatetime, 'yyyyMMdd') AS EndDate,
        FORMAT(EndDatetime, 'HHmmss') AS EndTime,
        Duration AS [Duration (Mins)]
    FROM
        MediaA1..HarpBeat_Log
    GROUP BY
        StartDateTime,
        ProcessParm1,
        ProcessParm2,
        ProcessName,
        FORMAT(StartDateTime, 'yyyyMMdd'),
        FORMAT(StartDateTime, 'HHmmss'),
        FORMAT(EndDatetime, 'yyyyMMdd'),
        FORMAT(EndDatetime, 'HHmmss'),
        Duration
    HAVING
        CONVERT(DATE, StartDateTime) = CONVERT(DATE, GETUTCDATE())
),
yesterday (PlannedDate, PlannedTime, ProcessName, [Duration (Mins)])
AS
(
    SELECT DISTINCT
        RTRIM(ProcessParm1) AS PlannedDate,
        RTRIM(ProcessParm2) AS PlannedTime,
        RTRIM(ProcessName) AS ProcessName,
        Duration AS [Duration (Mins)]
    FROM
        MediaA1..HarpBeat_Log
    WHERE
        CONVERT(DATE, StartDateTime) = CONVERT(DATE, DATEADD(dd, -1, GETUTCDATE()))
),
average_duration (PlannedTime, AverageDuration, MaxDuration)
AS
(
    SELECT DISTINCT
        RTRIM(ProcessParm2),
        AVG(hbl.Duration) OVER (PARTITION BY ProcessParm2),
        MAX(hbl.Duration) OVER (PARTITION BY ProcessParm2)
    FROM
        MediaA1..HarpBeat_Log AS hbl
    WHERE
        hbl.ActionDateTime > DATEADD(DAY, -28, CONVERT(DATE, GETUTCDATE()))
        AND hbl.ProcessParm2 IN ('POST', '1030', '1230', '1400', '1600', '1900')
)
SELECT
    t.StartDateTime,
    t.PlannedDate,
    CASE
        WHEN t.ProcessName = 'HarpCheck' THEN 'HarpCheck'
        WHEN t.PlannedTime = 'POST' THEN '_POST_'
        ELSE t.PlannedTime
    END AS PlannedTime,
    t.ProcessName,
    t.StartDate,
    t.StartTime,
    t.EndDate,
    t.EndTime,
    t.[Duration (Mins)] AS [Today (Mins)],
    y.[Duration (Mins)] AS [Yesterday],
    COALESCE(CONVERT(VARCHAR(3), ad.AverageDuration), 'n/a') AS [4 Wk Avg],
    COALESCE(CONVERT(VARCHAR(3), ad.MaxDuration), 'n/a') AS [4 Wk Max]
FROM
    today AS t
LEFT JOIN average_duration AS ad
    ON ad.PlannedTime = t.PlannedTime
LEFT JOIN Yesterday AS y
    ON (y.PlannedTime = t.PlannedTime
        OR t.PlannedTime IS NULL)
    AND y.ProcessName = t.ProcessName;

GO
/****** Object:  View [dbo].[r_HarpBeatSchedule]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[r_HarpBeatSchedule]
AS

-- 4 week average run times
-- Updated RD 20191230
-- Added yesterday RD 2021-02-19

WITH yesterday (PlannedDate, PlannedTime, ProcessName, [Duration (Mins)])
AS
(
    SELECT DISTINCT
        RTRIM(ProcessParm1) AS PlannedDate,
        RTRIM(ProcessParm2) AS PlannedTime,
        RTRIM(ProcessName) AS ProcessName,
        Duration AS [Duration (Mins)]
    FROM
        MediaA1..HarpBeat_Log
    WHERE
        CONVERT(DATE, StartDateTime) = CONVERT(DATE, DATEADD(dd, -1, GETUTCDATE()))
)

SELECT DISTINCT
    CASE
        WHEN hbl.ProcessParm2 = 'POST'
        THEN '_POST_' -- force to first row as sql server defaulting to alphabetical order
        ELSE RTRIM(ProcessParm2)
    END AS [PlannedTime],
    y.[Duration (Mins)] AS [Yesterday (Mins)],
    AVG(hbl.Duration) OVER (PARTITION BY ProcessParm2) AS [4 Wk Avg Duration (Mins)],
    MAX(hbl.Duration) OVER (PARTITION BY ProcessParm2) AS [4 Wk Max Duration (Mins)]
FROM
    MediaA1..HarpBeat_Log AS hbl
JOIN yesterday AS y
    ON y.PlannedTime = hbl.ProcessParm2
WHERE
    hbl.ActionDateTime > DATEADD(DAY, -28, CONVERT(DATE, GETUTCDATE()))
    AND hbl.ProcessParm2 IN ('POST', '1030', '1230', '1400', '1600', '1900');

GO
/****** Object:  View [dbo].[r_HarpLogTodayReport]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[r_HarpLogTodayReport]

AS

-- created RD 2021-02-17
-- added Completed field RD 2021-02-18

SELECT
    hbs.PlannedTime,
    hbt.ProcessName,
    CASE
        WHEN hbt.EndTime IS NOT NULL THEN 'YES'
        WHEN hbt.StartTime IS NOT NULL
            AND hbt.EndTime IS NULL THEN 'IN PROGRESS'
    END AS [Completed?],
    LEFT(hbt.StartTime, 2) + ':' + SUBSTRING(hbt.StartTime, 3, 2) + ':' + RIGHT(hbt.StartTime, 2) AS StartTime,
    LEFT(hbt.EndTime, 2) + ':' + SUBSTRING(hbt.EndTime, 3, 2) + ':' + RIGHT(hbt.EndTime, 2) AS EndTime,
    CONVERT(VARCHAR(3), hbt.[Today (Mins)]) AS [Today (Mins)],
    CONVERT(VARCHAR(3), hbs.[Yesterday (Mins)]) AS [Yesterday (Mins)],
    CONVERT(VARCHAR(3), hbs.[4 Wk Avg Duration (Mins)]) AS [4 Wk Avg],
    CONVERT(VARCHAR(3), hbs.[4 Wk Max Duration (Mins)]) AS [4 Wk Max]
FROM
    dbo.r_HarpBeatSchedule AS hbs
    LEFT JOIN dbo.r_HarpBeatToday_Log AS hbt
        ON hbt.PlannedTime = hbs.PlannedTime
        OR hbs.PlannedTime = '_POST_'
        AND hbt.PlannedTime = 'POST'
WHERE
    hbs.PlannedTime IS NOT NULL;

GO
/****** Object:  View [dbo].[BuyingAgency]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[BuyingAgency]
AS

-- Updated RD 20190929
SELECT DISTINCT
    a.AgencyAlphaID,
    a.AgencyCode,
    a.AgencyName,
    a.AgencyShortName,
    a.UserID,
    a.PurchaseOrderInclude,
    a.PurchaseOrderMultiple,
    a.OperatingCompanyCode,
    a.OfficeCode
FROM dbo.HarpUserClient AS huc
    JOIN MediaA1..Client AS c
        ON c.ClientCode = huc.ClientCode
    JOIN MediaA1..Agency AS a
        ON a.AgencyCode = c.BuyingAgencyCode
            AND a.AgencyType = 'B';
GO
/****** Object:  View [dbo].[BuyActivity]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[BuyActivity]
AS

-- join on buy for users clients, media and restricted booking categories
-- Updated RD 20191012
SELECT
    bact.RecordType,
    bact.[Action],
    bact.ActDatetime,
    bact.AgencyAlphaId,
    bact.BuySerial,
    bact.Gross,
    bact.BuyDate,
    bact.MediaCode,
    bact.ClientCode,
    bact.ProductCode,
    bact.CampaignCode,
    bact.SupplierID,
    bact.ComDateTime
FROM MediaA1..BuyActivity AS bact
    JOIN dbo.Buy AS b
        ON b.BuySerial = bact.BuySerial;
GO
/****** Object:  View [dbo].[BookingCategoryMedia]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Alter View BookingCategoryMedia

CREATE VIEW [dbo].[BookingCategoryMedia]
AS

-- Updated RD 20200401
SELECT
    bcm.RecordType,
    bcm.[Action],
    bcm.ActDatetime,
    bcm.AgencyAlphaID,
    bcm.BookingCategoryCode,
    bcm.BookingCategoryMediaCode,
    bcm.BookingCategoryValidMedia,
    bcm.LevyExempt,
    bcm.ASBOFAccount,
    bcm.ASAIAccount,
    bcm.IncomeAccount,
    bcm.SurchargeAccount,
    bcm.ServiceFeeAccount,
    bcm.SpotIncomeAccount,
    bcm.RebateAccount,
    bcm.DiscountAccount
FROM dbo.HarpUserMedia AS hum -- restrict to media user can see
    JOIN MediaA1..BookingCategoryMedia AS bcm
        ON bcm.BookingCategoryMediaCode = hum.MediaCode

EXCEPT -- exclude restricted categories unless user has access set in dbo.HarpUser table

SELECT
    bcm.RecordType,
    bcm.[Action],
    bcm.ActDatetime,
    bcm.AgencyAlphaID,
    bcm.BookingCategoryCode,
    bcm.BookingCategoryMediaCode,
    bcm.BookingCategoryValidMedia,
    bcm.LevyExempt,
    bcm.ASBOFAccount,
    bcm.ASAIAccount,
    bcm.IncomeAccount,
    bcm.SurchargeAccount,
    bcm.ServiceFeeAccount,
    bcm.SpotIncomeAccount,
    bcm.RebateAccount,
    bcm.DiscountAccount
FROM dbo.HarpUserMedia AS hum
    JOIN MediaA1..BookingCategoryMedia AS bcm
        ON bcm.BookingCategoryMediaCode = hum.MediaCode
    JOIN dbo.RestrictedBookingCategories AS rbc
        ON rbc.BookingCategoryCode = bcm.BookingCategoryCode
    JOIN dbo.[Users] AS u
        ON u.UserName = system_user
    JOIN dbo.HarpUsers AS hu
        ON hu.UserID = u.UserID
        AND NOT (hu.HasRestrictedBookingCategories = 1);
GO
/****** Object:  UserDefinedFunction [dbo].[ur_IrcPaymentDateReport]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE function [dbo].[ur_IrcPaymentDateReport]
  (@StartDate datetime, @EndDate datetime, @Media varchar(max), @Client varchar(max)) RETURNS TABLE
AS
RETURN




--SET DATEFORMAT DMY
--DECLARE @StartDate DATETIME, @EndDate DATETIME , @Media varchar(max), @Client varchar(max);
----SET	@Media = '''B'', ''C'', ''D'', ''K'', ''P'', ''R'', ''T'', ''V'''
----SET	@Client = '''CJ8'', ''C47'', ''CP0'''

----SET	@Media = (SELECT 'B', 'C', 'D', 'K', 'P', 'R', 'T', 'V')
----SET	@Client = (SELECT 'CJ8', 'C47', 'CP0')
--SELECT
--	@StartDate = cast('01/01/2019' AS datetime),
--	@EndDate = cast('31/12/2019' AS datetime),
--	@Media = 'B',
--	@Client = 'C47'
SELECT 
	Media AS Med,
	Client AS Cli,
	Product AS Pro,
	Campaign AS Cam,
	Serial AS Serial,
	isnull(CANCELLED, '') AS Canc,
	Folio AS Folio,
	Supplier AS Supp,
	Shortname AS Shortname,
	isnull(convert(varchar(10), InsXmtDate, 120), '') AS InsXmtDate,
	LineType AS LineType,
	isnull(BILLNUM, '') AS BillRef,
	isnull(convert(varchar(10), BillDate, 120), '') AS BillDate,
	isnull(RcptRef, '') AS RcptRef,
	isnull(convert(varchar(10), DepoDate, 120), '') AS DepoDate,
	isnull(cast(BILLCOST AS varchar), '') AS CostofSale,
	isnull(cast(RECEIVED AS varchar), '') AS AmtRcvd,
	isnull(INVNUM, '') AS InvRef,
	isnull(convert(varchar(10), InvDate, 120), '') AS InvDate,
	isnull(PmtRef, '') AS PmtRef,
	isnull(convert(varchar(10), PmtDate, 120), '') AS PmtDate,
	isnull(cast(PAYCOST AS varchar), '') AS CostofSale1,
	isnull(CONTRAED, '') AS Contra,
	isnull(REVERSED, '') AS Rvrsd,
	isnull(WRITEOFF, '') AS WrtOff,
	isnull(TRANSFER, '') AS Trnsf
FROM (
	SELECT
		substring(MBUY.SERIAL, 1, 1) AS MEDIA,
		MBUY.Client,
		MBUY.Product,
		MBUY.Campaign,
		MBUY.SERIAL,
		CASE
			WHEN MBUY.IsCancelled = '1' THEN 'C'
		END AS CANCELLED,
		MBUY.Creditor AS FOLIO,
		MBUY.Supplier,
		rtrim(MBUY.SupplierShortName) AS SHORTNAME,
		MBUY.INSXMTDATE,
		CASE
			WHEN TransactionType = 9 THEN '2a Bill'
			ELSE '2b Receipt'
		END AS LINETYPE,
		MBILL.InvoiceCode AS BILLNUM,
		MBILL.InvoiceDate AS BILLDATE,
		coalesce(PaymentReference, CASE
			WHEN ContraDate IS NOT NULL THEN '(Contra)'
		END) AS RCPTREF,
		coalesce(DepositDate, ContraDate) AS DEPODATE,
		CASE
			WHEN TransactionType = 9 THEN (MBILL.TotalBilled - MBILL.VATBilled - MBILL.AgencyCommissionBilled)
		END AS BILLCOST,
		cast(CASE
			WHEN TransactionType <> 9 THEN round((-Amount * (MBILL.TotalBilled - MBILL.VATBilled - MBILL.AgencyCommissionBilled) / BLLS.BILLAMOUNT), 2)
		END AS decimal(9, 2)) AS RECEIVED,
		cast(NULL AS varchar) AS INVNUM,
		cast(NULL AS datetime) AS INVDATE,
		cast(NULL AS varchar) AS PMTREF,
		cast(NULL AS datetime) AS PMTDATE,
		cast(NULL AS decimal(9, 2)) AS PAYCOST,
		CASE
			WHEN ContraDate IS NOT NULL THEN 'C'
		END AS CONTRAED,
		CASE
			WHEN IsReversed = '1' THEN 'R'
		END AS REVERSED,
		CASE
			WHEN DRWOF.UniqueID IS NOT NULL THEN 'W'
		END AS WRITEOFF,
		CASE
			WHEN IsTransferFrom = '1' THEN 'F'
			WHEN IsTransferTo = '1' THEN 'T'
		END AS TRANSFER
	FROM AccMedBill AS MBILL
	LEFT JOIN AccMedBuy MBUY
		ON MBUY.SERIAL = MBILL.BuyPaySerial
	LEFT JOIN AccDrMaster DRMAS
		ON DRMAS.InvoiceNumber = MBILL.InvoiceCode
		AND DRMAS.InvoiceDate = MBILL.InvoiceDate
	LEFT JOIN AccDrCash DRCAS
		ON DRMAS.UniqueID = DRCAS.UniqueID
	LEFT JOIN AccDrBilling DRBIL
		ON DRMAS.UniqueID = DRBIL.UniqueID
	LEFT JOIN AccDrWriteOff DRWOF
		ON DRMAS.UniqueID = DRWOF.UniqueID
	LEFT JOIN (
		SELECT
			InvoiceNumber,
			InvoiceDate,
			sum(Amount) AS BILLAMOUNT,
			sum(1) AS COUNTER
		FROM AccDrMaster
		WHERE TransactionType = 9
		GROUP BY InvoiceNumber,
				 InvoiceDate
	) BLLS
		ON MBILL.InvoiceCode = BLLS.InvoiceNumber
		AND MBILL.InvoiceDate = BLLS.InvoiceDate
	WHERE (DRMAS.TransactionType = 9
	OR DRMAS.TransactionType = 30)
	AND DRCAS.DepositDate BETWEEN @StartDate AND @EndDate -- in payment date report only
	--AND BLLS.BILLAMOUNT <> 0
	UNION

	SELECT
		substring(MBUY.SERIAL, 1, 1) AS MEDIA,
		MBUY.Client,
		MBUY.Product,
		MBUY.Campaign,
		MBUY.SERIAL,
		CASE
			WHEN MBUY.IsCancelled = '1' THEN 'C'
		END AS CANCELLED,
		MBUY.Creditor AS FOLIO,
		MBUY.Supplier,
		rtrim(MBUY.SupplierShortName) AS SHORTNAME,
		MBUY.INSXMTDATE,
		'3  Payment' AS LINETYPE,
		cast(NULL AS varchar) AS BILLNUM,
		cast(NULL AS datetime) AS BILLDATE,
		cast(NULL AS varchar) AS RCPTREF,
		cast(NULL AS datetime) AS DEPODATE,
		cast(NULL AS decimal(9, 2)) AS BILLCOST,
		cast(NULL AS decimal(9, 2)) AS RECEIVED,
		InvoiceNumber AS INVNUM,
		InvoiceDate AS INVDATE,
		CASE
			WHEN IsContraed = '1' THEN '(Contra)'
			ELSE PaymentNumber
		END AS PMTREF,
		CASE
			WHEN IsContraed = '1' THEN UsedDate
			ELSE PaymentDate
		END AS PMTDATE,
		-Amount - CRMED.VATPaid AS PAYCOST,
		CASE
			WHEN IsContraed = '1' THEN 'C'
		END AS CONTRAED,
		CASE
			WHEN IsReversed = '1' THEN 'R'
		END AS REVERSED,
		cast(NULL AS varchar) AS WRITEOFF,
		cast(NULL AS varchar) AS TRANSFER
	FROM AccMedBuy MBUY
	LEFT JOIN AccCrMedia CRMED
		ON MBUY.SERIAL = CRMED.BuySerial
	LEFT JOIN AccCrMaster CRMST
		ON CRMED.UniqueID = CRMST.UniqueID
	LEFT JOIN AccCrPayment CRPMT
		ON CRMED.UniqueID = CRPMT.UniqueID
	WHERE CRMED.UniqueID IS NOT NULL
	AND CRPMT.PaymentDate BETWEEN @StartDate AND @EndDate -- in payment date report only
) AS ALLDATA
WHERE
	Media IN (@Media) --('B', 'C', 'D', 'K', 'P', 'R', 'T', 'V')
	AND Client IN (@Client) --('CJ8', 'C47', 'CP0')
	--Media IN (@Media) -- ('B', 'C', 'D', 'K', 'P', 'R', 'T', 'V')
	--AND Client IN (@Client) --('CJ8', 'C47', 'CP0')
	--Media IN ('B', 'C', 'D', 'K', 'P', 'R', 'T', 'V')
	--AND Client IN ('CJ8', 'C47', 'CP0')
--ORDER BY
--	MEDIA,
--	Client,
--	Product,
--	Campaign,
--	SERIAL,
--	substring(LINETYPE, 1, 1),
--	BILLNUM,
--	BILLDATE,
--	substring(LINETYPE, 2, 1),
--	DEPODATE,
--	INVNUM,
--	INVDATE,
--	PMTDATE
GO
/****** Object:  UserDefinedFunction [dbo].[NVPOTrackerReport]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[NVPOTrackerReport] (
    @StartDate DATETIME,
    @EndDate DATETIME
    )
RETURNS TABLE
AS
RETURN
--WITH T1 AS (
        SELECT CONCAT (
                bm.ClientCode,
                po.[Reference]
                ) AS [Advertiser PO Ref],
            bm.BuySerial -- For Testing Purpose
            ,
            po.[Reference] AS [PO Reference],
            pol.LineReference AS [PO Line Reference],
            po.[PurchaseOrderName] AS [PO Name],
            po.[PurchaseOrderSerial] AS [Purchase OrderSerial],
            po.PrimaryClientCode AS [PO Primary Client],
            prcl.ClientShortName AS [PO Primary Client Short Name], 
            prcl.ClientName AS [PO Primary Client Long Name], 
            po.ClientContact AS [PO Client Contact],
            po.IssueDate AS [PO Issue Date],
            po.StartDate AS [PO start date],
            po.EndDate AS [PO end date],
            po.OwnerPIN AS [PO Owner],
            CASE 
                WHEN po.IsApproved = 0
                    THEN 'UnApproved' 
                ELSE 'Approved'  
                END AS [PO Status],
            oc.OperatingCompanyCode AS [Operating Company Code],
            oc.OperatingCompanyName AS [Operating Company Name],
            ba.AgencyCode AS [Bying Agency Code],
            ba.AgencyName AS [Bying Agency Name],
            cl.ClientCode AS [Client code],
            cl.ClientName AS [Client name],
            prd.ProductCode AS [Product Code],
            prd.ProductName AS [Product Name],
            camp.CampaignCode AS [Campaign Code],
            camp.CampaignName AS [Campaign Name],
            cl.BillingGroup AS [Billing Group],
            RTRIM(bcc.BookingCategoryName) AS [Booking Category Name],
            amb.InvoiceCode AS [Client Invoice Ref],
            amb.InvoiceDate AS [Client Invoice Date],
            adb.InvoiceDueDate AS [Client Invoice Due Date], 
            cl.BudgetCostFlag, -- For Testing Purpose
            po.IncludesMediaLevy, -- For Testing Purpose
            po.IncludesVAT, -- For Testing Purpose
          --  po.IncludesSurcharge, -- For Testing Purpose -- Invalid column name 'IncludesSurcharge'. ## NEED TEST
            po.[Amount] AS [PO Amount],
            CASE 
                WHEN cl.BudgetCostFlag = 'G'
                    THEN 'Gross Level'
                WHEN cl.BudgetCostFlag = 'C'
                    AND po.IncludesMediaLevy = 1
                    AND po.IncludesVAT = 1
           --         AND po.IncludesSurcharge = 1 -- Invalid column name 'IncludesSurcharge'.## NEED TEST
                    THEN 'Client VAT Levy Surcharge'
                WHEN cl.BudgetCostFlag = 'C'
                    AND po.IncludesMediaLevy = 1
                    AND po.IncludesVAT = 1
           --         AND po.IncludesSurcharge = 0 -- Invalid column name 'IncludesSurcharge'.## NEED TEST
                    THEN 'Client VAT Levy'
                WHEN cl.BudgetCostFlag = 'C'
                    AND po.IncludesMediaLevy = 0
                    AND po.IncludesVAT = 1
            --        AND po.IncludesSurcharge = 0 -- Invalid column name 'IncludesSurcharge'.## NEED TEST
                    THEN 'Client VAT'
                WHEN cl.BudgetCostFlag = 'C'
                    AND po.IncludesMediaLevy = 1
                    AND po.IncludesVAT = 0
           --         AND po.IncludesSurcharge = 0-- Invalid column name 'IncludesSurcharge'.## NEED TEST
                    THEN 'Client Levy'
                WHEN cl.BudgetCostFlag = 'C'
                    AND po.IncludesMediaLevy = 0
                    AND po.IncludesVAT = 0
            --        AND po.IncludesSurcharge = 0 -- Invalid column name 'IncludesSurcharge'.## NEED TEST
                    THEN 'Client Cost'
                END AS [PO Booked Level]
            --need to clarify does this field get us an infromation about Gross/Billable identification of PO from Chris Hardy / Mediaocean
            --PO Booking level -PO Booked Amount:
            ,
            CASE 
                WHEN cl.BudgetCostFlag = 'G'
                    THEN BM.Gross --'Gross Level'
                WHEN cl.BudgetCostFlag = 'C'
                    THEN bm.[Billable] --'Client Cost'
                END AS [PO Booked_BL]
            --PO invoicing level
            ,
            CASE 
                WHEN cl.BudgetCostFlag = 'G'
                    THEN amb.GrossBilled --'Gross Level' 
                WHEN cl.BudgetCostFlag = 'C'
                    THEN amb.BillableBilled --'Client Cost' 
                END AS [PO Booked_IL]
            --PO tracking level -- Don't know which values should be taken
            ,
            CASE 
                WHEN cl.BudgetCostFlag = 'G'
                    THEN PO.Amount --'Gross Level'
                WHEN cl.BudgetCostFlag = 'C'
                    THEN PO.Amount --'Client Cost'
                END AS [PO Booked_TL]
            --,PO Amount – PO Booked  as [PO Balance] -- Separate for 3 level of Dashboard
            --,
       --    po.ReconciledAmount AS [PO Reconciled], -- Invalid column name 'ReconciledAmount'.  ## NEED TEST
        --    po.[Amount] - po.ReconciledAmount AS [PO Reconciled Balance] -- Invalid column name 'ReconciledAmount'. ## NEED TEST
        --,[PO Booked]  - po.ReconciledAmount  as [PO Unreconciled] -- Separate for 3 level of Dashboard

        FROM MediaA1.dbo.PurchaseOrder AS po
        JOIN MediaA1.dbo.PurchaseOrderLine AS pol
            ON pol.[PurchaseOrderSerial] = po.[PurchaseOrderSerial]
        JOIN MediaA1.dbo.BuyMoney AS bm
            ON bm.[PurchaseOrderSerial] = pol.[PurchaseOrderSerial] --or bm.[PurchaseOrderLineID] = pol.[PurchaseOrderLineID] ---and po.IssueDate between @StartDate and @EndDate
        JOIN MediaA1.dbo.BookingCategory AS bcc
            ON bm.BookingCategoryCode = bcc.BookingCategoryCode
        JOIN MediaA1..Campaign camp
            ON bm.CampaignCode = camp.CampaignCode
                AND bm.MediaCode = camp.MediaCode
                AND bm.ClientCode = camp.ClientCode
                AND bm.ProductCode = camp.ProductCode
        JOIN MediaA1.dbo.Product AS prd
            ON bm.MediaCode = prd.MediaCode
                AND bm.ClientCode = prd.ClientCode
                AND bm.ProductCode = prd.ProductCode
        LEFT JOIN AccountA1.dbo.AccMedBill amb
            ON bm.BuySerial = amb.BuySerial
        JOIN AccountA1.dbo.AccDrMaster AS admst
            ON amb.InvoiceCode = admst.InvoiceNumber 
                AND amb.InvoiceDate = admst.InvoiceDate 
                AND amb.ClientCode = admst.ClientCode 
        JOIN  AccountA1.dbo.AccDrBilling  adb 
            ON admst.UniqueID = adb.UniqueID 
        JOIN MediaA1.dbo.PurchaseOrderMedia pom
            ON pom.[PurchaseOrderSerial] = po.[PurchaseOrderSerial]
        JOIN (
            SELECT pc.ClientCode,
                pc.MediaCode,
                pc.AddedDateTime,
                pc.ClientShortName, 
                pc.ClientName, 
                pc.BuyingAgencyCode,
                row_number() OVER (
                    PARTITION BY pc.[ClientCode],
                    pc.[MediaCode] ORDER BY AddedDateTime DESC
                    ) AS rn
            FROM MediaA1.dbo.Client AS pc
                -- Check if the table are heavy and could we limit them with some Where clause
            ) AS prcl
            ON Prcl.[ClientCode] = po.[PrimaryClientCode]
                AND prcl.[MediaCode] = pom.MediaCode
                AND prcl.rn = 1
        JOIN MediaA1.dbo.BuyingAgency AS ba
            ON ba.[AgencyCode] = prcl.[BuyingAgencyCode] 
        JOIN MediaA1.dbo.OperatingCompany AS oc
            ON ba.[OperatingCompanyCode] = oc.OperatingCompanyCode
        JOIN MediaA1.dbo.Client AS cl
            ON cl.[MediaCode] = BM.[MediaCode]
                AND cl.[ClientCode] = bm.[ClientCode]
        WHERE po.StartDate >= @StartDate
            AND po.EndDate <= @EndDate
/*        )

SELECT T1.*,
    t1.[PO Amount] - t1.[PO Booked_BL] AS [PO Balance_BL] --  Booking level
    ,
    t1.[PO Amount] - t1.[PO Booked_IL] AS [PO Balance_IL] --  Invoicing level
    ,
    t1.[PO Amount] - t1.[PO Booked_TL] AS [PO Balance_TL] --  Tracking level
    ,
    t1.[PO Booked_BL] - t1.ReconciledAmount AS [PO Unreconciled_BL] -- Booking level -- Invalid column name 'ReconciledAmount'.## NEED TEST
    ,
    t1.[PO Booked_IL] - t1.ReconciledAmount AS [PO Unreconciled_IL] -- Invoicing level -- Invalid column name 'ReconciledAmount'.## NEED TEST
    ,
    t1.[PO Booked_TL] - t1.ReconciledAmount AS [PO Unreconciled_TL] --  Tracking level -- Invalid column name 'ReconciledAmount'.## NEED TEST
FROM T1

*/
GO
/****** Object:  UserDefinedFunction [dbo].[PaymentPerformanceReportTest]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[PaymentPerformanceReportTest]
  (@StartDate datetime, @EndDate datetime) RETURNS TABLE
AS
RETURN
select 
	t.*
from(
	select
		bm.MediaCode
		,am.BuySerial as [Serial Number]
		,acm.Creditor
		,aa.AccountName
		,bm.BookedDate
		,bm.BuyDate as [Insertion/Aired/PlacementDate]
		,acm.DueDate
		,iif(acm.IsContraed = 1, acm.UsedDate, ap.PaymentDate) as ChequeDate
		,apo.OfficeCode
		,apo.OfficeName as Office
		,acm.InvoiceLongNumber as Long
		,t.UsedDate as [Actual/Chq/ContraDate]
		,acm.InvoiceNumber as Ref	
	from AccountA1.dbo.AccAccount as aa
	join AccountA1.dbo.AccCrMaster as acm
		on acm.Creditor = aa.AccountCode
		and acm.Ledger = aa.Ledger
		and acm.UsedDate between @StartDate and @EndDate
		and acm.Ledger = 'F'	
	join AccountA1.dbo.AccPrdOffice as apo
		on acm.OfficeCode = apo.OfficeCode
	left join AccountA1.dbo.AccCrPayment as ap
		on acm.UniqueID = ap.UniqueID		
	join AccountA1.dbo.AccCrMedia as am
		on acm.UniqueID = am.UniqueID
	cross apply (
		select 
			amc. Creditor			
			,ama.BuySerial	
			,amc.InvoiceLongNumber 	
			,amc.InvoiceNumber
			,min(amc.UsedDate) as UsedDate
		from AccountA1.dbo.AccCrMaster as amc
		join AccountA1.dbo.AccCrMedia as ama
			on amc.UniqueID = ama.UniqueID
		where amc.UsedDate between @StartDate and @EndDate
			and amc.Ledger = 'F'
			and amc.Creditor = acm.Creditor
			and amc.InvoiceLongNumber = acm.InvoiceLongNumber
			and amc.InvoiceNumber = acm.InvoiceNumber
			and ama.BuySerial = am.BuySerial
		group by amc. Creditor			
			,ama.BuySerial	
			,amc.InvoiceLongNumber 	
			,amc.InvoiceNumber			
	)as t
	join MediaA1.dbo.BuyMoney as bm
		on am.BuySerial = bm.BuySerial		
) as t
group by
	t.MediaCode
	,t.[Serial Number]
	,t.Creditor
	,t.AccountName
	,t.BookedDate
	,t.[Insertion/Aired/PlacementDate]
	,t.DueDate
	,t.ChequeDate
	,t.OfficeCode
	,t.Office
	,t.Long	
	,t.Ref
	,t.[Actual/Chq/ContraDate]
GO
/****** Object:  UserDefinedFunction [dbo].[PlanetVDiscrepancyReport]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE function [dbo].[PlanetVDiscrepancyReport]
  (@StartDate datetime, @EndDate datetime) RETURNS TABLE
AS
RETURN
select
	t.AgencyGroup
	,t.MediaCode
	,t.OperatingCompanyCode
	,t.OperatingCompanyName
	,t.BuyingAgencyCode
	,t.AgencyName
	,t.BookingCategoryCode
	,t.SMBC
	,t.ClientName
	,t.[Month]
	,sum(iif(t.Gross = 0 and t.Billrate <> 0, t.BillRate, t.Gross)) as GrossAmount
	,sum(t.Gross) as SumOfGross
	,sum(t.BillRate) as SumOfBillRate
	,count(t.BuySerial) as CountOfBuySerial
	,t.BuySerial
	,t.Code
	,t.BuyerName
from(
	select 
		'Group M' as AgencyGroup
		,bm.MediaCode
		,ba.OperatingCompanyCode
		,opco.OperatingCompanyName
		,c.BuyingAgencyCode
		,ba.AgencyName
		,bm.BookingCategoryCode
		,rtrim(ltrim(bm.BookingCategoryShortname)) as SMBC
		,c.ClientName
		,month(bm.BuyDate) as [Month]
		,bm.Gross		
		,bm.BillRate
		,bm.BuySerial
		,(rtrim(convert(nvarchar, bm.ClientCode)) + '/' + convert(nvarchar, bm.ProductCode) + '/' + convert(nvarchar, bm.CampaignCode)) as Code
		,b.BuyerName
	from MediaA1.dbo.BuyMoney as bm
		join MediaA1.dbo.Client as c on bm.ClientCode = c.ClientCode and bm.MediaCode = c.MediaCode
		join MediaA1.dbo.BuyingAgency as ba on c.BuyingAgencyCode = ba.AgencyCode
		join MediaA1.dbo.OperatingCompany as opco on ba.OperatingCompanyCode = opco.OperatingCompanyCode
		left join MediaA1.dbo.Buyer as b on bm.BuyerInitials = b.BuyerInitials
	where bm.BuyDate between @StartDate and @EndDate and bm.MediaCode = 5 and bm.SupplierID in (001202, 001203, 001204)
) as t
where t.SMBC in ('VIDEO/VOD','PROPBVODGMI')
group by 
	t.AgencyGroup
	,t.MediaCode
	,t.OperatingCompanyCode
	,t.OperatingCompanyName
	,t.BuyingAgencyCode
	,t.AgencyName
	,t.BookingCategoryCode
	,t.SMBC
	,t.ClientName
	,t.[Month]
	,t.BuySerial
	,t.Code
	,t.BuyerName
order by t.AgencyName, t.ClientName offset 0 rows
GO
/****** Object:  UserDefinedFunction [dbo].[POOverbookedReport]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[POOverbookedReport]
  (@StartDate datetime, @EndDate datetime) RETURNS TABLE
AS
RETURN
select
	oc.OperatingCompanyName
	,po.[PurchaseOrderSerial]
	,cl.[ClientName] as [PO Primary Client]
	,po.[Reference] as [PO Reference]
	,po.[PurchaseOrderName] as [PO Name]
	,po.[Amount] as [PO Amount]
	,round(sum(bm.[Billable]) + sum(bm.[LevyBillable]),2) as [PO Booked]
	,round(po.[Amount]-(sum(bm.[Billable]) + sum(bm.[LevyBillable])), 2) as [PO Balance]
	,po.IssueDate as IssueDate
from MediaA1.dbo.PurchaseOrder po
join MediaA1.dbo.BuyMoney bm on bm.[PurchaseOrderSerial] = po.[PurchaseOrderSerial] and po.IssueDate between @StartDate and @EndDate
join MediaA1.dbo.Client cl on cl.[MediaCode] =  BM.[MediaCode] and cl.[ClientCode] = bm.[ClientCode]
join MediaA1.dbo.BuyingAgency ba on ba.[AgencyCode] = cl.[BuyingAgencyCode] 
join MediaA1.dbo.OperatingCompany as oc on ba.[OperatingCompanyCode] = oc.OperatingCompanyCode
join [ReportingA1 _DEV].dbo.UserReportOpco(10) as uopco
on ba.[OperatingCompanyCode] = uopco.OperatingCompanyCode 
group by
	oc.OperatingCompanyName
	,po.[PurchaseOrderSerial]
	, po.[Reference]
	, po.[PurchaseOrderName]
	, po.[Amount] 
	, cl.[ClientName]	
	, po.IssueDate
order by po.[PurchaseOrderSerial] offset 0 rows
GO
/****** Object:  UserDefinedFunction [dbo].[ray_test]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[ray_test]
  (@date_type bit) RETURNS TABLE
AS

-- result set where @date_type = 0

RETURN

SELECT 'Bananas' AS date_type
WHERE @date_type = 0

UNION

-- get opcos where user/report has opcos

SELECT 'Avocados' AS date_type
WHERE @date_type = 1

GO
/****** Object:  UserDefinedFunction [dbo].[ur_Bravo_Data_Extract_Invoice]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- =============================================
-- Author:		Nathan Pennington
-- Create date: 2022-06-07
-- Description:	[POC] Bravo Data Extract: Q4 2021 GroupM UK -  ur_Bravo_Data_Extract_Invoice_Test


--The EDG (Enterprise Data Group) collects supplier spend data from the Accounts Payable systems across the WPP Group. 
--The data is aggregated together and available to view in a third party platform known as Bravo (Jaggaer). 
--The data is also used to support wider business initiatives such as the Procurement Savings Targets, Project Rubicon and Quantum. 
--For more information about this please contact procurementsystems@wpp.com
-- =============================================
CREATE FUNCTION [dbo].[ur_Bravo_Data_Extract_Invoice]
(	
	
	
	@MonthOfActivity datetime
	

)
RETURNS TABLE 
AS
RETURN 
(
	
SELECT
GETDATE() AS 'Extract Date'
,'Mediaocean' AS 'Source System'
,'A1'  AS 'Source System Company Code'
,acm.InvoiceNumber AS 'Transaction Reference Number' -- aim.TransactionReference AS 'Transaction Reference Number' --AccCrMaster.TransactionReference AS 'Transaction Reference Number' {TransactionReference does not exist in AccCrMaster replaced with AccIncMaster}
,acm.Creditor AS 'Supplier Code' --AccCrMaster.Account AS 'Supplier Code' Account field does not exist may need master Supplier at some point bu using Creditor id for now
,acm.InvoiceNumber AS 'Invoice Number' --AccCrMaster.InvoiceNumber AS 'Invoice Number'
--,[Set by defualt. Sample: 1	The value is incriminated if there are several invoices for the booking.] AS 'Invoice Line Number'
,acm.InvoiceDate AS 'Invoice Date' --AccCrMaster.InvoiceDate AS 'Invoice Date'
,acm.InvoiceReceivedDate AS 'Invoice Received Date' --AccCrMaster.InvoiceRecievedDate AS 'Invoice Received Date'
,acm.AddedDate AS 'Invoice Posting Date' --AccCrMaster.AddedDate AS 'Invoice Posting Date'
,acm.UsedDate AS 'Invoice Payment Date' --AccCrMaster.UsedDate AS 'Invoice Payment Date'
,acm.DueDate AS 'Invoice Due Date' --AccCrMaster.InvoiceDueDate AS 'Invoice Due Date' replace with dueDate as invoiceDueDate does not exist
,aac.DueDateFormula AS 'Invoice Payment Term Code' --AccountCreditor.DueDateFormula AS 'Invoice Payment Term Code'
,acm.CurrencyCode AS 'Invoice Line Original Currency' --AccCrMaster.CurrencyCode AS 'Invoice Line Original Currency'
,acm.Amount - avm.Amount AS 'Invoice Line Original Cost (Net)' --AccCrMaster.Amount - AccVATMaster.Amount AS 'Invoice Line Original Cost (Net)'
,avm.Amount AS 'Invoice Line Original Cost (VAT)' --AccVATMaster.Amount AS 'Invoice Line Original Cost (VAT)'
,acm.Amount AS 'Invoice Line Original Cost (Gross)' --AccCrMaster.Amount AS 'Invoice Line Original Cost (Gross)'
,aag.CurrencyCode AS 'Invoice Line Enterprise Currency' --Agency.CurrencyCode AS 'Invoice Line Enterprise Currency'
,aalc.ExchangeRate AS 'Invoice Line Exchange Rate Used' --AccAllCurrency.ExchangeRate AS 'Invoice Line Exchange Rate Used'
,((acm.Amount - avm.Amount) / (aalc.ExchangeRate)) AS 'Invoice Line Enterprise Currency Cost (Net)' --,[Invoice Line Original Cost (Net)/AccAllCurrency.ExchangeRate ] AS 'Invoice Line Enterprise Currency Cost (Net)'
,(avm.Amount/aalc.ExchangeRate) AS 'Invoice Line Enterprise Currency Cost (VAT)' --,[Invoice Line Original Cost (VAT)/AccAllCurrency.ExchangeRate ] AS 'Invoice Line Enterprise Currency Cost (VAT)'
,(acm.Amount/aalc.ExchangeRate) AS 'Invoice Line Enterprise Currency Cost (Gross)' --,[Invoice Line Original Cost (Gross)/AccAllCurrency.ExchangeRate]  AS 'Invoice Line Enterprise Currency Cost (Gross)'
,aim.AccountCode AS 'Local GL Account Code' --,[AccIncMaster.AccountCode (Unit = S, Ledger = E) via left outer join AccCrMaster using UniqueID] AS 'Local GL Account Code'
,aat.AccountName AS 'Local GL Account Description' --,[AccAccount.AccountName (Unit = S, ) to AccincMaster link via Unit, Ledger and AccountCode] AS 'Local GL Account Description'
,apo.OfficeCode AS 'Cost Centre Code' --AccPrdOffice.OfficeCode AS 'Cost Centre Code'
,apo.OfficeName AS 'Cost Centre Name' --AccPrdOffice.OfficeName AS 'Cost Centre Name'
,acm.OrderNumber AS 'PO Number' --AccMaster.OrderNumber AS 'PO Number'
,acm.OrderDate AS 'PO Date' --AccMaster.OrderDate AS 'PO Date'
,att.TranTypeName AS 'Client Billable/Non Billable' -- AccTranType.TypeName AS 'Client Billable/Non Billable'
,aan.Narrative AS 'Entry Text/Narration' --AccAllNarative.Narative AS 'Entry Text/Narration'
,acp.PaymentNumber AS 'Document Number/Payment Reference' --AccCrMaster.PaymentNumber AS 'Document Number/Payment Reference'
,'X'  AS 'EOL Indicator'
--,acm.UniqueID
,acm.MonthOfActivity
FROM AccountA1..AccCrMaster acm
LEFT JOIN AccountA1..AccAccountCreditor aac ON acm.Creditor = aac.Creditor
LEFT JOIN AccountA1..AccVATMaster avm ON acm.UniqueID = avm.UniqueID --AND Agency?
LEFT JOIN AccountA1..AccAgency aag ON acm.Agency = aag.Agency
LEFT JOIN AccountA1..AccAllCurrency aalc ON aag.CurrencyCode = aalc.CurrencyCode
LEFT JOIN AccountA1..AccPrdOffice apo ON acm.OfficeCode = apo.OfficeCode
LEFT JOIN ReportingA1..AccTranType att ON acm.TransactionType = att.TranTypeNo
LEFT JOIN AccountA1..AccAllNarrative aan ON acm.UniqueID = aan.UniqueID --AND Agency?
LEFT OUTER JOIN AccountA1..AccIncMaster aim ON acm.UniqueID = aim.UniqueID --AND Agency? --AccIncMaster.AccountCode (Unit = S, Ledger = E) via left outer join AccCrMaster using UniqueID [{left outer replaced with left join }
LEFT JOIN AccountA1..AccAccount aat ON aim.Unit = aat.Unit AND aim.[Ledger] = aat.[Ledger] AND aim.[AccountCode] = aat.[AccountCode]  --AccAccount.AccountName (Unit = S, ) to AccincMaster link via Unit, Ledger and AccountCode
LEFT JOIN AccountA1..AccCrPayment acp ON acm.UniqueID = acp.UniqueID --AND Agency? added to get Payment number

WHERE  acm.MonthOfActivity = @MonthOfActivity --acm.ActDatetime > '2022-01-01 00:00:00'
)
GO
/****** Object:  UserDefinedFunction [dbo].[ur_Bravo_Data_Extract_Invoice_2022_08_17]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





-- =============================================
-- Author:		Nathan Pennington
-- Create date: 2022-06-07
-- Description:	[POC] Bravo Data Extract: Q4 2021 GroupM UK -  ur_Bravo_Data_Extract_Invoice_2022_08_17


--The EDG (Enterprise Data Group) collects supplier spend data from the Accounts Payable systems across the WPP Group. 
--The data is aggregated together and available to view in a third party platform known as Bravo (Jaggaer). 
--The data is also used to support wider business initiatives such as the Procurement Savings Targets, Project Rubicon and Quantum. 
--For more information about this please contact procurementsystems@wpp.com
-- =============================================
CREATE FUNCTION [dbo].[ur_Bravo_Data_Extract_Invoice_2022_08_17]
(	
	
	
	@MonthOfActivityStart datetime
	,@MonthOfActivityEnd datetime

)
RETURNS TABLE 
AS
RETURN 
(
	
SELECT
GETDATE() AS 'Extract Date'
,'Mediaocean' AS 'Source System'
,'A1'  AS 'Source System Company Code'
,acm.InvoiceNumber AS 'Transaction Reference Number' -- aim.TransactionReference AS 'Transaction Reference Number' --AccCrMaster.TransactionReference AS 'Transaction Reference Number' {TransactionReference does not exist in AccCrMaster replaced with AccIncMaster}
,acm.Creditor AS 'Supplier Code' --AccCrMaster.Account AS 'Supplier Code' Account field does not exist may need master Supplier at some point bu using Creditor id for now
,acm.InvoiceNumber AS 'Invoice Number' --AccCrMaster.InvoiceNumber AS 'Invoice Number'
--,[Set by defualt. Sample: 1	The value is incriminated if there are several invoices for the booking.] AS 'Invoice Line Number'
,acm.InvoiceDate AS 'Invoice Date' --AccCrMaster.InvoiceDate AS 'Invoice Date'
,acm.InvoiceReceivedDate AS 'Invoice Received Date' --AccCrMaster.InvoiceRecievedDate AS 'Invoice Received Date'
,acm.AddedDate AS 'Invoice Posting Date' --AccCrMaster.AddedDate AS 'Invoice Posting Date'
,acm.UsedDate AS 'Invoice Payment Date' --AccCrMaster.UsedDate AS 'Invoice Payment Date'
,acm.DueDate AS 'Invoice Due Date' --AccCrMaster.InvoiceDueDate AS 'Invoice Due Date' replace with dueDate as invoiceDueDate does not exist
,aac.DueDateFormula AS 'Invoice Payment Term Code' --AccountCreditor.DueDateFormula AS 'Invoice Payment Term Code'
,acm.CurrencyCode AS 'Invoice Line Original Currency' --AccCrMaster.CurrencyCode AS 'Invoice Line Original Currency'
--,acm.Amount - avm.Amount AS 'Invoice Line Original Cost (Net)' --AccCrMaster.Amount - AccVATMaster.Amount AS 'Invoice Line Original Cost (Net)'
--,avm.Amount AS 'Invoice Line Original Cost (VAT)' --AccVATMaster.Amount AS 'Invoice Line Original Cost (VAT)'
,acm.Amount AS 'Invoice Line Original Cost (Gross)' --AccCrMaster.Amount AS 'Invoice Line Original Cost (Gross)'
,aag.CurrencyCode AS 'Invoice Line Enterprise Currency' --Agency.CurrencyCode AS 'Invoice Line Enterprise Currency'
,aalc.ExchangeRate AS 'Invoice Line Exchange Rate Used' --AccAllCurrency.ExchangeRate AS 'Invoice Line Exchange Rate Used'
--,((acm.Amount - avm.Amount) / (aalc.ExchangeRate)) AS 'Invoice Line Enterprise Currency Cost (Net)' --,[Invoice Line Original Cost (Net)/AccAllCurrency.ExchangeRate ] AS 'Invoice Line Enterprise Currency Cost (Net)'
--,(avm.Amount/aalc.ExchangeRate) AS 'Invoice Line Enterprise Currency Cost (VAT)' --,[Invoice Line Original Cost (VAT)/AccAllCurrency.ExchangeRate ] AS 'Invoice Line Enterprise Currency Cost (VAT)'
,(acm.Amount/aalc.ExchangeRate) AS 'Invoice Line Enterprise Currency Cost (Gross)' --,[Invoice Line Original Cost (Gross)/AccAllCurrency.ExchangeRate]  AS 'Invoice Line Enterprise Currency Cost (Gross)'
,aim.AccountCode AS 'Local GL Account Code' --,[AccIncMaster.AccountCode (Unit = S, Ledger = E) via left outer join AccCrMaster using UniqueID] AS 'Local GL Account Code'
,aat.AccountName AS 'Local GL Account Description' --,[AccAccount.AccountName (Unit = S, ) to AccincMaster link via Unit, Ledger and AccountCode] AS 'Local GL Account Description'
,apo.OfficeCode AS 'Cost Centre Code' --AccPrdOffice.OfficeCode AS 'Cost Centre Code'
,apo.OfficeName AS 'Cost Centre Name' --AccPrdOffice.OfficeName AS 'Cost Centre Name'
,acm.OrderNumber AS 'PO Number' --AccMaster.OrderNumber AS 'PO Number'
,acm.OrderDate AS 'PO Date' --AccMaster.OrderDate AS 'PO Date'
,att.TranTypeName AS 'Client Billable/Non Billable' -- AccTranType.TypeName AS 'Client Billable/Non Billable'
,aan.Narrative AS 'Entry Text/Narration' --AccAllNarative.Narative AS 'Entry Text/Narration'
,acp.PaymentNumber AS 'Document Number/Payment Reference' --AccCrMaster.PaymentNumber AS 'Document Number/Payment Reference'
,'X'  AS 'EOL Indicator'
--,acm.UniqueID
,acm.MonthOfActivity
FROM AccountA1..AccCrMaster acm
LEFT JOIN AccountA1..AccAccountCreditor aac ON acm.Creditor = aac.Creditor
LEFT JOIN AccountA1..AccVATMaster avm ON acm.UniqueID = avm.UniqueID --AND Agency?
LEFT JOIN AccountA1..AccAgency aag ON acm.Agency = aag.Agency
LEFT JOIN AccountA1..AccAllCurrency aalc ON aag.CurrencyCode = aalc.CurrencyCode
LEFT JOIN AccountA1..AccPrdOffice apo ON acm.OfficeCode = apo.OfficeCode
LEFT JOIN ReportingA1..AccTranType att ON acm.TransactionType = att.TranTypeNo
LEFT JOIN AccountA1..AccAllNarrative aan ON acm.UniqueID = aan.UniqueID --AND Agency?
LEFT OUTER JOIN AccountA1..AccIncMaster aim ON acm.UniqueID = aim.UniqueID --AND Agency? --AccIncMaster.AccountCode (Unit = S, Ledger = E) via left outer join AccCrMaster using UniqueID [{left outer replaced with left join }
LEFT JOIN AccountA1..AccAccount aat ON aim.Unit = aat.Unit AND aim.[Ledger] = aat.[Ledger] AND aim.[AccountCode] = aat.[AccountCode]  --AccAccount.AccountName (Unit = S, ) to AccincMaster link via Unit, Ledger and AccountCode
LEFT JOIN AccountA1..AccCrPayment acp ON acm.UniqueID = acp.UniqueID --AND Agency? added to get Payment number

WHERE  acm.MonthOfActivity BETWEEN @MonthOfActivityStart AND @MonthOfActivityEnd --acm.ActDatetime > '2022-01-01 00:00:00'
)
GO
/****** Object:  UserDefinedFunction [dbo].[ur_Bravo_Data_Extract_Invoice_Test]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:		Nathan Pennington
-- Create date: 2022-06-07
-- Description:	[POC] Bravo Data Extract: Q4 2021 GroupM UK -  ur_Bravo_Data_Extract_Invoice_Test


--The EDG (Enterprise Data Group) collects supplier spend data from the Accounts Payable systems across the WPP Group. 
--The data is aggregated together and available to view in a third party platform known as Bravo (Jaggaer). 
--The data is also used to support wider business initiatives such as the Procurement Savings Targets, Project Rubicon and Quantum. 
--For more information about this please contact procurementsystems@wpp.com
-- =============================================
CREATE FUNCTION [dbo].[ur_Bravo_Data_Extract_Invoice_Test]
(	
	
	
	@MonthOfActivityStart datetime
	,@MonthOfActivityEnd datetime

)
RETURNS TABLE 
AS
RETURN 
(
	
SELECT
GETDATE() AS 'Extract Date'
,'Mediaocean' AS 'Source System'
,'A1'  AS 'Source System Company Code'
,acm.InvoiceNumber AS 'Transaction Reference Number' -- aim.TransactionReference AS 'Transaction Reference Number' --AccCrMaster.TransactionReference AS 'Transaction Reference Number' {TransactionReference does not exist in AccCrMaster replaced with AccIncMaster}
,acm.Creditor AS 'Supplier Code' --AccCrMaster.Account AS 'Supplier Code' Account field does not exist may need master Supplier at some point bu using Creditor id for now
,acm.InvoiceNumber AS 'Invoice Number' --AccCrMaster.InvoiceNumber AS 'Invoice Number'
--,[Set by defualt. Sample: 1	The value is incriminated if there are several invoices for the booking.] AS 'Invoice Line Number'
,acm.InvoiceDate AS 'Invoice Date' --AccCrMaster.InvoiceDate AS 'Invoice Date'
,acm.InvoiceReceivedDate AS 'Invoice Received Date' --AccCrMaster.InvoiceRecievedDate AS 'Invoice Received Date'
,acm.AddedDate AS 'Invoice Posting Date' --AccCrMaster.AddedDate AS 'Invoice Posting Date'
,acm.UsedDate AS 'Invoice Payment Date' --AccCrMaster.UsedDate AS 'Invoice Payment Date'
,acm.DueDate AS 'Invoice Due Date' --AccCrMaster.InvoiceDueDate AS 'Invoice Due Date' replace with dueDate as invoiceDueDate does not exist
,aac.DueDateFormula AS 'Invoice Payment Term Code' --AccountCreditor.DueDateFormula AS 'Invoice Payment Term Code'
,acm.CurrencyCode AS 'Invoice Line Original Currency' --AccCrMaster.CurrencyCode AS 'Invoice Line Original Currency'
,acm.Amount - avm.Amount AS 'Invoice Line Original Cost (Net)' --AccCrMaster.Amount - AccVATMaster.Amount AS 'Invoice Line Original Cost (Net)'
,avm.Amount AS 'Invoice Line Original Cost (VAT)' --AccVATMaster.Amount AS 'Invoice Line Original Cost (VAT)'
,acm.Amount AS 'Invoice Line Original Cost (Gross)' --AccCrMaster.Amount AS 'Invoice Line Original Cost (Gross)'
,aag.CurrencyCode AS 'Invoice Line Enterprise Currency' --Agency.CurrencyCode AS 'Invoice Line Enterprise Currency'
,aalc.ExchangeRate AS 'Invoice Line Exchange Rate Used' --AccAllCurrency.ExchangeRate AS 'Invoice Line Exchange Rate Used'
,((acm.Amount - avm.Amount) / (aalc.ExchangeRate)) AS 'Invoice Line Enterprise Currency Cost (Net)' --,[Invoice Line Original Cost (Net)/AccAllCurrency.ExchangeRate ] AS 'Invoice Line Enterprise Currency Cost (Net)'
,(avm.Amount/aalc.ExchangeRate) AS 'Invoice Line Enterprise Currency Cost (VAT)' --,[Invoice Line Original Cost (VAT)/AccAllCurrency.ExchangeRate ] AS 'Invoice Line Enterprise Currency Cost (VAT)'
,(acm.Amount/aalc.ExchangeRate) AS 'Invoice Line Enterprise Currency Cost (Gross)' --,[Invoice Line Original Cost (Gross)/AccAllCurrency.ExchangeRate]  AS 'Invoice Line Enterprise Currency Cost (Gross)'
,aim.AccountCode AS 'Local GL Account Code' --,[AccIncMaster.AccountCode (Unit = S, Ledger = E) via left outer join AccCrMaster using UniqueID] AS 'Local GL Account Code'
,aat.AccountName AS 'Local GL Account Description' --,[AccAccount.AccountName (Unit = S, ) to AccincMaster link via Unit, Ledger and AccountCode] AS 'Local GL Account Description'
,apo.OfficeCode AS 'Cost Centre Code' --AccPrdOffice.OfficeCode AS 'Cost Centre Code'
,apo.OfficeName AS 'Cost Centre Name' --AccPrdOffice.OfficeName AS 'Cost Centre Name'
,acm.OrderNumber AS 'PO Number' --AccMaster.OrderNumber AS 'PO Number'
,acm.OrderDate AS 'PO Date' --AccMaster.OrderDate AS 'PO Date'
,att.TranTypeName AS 'Client Billable/Non Billable' -- AccTranType.TypeName AS 'Client Billable/Non Billable'
,aan.Narrative AS 'Entry Text/Narration' --AccAllNarative.Narative AS 'Entry Text/Narration'
,acp.PaymentNumber AS 'Document Number/Payment Reference' --AccCrMaster.PaymentNumber AS 'Document Number/Payment Reference'
,'X'  AS 'EOL Indicator'
--,acm.UniqueID
,acm.MonthOfActivity
FROM AccountA1..AccCrMaster acm
LEFT JOIN AccountA1..AccAccountCreditor aac ON acm.Creditor = aac.Creditor
LEFT JOIN AccountA1..AccVATMaster avm ON acm.UniqueID = avm.UniqueID --AND Agency?
LEFT JOIN AccountA1..AccAgency aag ON acm.Agency = aag.Agency
LEFT JOIN AccountA1..AccAllCurrency aalc ON aag.CurrencyCode = aalc.CurrencyCode
LEFT JOIN AccountA1..AccPrdOffice apo ON acm.OfficeCode = apo.OfficeCode
LEFT JOIN ReportingA1..AccTranType att ON acm.TransactionType = att.TranTypeNo
LEFT JOIN AccountA1..AccAllNarrative aan ON acm.UniqueID = aan.UniqueID --AND Agency?
LEFT OUTER JOIN AccountA1..AccIncMaster aim ON acm.UniqueID = aim.UniqueID --AND Agency? --AccIncMaster.AccountCode (Unit = S, Ledger = E) via left outer join AccCrMaster using UniqueID [{left outer replaced with left join }
LEFT JOIN AccountA1..AccAccount aat ON aim.Unit = aat.Unit AND aim.[Ledger] = aat.[Ledger] AND aim.[AccountCode] = aat.[AccountCode]  --AccAccount.AccountName (Unit = S, ) to AccincMaster link via Unit, Ledger and AccountCode
LEFT JOIN AccountA1..AccCrPayment acp ON acm.UniqueID = acp.UniqueID --AND Agency? added to get Payment number

WHERE  acm.MonthOfActivity BETWEEN @MonthOfActivityStart AND @MonthOfActivityEnd --acm.ActDatetime > '2022-01-01 00:00:00'
)
GO
/****** Object:  UserDefinedFunction [dbo].[ur_Bravo_Data_Extract_Payment]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- =============================================
-- Author:		Nathan Pennington
-- Create date: 2022-06-07
-- Description:	[POC] Bravo Data Extract: Q4 2021 GroupM UK -  ur_Bravo_Data_Extract_Payment_Test


--The EDG (Enterprise Data Group) collects supplier spend data from the Accounts Payable systems across the WPP Group. 
--The data is aggregated together and available to view in a third party platform known as Bravo (Jaggaer). 
--The data is also used to support wider business initiatives such as the Procurement Savings Targets, Project Rubicon and Quantum. 
--For more information about this please contact procurementsystems@wpp.com

-- =============================================
CREATE FUNCTION [dbo].[ur_Bravo_Data_Extract_Payment]
(	
	
	
	@MonthOfActivity datetime
	
)
RETURNS TABLE 
AS
RETURN 
(
	
SELECT
GETDATE() AS 'Extract Date' -- Date Stamp of Extract
,'Mediaocean' AS 'Source System' --Default value: Mediaocean
,'A1' AS 'Source System Company Code' --Defualt value: A1
,acm.Creditor AS 'Supplier Code' --AccCrMaster.Account --account not available used creditor for now
,apo.OfficeCode AS 'Cost Centre Code' --AccPrdOffice.OfficeCode
,apo.OfficeName AS 'Cost Centre Name' --AccPrdOffice.OfficeName
,acm.CurrencyCode AS 'Original Currency' --AccCrMaster.CurcencyCode
,(acm.Amount - avm.Amount) AS 'Original Currency Amount Paid (Net)' --AccCrMaster.Amount - AccVATMaster.Amount
,avm.Amount AS 'Original Currency Amount Paid (VAT)' --AccVATMaster.Amount
,acm.Amount AS 'Original Currency Amount Paid (Gross)' --AccCrMaster.Amount
,'GBP' AS 'Enterprise Currency' --Default value: GBP
,aalc.Amount AS 'Enterprise Currency Exchange Rate' --AccAllCurrency.Amount
,(acm.Amount - avm.Amount)/aalc.ExchangeRate AS 'Enterprise Currency Amount Paid (Net)' --Invoice Line Original Cost (Net)/AccAllCurrency.ExchangeRate 
,avm.Amount/aalc.ExchangeRate AS 'Enterprise Currency Amount Paid (VAT)' --Invoice Line Original Cost (VAT)/AccAllCurrency.ExchangeRate 
,acm.Amount/aalc.ExchangeRate AS 'Enterprise Currency Amount Paid (Gross)' --Invoice Line Original Cost (Gross)/AccAllCurrency.ExchangeRate 
,acp.PaymentNumber AS 'Document Number / Payment Reference' --AccCrPayment.PaymentNumber
,acm.InvoiceNumber AS 'Invoice Transaction Reference Number' --AccCrMaster.InvoiceNumber
,acm.InvoiceDate AS 'Invoice Date' --AccCrMaster.InvoiceDate
,acm.AddedDate AS 'Invoice Posting Date' --AccCrMaster.AddedDate
,acm.DueDate AS 'Invoice Due Date' --AccCrMaster.InvoiceDueDate
,acm.UsedDate AS 'Payment Posting Date' --AccCrMaster.UsedDate
,acp.PaymentDate AS 'Payment Date' --AccCrPayment.PaymentDate
,aac.DueDateFormula AS 'Invoice Payment Term Code' --AccountCreditor.DueDateFormula
,acm.InternalReference AS 'Invoice Number' --AccCrMaster.InternalReference
,acm.OrderNumber AS 'PO Number' --AccMaster.OrderNumber
,aan.Narrative AS 'Description' --LEFT OUTER JON AccAllNarrative.Narrative
,att.TranTypeName AS 'Client Billable/Non Billable' --TransactionType.TrancType (1 or 21)

,CASE WHEN aac.isCheque = 1 THEN 'isCheque'
WHEN aac.isManualCheque = 1 THEN 'isManualCheque'
WHEN aac.isPayment = 1 THEN 'isPayment'
WHEN aac.isBacs = 1 THEN 'isBacs'
ELSE NULL END
AS 'Payment Type' --AccAccountCreditor (check fields: isCheque, isManualCheque, isPayment, isBacs)
,'X' AS 'EOL'
FROM AccountA1..AccCrMaster acm
LEFT JOIN AccountA1..AccAccountCreditor aac ON acm.Creditor = aac.Creditor
LEFT JOIN AccountA1..AccIncMaster aim ON acm.UniqueID = aim.UniqueID --AND Agency? 
LEFT JOIN AccountA1..AccAccount aat ON aim.Unit = aat.Unit AND aim.[Ledger] = aat.[Ledger] AND aim.[AccountCode] = aat.[AccountCode]
LEFT JOIN AccountA1..AccPrdOffice apo ON acm.OfficeCode = apo.OfficeCode
LEFT JOIN AccountA1..AccVATMaster avm ON acm.UniqueID = avm.UniqueID --AND Agency?
LEFT JOIN AccountA1..AccCrPayment acp ON acm.UniqueID = acp.UniqueID --AND Agency? added to get Payment number
LEFT JOIN AccountA1..AccAllNarrative aan ON acm.UniqueID = aan.UniqueID --AND Agency?
LEFT JOIN AccountA1..AccAgency aag ON acm.Agency = aag.Agency
LEFT JOIN AccountA1..AccAllCurrency aalc ON aag.CurrencyCode = aalc.CurrencyCode
LEFT JOIN ReportingA1..AccTranType att ON acm.TransactionType = att.TranTypeNo


WHERE  acm.MonthOfActivity = @MonthOfActivity  --acm.ActDatetime > '2022-01-01 00:00:00'
)
GO
/****** Object:  UserDefinedFunction [dbo].[ur_Bravo_Data_Extract_Payment_2022_08_17]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- =============================================
-- Author:		Nathan Pennington
-- Create date: 2022-06-07
-- Description:	[POC] Bravo Data Extract: Q4 2021 GroupM UK -  ur_Bravo_Data_Extract_Payment_2022_08_17


--The EDG (Enterprise Data Group) collects supplier spend data from the Accounts Payable systems across the WPP Group. 
--The data is aggregated together and available to view in a third party platform known as Bravo (Jaggaer). 
--The data is also used to support wider business initiatives such as the Procurement Savings Targets, Project Rubicon and Quantum. 
--For more information about this please contact procurementsystems@wpp.com

-- =============================================
CREATE FUNCTION [dbo].[ur_Bravo_Data_Extract_Payment_2022_08_17]
(	
	
	
	@MonthOfActivityStart datetime
	,@MonthOfActivityEnd datetime
)
RETURNS TABLE 
AS
RETURN 
(
	
SELECT
GETDATE() AS 'Extract Date' -- Date Stamp of Extract
,'Mediaocean' AS 'Source System' --Default value: Mediaocean
,'A1' AS 'Source System Company Code' --Defualt value: A1
,acm.Creditor AS 'Supplier Code' --AccCrMaster.Account --account not available used creditor for now
,apo.OfficeCode AS 'Cost Centre Code' --AccPrdOffice.OfficeCode
,apo.OfficeName AS 'Cost Centre Name' --AccPrdOffice.OfficeName
,acm.CurrencyCode AS 'Original Currency' --AccCrMaster.CurcencyCode
--,(acm.Amount - avm.Amount) AS 'Original Currency Amount Paid (Net)' --AccCrMaster.Amount - AccVATMaster.Amount
--,avm.Amount AS 'Original Currency Amount Paid (VAT)' --AccVATMaster.Amount
,acm.Amount AS 'Original Currency Amount Paid (Gross)' --AccCrMaster.Amount
,'GBP' AS 'Enterprise Currency' --Default value: GBP
,aalc.Amount AS 'Enterprise Currency Exchange Rate' --AccAllCurrency.Amount
--,(acm.Amount - avm.Amount)/aalc.ExchangeRate AS 'Enterprise Currency Amount Paid (Net)' --Invoice Line Original Cost (Net)/AccAllCurrency.ExchangeRate 
--,avm.Amount/aalc.ExchangeRate AS 'Enterprise Currency Amount Paid (VAT)' --Invoice Line Original Cost (VAT)/AccAllCurrency.ExchangeRate 
,acm.Amount/aalc.ExchangeRate AS 'Enterprise Currency Amount Paid (Gross)' --Invoice Line Original Cost (Gross)/AccAllCurrency.ExchangeRate 
,acp.PaymentNumber AS 'Document Number / Payment Reference' --AccCrPayment.PaymentNumber
,acm.InvoiceNumber AS 'Invoice Transaction Reference Number' --AccCrMaster.InvoiceNumber
,acm.InvoiceDate AS 'Invoice Date' --AccCrMaster.InvoiceDate
,acm.AddedDate AS 'Invoice Posting Date' --AccCrMaster.AddedDate
,acm.DueDate AS 'Invoice Due Date' --AccCrMaster.InvoiceDueDate
,acm.UsedDate AS 'Payment Posting Date' --AccCrMaster.UsedDate
,acp.PaymentDate AS 'Payment Date' --AccCrPayment.PaymentDate
,aac.DueDateFormula AS 'Invoice Payment Term Code' --AccountCreditor.DueDateFormula
,acm.InternalReference AS 'Invoice Number' --AccCrMaster.InternalReference
,acm.OrderNumber AS 'PO Number' --AccMaster.OrderNumber
,aan.Narrative AS 'Description' --LEFT OUTER JON AccAllNarrative.Narrative
,att.TranTypeName AS 'Client Billable/Non Billable' --TransactionType.TrancType (1 or 21)

,CASE WHEN aac.isCheque = 1 THEN 'isCheque'
WHEN aac.isManualCheque = 1 THEN 'isManualCheque'
WHEN aac.isPayment = 1 THEN 'isPayment'
WHEN aac.isBacs = 1 THEN 'isBacs'
ELSE NULL END
AS 'Payment Type' --AccAccountCreditor (check fields: isCheque, isManualCheque, isPayment, isBacs)
,'X' AS 'EOL'
FROM AccountA1..AccCrMaster acm
LEFT JOIN AccountA1..AccAccountCreditor aac ON acm.Creditor = aac.Creditor
LEFT JOIN AccountA1..AccIncMaster aim ON acm.UniqueID = aim.UniqueID --AND Agency? 
LEFT JOIN AccountA1..AccAccount aat ON aim.Unit = aat.Unit AND aim.[Ledger] = aat.[Ledger] AND aim.[AccountCode] = aat.[AccountCode]
LEFT JOIN AccountA1..AccPrdOffice apo ON acm.OfficeCode = apo.OfficeCode
LEFT JOIN AccountA1..AccVATMaster avm ON acm.UniqueID = avm.UniqueID --AND Agency?
LEFT JOIN AccountA1..AccCrPayment acp ON acm.UniqueID = acp.UniqueID --AND Agency? added to get Payment number
LEFT JOIN AccountA1..AccAllNarrative aan ON acm.UniqueID = aan.UniqueID --AND Agency?
LEFT JOIN AccountA1..AccAgency aag ON acm.Agency = aag.Agency
LEFT JOIN AccountA1..AccAllCurrency aalc ON aag.CurrencyCode = aalc.CurrencyCode
LEFT JOIN ReportingA1..AccTranType att ON acm.TransactionType = att.TranTypeNo


WHERE  acm.MonthOfActivity BETWEEN @MonthOfActivityStart AND @MonthOfActivityEnd  --acm.ActDatetime > '2022-01-01 00:00:00'
)
GO
/****** Object:  UserDefinedFunction [dbo].[ur_Bravo_Data_Extract_Payment_Test]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:		Nathan Pennington
-- Create date: 2022-06-07
-- Description:	[POC] Bravo Data Extract: Q4 2021 GroupM UK -  ur_Bravo_Data_Extract_Payment_Test


--The EDG (Enterprise Data Group) collects supplier spend data from the Accounts Payable systems across the WPP Group. 
--The data is aggregated together and available to view in a third party platform known as Bravo (Jaggaer). 
--The data is also used to support wider business initiatives such as the Procurement Savings Targets, Project Rubicon and Quantum. 
--For more information about this please contact procurementsystems@wpp.com

-- =============================================
CREATE FUNCTION [dbo].[ur_Bravo_Data_Extract_Payment_Test]
(	
	
	
	@MonthOfActivityStart datetime
	,@MonthOfActivityEnd datetime
)
RETURNS TABLE 
AS
RETURN 
(
	
SELECT
GETDATE() AS 'Extract Date' -- Date Stamp of Extract
,'Mediaocean' AS 'Source System' --Default value: Mediaocean
,'A1' AS 'Source System Company Code' --Defualt value: A1
,acm.Creditor AS 'Supplier Code' --AccCrMaster.Account --account not available used creditor for now
,apo.OfficeCode AS 'Cost Centre Code' --AccPrdOffice.OfficeCode
,apo.OfficeName AS 'Cost Centre Name' --AccPrdOffice.OfficeName
,acm.CurrencyCode AS 'Original Currency' --AccCrMaster.CurcencyCode
,(acm.Amount - avm.Amount) AS 'Original Currency Amount Paid (Net)' --AccCrMaster.Amount - AccVATMaster.Amount
,avm.Amount AS 'Original Currency Amount Paid (VAT)' --AccVATMaster.Amount
,acm.Amount AS 'Original Currency Amount Paid (Gross)' --AccCrMaster.Amount
,'GBP' AS 'Enterprise Currency' --Default value: GBP
,aalc.Amount AS 'Enterprise Currency Exchange Rate' --AccAllCurrency.Amount
,(acm.Amount - avm.Amount)/aalc.ExchangeRate AS 'Enterprise Currency Amount Paid (Net)' --Invoice Line Original Cost (Net)/AccAllCurrency.ExchangeRate 
,avm.Amount/aalc.ExchangeRate AS 'Enterprise Currency Amount Paid (VAT)' --Invoice Line Original Cost (VAT)/AccAllCurrency.ExchangeRate 
,acm.Amount/aalc.ExchangeRate AS 'Enterprise Currency Amount Paid (Gross)' --Invoice Line Original Cost (Gross)/AccAllCurrency.ExchangeRate 
,acp.PaymentNumber AS 'Document Number / Payment Reference' --AccCrPayment.PaymentNumber
,acm.InvoiceNumber AS 'Invoice Transaction Reference Number' --AccCrMaster.InvoiceNumber
,acm.InvoiceDate AS 'Invoice Date' --AccCrMaster.InvoiceDate
,acm.AddedDate AS 'Invoice Posting Date' --AccCrMaster.AddedDate
,acm.DueDate AS 'Invoice Due Date' --AccCrMaster.InvoiceDueDate
,acm.UsedDate AS 'Payment Posting Date' --AccCrMaster.UsedDate
,acp.PaymentDate AS 'Payment Date' --AccCrPayment.PaymentDate
,aac.DueDateFormula AS 'Invoice Payment Term Code' --AccountCreditor.DueDateFormula
,acm.InternalReference AS 'Invoice Number' --AccCrMaster.InternalReference
,acm.OrderNumber AS 'PO Number' --AccMaster.OrderNumber
,aan.Narrative AS 'Description' --LEFT OUTER JON AccAllNarrative.Narrative
,att.TranTypeName AS 'Client Billable/Non Billable' --TransactionType.TrancType (1 or 21)

,CASE WHEN aac.isCheque = 1 THEN 'isCheque'
WHEN aac.isManualCheque = 1 THEN 'isManualCheque'
WHEN aac.isPayment = 1 THEN 'isPayment'
WHEN aac.isBacs = 1 THEN 'isBacs'
ELSE NULL END
AS 'Payment Type' --AccAccountCreditor (check fields: isCheque, isManualCheque, isPayment, isBacs)
,'X' AS 'EOL'
FROM AccountA1..AccCrMaster acm
LEFT JOIN AccountA1..AccAccountCreditor aac ON acm.Creditor = aac.Creditor
LEFT JOIN AccountA1..AccIncMaster aim ON acm.UniqueID = aim.UniqueID --AND Agency? 
LEFT JOIN AccountA1..AccAccount aat ON aim.Unit = aat.Unit AND aim.[Ledger] = aat.[Ledger] AND aim.[AccountCode] = aat.[AccountCode]
LEFT JOIN AccountA1..AccPrdOffice apo ON acm.OfficeCode = apo.OfficeCode
LEFT JOIN AccountA1..AccVATMaster avm ON acm.UniqueID = avm.UniqueID --AND Agency?
LEFT JOIN AccountA1..AccCrPayment acp ON acm.UniqueID = acp.UniqueID --AND Agency? added to get Payment number
LEFT JOIN AccountA1..AccAllNarrative aan ON acm.UniqueID = aan.UniqueID --AND Agency?
LEFT JOIN AccountA1..AccAgency aag ON acm.Agency = aag.Agency
LEFT JOIN AccountA1..AccAllCurrency aalc ON aag.CurrencyCode = aalc.CurrencyCode
LEFT JOIN ReportingA1..AccTranType att ON acm.TransactionType = att.TranTypeNo


WHERE  acm.MonthOfActivity BETWEEN @MonthOfActivityStart AND @MonthOfActivityEnd  --acm.ActDatetime > '2022-01-01 00:00:00'
)
GO
/****** Object:  UserDefinedFunction [dbo].[ur_Bravo_Data_Extract_Supplier]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:		Nathan Pennington
-- Create date: 2022-06-07
-- Description:	[POC] Bravo Data Extract: Q4 2021 GroupM UK -  ur_Bravo_Data_Extract_Supplier_Test


--The EDG (Enterprise Data Group) collects supplier spend data from the Accounts Payable systems across the WPP Group. 
--The data is aggregated together and available to view in a third party platform known as Bravo (Jaggaer). 
--The data is also used to support wider business initiatives such as the Procurement Savings Targets, Project Rubicon and Quantum. 
--For more information about this please contact procurementsystems@wpp.com

-- =============================================
CREATE FUNCTION [dbo].[ur_Bravo_Data_Extract_Supplier]
(	
	
	
	@MonthOfActivity datetime
	
)
RETURNS TABLE 
AS
RETURN 
(
	-- Add the SELECT statement with parameter references here
SELECT
GETDATE() AS 'Extract Date' -- Date of the report running
,'Mediacom' AS 'Source System' -- Default value: Mediaocean
,'A1' AS 'Source System Company Code' -- Defualt value: A1
,acm.Creditor AS 'Supplier Code' -- AccCrMaster.Account   {acm.Account does not exist}
,aat.AccountName AS 'Supplier Name' --AccAccount.AccountName (via a query on SV and SX)
,aat.Address3 AS 'City' --AccAccount.Address3
,aat.Address4 AS 'ZIP/Post Code' --AccAccount.Address4
,aac.Country3charISOCode AS 'Country' --AccAcountCreditor.Country3charISOCode (show full name of the country, see tab Countries)
,aac.DueDateFormula AS 'Payment Terms Code' --AccAccountCreditor.DueDateFormula
,aac.VATRegNumber AS 'Tax number' --AccAccountCreditor.VATRegNumber
,aat.IsLocked AS 'Supplier Status' --AccAccount.isLocked
,CASE WHEN aac.isCheque = 1 THEN 'isCheque'
WHEN aac.isManualCheque = 1 THEN 'isManualCheque'
WHEN aac.isPayment = 1 THEN 'isPayment'
WHEN aac.isBacs = 1 THEN 'isBacs'
ELSE NULL END
AS 'Payment Method' --AccAccountCreditor (check fields: isCheque, isManualCheque, isPayment, isBacs)
--,aac.isCheque
--,aac.isManualCheque
--,aac.isPayment
--,aac.isBacs
,aac.IsSundry AS 'One Off Supplier flag' --AccAccoutCreditor.IsSundry
,'X' AS 'EOL Indicator' --Defualt value: X
FROM AccountA1..AccCrMaster acm
LEFT JOIN AccountA1..AccAccountCreditor aac ON acm.Creditor = aac.Creditor
LEFT JOIN AccountA1..AccIncMaster aim ON acm.UniqueID = aim.UniqueID --AND Agency? 
LEFT JOIN AccountA1..AccAccount aat ON aim.Unit = aat.Unit AND aim.[Ledger] = aat.[Ledger] AND aim.[AccountCode] = aat.[AccountCode]

WHERE  acm.MonthOfActivity = @MonthOfActivity  --acm.ActDatetime > '2022-01-01 00:00:00'
)
GO
/****** Object:  UserDefinedFunction [dbo].[ur_Bravo_Data_Extract_Supplier_2022_08_17]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:		Nathan Pennington
-- Create date: 2022-06-07
-- Description:	[POC] Bravo Data Extract: Q4 2021 GroupM UK -  ur_Bravo_Data_Extract_Supplier_2022_08_17


--The EDG (Enterprise Data Group) collects supplier spend data from the Accounts Payable systems across the WPP Group. 
--The data is aggregated together and available to view in a third party platform known as Bravo (Jaggaer). 
--The data is also used to support wider business initiatives such as the Procurement Savings Targets, Project Rubicon and Quantum. 
--For more information about this please contact procurementsystems@wpp.com

-- =============================================
CREATE FUNCTION [dbo].[ur_Bravo_Data_Extract_Supplier_2022_08_17]
(	
	
	
	@MonthOfActivityStart datetime
	,@MonthOfActivityEnd datetime
)
RETURNS TABLE 
AS
RETURN 
(
	-- Add the SELECT statement with parameter references here
SELECT
GETDATE() AS 'Extract Date' -- Date of the report running
,'Mediacom' AS 'Source System' -- Default value: Mediaocean
,'A1' AS 'Source System Company Code' -- Defualt value: A1
,acm.Creditor AS 'Supplier Code' -- AccCrMaster.Account   {acm.Account does not exist}
,aat.AccountName AS 'Supplier Name' --AccAccount.AccountName (via a query on SV and SX)
--,aat.Address3 AS 'City' --AccAccount.Address3
--,aat.Address4 AS 'ZIP/Post Code' --AccAccount.Address4
,aac.Country3charISOCode AS 'Country' --AccAcountCreditor.Country3charISOCode (show full name of the country, see tab Countries)
,aac.DueDateFormula AS 'Payment Terms Code' --AccAccountCreditor.DueDateFormula
,aac.VATRegNumber AS 'Tax number' --AccAccountCreditor.VATRegNumber
--,aat.IsLocked AS 'Supplier Status' --AccAccount.isLocked
,CASE WHEN aac.isCheque = 1 THEN 'isCheque'
WHEN aac.isManualCheque = 1 THEN 'isManualCheque'
WHEN aac.isPayment = 1 THEN 'isPayment'
WHEN aac.isBacs = 1 THEN 'isBacs'
ELSE NULL END
AS 'Payment Method' --AccAccountCreditor (check fields: isCheque, isManualCheque, isPayment, isBacs)
--,aac.isCheque
--,aac.isManualCheque
--,aac.isPayment
--,aac.isBacs
--,aac.IsSundry AS 'One Off Supplier flag' --AccAccoutCreditor.IsSundry
,'X' AS 'EOL Indicator' --Defualt value: X
FROM AccountA1..AccCrMaster acm
LEFT JOIN AccountA1..AccAccountCreditor aac ON acm.Creditor = aac.Creditor
LEFT JOIN AccountA1..AccIncMaster aim ON acm.UniqueID = aim.UniqueID --AND Agency? 
LEFT JOIN AccountA1..AccAccount aat ON aim.Unit = aat.Unit AND aim.[Ledger] = aat.[Ledger] AND aim.[AccountCode] = aat.[AccountCode]

WHERE  acm.MonthOfActivity BETWEEN @MonthOfActivityStart AND @MonthOfActivityEnd  --acm.ActDatetime > '2022-01-01 00:00:00'
)
GO
/****** Object:  UserDefinedFunction [dbo].[ur_Bravo_Data_Extract_Supplier_Test]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		Nathan Pennington
-- Create date: 2022-06-07
-- Description:	[POC] Bravo Data Extract: Q4 2021 GroupM UK -  ur_Bravo_Data_Extract_Supplier_Test


--The EDG (Enterprise Data Group) collects supplier spend data from the Accounts Payable systems across the WPP Group. 
--The data is aggregated together and available to view in a third party platform known as Bravo (Jaggaer). 
--The data is also used to support wider business initiatives such as the Procurement Savings Targets, Project Rubicon and Quantum. 
--For more information about this please contact procurementsystems@wpp.com

-- =============================================
CREATE FUNCTION [dbo].[ur_Bravo_Data_Extract_Supplier_Test]
(	
	
	
	@MonthOfActivityStart datetime
	,@MonthOfActivityEnd datetime
)
RETURNS TABLE 
AS
RETURN 
(
	-- Add the SELECT statement with parameter references here
SELECT
GETDATE() AS 'Extract Date' -- Date of the report running
,'Mediacom' AS 'Source System' -- Default value: Mediaocean
,'A1' AS 'Source System Company Code' -- Defualt value: A1
,acm.Creditor AS 'Supplier Code' -- AccCrMaster.Account   {acm.Account does not exist}
,aat.AccountName AS 'Supplier Name' --AccAccount.AccountName (via a query on SV and SX)
,aat.Address3 AS 'City' --AccAccount.Address3
,aat.Address4 AS 'ZIP/Post Code' --AccAccount.Address4
,aac.Country3charISOCode AS 'Country' --AccAcountCreditor.Country3charISOCode (show full name of the country, see tab Countries)
,aac.DueDateFormula AS 'Payment Terms Code' --AccAccountCreditor.DueDateFormula
,aac.VATRegNumber AS 'Tax number' --AccAccountCreditor.VATRegNumber
,aat.IsLocked AS 'Supplier Status' --AccAccount.isLocked
,CASE WHEN aac.isCheque = 1 THEN 'isCheque'
WHEN aac.isManualCheque = 1 THEN 'isManualCheque'
WHEN aac.isPayment = 1 THEN 'isPayment'
WHEN aac.isBacs = 1 THEN 'isBacs'
ELSE NULL END
AS 'Payment Method' --AccAccountCreditor (check fields: isCheque, isManualCheque, isPayment, isBacs)
--,aac.isCheque
--,aac.isManualCheque
--,aac.isPayment
--,aac.isBacs
,aac.IsSundry AS 'One Off Supplier flag' --AccAccoutCreditor.IsSundry
,'X' AS 'EOL Indicator' --Defualt value: X
FROM AccountA1..AccCrMaster acm
LEFT JOIN AccountA1..AccAccountCreditor aac ON acm.Creditor = aac.Creditor
LEFT JOIN AccountA1..AccIncMaster aim ON acm.UniqueID = aim.UniqueID --AND Agency? 
LEFT JOIN AccountA1..AccAccount aat ON aim.Unit = aat.Unit AND aim.[Ledger] = aat.[Ledger] AND aim.[AccountCode] = aat.[AccountCode]

WHERE  acm.MonthOfActivity BETWEEN @MonthOfActivityStart AND @MonthOfActivityEnd  --acm.ActDatetime > '2022-01-01 00:00:00'
)
GO
/****** Object:  UserDefinedFunction [dbo].[ur_LbrTest]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE FUNCTION [dbo].[ur_LbrTest]
  (@opco int, @startdate date, @enddate date) RETURNS TABLE
AS

-- late booking report test of initial query
-- created RD 20200529
RETURN
 WITH deferred_filter_value(FilterNumber, FilterValue, FilterValueName)
AS
(
	SELECT FilterNumber, FilterValue, FilterValueName
	from MediaA1.dbo.FilterValue
	WHERE FilterNumber = 2 AND FilterValueName <> ''
)
SELECT
	ba.OperatingCompanyCode AS OpCoCode,
	oc.OperatingCompanyName,
	cl.BuyingAgencyCode AS BACode,
	ba.AgencyName AS BuyingAgencyName,
	bm.ClientCode,
	cl.ClientName,
	bm.ProductCode,
	pr.ProductName,
	bm.CampaignCode,
	ca.CampaignName,
	fv.FilterNumber,
	fv.FilterValue,
	fv.FilterValueName,
	bm.MediaCode,
	md.MediaLetter,
	md.[MediaName],
	bm.SourceSystem AS BuyingSystem,
	bu.BuyerName,
	bm.BuyerInitials,
	bu.BuyerPID,
	su.FolioCode,
	fo.FolioName,
	bm.SupplierID,
	su.SupplierName,
	bm.BookingCategoryCode AS SMBCCode,
	rtrim(bc.BookingCategoryName) AS SMBCName,
	bm.BuySerial,
	convert(date, bm.BuyDate) AS BookingDate,
	convert(date, bm.BookedDate) AS DateAdded,
	'' AS Normal_InvoicingDate,
	'' AS Added_InvoicingDate,
	'' AS Normal_DueDate,
	'' AS Added_DueDate,
	datediff(dd, BuyDate, BookedDate) AS DaysLateAdded,
	0 AS DaysLateInvoicing,
	0 AS DaysLateInterest,
	'' AS LateByInsStatus,
	'' AS LateByBilStatus,
	'' AS BookingLateStatus,
	'00' AS LateCode,
	month(BuyDate) AS BuyMonth,
	month(BookedDate) AS AddedMonth,
	0 AS InvoicingMonth,
	0.5 AS Rate,
	bm.InvoiceCode,
	convert(date, bm.InvoiceDate) AS InvoiceDate,
	bm.PreviousInvoiceDate,
	bm.PreviousInvoiceCode,
	'2000-01-01' AS FirstBilledDate,
	convert(date, bm.InvoiceDate) AS LastBilledDate,
	0.01 AS LossOfInterest,
	bm.Gross,
	bm.BillRate,
	-- IIf[Gross]=0,[Billrate],[Gross] AS £Gross,
	CASE
		WHEN bm.Gross = 0 THEN bm.BillRate
		ELSE Gross
	END AS [£Gross],
	-- IIf[Gross]=0,[Billrate],[Gross] AS LBR_Gross,
	CASE
		WHEN bm.Gross = 0 THEN bm.BillRate
		ELSE Gross
	END AS LBR_Gross,
	bm.MediaDiscount,
	bm.AgencyCommission,
	bm.BuyingAgencyCommission,
	bm.Billable,
	bm.Billed,
	bm.Billable - bm.Billed AS UnBilled,
	bm.Payable,
	bm.Paid,
	bm.Payable - bm.Paid AS UnPaid,
	bm.CurrencyCode,
	-- IIf[bm]![IsLocked]=0,'',"Yes" AS BuyLocked,
	CASE
		WHEN bm.IsLocked = 0 THEN ''
		ELSE 'Yes'
	END AS BuyLocked,
	-- IIf[IsCancelled]=0,'',"Yes" AS BuyCancelled,
	CASE
		WHEN bm.IsCancelled = 0 THEN ''
		ELSE 'Yes'
	END AS BuyCancelled,
	-- IIf[bm]![IsHeld]=0,'',"Yes" AS BuyBillingHeld,
	CASE
		WHEN bm.IsHeld = 0 THEN ''
		ELSE 'Yes'
	END AS BuyBillingHeld,
	bm.PlacementID,
	bm.JCNReference,
	bm.PurchaseOrderSerial,
	-- IIf[IsMaster]=-1,"Yes",'' AS PayOnlyBooking
	CASE
		WHEN bm.IsMaster = -1 THEN 'Yes'
		ELSE ''
	END AS PayOnlyBooking
FROM MediaA1..BuyMoney AS bm
	JOIN MediaA1..Client AS cl
		ON bm.ClientCode = cl.ClientCode
		AND bm.MediaCode = cl.MediaCode
	JOIN MediaA1..BuyingAgency AS ba
		ON cl.BuyingAgencyCode = ba.AgencyCode
	JOIN MediaA1..BookingCategory AS bc
		ON bm.BookingCategoryCode = bc.BookingCategoryCode
	JOIN MediaA1..OperatingCompany AS oc
		ON ba.OperatingCompanyCode = oc.OperatingCompanyCode
	JOIN MediaA1..Media AS md
		ON bm.MediaCode = md.MediaCode
	JOIN MediaA1..Product AS pr
		ON bm.ProductCode = pr.ProductCode
		AND bm.ClientCode = pr.ClientCode
		AND bm.MediaCode = pr.MediaCode
	JOIN MediaA1..Campaign AS ca
		ON bm.CampaignCode = ca.CampaignCode
		AND bm.ProductCode = ca.ProductCode
		AND bm.ClientCode = ca.ClientCode
		AND bm.MediaCode = ca.MediaCode
	LEFT JOIN MediaA1..Buyer AS bu
		ON bm.BuyerInitials = bu.BuyerInitials
	JOIN MediaA1..Supplier AS su
		ON bm.SupplierID = su.SupplierID
		AND bm.MediaCode = su.MediaCode
	JOIN MediaA1..Folio AS fo
		ON su.FolioCode = fo.FolioCode
		AND su.MediaCode = fo.MediaCode
	LEFT JOIN deferred_filter_value AS fv
		ON fv.FilterValue = ca.Filter2
WHERE
	bm.BookedDate BETWEEN @startdate AND @enddate
	AND ba.OperatingCompanyCode = @opco
	AND bm.IsDraft = 0
--	AND datediff(dd, BuyDate, BookedDate) >= 0
GO
/****** Object:  UserDefinedFunction [dbo].[ur_LbrTest_CredentialsTest]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[ur_LbrTest_CredentialsTest]
  (@opco int, @startdate date, @enddate date) RETURNS TABLE
AS
-- same as ur_LbrTest - just checking if Sharron Green gets a credentials option
-- late booking report test of initial query
-- created RD 20200529
RETURN
 WITH deferred_filter_value(FilterNumber, FilterValue, FilterValueName)
AS
(
	SELECT FilterNumber, FilterValue, FilterValueName
	from MediaA1.dbo.FilterValue
	WHERE FilterNumber = 2 AND FilterValueName <> ''
)
SELECT
	ba.OperatingCompanyCode AS OpCoCode,
	oc.OperatingCompanyName,
	cl.BuyingAgencyCode AS BACode,
	ba.AgencyName AS BuyingAgencyName,
	bm.ClientCode,
	cl.ClientName,
	bm.ProductCode,
	pr.ProductName,
	bm.CampaignCode,
	ca.CampaignName,
	fv.FilterNumber,
	fv.FilterValue,
	fv.FilterValueName,
	bm.MediaCode,
	md.MediaLetter,
	md.[MediaName],
	bm.SourceSystem AS BuyingSystem,
	bu.BuyerName,
	bm.BuyerInitials,
	bu.BuyerPID,
	su.FolioCode,
	fo.FolioName,
	bm.SupplierID,
	su.SupplierName,
	bm.BookingCategoryCode AS SMBCCode,
	rtrim(bc.BookingCategoryName) AS SMBCName,
	bm.BuySerial,
	convert(date, bm.BuyDate) AS BookingDate,
	convert(date, bm.BookedDate) AS DateAdded,
	'' AS Normal_InvoicingDate,
	'' AS Added_InvoicingDate,
	'' AS Normal_DueDate,
	'' AS Added_DueDate,
	datediff(dd, BuyDate, BookedDate) AS DaysLateAdded,
	0 AS DaysLateInvoicing,
	0 AS DaysLateInterest,
	'' AS LateByInsStatus,
	'' AS LateByBilStatus,
	'' AS BookingLateStatus,
	'00' AS LateCode,
	month(BuyDate) AS BuyMonth,
	month(BookedDate) AS AddedMonth,
	0 AS InvoicingMonth,
	0.5 AS Rate,
	bm.InvoiceCode,
	convert(date, bm.InvoiceDate) AS InvoiceDate,
	bm.PreviousInvoiceDate,
	bm.PreviousInvoiceCode,
	'2000-01-01' AS FirstBilledDate,
	convert(date, bm.InvoiceDate) AS LastBilledDate,
	0.01 AS LossOfInterest,
	bm.Gross,
	bm.BillRate,
	-- IIf[Gross]=0,[Billrate],[Gross] AS £Gross,
	CASE
		WHEN bm.Gross = 0 THEN bm.BillRate
		ELSE Gross
	END AS [£Gross],
	-- IIf[Gross]=0,[Billrate],[Gross] AS LBR_Gross,
	CASE
		WHEN bm.Gross = 0 THEN bm.BillRate
		ELSE Gross
	END AS LBR_Gross,
	bm.MediaDiscount,
	bm.AgencyCommission,
	bm.BuyingAgencyCommission,
	bm.Billable,
	bm.Billed,
	bm.Billable - bm.Billed AS UnBilled,
	bm.Payable,
	bm.Paid,
	bm.Payable - bm.Paid AS UnPaid,
	bm.CurrencyCode,
	-- IIf[bm]![IsLocked]=0,'',"Yes" AS BuyLocked,
	CASE
		WHEN bm.IsLocked = 0 THEN ''
		ELSE 'Yes'
	END AS BuyLocked,
	-- IIf[IsCancelled]=0,'',"Yes" AS BuyCancelled,
	CASE
		WHEN bm.IsCancelled = 0 THEN ''
		ELSE 'Yes'
	END AS BuyCancelled,
	-- IIf[bm]![IsHeld]=0,'',"Yes" AS BuyBillingHeld,
	CASE
		WHEN bm.IsHeld = 0 THEN ''
		ELSE 'Yes'
	END AS BuyBillingHeld,
	bm.PlacementID,
	bm.JCNReference,
	bm.PurchaseOrderSerial,
	-- IIf[IsMaster]=-1,"Yes",'' AS PayOnlyBooking
	CASE
		WHEN bm.IsMaster = -1 THEN 'Yes'
		ELSE ''
	END AS PayOnlyBooking
FROM MediaA1..BuyMoney AS bm
	JOIN MediaA1..Client AS cl
		ON bm.ClientCode = cl.ClientCode
		AND bm.MediaCode = cl.MediaCode
	JOIN MediaA1..BuyingAgency AS ba
		ON cl.BuyingAgencyCode = ba.AgencyCode
	JOIN MediaA1..BookingCategory AS bc
		ON bm.BookingCategoryCode = bc.BookingCategoryCode
	JOIN MediaA1..OperatingCompany AS oc
		ON ba.OperatingCompanyCode = oc.OperatingCompanyCode
	JOIN MediaA1..Media AS md
		ON bm.MediaCode = md.MediaCode
	JOIN MediaA1..Product AS pr
		ON bm.ProductCode = pr.ProductCode
		AND bm.ClientCode = pr.ClientCode
		AND bm.MediaCode = pr.MediaCode
	JOIN MediaA1..Campaign AS ca
		ON bm.CampaignCode = ca.CampaignCode
		AND bm.ProductCode = ca.ProductCode
		AND bm.ClientCode = ca.ClientCode
		AND bm.MediaCode = ca.MediaCode
	LEFT JOIN MediaA1..Buyer AS bu
		ON bm.BuyerInitials = bu.BuyerInitials
	JOIN MediaA1..Supplier AS su
		ON bm.SupplierID = su.SupplierID
		AND bm.MediaCode = su.MediaCode
	JOIN MediaA1..Folio AS fo
		ON su.FolioCode = fo.FolioCode
		AND su.MediaCode = fo.MediaCode
	LEFT JOIN deferred_filter_value AS fv
		ON fv.FilterValue = ca.Filter2
WHERE
	bm.BookedDate BETWEEN @startdate AND @enddate
	AND ba.OperatingCompanyCode = @opco
	AND bm.IsDraft = 0
--	AND datediff(dd, BuyDate, BookedDate) >= 0
GO
/****** Object:  UserDefinedFunction [dbo].[ur_NVPOTrackerReport]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[ur_NVPOTrackerReport] (
    @StartDate DATETIME,
    @EndDate DATETIME
    )
RETURNS TABLE
AS
RETURN
--WITH T1 AS (
        SELECT CONCAT (
                bm.ClientCode,
                po.[Reference]
                ) AS [Advertiser PO Ref],
            bm.BuySerial -- For Testing Purpose
            ,
            po.[Reference] AS [PO Reference],
            pol.LineReference AS [PO Line Reference],
            po.[PurchaseOrderName] AS [PO Name],
            po.[PurchaseOrderSerial] AS [Purchase OrderSerial],
            po.PrimaryClientCode AS [PO Primary Client],
            prcl.ClientShortName AS [PO Primary Client Short Name], 
            prcl.ClientName AS [PO Primary Client Long Name], 
            po.ClientContact AS [PO Client Contact],
            po.IssueDate AS [PO Issue Date],
            po.StartDate AS [PO start date],
            po.EndDate AS [PO end date],
            po.OwnerPIN AS [PO Owner],
            CASE 
                WHEN po.IsApproved = 0
                    THEN 'UnApproved' 
                ELSE 'Approved'  
                END AS [PO Status],
            oc.OperatingCompanyCode AS [Operating Company Code],
            oc.OperatingCompanyName AS [Operating Company Name],
            ba.AgencyCode AS [Bying Agency Code],
            ba.AgencyName AS [Bying Agency Name],
            cl.ClientCode AS [Client code],
            cl.ClientName AS [Client name],
            prd.ProductCode AS [Product Code],
            prd.ProductName AS [Product Name],
            camp.CampaignCode AS [Campaign Code],
            camp.CampaignName AS [Campaign Name],
            cl.BillingGroup AS [Billing Group],
            RTRIM(bcc.BookingCategoryName) AS [Booking Category Name],
            amb.InvoiceCode AS [Client Invoice Ref],
            amb.InvoiceDate AS [Client Invoice Date],
            adb.InvoiceDueDate AS [Client Invoice Due Date], 
            cl.BudgetCostFlag, -- For Testing Purpose
            po.IncludesMediaLevy, -- For Testing Purpose
            po.IncludesVAT, -- For Testing Purpose
          --  po.IncludesSurcharge, -- For Testing Purpose -- Invalid column name 'IncludesSurcharge'. ## NEED TEST
            po.[Amount] AS [PO Amount],
            CASE 
                WHEN cl.BudgetCostFlag = 'G'
                    THEN 'Gross Level'
                WHEN cl.BudgetCostFlag = 'C'
                    AND po.IncludesMediaLevy = 1
                    AND po.IncludesVAT = 1
           --         AND po.IncludesSurcharge = 1 -- Invalid column name 'IncludesSurcharge'.## NEED TEST
                    THEN 'Client VAT Levy Surcharge'
                WHEN cl.BudgetCostFlag = 'C'
                    AND po.IncludesMediaLevy = 1
                    AND po.IncludesVAT = 1
           --         AND po.IncludesSurcharge = 0 -- Invalid column name 'IncludesSurcharge'.## NEED TEST
                    THEN 'Client VAT Levy'
                WHEN cl.BudgetCostFlag = 'C'
                    AND po.IncludesMediaLevy = 0
                    AND po.IncludesVAT = 1
            --        AND po.IncludesSurcharge = 0 -- Invalid column name 'IncludesSurcharge'.## NEED TEST
                    THEN 'Client VAT'
                WHEN cl.BudgetCostFlag = 'C'
                    AND po.IncludesMediaLevy = 1
                    AND po.IncludesVAT = 0
           --         AND po.IncludesSurcharge = 0-- Invalid column name 'IncludesSurcharge'.## NEED TEST
                    THEN 'Client Levy'
                WHEN cl.BudgetCostFlag = 'C'
                    AND po.IncludesMediaLevy = 0
                    AND po.IncludesVAT = 0
            --        AND po.IncludesSurcharge = 0 -- Invalid column name 'IncludesSurcharge'.## NEED TEST
                    THEN 'Client Cost'
                END AS [PO Booked Level]
            --need to clarify does this field get us an infromation about Gross/Billable identification of PO from Chris Hardy / Mediaocean
            --PO Booking level -PO Booked Amount:
            ,
            CASE 
                WHEN cl.BudgetCostFlag = 'G'
                    THEN BM.Gross --'Gross Level'
                WHEN cl.BudgetCostFlag = 'C'
                    THEN bm.[Billable] --'Client Cost'
                END AS [PO Booked_BL]
            --PO invoicing level
            ,
            CASE 
                WHEN cl.BudgetCostFlag = 'G'
                    THEN amb.GrossBilled --'Gross Level' 
                WHEN cl.BudgetCostFlag = 'C'
                    THEN amb.BillableBilled --'Client Cost' 
                END AS [PO Booked_IL]
            --PO tracking level -- Don't know which values should be taken
            ,
            CASE 
                WHEN cl.BudgetCostFlag = 'G'
                    THEN PO.Amount --'Gross Level'
                WHEN cl.BudgetCostFlag = 'C'
                    THEN PO.Amount --'Client Cost'
                END AS [PO Booked_TL]
            --,PO Amount – PO Booked  as [PO Balance] -- Separate for 3 level of Dashboard
            --,
       --    po.ReconciledAmount AS [PO Reconciled], -- Invalid column name 'ReconciledAmount'.  ## NEED TEST
        --    po.[Amount] - po.ReconciledAmount AS [PO Reconciled Balance] -- Invalid column name 'ReconciledAmount'. ## NEED TEST
        --,[PO Booked]  - po.ReconciledAmount  as [PO Unreconciled] -- Separate for 3 level of Dashboard

        FROM MediaA1.dbo.PurchaseOrder AS po
        JOIN MediaA1.dbo.PurchaseOrderLine AS pol
            ON pol.[PurchaseOrderSerial] = po.[PurchaseOrderSerial]
        JOIN MediaA1.dbo.BuyMoney AS bm
            ON bm.[PurchaseOrderSerial] = pol.[PurchaseOrderSerial] --or bm.[PurchaseOrderLineID] = pol.[PurchaseOrderLineID] ---and po.IssueDate between @StartDate and @EndDate
        JOIN MediaA1.dbo.BookingCategory AS bcc
            ON bm.BookingCategoryCode = bcc.BookingCategoryCode
        JOIN MediaA1..Campaign camp
            ON bm.CampaignCode = camp.CampaignCode
                AND bm.MediaCode = camp.MediaCode
                AND bm.ClientCode = camp.ClientCode
                AND bm.ProductCode = camp.ProductCode
        JOIN MediaA1.dbo.Product AS prd
            ON bm.MediaCode = prd.MediaCode
                AND bm.ClientCode = prd.ClientCode
                AND bm.ProductCode = prd.ProductCode
        LEFT JOIN AccountA1.dbo.AccMedBill amb
            ON bm.BuySerial = amb.BuySerial
        JOIN AccountA1.dbo.AccDrMaster AS admst
            ON amb.InvoiceCode = admst.InvoiceNumber 
                AND amb.InvoiceDate = admst.InvoiceDate 
                AND amb.ClientCode = admst.ClientCode 
        JOIN  AccountA1.dbo.AccDrBilling  adb 
            ON admst.UniqueID = adb.UniqueID 
        JOIN MediaA1.dbo.PurchaseOrderMedia pom
            ON pom.[PurchaseOrderSerial] = po.[PurchaseOrderSerial]
        JOIN (
            SELECT pc.ClientCode,
                pc.MediaCode,
                pc.AddedDateTime,
                pc.ClientShortName, 
                pc.ClientName, 
                pc.BuyingAgencyCode,
                row_number() OVER (
                    PARTITION BY pc.[ClientCode],
                    pc.[MediaCode] ORDER BY AddedDateTime DESC
                    ) AS rn
            FROM MediaA1.dbo.Client AS pc
                -- Check if the table are heavy and could we limit them with some Where clause
            ) AS prcl
            ON Prcl.[ClientCode] = po.[PrimaryClientCode]
                AND prcl.[MediaCode] = pom.MediaCode
                AND prcl.rn = 1
        JOIN MediaA1.dbo.BuyingAgency AS ba
            ON ba.[AgencyCode] = prcl.[BuyingAgencyCode] 
        JOIN MediaA1.dbo.OperatingCompany AS oc
            ON ba.[OperatingCompanyCode] = oc.OperatingCompanyCode
        JOIN MediaA1.dbo.Client AS cl
            ON cl.[MediaCode] = BM.[MediaCode]
                AND cl.[ClientCode] = bm.[ClientCode]
        WHERE po.StartDate >= @StartDate
            AND po.EndDate <= @EndDate
/*        )

SELECT T1.*,
    t1.[PO Amount] - t1.[PO Booked_BL] AS [PO Balance_BL] --  Booking level
    ,
    t1.[PO Amount] - t1.[PO Booked_IL] AS [PO Balance_IL] --  Invoicing level
    ,
    t1.[PO Amount] - t1.[PO Booked_TL] AS [PO Balance_TL] --  Tracking level
    ,
    t1.[PO Booked_BL] - t1.ReconciledAmount AS [PO Unreconciled_BL] -- Booking level -- Invalid column name 'ReconciledAmount'.## NEED TEST
    ,
    t1.[PO Booked_IL] - t1.ReconciledAmount AS [PO Unreconciled_IL] -- Invoicing level -- Invalid column name 'ReconciledAmount'.## NEED TEST
    ,
    t1.[PO Booked_TL] - t1.ReconciledAmount AS [PO Unreconciled_TL] --  Tracking level -- Invalid column name 'ReconciledAmount'.## NEED TEST
FROM T1

*/
GO
/****** Object:  UserDefinedFunction [dbo].[ur_PlanetVDiscrepancyReport_test]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[ur_PlanetVDiscrepancyReport_test]
(@StartDate datetime, @EndDate datetime) 
  
RETURNS TABLE
AS
RETURN
(
	SELECT 
		'Group M' as AgencyGroup
		,bm.MediaCode
		,ba.OperatingCompanyCode
		,opco.OperatingCompanyName
		,c.BuyingAgencyCode
		,ba.AgencyName
		,bm.BookingCategoryCode
		,rtrim(ltrim(bm.BookingCategoryShortname)) as SMBC
		,c.ClientName
		,FORMAT(bm.BuyDate, 'dd-MM-yyyy') as [Date] 
		,bm.BuySerial
		,(rtrim(convert(nvarchar, bm.ClientCode)) + '/' + convert(nvarchar, bm.ProductCode) + '/' + convert(nvarchar, bm.CampaignCode)) as Code
		,b.BuyerName,
		sum(case when bm.Gross = 0 and bm.Billrate <> 0 then bm.BillRate else bm.Gross end) as GrossAmount
	FROM MediaA1.dbo.BuyMoney as bm
		join MediaA1.dbo.Client as c on bm.ClientCode = c.ClientCode and bm.MediaCode = c.MediaCode
		join MediaA1.dbo.BuyingAgency as ba on c.BuyingAgencyCode = ba.AgencyCode
		join MediaA1.dbo.OperatingCompany as opco on ba.OperatingCompanyCode = opco.OperatingCompanyCode
		left join MediaA1.dbo.Buyer as b on bm.BuyerInitials = b.BuyerInitials
	WHERE bm.BuyDate between @StartDate and @EndDate 
	and bm.MediaCode = 5 
	and bm.SupplierID in (001202, 001203, 001204)
	and rtrim(ltrim(bm.BookingCategoryShortname)) in ('VIDEO/VOD','PROPBVODGMI')
	GROUP BY 
	bm.MediaCode
	,ba.OperatingCompanyCode
	,opco.OperatingCompanyName
	,c.BuyingAgencyCode
	,ba.AgencyName
	,bm.BookingCategoryCode
	,rtrim(ltrim(bm.BookingCategoryShortname))
	,c.ClientName
	,FORMAT(bm.BuyDate, 'dd-MM-yyyy') --as [Date] 
	,bm.BuySerial
	,(rtrim(convert(nvarchar, bm.ClientCode)) + '/' + convert(nvarchar, bm.ProductCode) + '/' + convert(nvarchar, bm.CampaignCode))
	,b.BuyerName


	)
GO
/****** Object:  View [dbo].[AccAccountCreditor]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[AccAccountCreditor]
AS

SELECT
    RecordType,
    ActionLast,
    ActDatetime,
    Agency,
    Unit,
    Ledger,
    Creditor,
    FactorUnit,
    FactorLedger,
    FactorAccount,
    IsCheque,
    IsManualCheque,
    IsPayment,
    IsBacs,
    IsTransfer,
    IsCurrency,
    IsAutoForeign,
    IsSundry,
    DueDateFormula,
    Discount,
    BankAccountCode,
    BankAccountName,
    BankSortCode,
    BankName,
    FaxNumber,
    EmailAddress,
    Notes,
    VATRegionCode,
    VATRegNumber
FROM AccountA1.dbo.AccAccountCreditor;

GO
/****** Object:  View [dbo].[AccAccountDebtors]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[AccAccountDebtors]
AS
SELECT
    RecordType,
    ActionLast,
    ActDatetime,
    Agency,
    Unit,
    Ledger,
    Debtor,
    InternalCreditLimit,
    CreditLimit,
    VATRegionCode,
    VATRegNumber
FROM AccountA1.dbo.AccAccountDebtors;

GO
/****** Object:  View [dbo].[AccIncDataDictionaryFields]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[AccIncDataDictionaryFields]
AS

SELECT
    FieldID,
    TableName,
    FieldName,
    [Description]
FROM [HarpPlusA1].dbo.AccIncDataDictionaryFields;

GO
/****** Object:  View [dbo].[AccPrdOffice]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[AccPrdOffice]
AS
SELECT
    RecordType,
    ActionLast,
    ActDatetime,
    Agency,
    OfficeCode,
    OfficeGroupCode,
    OfficeName,
    BankUnit,
    BankLedger,
    BankAccountCode
FROM AccountA1.dbo.AccPrdOffice;

GO
/****** Object:  View [dbo].[AccTranGroup]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[AccTranGroup]
AS

SELECT
    TranGroupNo,
    TranGroupName
FROM HarpPlusA1.dbo.AccTranGroup;

GO
/****** Object:  View [dbo].[AccTranType]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[AccTranType]
AS
SELECT [TranTypeNo]
      ,[TranTypeName]
      ,[TranGroupNo]
FROM HarpPlusA1.dbo.AccTranType;

GO
/****** Object:  View [dbo].[Aud]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[Aud]
AS

-- Updated RD 20190928
SELECT
    RecordType,
    [Action],
    ActDatetime,
    AgencyAlphaID,
    AudienceType,
    AudienceNumber,
    AudienceShortName,
    AudienceCategory,
    AudienceCategoryName,
    IsMale,
    IsFemale,
    IsFulltimeEmployed,
    IsParttimeEmployed,
    IsHWwithoutKids,
    IsHWwithKids,
    IsHWwithKidsUnder3,
    IsMultiChannel,
    IsAged04to06,
    IsAged07to09,
    IsAged10to12,
    IsAged13to15,
    IsAged16to19,
    IsAged20to24,
    IsAged25to29,
    IsAged30to34,
    IsAged35to44,
    IsAged45to49,
    IsAged50to54,
    IsAged55to64,
    IsAged65to99,
    LowerAge,
    UpperAge,
    IsClassA,
    IsClassB,
    IsClassC1,
    IsClassC2,
    IsClassD,
    IsClassE,
    ClassName,
    Column1Name,
    Column2Name,
    AudienceMediumName,
    AudienceName
FROM MediaA1..Aud;

GO
/****** Object:  View [dbo].[Brand]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[Brand]
AS

-- Updated RD 20190928
SELECT
    RecordType,
    [Action],
    ActDateTime,
    AgencyAlphaID,
    BrandCode,
    BrandName,
    CountryCode,
    NMRGroupCode,
    ROIBrandCode,
    AdvertiserCode,
    HoldingCompanyCode,
    BarbAmendedDate,
    FirstTransmissionDate,
    LastTransmissionDate
FROM MediaA1..Brand;
GO
/****** Object:  View [dbo].[BrandAdvertiser]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[BrandAdvertiser]
AS

-- Updated RD 20190928
SELECT
    RecordType,
    [Action],
    ActDateTime,
    AgencyAlphaID,
    AdvertiserCountryCode,
    AdvertiserCode,
    AdvertiserName
FROM MediaA1..BrandAdvertiser;
GO
/****** Object:  View [dbo].[BrandHoldingCompany]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[BrandHoldingCompany]
AS

-- Updated RD 20190928
SELECT
    RecordType,
    [Action],
    ActDateTime,
    AgencyAlphaID,
    HoldingCompanyCountryCode,
    HoldingCompanyCode,
    HoldingCompanyName
FROM MediaA1..BrandHoldingCompany;
GO
/****** Object:  View [dbo].[BrandNMRGroup]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[BrandNMRGroup]
AS

-- Updated RD 20190928
SELECT
    RecordType,
    [Action],
    ActDateTime,
    AgencyAlphaID,
    NMRGroupCode,
    NMRGroupName
FROM MediaA1..BrandNMRGroup;
GO
/****** Object:  View [dbo].[Buyer]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[Buyer]
AS

-- Updated RD 20190929
SELECT
    RecordType,
    [Action],
    ActDatetime,
    AgencyAlphaID,
    BuyerInitials,
    PhoneNumber,
    BuyerName,
    BuyerPID,
    BuyerPIN
FROM MediaA1..Buyer;

GO
/****** Object:  View [dbo].[DataDictionaryColumns]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[DataDictionaryColumns]
AS 

-- Updated RD 20191001
-- Source from new MediaA1..DataDictionaryColumns view RD 20220-04-20
-- Trim trailing spaces RD 2020-05-05
SELECT
    rtrim(TableName) AS TableName,
    rtrim(ColumnName) AS [FieldName],
    [Key],
    DataType,
    [Length],
    [Precision],
    [Scale],
    [Nullable],
    PositionInTable,
    rtrim(FromVersion) AS FromVersion,
    rtrim(SourceSystem) AS SourceSystem,
    rtrim([SourceProgram/Record]) AS [SourceProgram/Record],
    rtrim(MXFieldName) AS MXFieldName,
    rtrim(MXHeading) AS MXHeading,
    rtrim(Description) AS [Description],
    rtrim([Values]) AS [Values]
FROM MediaA1..DataDictionaryColumns;

GO
/****** Object:  View [dbo].[DataDictionaryTables]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[DataDictionaryTables]
AS 

-- RD created 2021-06-10
SELECT
    rtrim(TableName) AS TableName,
    rtrim(Description) AS [Description],
    rtrim(FromVersion) AS FromVersion,
    rtrim(KeyColumns) AS KeyColumns
FROM MediaA1..DataDictionaryTables;

GO
/****** Object:  View [dbo].[DDS_DataDictionary]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[DDS_DataDictionary]
AS 

-- Updated RD 20191001
-- Source from new MediaA1..DataDictionaryColumns view RD 20220-04-20
-- Trim trailing spaces RD 2020-05-05
SELECT
    rtrim(TableName) AS TableName,
    rtrim(ColumnName) AS [FieldName],
    [Key],
    DataType,
    [Length],
    [Precision],
    [Scale],
    [Nullable],
    PositionInTable,
    rtrim(FromVersion) AS FromVersion,
    rtrim(SourceSystem) AS SourceSystem,
    rtrim([SourceProgram/Record]) AS [SourceProgram/Record],
    rtrim(MXFieldName) AS MXFieldName,
    rtrim(MXHeading) AS MXHeading,
    rtrim(Description) AS [Description],
    rtrim([Values]) AS [Values]
FROM MediaA1..DataDictionaryColumns;

GO
/****** Object:  View [dbo].[HarpBeat_Log]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[HarpBeat_Log]
AS

-- Updated RD 20191001
SELECT
    ActionDateTime,
    ProcessName,
    ProcessAction,
    ProcessStatus,
    ProcessParm1,
    ProcessParm2,
    ProcessParm3,
    ProcessParm4,
    StartDateTime,
    EndDatetime,
    DBName,
    UserName,
    Duration
FROM MediaA1..HarpBeat_Log;

GO
/****** Object:  View [dbo].[InternetType]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[InternetType]
AS

-- Updated RD 20191001
SELECT
    RecordType,
    [Action],
    ActDateTime,
    AgencyAlphaID,
    InternetTypeNumber,
    InternetTypeCode,
    InternetTypeName,
    LevyExempt,
    CommissionRate,
    FormulaSchemeCode
FROM MediaA1..InternetType;

GO
/****** Object:  View [dbo].[medHarpBeatLog]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Alter View medHarpBeatLog

CREATE VIEW [dbo].[medHarpBeatLog]
AS
-- Ray Drew 20190904

SELECT
    FORMAT(StartDateTime, 'd/M/yyyy HH:mm:ss') AS SDTSorting,
    RTRIM(ProcessParm1) AS PlannedDate,
    RTRIM(ProcessParm2) AS PlannedTime,
    RTRIM(ProcessName) AS ProcessName,
    FORMAT(StartDateTime, 'yyyyMMdd') AS StartDate,
    FORMAT(StartDateTime, 'HHmmss') AS StartTime,
    FORMAT(EndDatetime, 'yyyyMMdd') AS EndDate,
    FORMAT(EndDatetime, 'HHmmss') AS EndTime,
    Duration AS [Duration (Mins)]
FROM [MediaA1].dbo.HarpBeat_Log
GROUP BY
    StartDateTime,
    ProcessParm1,
    ProcessParm2,
    ProcessName,
    FORMAT(StartDateTime, 'yyyyMMdd'),
    FORMAT(StartDateTime, 'HHmmss'),
    FORMAT(EndDatetime, 'yyyyMMdd'),
    FORMAT(EndDatetime, 'HHmmss'),
    Duration;

-- filter on start date and order as needed...

-- WHERE StartDate >= '20190903'
-- ORDER BY
--    SDTSorting DESC,
--    PlannedDate,
--    PlannedTime;
GO
/****** Object:  View [dbo].[r_FoliosAndSuppliers]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[r_FoliosAndSuppliers]
AS

-- RD 2020-11-05
-- no order by allowed in views - order by [media name] in call or as required

SELECT
    me.MediaLetter AS [Media Letter],
    me.MediaName AS [Media Name],
    su.SupplierID AS [Supplier Number],
    su.SupplierName AS [Supplier Full Name],
    fo.FolioCode AS [Folio Number],
    fo.FolioName AS [Folio Full Name]
FROM MediaA1..Folio as fo
    JOIN MediaA1..Supplier as su
        ON su.FolioCode = fo.FolioCode
            AND su.MediaCode = fo.MediaCode
    JOIN MediaA1..Media as me
        ON me.MediaCode = fo.MediaCode;
GO
/****** Object:  View [dbo].[RadioType]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[RadioType]
AS

-- Updated RD 20191002
SELECT
    RecordType,
    [Action],
    ActDateTime,
    AgencyAlphaID,
    RadioTypeNumber,
    RadioTypeCode,
    RadioTypeName,
    LevyExempt,
    CommissionRate,
    FormulaSchemeCode
FROM MediaA1..RadioType;

GO
/****** Object:  View [dbo].[Saleshouse]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[Saleshouse]
AS

-- Updated RD 20191002
SELECT
    RecordType,
    [Action],
    ActDatetime,
    AgencyAlphaID,
    SaleshouseID,
    SaleshouseName
FROM MediaA1..Saleshouse;

GO
/****** Object:  View [dbo].[TVArea]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[TVArea]
AS

-- Updated RD 20191003
SELECT
    RecordType,
    [Action],
    ActDatetime,
    AgencyAlphaID,
    TVAreaType,
    TVAreaGroupID,
    TVAreaSubAreaID,
    TVAreaID,
    Channel,
    AreaName,
    SupplierID,
    IsSatelite
FROM MediaA1..TVArea;

GO
/****** Object:  View [dbo].[TVAreaStation]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE VIEW [dbo].[TVAreaStation]
AS

-- Update Rd 20191003 (copy of view from MediaA1)
SELECT
    GroupAreaID,
    GroupName,
    SubGroupID,
    SubGroupName,
    AreaID,
    Channel,
    AreaName,
    SupplierID,
    IsSatellite
FROM (
    SELECT
        G.TVAreaGroupID AS GroupAreaID,
        G.AreaName AS GroupName,
        NULL AS SubGroupID,
        NULL AS SubGroupName,
        S.TVAreaID AS AreaID,
        S.AreaName AS AreaName,
        S.Channel AS Channel,
        S.SupplierID AS SupplierID,
        S.IsSatelite AS IsSatellite
    FROM MediaA1..TVArea AS G
    INNER JOIN MediaA1..TVArea AS S
        ON G.TVAreaGroupID = S.TVAreaGroupID
    WHERE (S.TVAreaSubAreaID = 0)
    AND (G.TVAreaType = 'G')
    AND (S.TVAreaType = 'S')

    UNION

    SELECT
        G.TVAreaGroupID AS GroupAreaID,
        G.AreaName AS GroupName,
        M.TVAreaSubAreaID AS SubGroupID,
        M.AreaName AS SubGroupName,
        S.TVAreaID AS AreaID,
        S.AreaName AS AreaName,
        S.Channel AS Channel,
        S.SupplierID AS SupplierID,
        S.IsSatelite AS IsSatellite
    FROM MediaA1..TVArea AS G
    INNER JOIN MediaA1..TVArea AS M
        ON G.TVAreaGroupID = M.TVAreaGroupID
    INNER JOIN MediaA1..TVArea AS S
        ON M.TVAreaGroupID = S.TVAreaGroupID
        AND M.TVAreaSubAreaID = S.TVAreaSubAreaID
    WHERE (G.TVAreaType = 'G')
    AND (M.TVAreaType = 'M')
    AND (S.TVAreaType = 'S')
) AS TVAreas

GO
/****** Object:  View [dbo].[ur_Bravo_Data_Extract_Payment_Terms_Test]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Nathan Pennington
-- Create date: 2022-06-07
-- Description:	[POC] Bravo Data Extract: Q4 2021 GroupM UK -  ur_Bravo_Data_Extract_Payment_Terms_Test


--The EDG (Enterprise Data Group) collects supplier spend data from the Accounts Payable systems across the WPP Group. 
--The data is aggregated together and available to view in a third party platform known as Bravo (Jaggaer). 
--The data is also used to support wider business initiatives such as the Procurement Savings Targets, Project Rubicon and Quantum. 
--For more information about this please contact procurementsystems@wpp.com

-- =============================================



CREATE view [dbo].[ur_Bravo_Data_Extract_Payment_Terms_Test] AS





SELECT DISTINCT
GETDATE() AS 'Extract Date' -- Date Stamp of Extract
,'Mediaocean' AS 'Source System'
,'A1' AS 'Source System Company Code'
,aac.DueDateFormula AS 'Payment term code'
,CASE WHEN aac.DueDateFormula = 'BD+1' THEN 'Bill date + 1 day'
WHEN aac.DueDateFormula = 'BD+14' THEN 'Bill date + 14 days'
WHEN aac.DueDateFormula = 'BD+15' THEN 'Bill date + 15 days'
WHEN aac.DueDateFormula = 'BD+21' THEN 'Bill date + 21 days'
WHEN aac.DueDateFormula = 'BD+60' THEN 'Bill date + 60 days'
WHEN aac.DueDateFormula = 'BM1/13' THEN 'Bill month + 1 Month + 13 days'
WHEN aac.DueDateFormula = 'BM1/21' THEN 'Bill month + 1 Month + 21 days'
WHEN aac.DueDateFormula = 'BM1/25' THEN 'Bill month + 1 Month + 25 days'
WHEN aac.DueDateFormula = 'BM1/30' THEN 'Bill month + 1 Month + 30 days'
WHEN aac.DueDateFormula = 'BM1/31' THEN 'Bill month + 1 Month + 31 days'
WHEN aac.DueDateFormula = 'BM2/15' THEN 'Bill month + 2 Month + 15 days'
WHEN aac.DueDateFormula = 'BM2/21' THEN 'Bill month + 2 Month + 21 days'
WHEN aac.DueDateFormula = 'BM2/3' THEN 'Bill month + 2 Month + 3 days'
WHEN aac.DueDateFormula = 'BM2/30' THEN 'Bill month + 2 Month + 30 days'
WHEN aac.DueDateFormula = 'BM2/31' THEN 'Bill month + 2 Month + 31 days'
WHEN aac.DueDateFormula = 'BM2/7' THEN 'Bill month + 2 Month + 7 days'
WHEN aac.DueDateFormula = 'BM3/31' THEN 'Bill month + 3 Month + 31 days'
WHEN aac.DueDateFormula = 'ID+10' THEN 'Invoice date + 10 days'
WHEN aac.DueDateFormula = 'ID+14' THEN 'Invoice date + 14 days'
WHEN aac.DueDateFormula = 'ID+15' THEN 'Invoice date + 15 days'
WHEN aac.DueDateFormula = 'ID+21' THEN 'Invoice date + 21 days'
WHEN aac.DueDateFormula = 'ID+28' THEN 'Invoice date + 28 days'
WHEN aac.DueDateFormula = 'ID+30' THEN 'Invoice date + 30 days'
WHEN aac.DueDateFormula = 'ID+45' THEN 'Invoice date + 45 days'
WHEN aac.DueDateFormula = 'ID+7' THEN 'Invoice date + 7 days'
WHEN aac.DueDateFormula = 'ID+75' THEN 'Invoice date + 75 days'
WHEN aac.DueDateFormula = 'ID+90' THEN 'Invoice date + 90 days'
ELSE NULL END
AS 'Payment term description'
,'X' AS 'EOL'
FROM AccountA1..AccAccountCreditor aac

GO
/****** Object:  View [dbo].[ur_DigitalBillings]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO







CREATE view [dbo].[ur_DigitalBillings] 
as


-- DigitalBillingsSummary_OpCo_InternetType (GMS spends by community AND agency)
-- created Denis Nkulin (EPAM) 2021-11-30

	SELECT 
		ba.OperatingCompanyCode AS OpCoCode, 
		rtrim(oc.OperatingCompanyName) as OperatingCompanyName, 
		rtrim(ba.AgencyName) AS AgencyName, 
		bm.BookingCategoryCode AS SMBCCode, 
		rtrim(ltrim(bc.[BookingCategoryName])) AS SMBC, 
		itn.InternetTypeName,
		fol.FolioCode, rtrim(fol.FolioName) AS FolioName,
		sup.SupplierID, rtrim(sup.SupplierName) AS SupplierName,
		cl.ClientCode, rtrim(cl.ClientName) AS ClientName,
		prd.ProductCode, rtrim(prd.ProductName) AS ProductName,
		camp.CampaignCode, rtrim(camp.CampaignName) AS CampaignName,
		YEAR(bm.[BuyDate]) AS [Year],
		FORMAT(bm.BuyDate, 'yyyy-MM') as YearMonth,
		DATENAME(mm, bm.BuyDate)+right(year(bm.BuyDate),2) as YearMonthName,
		Count(bm.BuySerial) AS NoBuys, 
		Sum(bm.Gross) AS GrossBooked, 
		Sum(bm.BillRate) AS [Bill Rate], 
		Sum(case when bm.[BillRate] = 0 then bm.[Gross] else bm.[BillRate] end) AS GrossBillable, 
		Sum(bm.Billable) AS ClientCostBillable, 
		Sum(bm.Payable) AS SupPayable, 
		Sum(bm.AgencyCommission) AS [Agency Commission], 
		Sum(bm.BuyingAgencyCommission) AS [BuyingAgency Commission], 
		Sum(bm.BillableCostOfSale) AS ClientCOS, 
		Sum(case when bm.BillRate = 0 then 0 else bm.[BillableCostOfSale] - bm.[Payable] end) AS NetSpotIncome, 
		Sum(bm.MediaDiscount) AS MediaDiscount
	FROM MediaA1..BuyMoney AS bm 
		JOIN MediaA1..Client AS cl
			ON bm.ClientCode = cl.ClientCode
			AND bm.MediaCode = cl.MediaCode
		JOIN MediaA1..BuyingAgency AS ba
			ON cl.BuyingAgencyCode = ba.AgencyCode
		JOIN MediaA1..OperatingCompany AS oc
			ON ba.OperatingCompanyCode = oc.OperatingCompanyCode
		JOIN MediaA1..BookingCategory AS bc
			ON bm.BookingCategoryCode = bc.BookingCategoryCode
		JOIN MediaA1..InetMedia AS im
			ON bm.BuySerial = im.BuySerial
		JOIN MediaA1..InternetType AS itn
			ON im.InternetTypeNumber = itn.InternetTypeNumber
		JOIN MediaA1..Supplier as sup 
			ON bm.MediaCode = sup.MediaCode 
			AND bm.SupplierID = sup.SupplierID
		JOIN MediaA1..Folio as fol
			ON sup.MediaCode = fol.MediaCode 
			AND sup.FolioCode = fol.FolioCode
		JOIN MediaA1..Product as prd
			ON bm.MediaCode = prd.MediaCode
			AND bm.ClientCode = prd.ClientCode 
			AND bm.ProductCode = prd.ProductCode
		JOIN MediaA1..Campaign camp
			ON bm.CampaignCode = camp.CampaignCode
			AND bm.MediaCode = camp.MediaCode
			AND bm.ClientCode = camp.ClientCode
			AND bm.ProductCode = camp.ProductCode
	WHERE YEAR(bm.BuyDate) in (2020, 2021, 2022)
	AND bm.IsCancelled = 0 
	AND bm.IsDraft = 0
	AND bm.MediaCode = 5
	GROUP BY
	ba.OperatingCompanyCode, 
	rtrim(oc.OperatingCompanyName), 
	rtrim(ba.AgencyName), 
	bm.BookingCategoryCode, 
	rtrim(ltrim(bc.[BookingCategoryName])), 
	itn.InternetTypeName,
	rtrim(fol.FolioName),
	rtrim(sup.SupplierName),
	rtrim(cl.ClientName),
	rtrim(prd.ProductName),
	rtrim(camp.CampaignName),
	fol.FolioCode,
	sup.SupplierID,
	cl.ClientCode,
	prd.ProductCode,
	camp.CampaignCode,
	YEAR(bm.[BuyDate]),
	FORMAT(bm.BuyDate, 'yyyy-MM'),
	DATENAME(mm, bm.BuyDate)+right(year(bm.BuyDate),2)
GO
/****** Object:  View [dbo].[ur_DigitalBillings_pbi_test]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE view [dbo].[ur_DigitalBillings_pbi_test] 
as

	SELECT 'K5' as [DataSource],  --zero rows 2022-04-21
		ba.OperatingCompanyCode AS OpCoCode, 
		rtrim(oc.OperatingCompanyName) as OperatingCompanyName, 
		rtrim(ba.AgencyName) AS AgencyName, 
		bm.BookingCategoryCode AS SMBCCode, 
		rtrim(ltrim(bc.[BookingCategoryName])) AS SMBC, 
		itn.InternetTypeName,
		fol.FolioCode, rtrim(fol.FolioName) AS FolioName,
		sup.SupplierID, rtrim(sup.SupplierName) AS SupplierName,
		cl.ClientCode, rtrim(cl.ClientName) AS ClientName,
		prd.ProductCode, rtrim(prd.ProductName) AS ProductName,
		camp.CampaignCode, rtrim(camp.CampaignName) AS CampaignName,
		YEAR(bm.[BuyDate]) AS [Year],
		FORMAT(bm.BuyDate, 'yyyy-MM') as YearMonth,
		DATENAME(mm, bm.BuyDate)+right(year(bm.BuyDate),2) as YearMonthName,
		Count(bm.BuySerial) AS NoBuys, 
		Sum(bm.Gross) AS GrossBooked, 
		Sum(bm.BillRate) AS [Bill Rate], 
		Sum(case when bm.[BillRate] = 0 then bm.[Gross] else bm.[BillRate] end) AS GrossBillable, 
		Sum(bm.Billable) AS ClientCostBillable, 
		Sum(bm.Payable) AS SupPayable, 
		Sum(bm.AgencyCommission) AS [Agency Commission], 
		Sum(bm.BuyingAgencyCommission) AS [BuyingAgency Commission], 
		Sum(bm.BillableCostOfSale) AS ClientCOS, 
		Sum(case when bm.BillRate = 0 then 0 else bm.[BillableCostOfSale] - bm.[Payable] end) AS NetSpotIncome, 
		Sum(bm.MediaDiscount) AS MediaDiscount
	FROM MediaK5..BuyMoney AS bm 
		JOIN MediaK5..Client AS cl
			ON bm.ClientCode = cl.ClientCode
			AND bm.MediaCode = cl.MediaCode
		JOIN MediaK5..BuyingAgency AS ba
			ON cl.BuyingAgencyCode = ba.AgencyCode
		JOIN MediaK5..OperatingCompany AS oc
			ON ba.OperatingCompanyCode = oc.OperatingCompanyCode
		JOIN MediaK5..BookingCategory AS bc
			ON bm.BookingCategoryCode = bc.BookingCategoryCode
		JOIN MediaK5..InetMedia AS im
			ON bm.BuySerial = im.BuySerial
		JOIN MediaK5..InternetType AS itn
			ON im.InternetTypeNumber = itn.InternetTypeNumber
		JOIN MediaK5..Supplier as sup 
			ON bm.MediaCode = sup.MediaCode 
			AND bm.SupplierID = sup.SupplierID
		JOIN MediaK5..Folio as fol
			ON sup.MediaCode = fol.MediaCode 
			AND sup.FolioCode = fol.FolioCode
		JOIN MediaK5..Product as prd
			ON bm.MediaCode = prd.MediaCode
			AND bm.ClientCode = prd.ClientCode 
			AND bm.ProductCode = prd.ProductCode
		JOIN MediaK5..Campaign camp
			ON bm.CampaignCode = camp.CampaignCode
			AND bm.MediaCode = camp.MediaCode
			AND bm.ClientCode = camp.ClientCode
			AND bm.ProductCode = camp.ProductCode
	WHERE bm.BuyDate BETWEEN '20220101' and '20220110'
	AND bm.IsCancelled = 0 
	AND bm.IsDraft = 0
	AND bm.MediaCode = 8
	GROUP BY
	ba.OperatingCompanyCode, 
	rtrim(oc.OperatingCompanyName), 
	rtrim(ba.AgencyName), 
	bm.BookingCategoryCode, 
	rtrim(ltrim(bc.[BookingCategoryName])), 
	itn.InternetTypeName,
	rtrim(fol.FolioName),
	rtrim(sup.SupplierName),
	rtrim(cl.ClientName),
	rtrim(prd.ProductName),
	rtrim(camp.CampaignName),
	fol.FolioCode,
	sup.SupplierID,
	cl.ClientCode,
	prd.ProductCode,
	camp.CampaignCode,
	YEAR(bm.[BuyDate]),
	FORMAT(bm.BuyDate, 'yyyy-MM'),
	DATENAME(mm, bm.BuyDate)+right(year(bm.BuyDate),2)

-- DigitalBillingsSummary_OpCo_InternetType (GMS spends by community AND agency)
-- created Denis Nkulin (EPAM) 2021-11-30

GO
/****** Object:  View [dbo].[ur_Filter5Report]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[ur_Filter5Report]

AS

-- created AK 20210217
-- add debtors account code

WITH qryAccFiltervalue_SRF5Names
AS
   (
       SELECT
           afv.Unit,
           afv.Ledger,
           afv.FilterNumber,
           afv.FilterValueCode,
           afv.FilterValueLongName
       FROM
           AccountA1..AccFilterValue AS afv
       WHERE
           afv.Unit = 'S'
           AND afv.Ledger = 'R'
           AND afv.FilterNumber = 5
   ),
qryMedFilterValue_F5_CodesAndNames
AS
   (
       SELECT
           fv.FilterNumber,
           fv.FilterValue,
           fv.FilterValueName
       FROM
           MediaA1..FilterValue AS fv
       WHERE
           fv.FilterNumber = 5
   )
SELECT
    CASE
        WHEN cl.MediaCode IS NULL
        THEN 'Accounting Only'
        ELSE 'Media & Accounting'
    END AS MoSystem,
    cl.MediaCode,
    med.MediaLetter,
    cl.OfficeCode,
    apo.OfficeName,
    cl.ClientCode,
    cl.ClientName,
    cl.DebtorsAccountCode,
    ba.AgencyCode,
    ba.AgencyName,
    cl.AccFilter5,
    f5n.FilterValueLongName AS AccFilterName,
    f5cn.FilterValue AS MedFilter5,
    f5cn.FilterValueName AS MedFilterName,
    FORMAT(cl.AddedDateTime, 'yyyy/MM/dd') AS AddedDate,
    FORMAT(GETDATE(), 'yyyy/MM/dd') AS ExtractedDate
FROM
    HarpPlusA1..Client AS cl
LEFT JOIN MediaA1..Media AS med
        ON cl.MediaCode = med.MediaCode
JOIN AccountA1..AccPrdOffice AS apo
        ON cl.OfficeCode = apo.OfficeCode
LEFT JOIN MediaA1..BuyingAgency AS ba
        ON cl.BuyingAgencyCode = ba.AgencyCode
LEFT JOIN qryAccFiltervalue_SRF5Names AS f5n
        ON cl.AccFilter5 = f5n.FilterValueCode
LEFT JOIN qryMedFilterValue_F5_CodesAndNames AS f5cn
        ON cl.Filter5 = f5cn.FilterValue;
GO
/****** Object:  View [dbo].[ur_GroupMBookingsReport]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






CREATE view [dbo].[ur_GroupMBookingsReport] AS







SELECT DISTINCT

bm.BuySerial AS 'Serial number'
,im.BuyOrder AS 'Prisma IO' ---im.OrderNumber does not exist  used instead [BuyOrder]
,bc.BookingCategoryName AS 'Booking category'
,ba.AgencyName AS 'Buying agency Full name'
,bm.ClientCode AS 'Client code'
,bm.ProductCode AS 'Product code'
,bm.CampaignCode AS 'Campaign number'
,c.ClientName AS 'Client name'
,p.ProductName AS 'Product name'
,cm.CampaignName AS 'Campaign name'
,s.FolioCode AS 'Folio code'
,f.FolioName AS 'Folio name'
,bm.SupplierID AS 'Supplier number'
,s.SupplierName AS 'Supplier name'
,bm.BuyDate AS 'Booking date'
,im.Enddate AS 'Booking end'
,bm.CurrencyCode AS 'Currency (Loc)'
,bi.LocalCurrencyCost AS 'Gross (Loc)'
,bm.MediaDiscountPercentage AS 'Media Discount %'
,bi.AccountExchRateNumerator/bi.AccountExchRateDenominator*bm.Payable AS 'Payable (Loc)'
,bi.AccountExchRateNumerator/bi.AccountExchRateDenominator*bm.VATPayable AS 'VAT Payable (Loc)'
,((bi.AccountExchRateNumerator/bi.AccountExchRateDenominator*bm.Payable) + (bi.AccountExchRateNumerator/bi.AccountExchRateDenominator*bm.VATPayable)) AS 'Total Payable (Loc)'
,bi.AccountExchRateNumerator/bi.AccountExchRateDenominator*bm.Paid AS 'Paid Cost (Loc)'
,bi.AccountExchRateNumerator/bi.AccountExchRateDenominator*bm.VATPaid AS 'VAT Paid (Loc)'
,(bi.AccountExchRateNumerator/bi.AccountExchRateDenominator*bm.Payable - bi.AccountExchRateNumerator/bi.AccountExchRateDenominator*bm.Paid) AS 'Unpaid (Loc)'
,(bi.AccountExchRateNumerator/bi.AccountExchRateDenominator*bm.Paid + bi.AccountExchRateNumerator/bi.AccountExchRateDenominator*bm.VATPaid) AS 'Total Paid (Loc)'
,(bi.AccountExchRateNumerator/bi.AccountExchRateDenominator*bm.VATPayable - bi.AccountExchRateNumerator/bi.AccountExchRateDenominator*bm.VATPaid) AS 'VAT Unpaid (Loc)'
,(((bi.AccountExchRateNumerator/bi.AccountExchRateDenominator*bm.Payable) + (bi.AccountExchRateNumerator/bi.AccountExchRateDenominator*bm.VATPayable)) - (bi.AccountExchRateNumerator/bi.AccountExchRateDenominator*bm.Paid + bi.AccountExchRateNumerator/bi.AccountExchRateDenominator*bm.VATPaid)) AS 'Total Unpaid (Loc)'
,bm.IsVouchered AS 'Vouchered'
,bm.IsLocked AS 'Locked'
,bm.IsCancelled AS 'Cancelled'
--as 'is_Paid (Totalis Paid)' --not in data dictionary
,am.AddedDate AS 'Matched date' --may need min as brings in multiple rows
,am.UsedDate AS 'Paid date'  --may need min as brings in multiple rows
,bm.InvoiceCode AS 'Supplier Invoice No'
,bm.Gross AS 'Gross (Agy)'
--,bm.MediaDiscountPercentage AS 'Media Discount %'
,bm.Payable AS 'Payable (Agy)'
,bm.VATPayable AS 'VAT Payable (Agy)'
,(bm.Payable + bm.VATPayable) AS 'Total Payable (Agy)'
,bm.Paid AS 'Paid cost (Agy)'
,bm.VATPaid AS 'VAT Paid (Agy)'
,(bm.Paid + bm.VATPaid) AS 'Total paid (Agy)'
,(bm.Payable - bm.Paid) AS 'Unpaid (Agy)'
,(bm.VATPayable - bm.VATPaid) AS 'VAT Unpaid (Agy)'
,((bm.Payable + bm.VATPayable) - (bm.Paid + bm.VATPaid)) AS 'Total unpaid (Agy)'
,bm.BookedDate AS 'Booked on'
,byr.BuyerName AS 'Booked name'
,bm.LastAmendedDate AS 'Amended on'
,byr2.BuyerName AS 'Amended name'
,(CASE WHEN bm.InvoiceCode IS NULL THEN 'NO' ELSE 'YES' END) AS 'Billed'
,bm.InvoiceDate AS 'Billed on'
,bi.AccountExchRateNumerator/bi.AccountExchRateDenominator*bm.BillableCostOfSale AS 'Net Billable (Loc)'
,bi.AccountExchRateNumerator/bi.AccountExchRateDenominator*bm.AgencyCommission AS 'Total Comission (Loc)'
,bi.AccountExchRateNumerator/bi.AccountExchRateDenominator*bm.Billable AS 'Billable (Loc)'
,bm.BillableCostOfSale AS 'Net Billable (Agy)'
,bm.AgencyCommission AS 'Total Commision (Agy)'
,bm.Billed AS 'Billed (Agy)'
,cm.ClientReference AS 'PO number'
,cm.CampaignReference AS 'Campaign reference'
,bct.BillComments AS 'Billing comments'
,oc.OperatingCompanyName AS 'Operation company'
,oc.OperatingCompanyCode AS 'Operating company code'

--BuyMoney.BuyerInitials, Buyer.BuyerName (left outer join BuyMoney.BuyerInitials to Buyer.BuyerInitials)

--BuyMoney.LastAmendedBuyer (left outer join BuyMoney.LastAmendedInitials to Buyer.BuyerInitials)

FROM MediaA1..BuyMoney AS bm
LEFT JOIN MediaA1..INetMedia AS im ON bm.BuySerial = im.BuySerial -- probably better to use LEFT JOIN
JOIN MediaA1..BookingCategory AS bc ON bm.BookingCategoryCode = bc.BookingCategoryCode
JOIN MediaA1..Client AS c ON bm.ClientCode = c.ClientCode AND bm.MediaCode = c.MediaCode
JOIN MediaA1..BuyingAgency AS ba ON c.BuyingAgencyCode = ba.AgencyCode
JOIN MediaA1..OperatingCompany AS oc ON ba.OperatingCompanyCode = oc.OperatingCompanyCode
JOIN MediaA1..Product AS p ON bm.ClientCode = p.ClientCode AND bm.ProductCode = p.ProductCode AND bm.MediaCode = p.MediaCode
JOIN MediaA1..Campaign AS cm ON bm.CampaignCode = cm.CampaignCode AND bm.ProductCode = cm.ProductCode AND bm.ClientCode = cm.ClientCode AND bm.MediaCode = cm.MediaCode
JOIN MediaA1..Supplier AS s ON bm.SupplierID = s.SupplierID AND bm.MediaCode = s.MediaCode
JOIN MediaA1..Folio AS f ON s.FolioCode = f.FolioCode AND s.MediaCode = f.MediaCode
JOIN MediaA1..BuyInternational AS bi ON bm.BuySerial = bi.BuySerial --double check with David


LEFT JOIN (SELECT bm.buyserial, MIN(UsedDate) 'UsedDate', AddedDate
FROM MediaA1..BuyMoney AS bm
	join AccountA1..AccCrMedia as cmed
		on bm.BuySerial = cmed.BuySerial
	join AccountA1..AccCrMaster as cmst
		on cmed.UniqueID = cmst.UniqueID
		--WHERE bm.BuyDate > '2022-01-01'
		GROUP BY bm.buyserial, AddedDate) AS am ON bm.BuySerial = am.BuySerial


LEFT JOIN MediaA1..BuyCommentsTransposed AS bct ON bm.BuySerial = bct.BuySerial  -- don't know, never used this before


LEFT JOIN MediaA1..Buyer AS byr
ON bm.BuyerInitials = byr.BuyerInitials
LEFT JOIN MediaA1..Buyer AS byr2
ON bm.LastAmendedBuyer = byr2.BuyerInitials


WHERE bm.BuyDate > '2021-01-01' 




GO
/****** Object:  View [dbo].[ur_MediaSuppliersLockedReport]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE view [dbo].[ur_MediaSuppliersLockedReport]

AS

-- ticket 344 GM Finance & FP – Locked Media Supplier Report
-- created Denis Nkulin (EPAM) 2021-09-24

	SELECT 
		med.MediaLetter, med.[MediaName],  
		fol.FolioCode, fol.FolioName, 
		sup.SupplierID, sup.SupplierName, [sup].[AddedDateTime] AS SupplierAddedDate, 
		min(bm.BuyDate) AS FirstInsertionDate, 
		max(bm.BuyDate) AS LastInsertionDate, 
		min(bm.BookedDate) AS FirstAddedDate, 
		max(bm.BookedDate) AS LastAddedDate, 
		fol.ActiveEndDate AS FolioActiveEndDate,
		'Locked' AS SupplierLockedStatus, 
		count(bm.BuySerial) AS [#Bookings], 
		GETDATE() AS DateRequested
	FROM MediaA1..Supplier AS sup
		LEFT JOIN MediaA1..Folio AS fol
			ON sup.MediaCode = fol.MediaCode 
			AND sup.FolioCode = fol.FolioCode 
		LEFT JOIN MediaA1..Media AS med 
			ON sup.MediaCode = med.MediaCode 
		LEFT JOIN MediaA1..BuyMoney AS bm 
			ON sup.MediaCode = bm.MediaCode 
			AND sup.SupplierID = bm.SupplierID
	WHERE [sup].[IsLocked] = 1 
	GROUP BY med.MediaLetter, med.[MediaName], fol.FolioCode, fol.FolioName,
	sup.SupplierID, sup.SupplierName, [sup].[AddedDateTime], fol.ActiveEndDate


GO
/****** Object:  View [dbo].[ur_MediaSuppliersUnLockedReport]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE view [dbo].[ur_MediaSuppliersUnLockedReport]

AS

-- ticket 344 GM Finance & FP – Locked Media Supplier Report
-- created Denis Nkulin (EPAM) 2021-09-24

	SELECT 
		med.MediaLetter, med.[MediaName],  
		fol.FolioCode, fol.FolioName, 
		sup.SupplierID, sup.SupplierName, [sup].[AddedDateTime] AS SupplierAddedDate, 
		min(bm.BuyDate) AS FirstInsertionDate, 
		max(bm.BuyDate) AS LastInsertionDate, 
		min(bm.BookedDate) AS FirstAddedDate, 
		max(bm.BookedDate) AS LastAddedDate, 
		fol.ActiveEndDate AS FolioActiveEndDate,
		'UnLocked' AS SupplierLockedStatus, 
		count(bm.BuySerial) AS [#Bookings], 
		GETDATE() AS DateRequested
	FROM MediaA1..Supplier AS sup
		LEFT JOIN MediaA1..Folio AS fol
			ON sup.MediaCode = fol.MediaCode 
			AND sup.FolioCode = fol.FolioCode 
		LEFT JOIN MediaA1..Media AS med 
			ON sup.MediaCode = med.MediaCode 
		LEFT JOIN MediaA1..BuyMoney AS bm 
			ON sup.MediaCode = bm.MediaCode 
			AND sup.SupplierID = bm.SupplierID
	WHERE [sup].[IsLocked] = 0 
	GROUP BY med.MediaLetter, med.[MediaName], fol.FolioCode, fol.FolioName, 
	sup.SupplierID, sup.SupplierName, [sup].[AddedDateTime], fol.ActiveEndDate


GO
/****** Object:  View [dbo].[ur_MrecReport]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO









CREATE view [dbo].[ur_MrecReport] AS

-- ticket 6667 MREC Report 
-- created Denis Nkulin (EPAM) 2021-11-18


	SELECT
		rtrim(oc.OperatingCompanyName) as OperatingCompanyName,
		ba.OperatingCompanyCode,
		rtrim(ba.AgencyName) AS [Buying Agency]
		,case
			when bm.IsVouchered = 1 then 'V'
			else 'No'
		end AS [Status V]
		,bm.BuySerial AS [Serial Number]
		,bm.ClientCode AS [Cli Code]
		,rtrim(cl.ClientName) AS [Client Name]
		,bm.CampaignCode AS [Cam Num]
		,rtrim(camp.CampaignName) AS [Campaign Name]
		,FORMAT(bm.BuyDate, 'yyyy-MM') as MonthYear
		,DATENAME(month, bm.BuyDate)+ RIGHT(year(bm.BuyDate), 2) AS MonthYearName
		,bm.BuyDate
		,rtrim(byr.BuyerName) AS [Buyer Name]
		,byr.BuyerPIN
		,rtrim(bc.BookingCategoryName) AS [Booking Category]
		,im.[Type] AS [Type]
		,rtrim(sup.SupplierName) AS [Supplier Name]
		,coalesce(camp.ClientReference, camp.CampaignReference) AS [PO Ref #]
		,im.InternalCampaignCode AS [CAMPID]
		,bm.Gross AS [Gross]
		,bm.Billable AS [Billable]
		,bm.Paid AS [Paid]
		,case 
			when bm.IsLocked = 1 then 'Locked'
			else 'Unlocked'
		end as [Booking Locked Status]
	FROM MediaA1..[BuyMoney] bm
		JOIN MediaA1..[Client] cl
			ON bm.MediaCode = cl.MediaCode
			AND bm.ClientCode = cl.ClientCode
		JOIN MediaA1..BuyingAgency ba
			ON cl.BuyingAgencyCode = ba.AgencyCode
		JOIN MediaA1..OperatingCompany as oc
			ON ba.OperatingCompanyCode = oc.OperatingCompanyCode
		JOIN MediaA1..Campaign camp
			ON  bm.CampaignCode = camp.CampaignCode
			AND bm.ProductCode = camp.ProductCode
			AND bm.MediaCode = camp.MediaCode
			AND bm.ClientCode = camp.ClientCode
		JOIN MediaA1..[Supplier] sup
			ON bm.SupplierID = sup.SupplierID
		JOIN MediaA1..[BookingCategory] bc
			ON bm.BookingCategoryCode = bc.BookingCategoryCode
		JOIN MediaA1..Buyer byr
			ON bm.BuyerInitials = byr.BuyerInitials
		left JOIN MediaA1..[InetMedia] im
			ON bm.BuySerial = im.BuySerial
		WHERE FORMAT(bm.BuyDate, 'yyyy-MM') >= FORMAT(DATEADD(m, -6, getdate()), 'yyyy-MM')
		and FORMAT(bm.BuyDate, 'yyyy-MM') <= FORMAT(getdate(), 'yyyy-MM')
		AND bm.MediaCode = 5 --DIGITAL
		
		
GO
/****** Object:  View [dbo].[ur_SupplierGroupsReport]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE view [dbo].[ur_SupplierGroupsReport] AS 

-- ticket 343 GM Finance & FP – Harp Supplier Groups Report
-- created Denis Nkulin (EPAM) 2021-09-14

	SELECT 
		spg.MediaCode, 
		med.MediaLetter, 
		med.[MediaName], 
		spg.GroupCode, 
		spg.MajorCode, 
		spg.MinorCode, 
		spg.GroupName, 
		spm.MemberID, 
		sup.SupplierName, 
		sup.FolioCode, 
		fol.FolioName, 
		spm.MemberType
	FROM MediaA1..SupplierGroup AS spg
		JOIN MediaA1..Media AS med 
			ON spg.MediaCode = med.MediaCode 
		JOIN MediaA1..SupplierGroupMember AS spm
			ON spg.GroupCode = spm.GroupCode 
			AND spg.MediaCode = spm.MediaCode
		JOIN MediaA1..Supplier AS sup
			ON spm.MemberID = sup.SupplierID 
			AND spm.MediaCode = sup.MediaCode 
		JOIN MediaA1..Folio AS fol
			ON sup.FolioCode = fol.FolioCode
			AND sup.MediaCode = fol.MediaCode



GO
/****** Object:  View [dbo].[ur_TungstenReport_Test]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE view [dbo].[ur_TungstenReport_Test] AS





SELECT b.*,c.[Count],d.[MinUniqueID] , CASE WHEN b.[UniqueID] = d.[MinUniqueID] THEN 1 ELSE 0 END AS 'isFirstUniqueID'
FROM (SELECT * FROM [dbo].[ur_TungstenReport] (
   '2021/01/01'
  ,'2021/12/31')
  ) b
LEFT JOIN (

SELECT [acc_InvoiceLongNumber], [BuySerial], COUNT(*) 'Count'
FROM (SELECT * FROM [dbo].[ur_TungstenReport] (
   '2021/01/01'
  ,'2021/12/31')
  ) a
GROUP BY [acc_InvoiceLongNumber], [BuySerial]) c ON b.[acc_InvoiceLongNumber] = c.[acc_InvoiceLongNumber] AND b.[BuySerial] = c.[BuySerial]

LEFT JOIN (

SELECT [acc_InvoiceLongNumber], [BuySerial], MIN([UniqueID]) 'MinUniqueID'
FROM (SELECT * FROM [dbo].[ur_TungstenReport] (
   '2021/01/01'
  ,'2021/12/31')
  ) e
GROUP BY [acc_InvoiceLongNumber], [BuySerial]) d ON b.[acc_InvoiceLongNumber] = d.[acc_InvoiceLongNumber] AND b.[BuySerial] = d.[BuySerial]

GO
/****** Object:  View [dbo].[ur_UnlockingRequests]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO















CREATE view [dbo].[ur_UnlockingRequests] AS

-- ticket 939 Report of all unlocking requests for each agency Ops teams. 
-- created Denis Nkulin (EPAM) 2021-10-22
-- updated (add some extra fields) Denis Nikulin (EPAM) - 2021-11-17
-- updated (rollback to first verion of the report) Denis Nikulin (EPAM) - 2021-11-26
-- updated (added some fields+buyhistory) Denis Nikulin (EPAM) - 2021-11-30
-- updated logic for UnlockRelock, [Buyer changed the booking]  Denis Nikulin (EPAM) - 2021-01-13


WITH UnlockRelock 
	AS (
	SELECT BuySerial, LinkedSerial, RequestedByPIN, ReasonId, RequestedDateTime, IsActive, IsCancelled, UnlockActionDate, ReLockActionDate
		FROM (
			SELECT 
				bun.BuySerial, 
				bun.LinkedSerial, 
				bun.RequestedByPIN, 
				bun.ReasonId, 
				bun.RequestedDateTime,
				bun.IsActive, 
				bun.IsCancelled,
				acm.UniqueID,
				case 
					when acm.amount > 0 then cast(acm.AddedDate as date)
					else null
				end AS UnlockActionDate,
				lead(case when acm.amount < 0 then cast(acm.AddedDate as date) else null end, 1, null) over(partition by bun.BuySerial, bun.RequestedDateTime order by acm.UniqueID asc, acm.addeddate asc) AS ReLockActionDate,
				count(case when acm.amount > 0 then 1 else 0 end) over (partition by bun.BuySerial, bun.RequestedDateTime, case when acm.amount > 0 then acm.AddedDate else null end) AS CountUnlockDate
			FROM (
					SELECT	
						bun.BuySerial, 
						bun.LinkedSerial, 
						bun.RequestedByPIN, 
						bun.ReasonId, 
						bun.RequestedDateTime,
						lead(cast(bun.RequestedDateTime as date), 1, null) over(partition by bun.BuySerial order by bun.RequestedDateTime asc) AS NextRequestedDate,
						bun.IsActive, 
						bun.IsCancelled
					FROM MediaA1..BuyUnlock bun
				) bun
				JOIN AccountA1..AccCrMedia acmed
					ON bun.BuySerial = acmed.BuySerial
				JOIN AccountA1..AccCrMaster acm
					ON acmed.UniqueID = acm.UniqueID 
					AND acm.Amount != 0
					AND cast(bun.RequestedDateTime as date) <= cast(acm.AddedDate as date)
					AND (bun.NextRequestedDate > cast(acm.AddedDate as date) or bun.NextRequestedDate is null)
		) bun
		WHERE bun.UnlockActionDate is not null
		AND case when ReLockActionDate is null and CountUnlockDate > 1 then 0 else 1 end = 1
	)


, UnlockRelockFinal 
	AS (
		SELECT BuySerial, LinkedSerial, RequestedByPIN, ReasonId, RequestedDateTime, IsActive, IsCancelled, UnlockActionDate, ReLockActionDate
		FROM UnlockRelock

		UNION

		SELECT BuySerial, LinkedSerial, RequestedByPIN, ReasonId, RequestedDateTime, IsActive, IsCancelled, null AS UnlockActionDate, null AS ReLockActionDate
		FROM MediaA1..BuyUnlock bun
		WHERE not exists (SELECT 1
							FROM UnlockRelock u
							WHERE bun.BuySerial = u.BuySerial
							AND bun.RequestedDateTime = u.RequestedDateTime)
		)


	SELECT 
		bun.RequestedDateTime AS [Date of the request],
		bun.UnlockActionDate, 
		bun.ReLockActionDate,
		bh.[Buyer changed the booking],
		rtrim(bri.BuyerName) AS [Buyer booked activity],
		rtrim(brp.BuyerName) AS [Buyer requested the unlocking],
		rtrim(ba.AgencyName) AS [Buying Agency],
		bun.BuySerial AS [Buy Serial],
		bun.LinkedSerial AS [Linked Serial],
		rtrim(bm.ClientCode) + '|' + cast(bm.ProductCode as nvarchar) + '|' + cast(bm.CampaignCode AS nvarchar) AS [Cli/Pro/Camp codes],
		rtrim(cl.ClientName) AS ClientName,
		rtrim(prd.ProductName) AS ProductName,
		rtrim(camp.CampaignName) AS [Campaign Name],
		bm.PurchaseOrderSerial AS [PO Number],
		im.InternalCampaignCode AS [Prisma Camp ID],
		ltrim(rtrim(bm.BookingCategoryShortname)) AS [SMBC],
		rtrim(sup.SupplierName) AS [Supplier Name],
		rr.[Description] AS [Unlock Reason],
		FORMAT(bm.BuyDate, 'yyyy-MM') as MonthYearOfActivity,
		DATENAME(mm, bm.BuyDate)+right(year(bm.BuyDate),2) as MonthYearOfActivityName,
		rtrim(m.[MediaName]) AS [Media Channel],
		im.BuyOrder AS [Prisma order ID],
		bm.Payable,
		bm.Paid,
		rtrim(oc.OperatingCompanyName) as OperatingCompanyName,
		oc.OperatingCompanyCode,
		bm.BookedDate, 
		case
			when bun.IsCancelled = 1 then 'UnLocked Request cancelled'
			else 'UnLocked Request'
		end as [CacelledStatus],
		case
			when bun.IsActive = 1 then 'Active'
			else 'Inactive'
		end as ActiveStatus,
		case 
			when bun.LinkedSerial is null then 'Without Linked Serial'
			when try_cast(case 
							when PATINDEX('%[A-z]%', RIGHT(bun.BuySerial, len(bun.BuySerial)-1)) = 1 then 
								RIGHT(bun.BuySerial, len(bun.BuySerial)-2)
							else RIGHT(bun.BuySerial, len(bun.BuySerial)-1)
						end as int)
				< =
				try_cast(case 
							when PATINDEX('%[A-z]%', RIGHT(bun.LinkedSerial, len(bun.LinkedSerial)-1)) = 1 then 
								RIGHT(bun.LinkedSerial, len(bun.LinkedSerial)-2)
							else RIGHT(bun.LinkedSerial, len(bun.LinkedSerial)-1)
						end as int)
				then 'Original'
			else 'Replacement'
		end as [Original-Replacement],
		case
			when bm.IsVouchered = 1 then 'Yes'
			else 'No'
		end AS IsVouchered
	FROM UnlockRelockFinal AS bun
		JOIN MediaA1..BuyMoney AS bm
			ON bun.BuySerial = bm.BuySerial
		JOIN MediaA1..Media AS m
			ON bm.MediaCode = m.MediaCode
		JOIN MediaA1..Client AS cl 
			ON bm.MediaCode = cl.MediaCode 
			AND bm.ClientCode = cl.ClientCode
		JOIN MediaA1..BuyingAgency AS ba 
			ON cl.BuyingAgencyCode = ba.AgencyCode
		JOIN MediaA1..Product AS prd
			ON bm.MediaCode = prd.MediaCode
			AND bm.ClientCode = prd.ClientCode 
			AND bm.ProductCode = prd.ProductCode
		JOIN MediaA1..OperatingCompany as oc
			ON ba.OperatingCompanyCode = oc.OperatingCompanyCode
		JOIN MediaA1..Campaign AS camp 
			ON bm.MediaCode = camp.MediaCode 
			AND bm.ClientCode = camp.ClientCode
			AND bm.ProductCode = camp.ProductCode
			AND bm.CampaignCode = camp.CampaignCode 
		JOIN MediaA1..Supplier AS sup 
			ON bm.MediaCode = sup.MediaCode
			AND bm.SupplierID = sup.SupplierID
		LEFT JOIN MediaA1..InetMedia AS im 
			ON bun.BuySerial = im.BuySerial
		LEFT JOIN MediaA1..Buyer AS bri 
			ON bm.BuyerInitials = bri.BuyerInitials
		LEFT JOIN MediaA1..Buyer AS brp
			ON bun.RequestedByPIN = brp.BuyerPIN 
		LEFT JOIN MediaA1..ReasonResolution AS rr 
			ON bun.ReasonId = rr.ReasonResolutionID
		LEFT JOIN (
				SELECT BuySerial, cast(AmendedDate as date) AS [Buyer changed the booking],
					case
						when gross = lag(gross, 1, null) over(partition by BuySerial order by amendeddate+amendedtime asc)
						AND MediaDiscountPercentage = lag(MediaDiscountPercentage, 1, null) over(partition by BuySerial order by amendeddate+amendedtime asc)
						AND VATPayable = lag(VATPayable, 1, null) over(partition by BuySerial order by amendeddate+amendedtime asc)
						AND VATBillable = lag(VATBillable, 1, null) over(partition by BuySerial order by amendeddate+amendedtime asc) 
							then 0
						else 1
					end AS ComparisonFlag
				FROM MediaA1..BuyHistory bh
				WHERE exists (SELECT 1
								FROM MediaA1..BuyUnlock bun
								WHERE bh.BuySerial = bun.BuySerial)
			) bh
		ON bun.BuySerial = bh.BuySerial
		and bh.[Buyer changed the booking] between bun.UnlockActionDate and bun.ReLockActionDate
		and bh.ComparisonFlag = 1







GO
/****** Object:  View [dbo].[vw_ClientMediaReport]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vw_ClientMediaReport]
    --WITH SCHEMABINDING
AS
    SELECT 
        oc.OperatingCompanyCode,
        oc.OperatingCompanyName,
        ba.AgencyName AS BuyingAgencyName,
        ba.AgencyCode AS BuyingAgencyCode,
        c.ClientCode,
        c.ClientName,
        c.LimitAccess2
    FROM MediaA1..Client c
        JOIN MediaA1..Agency ba
            ON c.BuyingAgencyCode = ba.AgencyCode 
        LEFT JOIN ReportingA1..OperatingCompany oc 
            ON oc.OperatingCompanyCode=ba.OperatingCompanyCode 
    
    /*WHERE ((c.BuyingAgencyCode In (80,81,82,83,84,85,86,87,250)))
            OR ((c.BuyingAgencyCode=100) AND (c.LimitAccess2=80))*/
    GROUP BY
        oc.OperatingCompanyCode
        ,oc.OperatingCompanyName
        ,ba.AgencyName
        ,ba.AgencyCode
        ,c.ClientCode
        ,c.ClientName
        ,c.LimitAccess2
    --ORDER BY
    --    oc.OperatingCompanyName
    --    ,ba.AgencyName
    --    ,c.ClientName
GO
/****** Object:  Table [dbo].[BillingDateLog]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BillingDateLog](
	[LogId] [smallint] IDENTITY(1,1) NOT NULL,
	[BillingYear] [smallint] NOT NULL,
	[AddedDate] [smalldatetime] NOT NULL,
	[AddedBy] [varchar](50) NOT NULL,
 CONSTRAINT [PK_BillingDateLog] PRIMARY KEY CLUSTERED 
(
	[LogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BillingDateRules]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BillingDateRules](
	[MediaCode] [tinyint] NOT NULL,
	[EffectiveFrom] [date] NOT NULL,
	[EffectiveTo] [date] NOT NULL,
	[BillingDate] [tinyint] NOT NULL,
	[MonthOffset] [tinyint] NOT NULL,
 CONSTRAINT [PK_BillingDate] PRIMARY KEY CLUSTERED 
(
	[MediaCode] ASC,
	[EffectiveFrom] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DateDimensions]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DateDimensions](
	[TheDate] [date] NOT NULL,
	[TheDay] [tinyint] NOT NULL,
	[TheDayOfTheWeek] [tinyint] NOT NULL,
	[TheWorkingDayOfTheMonth] [tinyint] NULL,
	[TheMonth] [tinyint] NOT NULL,
	[TheQuarter] [tinyint] NOT NULL,
	[TheYear] [smallint] NOT NULL,
	[TheMonthStart] [date] NOT NULL,
	[TheNextMonthStart] [date] NOT NULL,
	[IsWeekend] [int] NOT NULL,
 CONSTRAINT [PK_DateDimensions] PRIMARY KEY CLUSTERED 
(
	[TheDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DigitalBillingsSummary_OpCo_InternetType]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DigitalBillingsSummary_OpCo_InternetType](
	[OpCoCode] [int] NULL,
	[OperatingCompanyName] [char](30) NULL,
	[AgencyName] [char](30) NULL,
	[SMBCCode] [int] NULL,
	[SMBC] [varchar](250) NULL,
	[InternetTypeName] [varchar](36) NOT NULL,
	[Year] [int] NULL,
	[NoBuys] [int] NULL,
	[GrossBooked] [money] NULL,
	[Bill_Rate] [money] NULL,
	[GrossBillable] [money] NULL,
	[ClientCostBillable] [money] NULL,
	[SupPayable] [money] NULL,
	[Agency_Commission] [money] NULL,
	[BuyingAgency_Commission] [money] NULL,
	[ClientCOS] [money] NULL,
	[NetSpotIncome] [money] NULL,
	[MediaDiscount] [money] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GroupMTaxCodeMapping]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GroupMTaxCodeMapping](
	[System] [varchar](32) NOT NULL,
	[TaxCodeID] [varchar](16) NOT NULL,
	[Description] [varchar](64) NOT NULL,
	[TaxReportingCountry] [varchar](8) NOT NULL,
	[TransactionType] [varchar](16) NOT NULL,
	[Rate] [decimal](5, 4) NOT NULL,
 CONSTRAINT [PK_GroupMTaxCodeMapping] PRIMARY KEY CLUSTERED 
(
	[System] ASC,
	[TaxCodeID] ASC,
	[TaxReportingCountry] ASC,
	[TransactionType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HarpBeat_Log_Dummy]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HarpBeat_Log_Dummy](
	[ActionDateTime] [datetime] NULL,
	[ProcessName] [varchar](20) NULL,
	[ProcessAction] [varchar](20) NULL,
	[ProcessStatus] [varchar](20) NULL,
	[ProcessParm1] [varchar](30) NULL,
	[ProcessParm2] [varchar](30) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hypBuyingAgencyOffice]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hypBuyingAgencyOffice](
	[BuyingAgencyID] [smallint] NOT NULL,
	[OfficeCode] [varchar](2) NULL,
	[DDSUserID] [varchar](10) NULL,
	[OpCoID] [tinyint] NULL,
	[ParentBuyingAgencyID] [smallint] NULL,
	[ExcludeFromExtract] [bit] NOT NULL,
	[AlternateAgencyID] [smallint] NULL,
	[AlternateAgencyName] [varchar](30) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](50) NOT NULL,
 CONSTRAINT [PK_hypBuyingAgencyToOffice] PRIMARY KEY CLUSTERED 
(
	[BuyingAgencyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hypFormula]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hypFormula](
	[FormulaID] [int] NOT NULL,
	[FormulaCode] [varchar](10) NOT NULL,
	[FeeFormula] [varchar](200) NOT NULL,
	[CommissionFormula] [varchar](200) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hypOperatingCompany]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hypOperatingCompany](
	[OpCoID] [tinyint] IDENTITY(1,1) NOT NULL,
	[OpCoName] [varchar](50) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](50) NOT NULL,
 CONSTRAINT [PK_hypOperatingCompany] PRIMARY KEY CLUSTERED 
(
	[OpCoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[np_MasterClient_MDS_20220627]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[np_MasterClient_MDS_20220627](
	[LocalClientName] [varchar](150) NOT NULL,
	[Code] [varchar](32) NOT NULL,
	[MasterClientCodeFull] [varchar](100) NULL,
	[Country] [varchar](50) NOT NULL,
	[SourceApplication] [varchar](32) NOT NULL,
	[HarpVersion] [varchar](2) NOT NULL,
	[HarpClientCode] [varchar](5) NOT NULL,
	[MasterClientCode] [varchar](5) NULL,
	[MasterClientName] [varchar](150) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[np_Tungsten_Query]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[np_Tungsten_Query](
	[Folio] [varchar](150) NOT NULL,
	[Code1] [varchar](50) NOT NULL,
	[Code2] [varchar](50) NOT NULL,
	[Code3] [varchar](50) NOT NULL,
	[Code4] [varchar](50) NOT NULL,
	[Code5] [varchar](50) NOT NULL,
	[Code6] [varchar](50) NOT NULL,
	[Ron Folio] [varchar](150) NOT NULL,
	[SSP?] [varchar](10) NOT NULL,
	[Statement Date] [date] NULL,
	[Tungsten] [varchar](50) NOT NULL,
	[Account Handler] [varchar](50) NOT NULL,
	[Agency] [varchar](50) NOT NULL,
	[Opco] [varchar](50) NOT NULL,
	[Invoice Number] [varchar](50) NOT NULL,
	[Invoice Date DD/MM/YY] [date] NULL,
	[Year] [varchar](50) NULL,
	[Current] [varchar](50) NULL,
	[Client] [varchar](150) NOT NULL,
	[Serial Number (booking ref)] [varchar](50) NOT NULL,
	[MQS status] [varchar](50) NOT NULL,
	[MQS ref] [varchar](50) NOT NULL,
	[Buyer Name] [varchar](150) NOT NULL,
	[Currency] [varchar](50) NOT NULL,
	[statement value] [money] NOT NULL,
	[Processed - Due] [money] NOT NULL,
	[Not Due] [money] NOT NULL,
	[Paid] [money] NOT NULL,
	[Query Amount] [money] NULL,
	[Reason] [varchar](150) NOT NULL,
	[Comments] [varchar](150) NOT NULL,
	[FX] [decimal](18, 0) NOT NULL,
	[statement value in £] [money] NOT NULL,
	[Processed - Due in £] [money] NOT NULL,
	[Processed - Not Due in £] [money] NOT NULL,
	[Paid in £] [money] NOT NULL,
	[Query in £] [money] NOT NULL,
	[Folio Count] [int] NOT NULL,
	[Line Count] [int] NOT NULL,
	[Query Count] [int] NOT NULL,
	[Query Month] [varchar](50) NOT NULL,
	[Month] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OfficeVatRegistration]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OfficeVatRegistration](
	[OfficeCode] [char](2) NOT NULL,
	[LegalEntityName] [varchar](50) NOT NULL,
	[CompanyRegNo] [char](8) NOT NULL,
	[VatGroupName] [varchar](50) NOT NULL,
	[VatRegNo] [varchar](18) NOT NULL,
 CONSTRAINT [PK_OfficeVatRegistration] PRIMARY KEY CLUSTERED 
(
	[OfficeCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pinergy_check_james]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pinergy_check_james](
	[BuySerial] [char](9) NOT NULL,
 CONSTRAINT [PK_pinergy_check_james] PRIMARY KEY CLUSTERED 
(
	[BuySerial] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pinergy_check_ray]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pinergy_check_ray](
	[BuySerial] [char](9) NOT NULL,
 CONSTRAINT [PK_pinergy_check_ray] PRIMARY KEY CLUSTERED 
(
	[BuySerial] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reports]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reports](
	[ReportID] [int] NOT NULL,
	[Report] [varchar](50) NOT NULL,
	[Description] [varchar](256) NOT NULL,
	[CreatedDate] [smalldatetime] NOT NULL,
	[CreatedBy] [varchar](50) NOT NULL,
	[RevisedDate] [smalldatetime] NOT NULL,
	[RevisedBy] [varchar](50) NOT NULL,
	[Password] [varchar](16) NOT NULL,
	[IsExcel] [bit] NOT NULL,
	[IsPBI] [bit] NOT NULL,
 CONSTRAINT [PK_Report] PRIMARY KEY CLUSTERED 
(
	[ReportID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TestHarpBeatLog]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TestHarpBeatLog](
	[ProcessName] [varchar](20) NOT NULL,
	[ProcessAction] [varchar](20) NOT NULL,
	[ProcessStatus] [varchar](20) NOT NULL,
	[ProcessParm1] [varchar](30) NOT NULL,
	[ProcessParm2] [varchar](30) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TvSupplierAreaSalesHouse]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TvSupplierAreaSalesHouse](
	[SupplierID] [char](6) NOT NULL,
	[AreaName] [varchar](8) NULL,
	[SubGroupName] [varchar](8) NULL,
	[GroupName] [varchar](8) NULL,
	[SaleshouseID] [smallint] NULL,
	[SaleshouseName] [varchar](8) NULL,
 CONSTRAINT [PK_TvSupplierAreaSalesHouse] PRIMARY KEY CLUSTERED 
(
	[SupplierID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User_Report_BillingGroup]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_Report_BillingGroup](
	[UserID] [smallint] NOT NULL,
	[ReportID] [int] NOT NULL,
	[OpCoCode] [int] NOT NULL,
	[BillingGroup] [char](2) NOT NULL,
	[CreatedDate] [smalldatetime] NOT NULL,
	[CreatedBy] [varchar](50) NOT NULL,
	[RevisedDate] [smalldatetime] NOT NULL,
	[RevisedBy] [varchar](50) NOT NULL,
 CONSTRAINT [PK_User_Report_BillingGroup] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC,
	[ReportID] ASC,
	[OpCoCode] ASC,
	[BillingGroup] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IX_Report_ReportName]    Script Date: 30/08/2022 11:39:39 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Report_ReportName] ON [dbo].[Reports]
(
	[ReportID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_User_UserName]    Script Date: 30/08/2022 11:39:39 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_User_UserName] ON [dbo].[Users]
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BillingDateLog] ADD  CONSTRAINT [DF_BillingDateLog_AddedDate]  DEFAULT (getutcdate()) FOR [AddedDate]
GO
ALTER TABLE [dbo].[BillingDateLog] ADD  CONSTRAINT [DF_BillingDateLog_AddedBy]  DEFAULT (suser_sname()) FOR [AddedBy]
GO
ALTER TABLE [dbo].[BillingDateRules] ADD  CONSTRAINT [DF_BillingDate_MonthOffset]  DEFAULT ((0)) FOR [MonthOffset]
GO
ALTER TABLE [dbo].[Dayparts] ADD  CONSTRAINT [DF_Daypart_CreatedDate]  DEFAULT (getutcdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Dayparts] ADD  CONSTRAINT [DF_Daypart_CreatedBy]  DEFAULT (suser_sname()) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[Dayparts] ADD  CONSTRAINT [DF_Daypart_RevisedDate]  DEFAULT (getutcdate()) FOR [RevisedDate]
GO
ALTER TABLE [dbo].[Dayparts] ADD  CONSTRAINT [DF_Daypart_RevisedBy]  DEFAULT (suser_sname()) FOR [RevisedBy]
GO
ALTER TABLE [dbo].[HarpUser_Agency] ADD  CONSTRAINT [DF_HarpUser_Agency_AgencyType]  DEFAULT ('B') FOR [AgencyType]
GO
ALTER TABLE [dbo].[HarpUser_Agency] ADD  CONSTRAINT [DF_HarpUser_Agency_IsExcluded]  DEFAULT ((0)) FOR [IsExcluded]
GO
ALTER TABLE [dbo].[HarpUser_Agency] ADD  CONSTRAINT [DF_HarpUser_Agency_HasAllClients]  DEFAULT ((0)) FOR [HasAllClients]
GO
ALTER TABLE [dbo].[HarpUser_Agency] ADD  CONSTRAINT [DF_HarpUser_Agency_CreatedDate]  DEFAULT (getutcdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[HarpUser_Agency] ADD  CONSTRAINT [DF_HarpUser_Agency_CreatedBy]  DEFAULT (suser_sname()) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[HarpUser_Agency] ADD  CONSTRAINT [DF_HarpUser_Agency_RevisedDate]  DEFAULT (getutcdate()) FOR [RevisedDate]
GO
ALTER TABLE [dbo].[HarpUser_Agency] ADD  CONSTRAINT [DF_HarpUser_Agency_RevisedBy]  DEFAULT (suser_sname()) FOR [RevisedBy]
GO
ALTER TABLE [dbo].[HarpUser_Client] ADD  CONSTRAINT [DF_HarpUser_Client_CreatedDate]  DEFAULT (getutcdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[HarpUser_Client] ADD  CONSTRAINT [DF_HarpUser_Client_CreatedBy]  DEFAULT (suser_sname()) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[HarpUser_Client] ADD  CONSTRAINT [DF_HarpUser_Client_RevisedDate]  DEFAULT (getutcdate()) FOR [RevisedDate]
GO
ALTER TABLE [dbo].[HarpUser_Client] ADD  CONSTRAINT [DF_HarpUser_Client_RevisedBy]  DEFAULT (suser_sname()) FOR [RevisedBy]
GO
ALTER TABLE [dbo].[HarpUser_Media] ADD  CONSTRAINT [DF_HarpUser_Media_CreatedDate]  DEFAULT (getutcdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[HarpUser_Media] ADD  CONSTRAINT [DF_HarpUser_Media_CreatedBy]  DEFAULT (suser_sname()) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[HarpUser_Media] ADD  CONSTRAINT [DF_HarpUser_Media_RevisedDate]  DEFAULT (getutcdate()) FOR [RevisedDate]
GO
ALTER TABLE [dbo].[HarpUser_Media] ADD  CONSTRAINT [DF_HarpUser_Media_RevisedBy]  DEFAULT (suser_sname()) FOR [RevisedBy]
GO
ALTER TABLE [dbo].[HarpUser_Office] ADD  CONSTRAINT [DF_HarpUser_Office_CreatedDate]  DEFAULT (getutcdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[HarpUser_Office] ADD  CONSTRAINT [DF_HarpUser_Office_CreatedBy]  DEFAULT (suser_sname()) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[HarpUser_Office] ADD  CONSTRAINT [DF_HarpUser_Office_RevisedDate]  DEFAULT (getutcdate()) FOR [RevisedDate]
GO
ALTER TABLE [dbo].[HarpUser_Office] ADD  CONSTRAINT [DF_HarpUser_Office_RevisedBy]  DEFAULT (suser_sname()) FOR [RevisedBy]
GO
ALTER TABLE [dbo].[HarpUser_OpCo] ADD  CONSTRAINT [DF_HarpUser_OpCo_CreatedDate]  DEFAULT (getutcdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[HarpUser_OpCo] ADD  CONSTRAINT [DF_HarpUser_OpCo_CreatedBy]  DEFAULT (suser_sname()) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[HarpUser_OpCo] ADD  CONSTRAINT [DF_HarpUser_OpCo_RevisedDate]  DEFAULT (getutcdate()) FOR [RevisedDate]
GO
ALTER TABLE [dbo].[HarpUser_OpCo] ADD  CONSTRAINT [DF_HarpUser_OpCo_RevisedBy]  DEFAULT (suser_sname()) FOR [RevisedBy]
GO
ALTER TABLE [dbo].[HarpUsers] ADD  CONSTRAINT [DF_HarpUser_HasAllAgencies]  DEFAULT ((0)) FOR [HasAllAgencies]
GO
ALTER TABLE [dbo].[HarpUsers] ADD  CONSTRAINT [DF_HarpUser_HasAllMedia]  DEFAULT ((0)) FOR [HasAllMedia]
GO
ALTER TABLE [dbo].[HarpUsers] ADD  CONSTRAINT [DF_HarpUser_HasAllBookingCategories]  DEFAULT ((0)) FOR [HasRestrictedBookingCategories]
GO
ALTER TABLE [dbo].[HarpUsers] ADD  CONSTRAINT [DF_HarpUser_HasRestrictedClients]  DEFAULT ((0)) FOR [HasRestrictedClients]
GO
ALTER TABLE [dbo].[HarpUsers] ADD  CONSTRAINT [DF_HarpUser_CreatedDate]  DEFAULT (getutcdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[HarpUsers] ADD  CONSTRAINT [DF_HarpUser_CreatedBy]  DEFAULT (suser_sname()) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[HarpUsers] ADD  CONSTRAINT [DF_HarpUser_RevisedDate]  DEFAULT (getutcdate()) FOR [RevisedDate]
GO
ALTER TABLE [dbo].[HarpUsers] ADD  CONSTRAINT [DF_HarpUser_RevisedBy]  DEFAULT (suser_sname()) FOR [RevisedBy]
GO
ALTER TABLE [dbo].[hypBuyingAgencyOffice] ADD  CONSTRAINT [DF_hypBuyingAgencyToOffice_OpCoID]  DEFAULT ((0)) FOR [OpCoID]
GO
ALTER TABLE [dbo].[hypBuyingAgencyOffice] ADD  CONSTRAINT [DF_hypBuyingAgencyOffice_ParentBuyingAgencyID]  DEFAULT ((0)) FOR [ParentBuyingAgencyID]
GO
ALTER TABLE [dbo].[hypBuyingAgencyOffice] ADD  CONSTRAINT [DF_hypBuyingAgencyOffice_ExcludeFromExtract]  DEFAULT ((0)) FOR [ExcludeFromExtract]
GO
ALTER TABLE [dbo].[hypBuyingAgencyOffice] ADD  CONSTRAINT [DF_hypBuyingAgencyToOffice_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[hypBuyingAgencyOffice] ADD  CONSTRAINT [DF_hypBuyingAgencyToOffice_CreatedBy]  DEFAULT (suser_sname()) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[hypOperatingCompany] ADD  CONSTRAINT [DF_hypOperatingCompany_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[hypOperatingCompany] ADD  CONSTRAINT [DF_hypOperatingCompany_CreatedBy]  DEFAULT (suser_sname()) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[Reports] ADD  CONSTRAINT [DF_Report_CreatedDate]  DEFAULT (getutcdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Reports] ADD  CONSTRAINT [DF_Report_CreatedBy]  DEFAULT (suser_sname()) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[Reports] ADD  CONSTRAINT [DF_Report_RevisedDate]  DEFAULT (getutcdate()) FOR [RevisedDate]
GO
ALTER TABLE [dbo].[Reports] ADD  CONSTRAINT [DF_Report_RevisedBy]  DEFAULT (suser_sname()) FOR [RevisedBy]
GO
ALTER TABLE [dbo].[Reports] ADD  CONSTRAINT [DF_Reports_Password]  DEFAULT ('NotSet') FOR [Password]
GO
ALTER TABLE [dbo].[Reports] ADD  CONSTRAINT [DF_Reports_IsExcel]  DEFAULT ((0)) FOR [IsExcel]
GO
ALTER TABLE [dbo].[Reports] ADD  CONSTRAINT [DF_Reports_IsPBI]  DEFAULT ((0)) FOR [IsPBI]
GO
ALTER TABLE [dbo].[RestrictedBookingCategories] ADD  CONSTRAINT [DF_RestrictedBookingCategory_CreatedDate]  DEFAULT (getutcdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[RestrictedBookingCategories] ADD  CONSTRAINT [DF_RestrictedBookingCategory_CreatedBy]  DEFAULT (suser_sname()) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[RestrictedBookingCategories] ADD  CONSTRAINT [DF_RestrictedBookingCategory_RevisedDate]  DEFAULT (getutcdate()) FOR [RevisedDate]
GO
ALTER TABLE [dbo].[RestrictedBookingCategories] ADD  CONSTRAINT [DF_RestrictedBookingCategory_RevisedBy]  DEFAULT (suser_sname()) FOR [RevisedBy]
GO
ALTER TABLE [dbo].[RestrictedClients] ADD  CONSTRAINT [DF_RestrictedClient_CreatedDate]  DEFAULT (getutcdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[RestrictedClients] ADD  CONSTRAINT [DF_RestrictedClient_CreatedBy]  DEFAULT (suser_sname()) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[RestrictedClients] ADD  CONSTRAINT [DF_RestrictedClient_RevisedDate]  DEFAULT (getutcdate()) FOR [RevisedDate]
GO
ALTER TABLE [dbo].[RestrictedClients] ADD  CONSTRAINT [DF_RestrictedClient_RevisedBy]  DEFAULT (suser_sname()) FOR [RevisedBy]
GO
ALTER TABLE [dbo].[User_Report] ADD  CONSTRAINT [DF_User_Report_HasAllAgencies]  DEFAULT ((0)) FOR [HasAllAgencies]
GO
ALTER TABLE [dbo].[User_Report] ADD  CONSTRAINT [DF_User_Report_HasAllMedia]  DEFAULT ((0)) FOR [HasAllMedia]
GO
ALTER TABLE [dbo].[User_Report] ADD  CONSTRAINT [DF_User_Report_HasAllOffices]  DEFAULT ((0)) FOR [HasAllOffices]
GO
ALTER TABLE [dbo].[User_Report] ADD  CONSTRAINT [DF_User_Report_HasRestrictedBookingCategories]  DEFAULT ((0)) FOR [HasRestrictedBookingCategories]
GO
ALTER TABLE [dbo].[User_Report] ADD  CONSTRAINT [DF_User_Report_HasRestrictedClients]  DEFAULT ((0)) FOR [HasRestrictedClients]
GO
ALTER TABLE [dbo].[User_Report] ADD  CONSTRAINT [DF_User_Report_CreatedDate]  DEFAULT (getutcdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[User_Report] ADD  CONSTRAINT [DF_User_Report_CreatedBy]  DEFAULT (suser_sname()) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[User_Report] ADD  CONSTRAINT [DF_User_Report_RevisedDate]  DEFAULT (getutcdate()) FOR [RevisedDate]
GO
ALTER TABLE [dbo].[User_Report] ADD  CONSTRAINT [DF_User_Report_RevisedBy]  DEFAULT (suser_sname()) FOR [RevisedBy]
GO
ALTER TABLE [dbo].[User_Report_Agency] ADD  CONSTRAINT [DF_User_Report_Agency_AgencyType]  DEFAULT ('B') FOR [AgencyType]
GO
ALTER TABLE [dbo].[User_Report_Agency] ADD  CONSTRAINT [DF_User_Report_Agency_IsExcluded]  DEFAULT ((0)) FOR [IsExcluded]
GO
ALTER TABLE [dbo].[User_Report_Agency] ADD  CONSTRAINT [DF_User_Report_Agency_HasAllClients]  DEFAULT ((0)) FOR [HasAllClients]
GO
ALTER TABLE [dbo].[User_Report_Agency] ADD  CONSTRAINT [DF_User_Report_Agency_CreatedDate]  DEFAULT (getutcdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[User_Report_Agency] ADD  CONSTRAINT [DF_User_Report_Agency_CreatedBy]  DEFAULT (suser_sname()) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[User_Report_Agency] ADD  CONSTRAINT [DF_User_Report_Agency_RevisedDate]  DEFAULT (getutcdate()) FOR [RevisedDate]
GO
ALTER TABLE [dbo].[User_Report_Agency] ADD  CONSTRAINT [DF_User_Report_Agency_RevisedBy]  DEFAULT (suser_sname()) FOR [RevisedBy]
GO
ALTER TABLE [dbo].[User_Report_BillingGroup] ADD  CONSTRAINT [DF_User_Report_BillingGroup_CreatedDate]  DEFAULT (getutcdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[User_Report_BillingGroup] ADD  CONSTRAINT [DF_User_Report_BillingGroup_CreatedBy]  DEFAULT (suser_sname()) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[User_Report_BillingGroup] ADD  CONSTRAINT [DF_User_Report_BillingGroup_RevisedDate]  DEFAULT (getutcdate()) FOR [RevisedDate]
GO
ALTER TABLE [dbo].[User_Report_BillingGroup] ADD  CONSTRAINT [DF_User_Report_BillingGroup_RevisedBy]  DEFAULT (suser_sname()) FOR [RevisedBy]
GO
ALTER TABLE [dbo].[User_Report_Client] ADD  CONSTRAINT [DF_User_Report_Client_CreatedDate]  DEFAULT (getutcdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[User_Report_Client] ADD  CONSTRAINT [DF_User_Report_Client_CreatedBy]  DEFAULT (suser_sname()) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[User_Report_Client] ADD  CONSTRAINT [DF_User_Report_Client_RevisedDate]  DEFAULT (getutcdate()) FOR [RevisedDate]
GO
ALTER TABLE [dbo].[User_Report_Client] ADD  CONSTRAINT [DF_User_Report_Client_RevisedBy]  DEFAULT (suser_sname()) FOR [RevisedBy]
GO
ALTER TABLE [dbo].[User_Report_Media] ADD  CONSTRAINT [DF_User_Report_Media_CreatedDate]  DEFAULT (getutcdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[User_Report_Media] ADD  CONSTRAINT [DF_User_Report_Media_CreatedBy]  DEFAULT (suser_sname()) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[User_Report_Media] ADD  CONSTRAINT [DF_User_Report_Media_RevisedDate]  DEFAULT (getutcdate()) FOR [RevisedDate]
GO
ALTER TABLE [dbo].[User_Report_Media] ADD  CONSTRAINT [DF_User_Report_Media_RevisedBy]  DEFAULT (suser_sname()) FOR [RevisedBy]
GO
ALTER TABLE [dbo].[User_Report_Office] ADD  CONSTRAINT [DF_User_Report_Office_CreatedDate]  DEFAULT (getutcdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[User_Report_Office] ADD  CONSTRAINT [DF_User_Report_Office_CreatedBy]  DEFAULT (suser_sname()) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[User_Report_Office] ADD  CONSTRAINT [DF_User_Report_Office_RevisedDate]  DEFAULT (getutcdate()) FOR [RevisedDate]
GO
ALTER TABLE [dbo].[User_Report_Office] ADD  CONSTRAINT [DF_User_Report_Office_RevisedBy]  DEFAULT (suser_sname()) FOR [RevisedBy]
GO
ALTER TABLE [dbo].[User_Report_OpCo] ADD  CONSTRAINT [DF_User_Report_OpCo_CreatedDate]  DEFAULT (getutcdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[User_Report_OpCo] ADD  CONSTRAINT [DF_User_Report_OpCo_CreatedBy]  DEFAULT (suser_sname()) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[User_Report_OpCo] ADD  CONSTRAINT [DF_User_Report_OpCo_RevisedDate]  DEFAULT (getutcdate()) FOR [RevisedDate]
GO
ALTER TABLE [dbo].[User_Report_OpCo] ADD  CONSTRAINT [DF_User_Report_OpCo_RevisedBy]  DEFAULT (suser_sname()) FOR [RevisedBy]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_User_CreatedDate]  DEFAULT (getutcdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_User_CreatedBy]  DEFAULT (suser_sname()) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_User_RevisedDate]  DEFAULT (getutcdate()) FOR [RevisedDate]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_User_RevisedBy]  DEFAULT (suser_sname()) FOR [RevisedBy]
GO
ALTER TABLE [dbo].[BillingDates]  WITH CHECK ADD  CONSTRAINT [FK_BillingDates_BillingDateLog] FOREIGN KEY([BillingDateLogId])
REFERENCES [dbo].[BillingDateLog] ([LogId])
GO
ALTER TABLE [dbo].[BillingDates] CHECK CONSTRAINT [FK_BillingDates_BillingDateLog]
GO
ALTER TABLE [dbo].[HarpUser_Agency]  WITH CHECK ADD  CONSTRAINT [FK_HarpUser_HarpUserAgency] FOREIGN KEY([UserID])
REFERENCES [dbo].[HarpUsers] ([UserID])
GO
ALTER TABLE [dbo].[HarpUser_Agency] CHECK CONSTRAINT [FK_HarpUser_HarpUserAgency]
GO
ALTER TABLE [dbo].[HarpUser_Client]  WITH CHECK ADD  CONSTRAINT [FK_HarpUser_Client_HarpUser] FOREIGN KEY([UserID])
REFERENCES [dbo].[HarpUsers] ([UserID])
GO
ALTER TABLE [dbo].[HarpUser_Client] CHECK CONSTRAINT [FK_HarpUser_Client_HarpUser]
GO
ALTER TABLE [dbo].[HarpUser_Media]  WITH CHECK ADD  CONSTRAINT [FK_HarpUser_Media_HarpUser] FOREIGN KEY([UserID])
REFERENCES [dbo].[HarpUsers] ([UserID])
GO
ALTER TABLE [dbo].[HarpUser_Media] CHECK CONSTRAINT [FK_HarpUser_Media_HarpUser]
GO
ALTER TABLE [dbo].[HarpUser_Office]  WITH CHECK ADD  CONSTRAINT [FK_HarpUser_HarpUserOffice] FOREIGN KEY([UserID])
REFERENCES [dbo].[HarpUsers] ([UserID])
GO
ALTER TABLE [dbo].[HarpUser_Office] CHECK CONSTRAINT [FK_HarpUser_HarpUserOffice]
GO
ALTER TABLE [dbo].[HarpUser_OpCo]  WITH CHECK ADD  CONSTRAINT [FK_HarpUser_HarpUserOpCo] FOREIGN KEY([UserID])
REFERENCES [dbo].[HarpUsers] ([UserID])
GO
ALTER TABLE [dbo].[HarpUser_OpCo] CHECK CONSTRAINT [FK_HarpUser_HarpUserOpCo]
GO
ALTER TABLE [dbo].[HarpUsers]  WITH CHECK ADD  CONSTRAINT [FK_HarpUser_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[HarpUsers] CHECK CONSTRAINT [FK_HarpUser_User]
GO
ALTER TABLE [dbo].[User_Report]  WITH CHECK ADD  CONSTRAINT [FK_User_Report_Reports] FOREIGN KEY([ReportID])
REFERENCES [dbo].[Reports] ([ReportID])
GO
ALTER TABLE [dbo].[User_Report] CHECK CONSTRAINT [FK_User_Report_Reports]
GO
ALTER TABLE [dbo].[User_Report]  WITH CHECK ADD  CONSTRAINT [FK_User_Report_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[User_Report] CHECK CONSTRAINT [FK_User_Report_User]
GO
ALTER TABLE [dbo].[User_Report_Agency]  WITH CHECK ADD  CONSTRAINT [FK_User_Report_Agency_User_Report] FOREIGN KEY([UserID], [ReportID])
REFERENCES [dbo].[User_Report] ([UserID], [ReportID])
GO
ALTER TABLE [dbo].[User_Report_Agency] CHECK CONSTRAINT [FK_User_Report_Agency_User_Report]
GO
ALTER TABLE [dbo].[User_Report_BillingGroup]  WITH CHECK ADD  CONSTRAINT [FK_User_Report_BillingGroup_User_Report] FOREIGN KEY([UserID], [ReportID])
REFERENCES [dbo].[User_Report] ([UserID], [ReportID])
GO
ALTER TABLE [dbo].[User_Report_BillingGroup] CHECK CONSTRAINT [FK_User_Report_BillingGroup_User_Report]
GO
ALTER TABLE [dbo].[User_Report_Client]  WITH CHECK ADD  CONSTRAINT [FK_User_Report_Client_User_Report] FOREIGN KEY([UserID], [ReportID])
REFERENCES [dbo].[User_Report] ([UserID], [ReportID])
GO
ALTER TABLE [dbo].[User_Report_Client] CHECK CONSTRAINT [FK_User_Report_Client_User_Report]
GO
ALTER TABLE [dbo].[User_Report_Media]  WITH CHECK ADD  CONSTRAINT [FK_User_Report_Media_User_Report] FOREIGN KEY([UserID], [ReportID])
REFERENCES [dbo].[User_Report] ([UserID], [ReportID])
GO
ALTER TABLE [dbo].[User_Report_Media] CHECK CONSTRAINT [FK_User_Report_Media_User_Report]
GO
ALTER TABLE [dbo].[User_Report_Office]  WITH CHECK ADD  CONSTRAINT [FK_User_Report_Office_User_Report] FOREIGN KEY([UserID], [ReportID])
REFERENCES [dbo].[User_Report] ([UserID], [ReportID])
GO
ALTER TABLE [dbo].[User_Report_Office] CHECK CONSTRAINT [FK_User_Report_Office_User_Report]
GO
ALTER TABLE [dbo].[User_Report_OpCo]  WITH CHECK ADD  CONSTRAINT [FK_User_Report_OpCo_User_Report] FOREIGN KEY([UserID], [ReportID])
REFERENCES [dbo].[User_Report] ([UserID], [ReportID])
GO
ALTER TABLE [dbo].[User_Report_OpCo] CHECK CONSTRAINT [FK_User_Report_OpCo_User_Report]
GO
ALTER TABLE [dbo].[BillingDateLog]  WITH CHECK ADD  CONSTRAINT [ValidBillingYear] CHECK  (([BillingYear]>=(2015) AND [BillingYear]<=(2050)))
GO
ALTER TABLE [dbo].[BillingDateLog] CHECK CONSTRAINT [ValidBillingYear]
GO
ALTER TABLE [dbo].[BillingDateRules]  WITH CHECK ADD  CONSTRAINT [CK_BillingDate] CHECK  (([BillingDate]>=(1) AND [BillingDate]<=(31)))
GO
ALTER TABLE [dbo].[BillingDateRules] CHECK CONSTRAINT [CK_BillingDate]
GO
ALTER TABLE [dbo].[BillingDateRules]  WITH CHECK ADD  CONSTRAINT [CK_BillingDate_1] CHECK  (([EffectiveFrom]>='2015-01-01' AND [EffectiveFrom]<=[EffectiveTo]))
GO
ALTER TABLE [dbo].[BillingDateRules] CHECK CONSTRAINT [CK_BillingDate_1]
GO
ALTER TABLE [dbo].[BillingDateRules]  WITH CHECK ADD  CONSTRAINT [CK_BillingDate_2] CHECK  (([EffectiveTo]>='2015-01-01' AND [EffectiveTo]>=[EffectiveFrom]))
GO
ALTER TABLE [dbo].[BillingDateRules] CHECK CONSTRAINT [CK_BillingDate_2]
GO
ALTER TABLE [dbo].[BillingDateRules]  WITH CHECK ADD  CONSTRAINT [CK_BillingDate_3] CHECK  (([MonthOffset]=(1) OR [MonthOffset]=(0)))
GO
ALTER TABLE [dbo].[BillingDateRules] CHECK CONSTRAINT [CK_BillingDate_3]
GO
ALTER TABLE [dbo].[HarpUser_Agency]  WITH CHECK ADD  CONSTRAINT [CK_HarpUser_Agency_ExcludedAgency] CHECK  ((NOT ([IsExcluded]=(1) AND [HasAllClients]=(1))))
GO
ALTER TABLE [dbo].[HarpUser_Agency] CHECK CONSTRAINT [CK_HarpUser_Agency_ExcludedAgency]
GO
ALTER TABLE [dbo].[HarpUser_Agency]  WITH CHECK ADD  CONSTRAINT [CK_HarpUser_AgencyType_B] CHECK  (([AgencyType]='B'))
GO
ALTER TABLE [dbo].[HarpUser_Agency] CHECK CONSTRAINT [CK_HarpUser_AgencyType_B]
GO
ALTER TABLE [dbo].[HarpUser_Media]  WITH CHECK ADD  CONSTRAINT [CK_HarpUser_Media_Valid_Media_Code] CHECK  (([MediaCode]>=(0) AND [MediaCode]<=(7)))
GO
ALTER TABLE [dbo].[HarpUser_Media] CHECK CONSTRAINT [CK_HarpUser_Media_Valid_Media_Code]
GO
ALTER TABLE [dbo].[User_Report_Agency]  WITH CHECK ADD  CONSTRAINT [CK_User_Report_Agency_IsExcluded] CHECK  ((NOT ([IsExcluded]=(1) AND [HasAllClients]=(1))))
GO
ALTER TABLE [dbo].[User_Report_Agency] CHECK CONSTRAINT [CK_User_Report_Agency_IsExcluded]
GO
ALTER TABLE [dbo].[User_Report_Agency]  WITH CHECK ADD  CONSTRAINT [CK_User_Report_AgencyType_B] CHECK  (([AgencyType]='B'))
GO
ALTER TABLE [dbo].[User_Report_Agency] CHECK CONSTRAINT [CK_User_Report_AgencyType_B]
GO
ALTER TABLE [dbo].[User_Report_Media]  WITH CHECK ADD  CONSTRAINT [CK_User_Report_Media_Valid_Media_Code] CHECK  (([MediaCode]>=(0) AND [MediaCode]<=(7)))
GO
ALTER TABLE [dbo].[User_Report_Media] CHECK CONSTRAINT [CK_User_Report_Media_Valid_Media_Code]
GO
/****** Object:  StoredProcedure [dbo].[AddBillingDates]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[AddBillingDates]
    @year int
AS

/*
=============================================
Author: Ray Drew
Created: 2020-07-15
Description: generate billing dates for year by media | billing dates not sat/sun or public holiday
Usage:


=============================================
*/

SET NOCOUNT ON;

BEGIN TRY
BEGIN TRANSACTION;

DECLARE @bookingDates TABLE (
	mediaCode tinyint NOT NULL,
	bDate date NOT NULL,
	PRIMARY KEY (mediaCode, bDate)

)
-- billing dates exclude sat/sun and public holidays
DECLARE @candidateDates TABLE (
	cDate date NOT NULL,
	PRIMARY KEY (cDate)
);
DECLARE @media TABLE (
	mediaCode tinyint,
	PRIMARY KEY (mediaCode)
);

DECLARE @startdate date;
DECLARE @bookingEndDate date;
DECLARE @candidateEndDate date;
DECLARE @dayDate date;
DECLARE @logId smallint;

INSERT INTO dbo.BillingDateLog (BillingYear)
SELECT @year;

SET @logId = @@identity;

SET @startDate = datefromparts(@year, 1, 1);
SET @bookingEndDate = datefromparts(@year, 12, 31);
SET @candidateEndDate = datefromparts(@year + 1, 1, 31);
SET @dayDate = @startdate;
SET DATEFIRST 7;

INSERT INTO @media
	(
		mediaCode
	)
	SELECT DISTINCT
		mediaCode
	FROM dbo.BillingDateRules;

-- add booking dates
WHILE datediff(DAY, @dayDate, @bookingEndDate) > -1
BEGIN
    INSERT INTO @bookingDates
        (
            mediaCode,
            bDate
        )
        SELECT
            m.mediaCode,
            @dayDate
        FROM @media AS m;

    SET @dayDate = dateadd(DAY, 1, @dayDate);
END -- while populate booking dates

-- add candidate dates
SET @dayDate = @startdate
WHILE datediff(day, @dayDate, @candidateEndDate) > -1
BEGIN
    IF
        datepart(dw, @dayDate) not in (1, 7) and not exists (
        SELECT
            *
        FROM dbo.PublicHolidays
        WHERE HolidayDate = @dayDate
        )
    INSERT INTO @candidateDates
    (
        cDate
    )
    SELECT
        @dayDate;

    SET @dayDate = dateadd(DAY, 1, @dayDate);
END -- while populate candidate dates

-- delete any existing records for this year
DELETE FROM dbo.BillingDates WHERE BookingDate BETWEEN @startdate and @bookingEndDate

INSERT into dbo.BillingDates (MediaCode, BookingDate, BillingDate, BillingDateLogId)
SELECT
	bd.mediaCode,
	bd.bDate,
	cd.cDate,
    @logId
FROM @bookingDates AS bd
	JOIN dbo.BillingDateRules AS bdr
		ON bd.mediaCode = bdr.mediaCode
	JOIN @candidateDates AS cd
		ON bd.bDate BETWEEN bdr.EffectiveFrom AND bdr.EffectiveTo
		AND cd.cDate = (
			SELECT
				max(x.cDate)
			FROM @candidateDates AS x
			WHERE x.cDate <= datefromparts(datepart(yy, dateadd(M, bdr.MonthOffset, bd.bDate)), datepart(M, dateadd(M, bdr.MonthOffset, bd.bDate)), bdr.BillingDate)
		)


COMMIT TRANSACTION;
END TRY

BEGIN CATCH
IF @@TRANCOUNT > 0
BEGIN
ROLLBACK TRANSACTION;
END

DECLARE @ErrMsg nvarchar(4000)
DECLARE @ErrSev int

SELECT
	@ErrMsg = 'Proc: ' + error_procedure() + '. Msg: ' + error_message() + ' Line:' + convert(nvarchar, error_line()),
	@ErrSev = error_severity();
RAISERROR (@ErrMsg, @ErrSev, 1);
END CATCH
GO
/****** Object:  StoredProcedure [dbo].[hyp_GetMonthlyDataExtract]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[hyp_GetMonthlyDataExtract]
                                     (@Year            smallint,
                                      @Month        tinyint,
                                      @OpCoID        tinyint)
                                 
AS


/* 
 ==================================================================================================
    Author:            Richard Illingworth / Jon Powell for A1 version
    Create date:    16th November 2011 / 14 Dec 2014
    Description:    Returns a dataset for the monthly hyperion extract

    Usage:            EXEC Hype.A1GetMonthlyDataExtract 2013, 2 , 5

    Revisions:        1.01 Stored procedure created
                    1.02 Changed references from Y9 to A1 14 DEC 2014 JP
                    1.03 Changed output columns to only include 13 Feb 2015 JP
                    The only columns we need for the data is:
                        •    2 – Agency (BuyingAgencyName)
                        •    3 – Client (ClientCode)
                        •    16 – Media (MedLetter)
                        •    23 – SubMedia (IncomeAccount)
                        •    24 – Measure (MeasureName)
                        •    25 – Data Values (MeasureValue)
                        •    26 – Digital Type (InternetAndPrintType)
                    1.04 Updated NoClient logic:
                        a) if clientcode exists, use that. Else:
                            b) else if ContraAccountCode is 3 characters AND ContraUnit = 'S' AND ContraLedger = 'J', use that. 
                            c) if none of the above, enter ‘NoClient’ 
			Migrate to ReportingA1 RD 2021-06-20
 ==================================================================================================
*/


BEGIN

SET NOCOUNT ON;

--Call proc to ensure A1BuyingAgencyOffice table is up to date with new records 
EXEC dbo.hyp_InsertAgencyData

--This is here to sort an issue with SSIS and metadata from procs.
--This!(http://consultingblogs.emc.com/jamiethomson/archive/2006/12/20/SSIS_3A00_-Using-stored-procedures-inside-an-OLE-DB-Source-component.aspx)
IF 1 = 2
BEGIN
--1.03 Changed output columns to only include a subset - have just commented out not needed ones, check also at bottom of extrat for finaloutput 
SELECT    --CONVERT(varchar(30), NULL)  AS BuyingAgencyCode,
    CONVERT(VARCHAR(30), NULL) AS BuyingAgencyName,
    CONVERT(VARCHAR(8), NULL) AS ClientCode,
    --CONVERT(varchar(30), NULL) AS ClientName,
    --CONVERT(varchar(1), NULL) AS AccountGroupFilter,
    --CONVERT(varchar(2), NULL) AS ClientGroupFilter,
    --CONVERT(varchar(3), NULL) AS CampaignCode,
    --CONVERT(varchar(24), NULL) AS CampaignName,
    --CONVERT(varchar(6), NULL) AS FolioCode,
    --CONVERT(varchar(36), NULL) AS FolioName,
    --CONVERT(varchar(6), NULL) AS SupplierID,
    --CONVERT(varchar(35), NULL) AS SupplierName,
    --CONVERT(varchar(6), NULL) AS InvoiceCode,
    --CONVERT(varchar(30), NULL) AS InvoiceDate,
    --CONVERT(varchar(9), NULL) AS BuySerial,
    CONVERT(VARCHAR(8), NULL) AS MedLetter,
    --CONVERT(varchar(12), NULL) AS BookingCategory,
    --CONVERT(varchar(60), NULL) AS ClientReference,
    --CONVERT(varchar(200), NULL) AS ClientFeeFormula,
    --CONVERT(varchar(200), NULL) AS ClientCommissonFormula,
    --CONVERT(varchar(200), NULL) AS ProductFeeFormula,
    --CONVERT(varchar(200), NULL) AS ProductCommissionFormula,
    CONVERT(VARCHAR(30), NULL) AS IncomeAccount,
    CONVERT(VARCHAR(40), NULL) AS MeasureName,
    CONVERT(VARCHAR(30), NULL) AS MeasureValue,
    CONVERT(VARCHAR(13), NULL) AS InternetAndPrintType
--CONVERT(varchar(4), NULL) AS BatchReference
END

----------------------------------------------------------------------------------------------------------------------------------------------
--get normal data
----------------------------------------------------------------------------------------------------------------------------------------------
SELECT
    CASE (ISNULL(ao.AlternateAgencyID, ''))
        WHEN '' THEN ag.AgencyCode
        ELSE ao.AlternateAgencyID
    END AS BuyingAgencyCode,
    CASE (ISNULL(ao.AlternateAgencyName, ''))
        WHEN '' THEN RTRIM(ag.AgencyName)
        ELSE ao.AlternateAgencyName
    END AS BuyingAgencyName,

    /*  -- ASKED TO INCLUDE _C for all client codes 29 JAN 2015
        ClientCode = CASE(PATINDEX('%a-z%', RTRIM(cl.ClientCode)))
                    WHEN 0 THEN 'C_' + RTRIM(cl.ClientCode)
                    ELSE CASE(UPPER(RTRIM(cl.ClientCode)))
                            WHEN 'MAY' THEN 'C_' + RTRIM(cl.ClientCode)
                            ELSE RTRIM(cl.ClientCode)
                         END
                 END,*/
    'C_' + RTRIM(cl.ClientCode) AS ClientCode,
    RTRIM(cl.ClientName) AS ClientName,
    cl.Filter1 AS AccountGroupFilter,
    cl.BillingGroup AS ClientGroupFilter,
    ac.CampaignCode,
    RTRIM(ca.CampaignName) AS CampaignName,
    RTRIM(fo.FolioCode) AS FolioCode,
    RTRIM(fo.FolioName) AS FolioName,
    su.SupplierID,
    RTRIM(su.SupplierName) AS SupplierName,
    ac.InvoiceCode,
    CONVERT(VARCHAR, ac.InvoiceDate, 111) AS InvoiceDate,
    RTRIM(ac.BuySerial) AS BuySerial,
    LEFT(bu.BuySerial, 1) AS MedLetter,
    CASE
        WHEN bu.MediaCode NOT IN (5, 6, 11, 13) THEN 'MEDIA'
        ELSE ISNULL(RTRIM(bu.BookingCategoryShortName), '')
    END AS BookingCategory,
    ISNULL(RTRIM(ca.ClientReference), '') AS ClientReference,
    ISNULL(RTRIM(cf.FeeFormula), '') AS ClientFeeFormula,
    ISNULL(RTRIM(cf.CommissionFormula), '') AS ClientCommissonFormula,
    ISNULL(RTRIM(pf.FeeFormula), '') AS ProductFeeFormula,
    ISNULL(RTRIM(pf.CommissionFormula), '') AS ProductCommissionFormula,
    /*  -- ASKED TO REMOVE SI prefix 29 JAN 2015
    IncomeAccount =    CASE(ISNULL(RTRIM(bm.IncomeAccount),'')) 
                        WHEN '' THEN CASE(UPPER(LEFT(me.CommissionAccount,2))) 
                                        WHEN 'SI' THEN RTRIM(me.CommissionAccount) 
                                        ELSE 'SI' + RTRIM(me.CommissionAccount) 
                                     END
                        ELSE RTRIM(bm.IncomeAccount) 
                    END,
                    */
    IncomeAccount =
        CASE
            WHEN bm.IncomeAccount IS NULL THEN RTRIM(REPLACE(me.CommissionAccount, 'SI', ''))
            ELSE RTRIM(REPLACE(bm.IncomeAccount, 'SI', ''))
        END,
    --ISNULL(CASE(ISNULL(RTRIM(bm.IncomeAccount),'')) WHEN '' THEN RTRIM(me.CommissionAccount) ELSE RTRIM(bm.IncomeAccount) END,'') AS IncomeAccount,
    --bm.IncomeAccount AS SMBCSIAccount, 
    --me.CommissionAccount AS MediaSIAccount,
    ac.GrossBilled AS GrossBilling,
    ac.MediaDiscountBilled,
    ac.PayableBilled AS NetBillable,
    ac.TotalBilled - ac.VATBilled AS NetBilled,
    ac.BillableBilled,
    bu.LevyBillable AS AsbofBasbofBillable,
    ac.LevyBilled AS AsbofBasbofBilled,
    bu.MediaDiscountPercentage,
    bu.AgencyCommission + ac.SpotIncomeBilled AS AgencyCommission,
    ac.AgencyCommissionBilled + ac.SpotIncomeBilled AS AgencyCommissionBilled,
    ac.BuyingAgencyCommissionBilled + ac.SpotIncomeBilled AS ActualIncome,
    ac.CreativeAgencyCommissionBilled,
    CASE (ISNULL(pb.CommissionRate, ''))
        WHEN '' THEN CASE (ISNULL(cb.CommissionRate, ''))
            WHEN '' THEN CASE (ISNULL(bc.CommissionRate, ''))
                WHEN '' THEN CASE (ISNULL(ca.InvoicableCommissionRate, ''))
                    WHEN '' THEN CASE (ISNULL(pr.InvoicableCommissionRate, ''))
                        WHEN '' THEN CASE (ISNULL(cl.InvoicableCommissionRate, ''))
                            WHEN '' THEN '15.00G'
                            ELSE RTRIM(cl.InvoicableCommissionRate)
                        END
                        ELSE RTRIM(pr.InvoicableCommissionRate)
                    END
                    ELSE RTRIM(ca.InvoicableCommissionRate)
                END
                ELSE RTRIM(bc.CommissionRate)
            END
            ELSE RTRIM(cb.CommissionRate)
        END
        ELSE RTRIM(pb.CommissionRate)
    END AS Commission,
    CASE
        WHEN ISNULL(RTRIM(im.InternetTypeNumber), '') <> '' THEN    -- if there is a digital type use that, else try to use print type
        'D' + RTRIM(im.InternetTypeNumber)
        ELSE CASE
            WHEN (pt1d.Type1Code IS NOT NULL) THEN  -- print type from print type lookup
            pt1d.Type1Code
            ELSE ''
        END
    END AS InternetAndPrintType,
    '' AS BatchReference
INTO
    #Extract
FROM
    dbo.hypBuyingAgencyOffice ao
    INNER JOIN dbo.hypOperatingCompany op
        ON (ao.OpCoID = op.OpCoID
            AND op.OpCoID = @OpCoID
            AND ao.ExcludeFromExtract = 0)
    INNER JOIN MediaA1..Client cl
        ON (ao.BuyingAgencyID = cl.BuyingAgencyCode)
    INNER JOIN MediaA1..Agency ag
        ON (cl.BuyingAgencyCode = ag.AgencyCode
            AND ag.AgencyType = 'B')
    INNER JOIN MediaA1..Product pr
        ON (cl.MediaCode = pr.MediaCode
            AND cl.ClientCode = pr.ClientCode)
    INNER JOIN MediaA1..Campaign ca
        ON (cl.MediaCode = ca.MediaCode
            AND cl.ClientCode = ca.ClientCode
            AND pr.ProductCode = ca.ProductCode)
    INNER JOIN MediaA1..BuyMoney bu
        ON (cl.MediaCode = bu.MediaCode
            AND cl.ClientCode = bu.ClientCode
            AND pr.ProductCode = bu.ProductCode
            AND ca.CampaignCode = bu.CampaignCode)
    INNER JOIN HarpPlusA1..AccMedBill ac
        ON (ac.BuySerial = bu.BuySerial)
    INNER JOIN MediaA1..Media me
        ON (bu.MediaCode = me.MediaCode)
    INNER JOIN MediaA1..Supplier su
        ON (bu.MediaCode = su.MediaCode
            AND bu.SupplierID = su.SupplierID)
    INNER JOIN MediaA1..Folio fo
        ON (su.FolioMediaCode = fo.MediaCode
            AND su.FolioCode = fo.FolioCode)
    LEFT JOIN MediaA1..BookingCategory bc
        ON (bu.BookingCategoryCode = bc.BookingCategoryCode)
    LEFT JOIN MediaA1..BookingCategoryMedia bm
        ON (bu.MediaCode = bm.BookingCategoryMediaCode
            AND bu.BookingCategoryCode = bm.BookingCategoryCode)
    LEFT JOIN MediaA1..ClientBookingCategory cb
        ON (bu.MediaCode = cb.MediaCode
            AND bu.ClientCode = cb.ClientCode
            AND bu.BookingCategoryCode = cb.BookingCategoryCode)
    LEFT JOIN MediaA1..ProductBookingCategory pb
        ON (bu.MediaCode = pb.MediaCode
            AND bu.ClientCode = pb.ClientCode
            AND bu.ProductCode = pb.ProductCode
            AND bu.BookingCategoryCode = pb.BookingCategoryCode)
    LEFT JOIN dbo.hypFormula cf
        ON (RTRIM(cl.FormulaSchemeCode) = cf.FormulaCode)
    LEFT JOIN dbo.hypFormula pf
        ON (RTRIM(pr.FormulaSchemeCode) = pf.FormulaCode)
    LEFT JOIN MediaA1..InetMedia im
        ON (im.BuySerial = bu.BuySerial)
    LEFT JOIN MediaA1..BuyPrint bp
        ON (bp.BuySerial = bu.BuySerial)
    LEFT JOIN dbo.PrintType1Data pt1d
        ON (RTRIM(bp.type1code) = pt1d.Type1Code)

WHERE
    DATEPART(YEAR, ac.InvoiceDate) = @Year
    AND DATEPART(MONTH, ac.InvoiceDate) = @Month;
--AND        cl.ClientCode = 'B21';

----------------------------------------------------------------------------------------------------------------------------------------------
--split out commission stuff
----------------------------------------------------------------------------------------------------------------------------------------------
WITH Commission (MediaLetter, Commission, TotalRecs)
AS
(
    SELECT
        MedLetter,
        RTRIM(Commission),
        COUNT(*)
    FROM
        #Extract
    GROUP BY
        MedLetter,
        Commission
)
SELECT
    MediaLetter,
    Commission,
    CHARINDEX('(', Commission, 1) AS LeftBracketPos,
    CASE
        WHEN UPPER(LEFT(Commission, 5)) = 'MEDIA'
            AND CHARINDEX('(', Commission, 1) > 0 THEN 'MEDIA'
        ELSE CASE
            WHEN UPPER(LEFT(Commission, 7)) = 'FORMULA'
                AND CHARINDEX('(', Commission, 1) > 0 THEN 'FORMULA'
            ELSE CASE
                WHEN UPPER(LEFT(Commission, 4)) = 'ZERO' THEN 'ZERO'
                ELSE CASE
                    WHEN UPPER(LEFT(Commission, 5)) = 'MEDIA'
                        AND CHARINDEX('(', Commission, 1) = 0 THEN LEFT(Commission, LEN(Commission))
                    ELSE CASE
                        WHEN UPPER(LEFT(Commission, 7)) = 'FORMULA'
                            AND CHARINDEX('(', Commission, 1) = 0 THEN LEFT(Commission, LEN(Commission))
                        ELSE CASE
                            WHEN UPPER(LEFT(Commission, 5)) <> 'MEDIA'
                                AND CHARINDEX('(', Commission, 1) = 0 THEN LEFT(Commission, LEN(Commission) - 1)
                            ELSE CASE
                                WHEN UPPER(LEFT(Commission, 5)) <> 'MEDIA'
                                    AND CHARINDEX('(', Commission, 1) > 0 THEN LEFT(Commission, CHARINDEX('(', Commission, 1) - 2)
                                ELSE 'UNKNOWN'
                            END
                        END
                    END
                END
            END
        END
    END AS BAComm,
    CASE
        WHEN (UPPER(LEFT(Commission, 5)) = 'MEDIA')
            OR (UPPER(LEFT(Commission, 7)) = 'FORMULA')
            OR (UPPER(LEFT(Commission, 4)) = 'ZERO') THEN ''
        ELSE CASE
            WHEN CHARINDEX('(', Commission, 1) = 0 THEN RIGHT(Commission, 1)
            ELSE CASE
                WHEN CHARINDEX('(', Commission, 1) > 0 THEN SUBSTRING(Commission, CHARINDEX('(', Commission, 1) - 1, 1)
                ELSE 'U'
            END
        END
    END AS BagyLetter,
    CASE
        WHEN CHARINDEX('(', Commission, 1) > 0 THEN SUBSTRING(Commission, CHARINDEX('(', Commission, 1) + 1, 1)
        ELSE ''
    END AS SplitCommLetter1,
    CASE
        WHEN CHARINDEX('(', Commission, 1) > 0 THEN SUBSTRING(Commission, CHARINDEX('(', Commission, 1) + 2, LEN(Commission) - CHARINDEX('(', Commission, 1) - 3)
        ELSE ''
    END AS SplitCommRate,
    CASE
        WHEN CHARINDEX('(', Commission, 1) > 0 THEN SUBSTRING(Commission, LEN(Commission) - 1, 1)
        ELSE ''
    END AS SplitCommLetter2
INTO
    #ExtractCommission
FROM
    Commission;
--ORDER BY Commission    

----------------------------------------------------------------------------------------------------------------------------------------------
--manual postings extract
----------------------------------------------------------------------------------------------------------------------------------------------        
WITH DistinctOffice (OfficeCode, ParentBuyingAgencyID, NoOfOffices)
AS
(
    SELECT
        OfficeCode,
        ParentBuyingAgencyID,
        COUNT(*)
    FROM
        dbo.hypBuyingAgencyOffice
    WHERE
        OpCoID = @OpCoID
        AND ExcludeFromExtract = 0
    GROUP BY
        OfficeCode,
        ParentBuyingAgencyID
)
SELECT
    do.OfficeCode,
    do.ParentBuyingAgencyID AS BuyingAgencyCode,
    ag.AgencyName AS BuyingAgencyName,

    -- 01 APR 2015: 
    --    a) if clientcode exists, use that prefixed with _C. else 
    --    b) if ContraAccountCode is 3 characters AND ContraUnit = 'S' AND ContraLedger = 'J', use that.  else
    --     c) use 'NoClient'

    CASE
        WHEN (ISNULL(CONVERT(VARCHAR(8), ClientCode), '')) = '' THEN CASE
            WHEN (LEN(RTRIM(ContraAccountCode)) = 3
                AND ContraUnit = 'S'
                AND ContraLedger = 'J') THEN 'C_' + RTRIM(ContraAccountCode) -- b) if ContraAccountCode is 3 characters AND ContraUnit = 'S' AND ContraLedger = 'J' use ContraAccountCode
            ELSE 'NoClient' -- c)
        END

        ELSE 'C_' + RTRIM(ClientCode) -- a) The clientcode exists, use that
    END AS ClientCode,

    CONVERT(VARCHAR, au.TransactionDate, 111) AS TransactionDate,
    au.TransactionReference,
    --  REMOVED SI PREFIX REQUESTED 29 JAN 2015-->
    --CONVERT(varchar, CASE(UPPER(LEFT(au.AccountCode,2))) WHEN 'SI' THEN au.AccountCode ELSE 'SI' + RTRIM(au.AccountCode) END) AS AccountCode, 
    RTRIM(REPLACE(au.AccountCode, 'SI', '')) AS AccountCode,
    CONVERT(VARCHAR, au.MonthOfActivity, 111) AS MonthOfActivity,
    au.ContraUnit,
    au.ContraLedger,
    au.ContraAccountCode,
    au.CreditAmount AS ActualIncome,
    ISNULL(CONVERT(VARCHAR, ab.GrossAmount), '') AS GrossBilling,
    au.BatchReference
INTO
    #ManualPostingsExtract
FROM
    DistinctOffice do
    INNER JOIN MediaA1..Agency ag
        ON (do.ParentBuyingAgencyID = ag.AgencyCode
            AND ag.AgencyType = 'B')
    INNER JOIN HarpPlusA1..AccIncMaster au
        ON (au.OfficeCode = do.OfficeCode)
    LEFT JOIN HarpPlusA1..AccIncBilling ab
        ON (ab.UniqueID = au.UniqueID)
WHERE
    au.Unit = 'S'
    AND au.Ledger = 'I'
    AND au.TransactionType IN (2, 6, 7, 10, 11, 21, 26, 30, 34, 45, 59, 75)
    AND DATEPART(YEAR, au.MonthOfActivity) = @Year
    AND DATEPART(MONTH, au.MonthOfActivity) = @Month;
--AND        au.ClientCode = 'UE2';

----------------------------------------------------------------------------------------------------------------------------------------------
--unpivot the data for extract
----------------------------------------------------------------------------------------------------------------------------------------------

--unpivot income measures without TOB
SELECT
    CONVERT(VARCHAR, BuyingAgencyCode) AS BuyingAgencyCode,
    BuyingAgencyName,
    ClientCode,
    ClientName,
    AccountGroupFilter,
    ClientGroupFilter,
    CampaignCode,
    CampaignName,
    FolioCode,
    FolioName,
    SupplierID,
    SupplierName,
    InvoiceCode,
    InvoiceDate,
    BuySerial,
    MedLetter,
    BookingCategory,
    ClientReference,
    ClientFeeFormula,
    ClientCommissonFormula,
    ProductFeeFormula,
    ProductCommissionFormula,
    IncomeAccount,
    MeasureName,
    MeasureValue,
    InternetAndPrintType,
    BatchReference
INTO
    #FinalOutput
FROM
    (
        SELECT
            BuyingAgencyCode,
            BuyingAgencyName,
            CONVERT(VARCHAR(8), ClientCode) AS ClientCode,
            ClientName,
            AccountGroupFilter,
            ClientGroupFilter,
            CampaignCode,
            CampaignName,
            FolioCode,
            FolioName,
            SupplierID,
            SupplierName,
            InvoiceCode,
            InvoiceDate,
            BuySerial,
            CONVERT(VARCHAR(8), MedLetter) AS MedLetter,
            BookingCategory,
            ClientReference,
            ClientFeeFormula,
            ClientCommissonFormula,
            ProductFeeFormula,
            ProductCommissionFormula,
            IncomeAccount,
            CONVERT(VARCHAR(30), GrossBilling) AS GrossBilling,
            CONVERT(VARCHAR(30), MediaDiscountBilled) AS MediaDiscountBilled,
            CONVERT(VARCHAR(30), NetBillable) AS NetBillable,
            CONVERT(VARCHAR(30), NetBilled) AS NetBilled,
            CONVERT(VARCHAR(30), BillableBilled) AS BillableBilled,
            CONVERT(VARCHAR(30), AsbofBasbofBilled) AS AsbofBasbofBilled,
            CONVERT(VARCHAR(30), AsbofBasbofBillable) AS AsbofBasbofBillable,
            CONVERT(VARCHAR(30), MediaDiscountPercentage) AS MediaDiscountPercentage,
            CONVERT(VARCHAR(30), AgencyCommission) AS AgencyCommission,
            CONVERT(VARCHAR(30), AgencyCommissionBilled) AS AgencyCommissionBilled,
            CONVERT(VARCHAR(30), ActualIncome) AS ActualIncome,
            CONVERT(VARCHAR(30), CreativeAgencyCommissionBilled) AS CreativeAgencyCommissionBilled,
            CONVERT(VARCHAR(40), 'GrossBilling') AS GrossBilling1,
            CONVERT(VARCHAR(40), 'MediaDiscountBilled') AS MediaDiscountBilled1,
            CONVERT(VARCHAR(40), 'NetBillable') AS NetBillable1,
            CONVERT(VARCHAR(40), 'NetBilled') AS NetBilled1,
            CONVERT(VARCHAR(40), 'BillableBilled') AS BillableBilled1,
            CONVERT(VARCHAR(40), 'AsbofBasbofBilled') AS AsbofBasbofBilled1,
            CONVERT(VARCHAR(40), 'AsbofBasbofBillable') AS AsbofBasbofBillable1,
            CONVERT(VARCHAR(40), 'MediaDiscountPercentage') AS MediaDiscountPercentage1,
            CONVERT(VARCHAR(40), 'AgencyCommission') AS AgencyCommission1,
            CONVERT(VARCHAR(40), 'AgencyCommissionBilled') AS AgencyCommissionBilled1,
            CONVERT(VARCHAR(40), 'ActualIncome') AS ActualIncome1,
            CONVERT(VARCHAR(40), 'CreativeAgencyCommissionBilled') AS CreativeAgencyCommissionBilled1,
            InternetAndPrintType,
            BatchReference
        FROM
            #Extract e
            INNER JOIN #ExtractCommission c
                ON (e.MedLetter = c.MediaLetter
                    AND e.Commission = c.Commission)

    ) ex
    UNPIVOT
    (
    MeasureName FOR MeasureNames IN (GrossBilling1, MediaDiscountBilled1, NetBillable1, NetBilled1, BillableBilled1, AsbofBasbofBilled1, AsbofBasbofBillable1, MediaDiscountPercentage1,
    AgencyCommission1, AgencyCommissionBilled1, ActualIncome1, CreativeAgencyCommissionBilled1)
    ) mn
    UNPIVOT
    (
    MeasureValue FOR MeasureValues IN (GrossBilling, MediaDiscountBilled, NetBillable, NetBilled, BillableBilled, AsbofBasbofBilled, AsbofBasbofBillable, MediaDiscountPercentage,
    AgencyCommission, AgencyCommissionBilled, ActualIncome, CreativeAgencyCommissionBilled)
    ) mv
WHERE
    LEFT(MeasureNames, LEN(MeasureNames) - 1) = MeasureValues

UNION

--Unpivot income measures for TOB. This needs to be distinct.
SELECT
    CONVERT(VARCHAR, BuyingAgencyCode) AS BuyingAgencyCode,
    BuyingAgencyName,
    ClientCode,
    ClientName,
    AccountGroupFilter,
    ClientGroupFilter,
    CampaignCode,
    CampaignName,
    FolioCode,
    FolioName,
    SupplierID,
    SupplierName,
    InvoiceCode,
    InvoiceDate,
    BuySerial,
    MedLetter,
    BookingCategory,
    ClientReference,
    ClientFeeFormula,
    ClientCommissonFormula,
    ProductFeeFormula,
    ProductCommissionFormula,
    IncomeAccount,
    MeasureName,
    MeasureValue,
    InternetAndPrintType,
    BatchReference
FROM
    (
        SELECT DISTINCT
            '' AS BuyingAgencyCode,
            BuyingAgencyName,
            CONVERT(VARCHAR(8), ClientCode) AS ClientCode,
            '' AS ClientName,
            '' AS AccountGroupFilter,
            '' AS ClientGroupFilter,
            '' AS CampaignCode,
            '' AS CampaignName,
            '' AS FolioCode,
            '' AS FolioName,
            '' AS SupplierID,
            '' AS SupplierName,
            '' AS InvoiceCode,
            '' AS InvoiceDate,
            '' AS BuySerial,
            CONVERT(VARCHAR(8), MedLetter) AS MedLetter,
            '' AS BookingCategory,
            '' AS ClientReference,
            '' AS ClientFeeFormula,
            '' AS ClientCommissonFormula,
            '' AS ProductFeeFormula,
            '' AS ProductCommissionFormula,
            IncomeAccount,
            CONVERT(VARCHAR(30), CASE (c.BagyLetter)
                WHEN '' THEN CONVERT(DECIMAL(3, 2), 0)
                ELSE CONVERT(DECIMAL(5, 4), CONVERT(DECIMAL(5, 2), c.BAComm) / 100)
            END) AS TermsOfBusiness,
            CONVERT(VARCHAR(30), CASE
                WHEN c.BagyLetter = 'G' THEN 1
                WHEN c.BagyLetter = 'N' THEN 2
                WHEN c.BAComm = 'FORMULA' THEN 3
                WHEN c.BAComm = 'MEDIA' THEN 4
                WHEN c.BAComm = 'ZERO' THEN 5
                WHEN c.BAComm = 'UNKNOWN' THEN 6
            END) AS TermsType,
            CONVERT(VARCHAR(30), CASE (c.SplitCommRate)
                WHEN '' THEN CONVERT(DECIMAL(3, 2), 0)
                ELSE CONVERT(DECIMAL(5, 4), CONVERT(DECIMAL(5, 2), c.SplitCommRate) / 100)
            END) AS TermsCreative,
            CONVERT(VARCHAR(40), 'TermsOfBusiness') AS TermsOfBusiness1,
            CONVERT(VARCHAR(40), 'TermsType') AS TermsType1,
            CONVERT(VARCHAR(40), 'TermsCreative') AS TermsCreative1,
            '' AS InternetAndPrintType,
            '' AS BatchReference
        FROM
            #Extract e
            INNER JOIN #ExtractCommission c
                ON (e.MedLetter = c.MediaLetter
                    AND e.Commission = c.Commission)

    ) ex
    UNPIVOT
    (
    MeasureName FOR MeasureNames IN (TermsOfBusiness1, TermsType1, TermsCreative1)
    ) mn
    UNPIVOT
    (
    MeasureValue FOR MeasureValues IN (TermsOfBusiness, TermsType, TermsCreative)
    ) mv
WHERE
    LEFT(MeasureNames, LEN(MeasureNames) - 1) = MeasureValues

UNION ALL

--Unpivot Manual postings
SELECT
    BuyingAgencyCode,
    BuyingAgencyName,
    ClientCode,
    ClientName,
    AccountGroupFilter,
    ClientGroupFilter,
    CampaignCode,
    CampaignName,
    FolioCode,
    FolioName,
    SupplierID,
    SupplierName,
    InvoiceCode,
    InvoiceDate,
    BuySerial,
    MedLetter,
    BookingCategory,
    ClientReference,
    ClientFeeFormula,
    ClientCommissonFormula,
    ProductFeeFormula,
    ProductCommissionFormula,
    IncomeAccount,
    MeasureName,
    MeasureValue,
    InternetAndPrintType,
    BatchReference
FROM
    (
        SELECT
            '' AS BuyingAgencyCode,
            BuyingAgencyName,
            ClientCode,
            '' AS ClientName,
            '' AS AccountGroupFilter,
            '' AS ClientGroupFilter,
            '' AS CampaignCode,
            '' AS CampaignName,
            '' AS FolioCode,
            '' AS FolioName,
            '' AS SupplierID,
            '' AS SupplierName,
            '' AS InvoiceCode,
            MonthOfActivity AS InvoiceDate,
            '' AS BuySerial,
            'AllMedia' AS MedLetter,
            '' AS BookingCategory,
            '' AS ClientReference,
            '' AS ClientFeeFormula,
            '' AS ClientCommissonFormula,
            '' AS ProductFeeFormula,
            '' AS ProductCommissionFormula,
            AccountCode AS IncomeAccount,
            CONVERT(VARCHAR(30), GrossBilling) AS GrossBilling,
            CONVERT(VARCHAR(30), ActualIncome) AS ActualIncome,
            CONVERT(VARCHAR(40), 'GrossBilling') AS GrossBilling1,
            CONVERT(VARCHAR(40), 'ActualIncome') AS ActualIncome1,
            '' AS InternetAndPrintType,
            BatchReference
        FROM
            #ManualPostingsExtract

    ) ex
    UNPIVOT
    (
    MeasureName FOR MeasureNames IN (GrossBilling1, ActualIncome1)
    ) mn
    UNPIVOT
    (
    MeasureValue FOR MeasureValues IN (GrossBilling, ActualIncome)
    ) mv
WHERE
    LEFT(MeasureNames, LEN(MeasureNames) - 1) = MeasureValues

SELECT    --BuyingAgencyCode,
    BuyingAgencyName,
    ClientCode,
    --ClientName,
    --AccountGroupFilter,
    --ClientGroupFilter,
    --CampaignCode,
    --CampaignName,
    --FolioCode,
    --FolioName,
    --SupplierID,
    --SupplierName,
    --InvoiceCode,
    --InvoiceDate,
    --BuySerial,
    MedLetter,
    --BookingCategory,
    --ClientReference,
    --ClientFeeFormula,
    --ClientCommissonFormula,
    --ProductFeeFormula,
    --ProductCommissionFormula,
    IncomeAccount,
    MeasureName,
    MeasureValue,
    InternetAndPrintType
--BatchReference
FROM
    #FinalOutput

SET NOCOUNT OFF

END

GO
/****** Object:  StoredProcedure [dbo].[hyp_GetMonthlyHierarchyExtract]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[hyp_GetMonthlyHierarchyExtract]
                                     (@Year            smallint,
                                      @Month        tinyint,
                                      @OpCoID        tinyint)
                                 
AS


/* 
 ==================================================================================================
    Author:            Richard Illingworth / Jon Powell for A1 version
    Create date:    16th November 2011 / 14 Dec 2014
    Description:    Returns a dataset for the monthly hyperion hierachy extract

    Usage:            EXEC Hype.A1GetMonthlyHierarchyExtract 2012, 5, 5

    Revisions:        1.01 Stored procedure created
                    1.02 Added Unbilled hierarchy data | RI 5th March 2012        
                    1.03 Added code for SSIS metadata issue | RI 26th April 2012
                    1.04 Added ExcludeFromExtract clause | RI 28th May 2012        
                    1.02 Changed references from Y9 to A1 14 DEC 2014 JP    
		    Migrate to ReportingA1 RD 2021-06-20
 ==================================================================================================
*/

BEGIN

--Are there any new agencies?
EXEC dbo.hyp_InsertAgencyData;

SET NOCOUNT ON;

    --This is here to sort an issue with SSIS and metadata from procs.
    --This!(http://consultingblogs.emc.com/jamiethomson/archive/2006/12/20/SSIS_3A00_-Using-stored-procedures-inside-an-OLE-DB-Source-component.aspx)
    IF 1 = 2
    BEGIN
SELECT
    CONVERT(VARCHAR(20), NULL) AS Parent,
    CONVERT(VARCHAR(10), NULL) AS Child,
    CONVERT(VARCHAR(100), NULL) AS Alias,
    CONVERT(BIT, NULL) AS IsPrimary
END

DECLARE @Spend TABLE
    (
        MediaCode   TINYINT,
        ClientCode  VARCHAR(3),
        ProductCode TINYINT,
        NoOfBuys    INT,
        Gross       MONEY
    );

DECLARE @ManualP TABLE
    (
        ClientCode VARCHAR(3),
        NoOfBuys   INT,
        Total      MONEY
    );

DECLARE @Unbilled TABLE
    (
        BuyingAgencyCode TINYINT,
        ClientCode       VARCHAR(3),
        NoOfBuys         INT,
        Commission       MONEY
    );

DECLARE @Extract TABLE
    (
        Parent       VARCHAR(20),
        Child        VARCHAR(10),
        Alias        VARCHAR(100),
        IsPrimary    BIT,
        ExtractOrder TINYINT
    );

--Are we looking for 1 month of data or a full build from a given year or indeed a full build from year dot            
IF (@Month = 0
    AND
    @Year = 0) -- full build
BEGIN
--Income
INSERT INTO @Spend
        (
            MediaCode,
            ClientCode,
            ProductCode,
            NoOfBuys,
            Gross
        )
    SELECT
        bu.MediaCode,
        RTRIM(bu.ClientCode) AS ClientCode,
        bu.ProductCode,
        COUNT(*) AS NoOfBuys,
        SUM(bu.Gross) AS Gross
    FROM
        MediaA1..BuyMoney bu
        INNER JOIN MediaA1..Client cl
            ON (bu.MediaCode = cl.MediaCode
                AND bu.ClientCode = cl.ClientCode)
        INNER JOIN MediaA1..Product pr
            ON (bu.MediaCode = pr.MediaCode
                AND bu.ClientCode = pr.ClientCode
                AND bu.ProductCode = pr.ProductCode)
        INNER JOIN dbo.hypBuyingAgencyOffice ao
            ON (cl.BuyingAgencyCode = ao.BuyingAgencyID)
        INNER JOIN dbo.hypOperatingCompany op
            ON (ao.OpCoID = op.OpCoID
                AND op.OpCoID = @OpCoID)
    GROUP BY
        bu.MediaCode,
        RTRIM(bu.ClientCode),
        bu.ProductCode;

--Manual Postings
WITH DistinctOffice (OfficeCode, ParentBuyingAgencyID, NoOfOffices)
AS
(
    SELECT
        OfficeCode,
        ParentBuyingAgencyID,
        COUNT(*)
    FROM
        dbo.hypBuyingAgencyOffice
    WHERE
        OpCoID = @OpCoID
    GROUP BY
        OfficeCode,
        ParentBuyingAgencyID
)
INSERT INTO @ManualP
        (
            ClientCode,
            NoOfBuys,
            Total
        )
    SELECT
        au.ClientCode,
        COUNT(*) AS NoOfBuys,
        SUM(au.Amount) AS Total
    FROM
        DistinctOffice do
        INNER JOIN MediaA1..Agency ag
            ON (do.ParentBuyingAgencyID = ag.AgencyCode
                AND ag.AgencyType = 'B')
        INNER JOIN HarpPlusA1..AccIncMaster au
            ON (au.OfficeCode = do.OfficeCode)
    WHERE
        au.Unit = 'S'
        AND au.Ledger = 'I'
        AND au.TransactionType IN (2, 6, 7, 10, 11, 21, 26, 30, 34, 45, 59, 75)
    GROUP BY
        au.ClientCode;

--Unbilled
WITH GroupBy (BuySerial, MediaCode, ClientCode, ProductCode, BuyingAgencyCode, BuyDate, AgencyCommission, AgencyCommissionBilled)
AS
(
    SELECT
        bu.BuySerial,
        bu.MediaCode,
        RTRIM(bu.ClientCode) AS ClientCode,
        bu.ProductCode,
        cl.BuyingAgencyCode,
        bu.BuyDate,
        bu.BuyingAgencyCommission AS AgencyCommission,
        SUM(ac.BuyingAgencyCommissionBilled) AS AgencyCommissionBilled
    FROM
        dbo.hypBuyingAgencyOffice ao
        INNER JOIN dbo.hypOperatingCompany op
            ON (ao.OpCoID = op.OpCoID
                AND ao.ExcludeFromExtract = 0
                AND op.OpCoID = @OpCoID)
        INNER JOIN MediaA1..Client cl
            ON (ao.BuyingAgencyID = cl.BuyingAgencyCode)
        INNER JOIN MediaA1..Agency ag
            ON (cl.BuyingAgencyCode = ag.AgencyCode
                AND ag.AgencyType = 'B')
        INNER JOIN MediaA1..BuyMoney bu
            ON (cl.MediaCode = bu.MediaCode
                AND cl.ClientCode = bu.ClientCode)
        LEFT JOIN HarpPlusA1..AccMedBill ac
            ON (bu.BuySerial = ac.BuySerial)
    WHERE
        bu.MediaCode <> 14
        AND
            CASE
                WHEN bu.Billable = 0
                    AND bu.InvoiceCode IS NULL THEN 'ZeroTV'
                ELSE 'OKTV'
            END = 'OKTV'
    GROUP BY
        bu.BuySerial,
        bu.MediaCode,
        RTRIM(bu.ClientCode),
        bu.ProductCode,
        BuyingAgencyCode,
        bu.BuyDate,
        bu.BuyingAgencyCommission
),
Unbilled (BuyingAgencyCode, ClientCode, NoOfBuys, UnbilledCommission)
AS
(
    SELECT
        BuyingAgencyCode,
        ClientCode,
        COUNT(*),
        SUM(CASE (ISNUMERIC(AgencyCommissionBilled))
            WHEN 0 THEN AgencyCommission
            ELSE AgencyCommission - AgencyCommissionBilled
        END)
    FROM
        GroupBy
    GROUP BY
        BuyingAgencyCode,
        ClientCode
)
INSERT INTO @Unbilled
        (
            BuyingAgencyCode,
            ClientCode,
            NoOfBuys,
            Commission
        )
    SELECT
        BuyingAgencyCode,
        ClientCode,
        NoOfBuys,
        UnbilledCommission
    FROM
        Unbilled
    WHERE
        UnbilledCommission <> 0;
END
ELSE
IF (@Month = 0
    AND
    @Year > 0) -- yearly
BEGIN
--Income
INSERT INTO @Spend
        (
            MediaCode,
            ClientCode,
            ProductCode,
            NoOfBuys,
            Gross
        )
    SELECT
        bu.MediaCode,
        RTRIM(bu.ClientCode) AS ClientCode,
        bu.ProductCode,
        COUNT(*) AS NoOfBuys,
        SUM(bu.Gross) AS Gross
    FROM
        MediaA1..BuyMoney bu
        INNER JOIN MediaA1..Client cl
            ON (bu.MediaCode = cl.MediaCode
                AND bu.ClientCode = cl.ClientCode)
        INNER JOIN MediaA1..Product pr
            ON (bu.MediaCode = pr.MediaCode
                AND bu.ClientCode = pr.ClientCode
                AND bu.ProductCode = pr.ProductCode)
        INNER JOIN dbo.hypBuyingAgencyOffice ao
            ON (cl.BuyingAgencyCode = ao.BuyingAgencyID)
        INNER JOIN dbo.hypOperatingCompany op
            ON (ao.OpCoID = op.OpCoID
                AND op.OpCoID = @OpCoID)
    WHERE
        DATEPART(YEAR, bu.InvoiceDate) >= @Year
    GROUP BY
        bu.MediaCode,
        RTRIM(bu.ClientCode),
        bu.ProductCode;

--Manual Postings
WITH DistinctOffice (OfficeCode, ParentBuyingAgencyID, NoOfOffices)
AS
(
    SELECT
        OfficeCode,
        ParentBuyingAgencyID,
        COUNT(*)
    FROM
        dbo.hypBuyingAgencyOffice
    WHERE
        OpCoID = @OpCoID
    GROUP BY
        OfficeCode,
        ParentBuyingAgencyID
)
INSERT INTO @ManualP
        (
            ClientCode,
            NoOfBuys,
            Total
        )
    SELECT
        au.ClientCode,
        COUNT(*) AS NoOfBuys,
        SUM(au.Amount) AS Total
    FROM
        DistinctOffice do
        INNER JOIN MediaA1..Agency ag
            ON (do.ParentBuyingAgencyID = ag.AgencyCode
                AND ag.AgencyType = 'B')
        INNER JOIN HarpPlusA1..AccIncMaster au
            ON (au.OfficeCode = do.OfficeCode)
    WHERE
        au.Unit = 'S'
        AND au.Ledger = 'I'
        AND au.TransactionType IN (2, 6, 7, 10, 11, 21, 26, 30, 34, 45, 59, 75)
        AND DATEPART(YEAR, au.MonthOfActivity) = @Year
    GROUP BY
        au.ClientCode;

--Unbilled
WITH GroupBy (BuySerial, MediaCode, ClientCode, ProductCode, BuyingAgencyCode, BuyDate, AgencyCommission, AgencyCommissionBilled)
AS
(
    SELECT
        bu.BuySerial,
        bu.MediaCode,
        RTRIM(bu.ClientCode) AS ClientCode,
        bu.ProductCode,
        cl.BuyingAgencyCode,
        bu.BuyDate,
        bu.BuyingAgencyCommission,
        SUM(ac.BuyingAgencyCommissionBilled) AS AgencyCommissionBilled
    FROM
        dbo.hypBuyingAgencyOffice ao
        INNER JOIN dbo.hypOperatingCompany op
            ON (ao.OpCoID = op.OpCoID
                AND ao.ExcludeFromExtract = 0
                AND op.OpCoID = @OpCoID)
        INNER JOIN MediaA1..Client cl
            ON (ao.BuyingAgencyID = cl.BuyingAgencyCode)
        INNER JOIN MediaA1..Agency ag
            ON (cl.BuyingAgencyCode = ag.AgencyCode
                AND ag.AgencyType = 'B')
        INNER JOIN MediaA1..BuyMoney bu
            ON (cl.MediaCode = bu.MediaCode
                AND cl.ClientCode = bu.ClientCode)
        LEFT JOIN HarpPlusA1..AccMedBill ac
            ON (bu.BuySerial = ac.BuySerial)
    WHERE
        DATEPART(YEAR, bu.BuyDate) <= @Year
        AND bu.MediaCode <> 14
        AND
            CASE
                WHEN bu.Billable = 0
                    AND bu.InvoiceCode IS NULL THEN 'ZeroTV'
                ELSE 'OKTV'
            END = 'OKTV'
    GROUP BY
        bu.BuySerial,
        bu.MediaCode,
        RTRIM(bu.ClientCode),
        bu.ProductCode,
        BuyingAgencyCode,
        bu.BuyDate,
        bu.BuyingAgencyCommission
),
Unbilled (BuyingAgencyCode, ClientCode, NoOfBuys, UnbilledCommission)
AS
(
    SELECT
        BuyingAgencyCode,
        ClientCode,
        COUNT(*),
        SUM(CASE (ISNUMERIC(AgencyCommissionBilled))
            WHEN 0 THEN AgencyCommission
            ELSE AgencyCommission - AgencyCommissionBilled
        END)
    FROM
        GroupBy
    GROUP BY
        BuyingAgencyCode,
        ClientCode
)
INSERT INTO @Unbilled
        (
            BuyingAgencyCode,
            ClientCode,
            NoOfBuys,
            Commission
        )
    SELECT
        BuyingAgencyCode,
        ClientCode,
        NoOfBuys,
        UnbilledCommission
    FROM
        Unbilled
    WHERE
        UnbilledCommission <> 0;
END
ELSE -- monthly
BEGIN
--Income
INSERT INTO @Spend
        (
            MediaCode,
            ClientCode,
            ProductCode,
            NoOfBuys,
            Gross
        )
    SELECT
        bu.MediaCode,
        RTRIM(bu.ClientCode) AS ClientCode,
        bu.ProductCode,
        COUNT(*) AS NoOfBuys,
        SUM(bu.Gross) AS Gross
    FROM
        MediaA1..BuyMoney bu
        INNER JOIN MediaA1..Client cl
            ON (bu.MediaCode = cl.MediaCode
                AND bu.ClientCode = cl.ClientCode)
        INNER JOIN MediaA1..Product pr
            ON (bu.MediaCode = pr.MediaCode
                AND bu.ClientCode = pr.ClientCode
                AND bu.ProductCode = pr.ProductCode)
        INNER JOIN dbo.hypBuyingAgencyOffice ao
            ON (cl.BuyingAgencyCode = ao.BuyingAgencyID)
        INNER JOIN dbo.hypOperatingCompany op
            ON (ao.OpCoID = op.OpCoID
                AND op.OpCoID = @OpCoID)
    WHERE
        DATEPART(YEAR, bu.InvoiceDate) = @Year
        AND DATEPART(MONTH, bu.InvoiceDate) = @Month
    GROUP BY
        bu.MediaCode,
        RTRIM(bu.ClientCode),
        bu.ProductCode;

--Manual postings
WITH DistinctOffice (OfficeCode, ParentBuyingAgencyID, NoOfOffices)
AS
(
    SELECT
        OfficeCode,
        ParentBuyingAgencyID,
        COUNT(*)
    FROM
        dbo.hypBuyingAgencyOffice
    WHERE
        OpCoID = @OpCoID
    GROUP BY
        OfficeCode,
        ParentBuyingAgencyID
)
INSERT INTO @ManualP
        (
            ClientCode,
            NoOfBuys,
            Total
        )
    SELECT
        au.ClientCode,
        COUNT(*) AS NoOfBuys,
        SUM(au.Amount) AS Total
    FROM
        DistinctOffice do
        INNER JOIN MediaA1..Agency ag
            ON (do.ParentBuyingAgencyID = ag.AgencyCode
                AND ag.AgencyType = 'B')
        INNER JOIN HarpPlusA1..AccIncMaster au
            ON (au.OfficeCode = do.OfficeCode)
    WHERE
        au.Unit = 'S'
        AND au.Ledger = 'I'
        AND au.TransactionType IN (2, 6, 7, 10, 11, 21, 26, 30, 34, 45, 59, 75)
        AND DATEPART(YEAR, au.MonthOfActivity) = @Year
        AND DATEPART(MONTH, au.MonthOfActivity) = @Month
    GROUP BY
        au.ClientCode;

--Unbilled
DECLARE @BuyDate SMALLDATETIME
SET DATEFORMAT YMD
        IF @Month = 12
SELECT
    @BuyDate = CONVERT(SMALLDATETIME, CONVERT(CHAR(4), @Year + 1) + '/01/01')
ELSE
SELECT
    @BuyDate = CONVERT(SMALLDATETIME, CONVERT(CHAR(4), @Year) + '/' + CONVERT(CHAR(2), @Month + 1) + '/01');

WITH GroupBy (BuySerial, MediaCode, ClientCode, ProductCode, BuyingAgencyCode, BuyDate, AgencyCommission, AgencyCommissionBilled)
AS
(
    SELECT
        bu.BuySerial,
        bu.MediaCode,
        RTRIM(bu.ClientCode) AS ClientCode,
        bu.ProductCode,
        cl.BuyingAgencyCode,
        bu.BuyDate,
        bu.BuyingAgencyCommission,
        SUM(ac.BuyingAgencyCommissionBilled) AS AgencyCommissionBilled
    FROM
        dbo.hypBuyingAgencyOffice ao
        INNER JOIN dbo.hypOperatingCompany op
            ON (ao.OpCoID = op.OpCoID
                AND ao.ExcludeFromExtract = 0
                AND op.OpCoID = @OpCoID)
        INNER JOIN MediaA1..Client cl
            ON (ao.BuyingAgencyID = cl.BuyingAgencyCode)
        INNER JOIN MediaA1..Agency ag
            ON (cl.BuyingAgencyCode = ag.AgencyCode
                AND ag.AgencyType = 'B')
        INNER JOIN MediaA1..BuyMoney bu
            ON (cl.MediaCode = bu.MediaCode
                AND cl.ClientCode = bu.ClientCode)
        LEFT JOIN HarpPlusA1..AccMedBill ac
            ON (bu.BuySerial = ac.BuySerial)
    WHERE
        bu.BuyDate < @BuyDate
        AND bu.MediaCode <> 14
        AND
            CASE
                WHEN bu.Billable = 0
                    AND bu.InvoiceCode IS NULL THEN 'ZeroTV'
                ELSE 'OKTV'
            END = 'OKTV'
    GROUP BY
        bu.BuySerial,
        bu.MediaCode,
        RTRIM(bu.ClientCode),
        bu.ProductCode,
        BuyingAgencyCode,
        bu.BuyDate,
        bu.BuyingAgencyCommission
),
Unbilled (BuyingAgencyCode, ClientCode, NoOfBuys, UnbilledCommission)
AS
(
    SELECT
        BuyingAgencyCode,
        ClientCode,
        COUNT(*),
        SUM(CASE (ISNUMERIC(AgencyCommissionBilled))
            WHEN 0 THEN AgencyCommission
            ELSE AgencyCommission - AgencyCommissionBilled
        END)
    FROM
        GroupBy
    GROUP BY
        BuyingAgencyCode,
        ClientCode
)
INSERT INTO @Unbilled
        (
            BuyingAgencyCode,
            ClientCode,
            NoOfBuys,
            Commission
        )
    SELECT
        BuyingAgencyCode,
        ClientCode,
        NoOfBuys,
        UnbilledCommission
    FROM
        Unbilled
    WHERE
        UnbilledCommission <> 0;
END;

--Account group hierarchy
WITH TopClient (ClientCode, MediaCode, Filter1, BillingGroup, NoOfBuys, Gross, RowNumber)
AS
(
    SELECT
        cl.ClientCode,
        cl.MediaCode,
        cl.Filter1,
        cl.BillingGroup,
        sp.NoOfBuys,
        sp.Gross,
        ROW_NUMBER() OVER (PARTITION BY cl.ClientCode ORDER BY cl.ClientCode, sp.NoOfBuys DESC, cl.MediaCode)
    FROM
        MediaA1..Client cl
        INNER JOIN @Spend sp
            ON (cl.MediaCode = sp.MediaCode
                AND cl.ClientCode = sp.ClientCode)
)
SELECT
    tc.Filter1 AS Parent,
    /* ASKED TO MAKE ALL CLIENTS PREFIXED WITH _C - 29 Jan 2015
    CASE(PATINDEX('%a-z%', tc.ClientCode))
            WHEN 0 THEN 'C_' + RTRIM(tc.ClientCode)
            ELSE CASE(UPPER(RTRIM(tc.ClientCode)))
                        WHEN 'MAY' THEN 'C_' + RTRIM(tc.ClientCode)
                        ELSE RTRIM(tc.ClientCode)
                 END
    END AS Child, */
    'C_' + RTRIM(tc.ClientCode) AS Child,
    RTRIM(cl.ClientName) + ' (C_' + RTRIM(tc.ClientCode) + ')' AS Alias, -- asked to append client code 30 Jan 2015
    1 AS IsPrimary
INTO
    #AccountGroupIncome
FROM
    TopClient tc
    INNER JOIN MediaA1..Client cl
        ON (tc.ClientCode = cl.ClientCode
            AND tc.MediaCode = cl.MediaCode)
WHERE
    tc.RowNumber = 1;

--Manual Postings
WITH DistinctClients (ClientCode, MediaCode, Filter1, RankPos)
AS
(
    SELECT
        ClientCode,
        MediaCode,
        Filter1,
        RANK() OVER (PARTITION BY ClientCode ORDER BY Filter1 DESC, MediaCode)
    FROM
        HarpPlusA1..Client
)
SELECT
    cl.Filter1 AS Parent,
    /* ASKED TO MAKE ALL CLIENTS PREFIXED WITH _C 29 Jan 2015
        CASE(PATINDEX('%a-z%', mp.ClientCode))
            WHEN 0 THEN 'C_' + RTRIM(mp.ClientCode)
            ELSE CASE(UPPER(RTRIM(mp.ClientCode)))
                        WHEN 'MAY' THEN 'C_' + RTRIM(mp.ClientCode)
                        ELSE RTRIM(mp.ClientCode)
                 END
    END AS Child, */
    'C_' + RTRIM(mp.ClientCode) AS Child,
    RTRIM(cl.ClientName) + ' (C_' + RTRIM(mp.ClientCode) + ')' AS Alias, -- asked to append client code 30 Jan 2015 
    1 AS IsPrimary
INTO
    #AccountGroupMP
FROM
    @ManualP mp
    INNER JOIN DistinctClients dc
        ON (mp.ClientCode = dc.ClientCode
            AND dc.RankPos = 1)
    INNER JOIN HarpPlusA1..Client cl
        ON (dc.ClientCode = cl.ClientCode
            AND ISNULL(dc.MediaCode, -99) = ISNULL(cl.MediaCode, -99));

--Unbilled
WITH TopClient (ClientCode, MediaCode, Filter1, BillingGroup, NoOfBuys, Commission, RowNumber)
AS
(
    SELECT
        cl.ClientCode,
        cl.MediaCode,
        cl.Filter1,
        cl.BillingGroup,
        sp.NoOfBuys,
        sp.Commission,
        ROW_NUMBER() OVER (PARTITION BY cl.ClientCode ORDER BY cl.MediaCode)
    FROM
        MediaA1..Client cl
        INNER JOIN @Unbilled sp
            ON (cl.ClientCode = sp.ClientCode)
)
SELECT
    tc.Filter1 AS Parent,
    /* ASKED TO MAKE ALL CLIENTS PREFIXED WITH _C 29 Jan 2015
    CASE(PATINDEX('%a-z%', tc.ClientCode))
        WHEN 0 THEN 'C_' + RTRIM(tc.ClientCode)
        ELSE CASE(UPPER(RTRIM(tc.ClientCode)))
                    WHEN 'MAY' THEN 'C_' + RTRIM(tc.ClientCode)
                    ELSE RTRIM(tc.ClientCode)
             END
    END AS Child, */
    'C_' + RTRIM(tc.ClientCode) AS Child,
    RTRIM(cl.ClientName) + ' (C_' + RTRIM(tc.ClientCode) + ')' AS Alias, -- asked to append client code 30 Jan 2015
    1 AS IsPrimary
INTO
    #AccountGroupUnbilled
FROM
    TopClient tc
    INNER JOIN MediaA1..Client cl
        ON (tc.ClientCode = cl.ClientCode
            AND tc.MediaCode = cl.MediaCode)
WHERE
    tc.RowNumber = 1;

SELECT
    Parent,
    Child,
    Alias,
    IsPrimary
INTO
    #AccountGroup
FROM
    #AccountGroupIncome

UNION

SELECT
    Parent,
    Child,
    Alias,
    IsPrimary
FROM
    #AccountGroupMP

UNION

SELECT
    Parent,
    Child,
    Alias,
    IsPrimary
FROM
    #AccountGroupUnbilled;

/* -- removed client product hierarchy 28 JAN 2015
--Client Product hierarchy
WITH TopProduct(ClientCode, ProductCode, MediaCode, NoOfBuys, Gross, RowNumber) AS 
(SELECT    pr.ClientCode, pr.ProductCode, pr.MediaCode, sp.NoOfBuys, sp.Gross, ROW_NUMBER() OVER (PARTITION BY pr.ClientCode, pr.ProductCode ORDER BY pr.ClientCode, pr.ProductCode, sp.NoOfBuys DESC)
 FROM    MediaA1..Product pr INNER JOIN @Spend sp ON (pr.MediaCode = sp.MediaCode AND pr.ClientCode = sp.ClientCode AND pr.ProductCode = sp.ProductCode) 
) 
SELECT  CASE(PATINDEX('%a-z%', cl.ClientCode))
            WHEN 0 THEN 'C_' + RTRIM(cl.ClientCode)
            ELSE CASE(UPPER(RTRIM(cl.ClientCode)))
                    WHEN 'MAY' THEN 'C_' + RTRIM(cl.ClientCode)
                    ELSE RTRIM(cl.ClientCode)
                 END
        END AS Parent, 
        CASE(PATINDEX('%a-z%', cl.ClientCode))
                WHEN 0 THEN 'C_' + RTRIM(cl.ClientCode) + '_P' + CONVERT(varchar, tp.ProductCode) 
                ELSE CASE(UPPER(RTRIM(cl.ClientCode)))
                            WHEN 'MAY' THEN 'C_' + RTRIM(cl.ClientCode) + '_P' + CONVERT(varchar, tp.ProductCode) 
                            ELSE RTRIM(cl.ClientCode) + '_P' + CONVERT(varchar, tp.ProductCode) 
                     END
        END AS Child, 
        RTRIM(cl.ClientName) + '_' + RTRIM(pr.ProductName) AS Alias, 
        1 AS IsPrimary
INTO    #ClientProductIncome
FROM    TopProduct tp INNER JOIN MediaA1..Product pr ON (tp.ClientCode = pr.ClientCode AND tp.ProductCode = pr.ProductCode AND tp.MediaCode = pr.MediaCode)
                      INNER JOIN MediaA1..Client cl ON (tp.ClientCode = cl.ClientCode AND tp.MediaCode = cl.MediaCode)
WHERE    RowNumber = 1;
*/

--Manual postings
WITH DistinctClients (ClientCode, MediaCode, Filter1, RankPos)
AS
(
    SELECT
        ClientCode,
        MediaCode,
        Filter1,
        RANK() OVER (PARTITION BY ClientCode ORDER BY Filter1 DESC, MediaCode)
    FROM
        HarpPlusA1..Client
)
SELECT    /* ASKED TO MAKE ALL CLIENTS PREFIXED WITH _C 29 Jan 2015
        CASE(PATINDEX('%a-z%', mp.ClientCode))
                WHEN 0 THEN 'C_' + RTRIM(mp.ClientCode)
                ELSE CASE(UPPER(RTRIM(mp.ClientCode)))
                            WHEN 'MAY' THEN 'C_' + RTRIM(mp.ClientCode)
                            ELSE RTRIM(mp.ClientCode)
                     END
        END AS Parent, */
    'C_' + RTRIM(mp.ClientCode) AS Parent,
    /* ASKED TO MAKE ALL CLIENTS PREFIXED WITH _C 29 Jan 2015            
    CASE(PATINDEX('%a-z%', mp.ClientCode))
            WHEN 0 THEN 'C_' + RTRIM(mp.ClientCode)
            ELSE CASE(UPPER(RTRIM(mp.ClientCode))) 
                        WHEN 'MAY' THEN 'C_' + RTRIM(mp.ClientCode)
                        ELSE RTRIM(mp.ClientCode)
                 END
    END AS Child, */
    'C_' + RTRIM(mp.ClientCode) AS Child,
    RTRIM(cl.ClientName) + ' (C_' + RTRIM(mp.ClientCode) + ')' AS Alias, -- asked to append client code 30 Jan 2015
    1 AS IsPrimary
INTO
    #ClientProductMP
FROM
    @ManualP mp
    INNER JOIN DistinctClients dc
        ON (mp.ClientCode = dc.ClientCode
            AND dc.RankPos = 1)
    INNER JOIN HarpPlusA1..Client cl
        ON (dc.ClientCode = cl.ClientCode
            AND ISNULL(dc.MediaCode, -99) = ISNULL(cl.MediaCode, -99));

--Unbilled
WITH TopClient (ClientCode, MediaCode, Filter1, BillingGroup, NoOfBuys, Commission, RowNumber)
AS
(
    SELECT
        cl.ClientCode,
        cl.MediaCode,
        cl.Filter1,
        cl.BillingGroup,
        sp.NoOfBuys,
        sp.Commission,
        ROW_NUMBER() OVER (PARTITION BY cl.ClientCode ORDER BY cl.MediaCode)
    FROM
        MediaA1..Client cl
        INNER JOIN @Unbilled sp
            ON (cl.ClientCode = sp.ClientCode)
)
SELECT /* ASKED TO MAKE ALL CLIENTS PREFIXED WITH _C 29 Jan 2015            
         CASE(PATINDEX('%a-z%', cl.ClientCode))
            WHEN 0 THEN 'C_' + RTRIM(cl.ClientCode)
            ELSE CASE(UPPER(RTRIM(cl.ClientCode)))
                    WHEN 'MAY' THEN 'C_' + RTRIM(cl.ClientCode)
                    ELSE RTRIM(cl.ClientCode)
                 END
        END AS Parent, */
    'C_' + RTRIM(cl.ClientCode) AS Parent,
    /* ASKED TO MAKE ALL CLIENTS PREFIXED WITH _C 29 Jan 2015            
    CASE(PATINDEX('%a-z%', cl.ClientCode))
            WHEN 0 THEN 'C_' + RTRIM(cl.ClientCode)
            ELSE CASE(UPPER(RTRIM(cl.ClientCode))) 
                        WHEN 'MAY' THEN 'C_' + RTRIM(cl.ClientCode)
                        ELSE RTRIM(cl.ClientCode)
                 END
    END AS Child, */
    'C_' + RTRIM(cl.ClientCode) AS Child,
    RTRIM(cl.ClientName) + ' (C_' + RTRIM(cl.ClientCode) + ')' AS Alias, -- asked to append client code 30 Jan 2015
    1 AS IsPrimary
INTO
    #ClientProductUnbilled
FROM
    TopClient tc
    INNER JOIN MediaA1..Client cl
        ON (tc.ClientCode = cl.ClientCode
            AND tc.MediaCode = cl.MediaCode)
WHERE
    RowNumber = 1;

/* -- removed client product hierarchy - 28 JAN 2015
SELECT    Parent, Child, Alias, IsPrimary
INTO    #ClientProduct
FROM    #ClientProductIncome

UNION 
*/

SELECT
    Parent,
    Child,
    Alias,
    IsPrimary
INTO
    #ClientProduct
FROM
    #ClientProductMP

UNION

SELECT
    Parent,
    Child,
    Alias,
    IsPrimary
FROM
    #ClientProductUnbilled;

INSERT INTO @Extract
        (
            Parent,
            Child,
            Alias,
            IsPrimary,
            ExtractOrder
        )
    SELECT
        CASE (ISNULL(Parent, ''))
            WHEN '' THEN 'AG_NULL'
            ELSE 'AG_' + Parent
        END AS Parent,
        Child,
        Alias,
        IsPrimary,
        3
    FROM
        #AccountGroup

/* -- removed client product hierarchy - 28 JAN 2015
INSERT INTO @Extract(Parent, Child, Alias, IsPrimary, ExtractOrder)
SELECT    Parent, Child, Alias, IsPrimary, 4
FROM    #ClientProduct
*/
--INSERT INTO @Extract(Parent, Child, Alias, IsPrimary, ExtractOrder)
--SELECT    CASE(ISNULL(Parent,'')) WHEN '' THEN 'CG_NULL' ELSE 'CG_' + Parent END AS Parent, Child, Alias, IsPrimary, 5
--FROM    #ClientGroup

--Select extract  
SELECT
    Parent,
    Child,
    Alias,
    IsPrimary
FROM
    @Extract
ORDER BY
    ExtractOrder,
    Alias

SET NOCOUNT OFF

END




GO
/****** Object:  StoredProcedure [dbo].[hyp_InsertAgencyData]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[hyp_InsertAgencyData]
                                 
AS

/* 
 ===============================================================================================================================================
    Author:         Richard Illingworth / Jon Powell
    Create date:    28th May 2012 / 14 Dec 2014
    Description:    Housekeeping procedure to store agency operating company data

    Usage:          EXEC [Hype].[A1InsertAgencyData] 

    Revisions:      1.01 Stored procedure created
                    1.02 Changed references from Y9 to A1 14 DEC 2014 JP
                    Migrate to ReportingA1 RD 2021-06-20
 ================================================================================================================================================
*/

BEGIN
SET NOCOUNT ON;
    BEGIN TRY
        INSERT INTO dbo.hypBuyingAgencyOffice
                (
                    BuyingAgencyID,
                    OfficeCode,
                    DDSUserID,
                    OpCoID,
                    ParentBuyingAgencyID
                )
            SELECT
                a.AgencyCode,
                NULL,
                NULL,
                NULL,
                NULL
            FROM
                MediaA1..Agency a
                LEFT JOIN dbo.hypBuyingAgencyOffice b
                    ON (a.AgencyCode = b.BuyingAgencyID)
            WHERE
                a.AgencyType = 'B'
                AND b.BuyingAgencyID IS NULL;
        RETURN 0
    END TRY
    BEGIN CATCH

        DECLARE @ErrMsg nvarchar(4000)
        DECLARE @ErrSev int

        SELECT
            @ErrMsg = 'Proc: ' + ERROR_PROCEDURE() + '. Msg: ' + ERROR_MESSAGE() + ' Line:' + CONVERT(NVARCHAR, ERROR_LINE()),
            @ErrSev = ERROR_SEVERITY()
        RAISERROR (@ErrMsg, @ErrSev, 1)

    END CATCH

END

GO
/****** Object:  StoredProcedure [dbo].[PaymentPerformanceReport]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[PaymentPerformanceReport](
	@StartDate datetime,
	@EndDate datetime
)
as
begin
	select 
		t.*
	from(
		select
			bm.MediaCode
			,am.BuySerial as [Serial Number]
			,acm.Creditor
			,aa.AccountName
			,bm.BookedDate
			,bm.BuyDate as [Insertion/Aired/PlacementDate]
			,acm.DueDate
			,iif(acm.IsContraed = 1, acm.UsedDate, ap.PaymentDate) as ChequeDate
			,apo.OfficeCode
			,apo.OfficeName as Office
			,acm.InvoiceLongNumber as Long
			,t.UsedDate as [Actual/Chq/ContraDate]
			,acm.InvoiceNumber as Ref	
		from AccountA1.dbo.AccAccount as aa
		join AccountA1.dbo.AccCrMaster as acm
			on acm.Creditor = aa.AccountCode
			and acm.Ledger = aa.Ledger
			and acm.UsedDate between @StartDate and @EndDate
			and acm.Ledger = 'F'	
		join AccountA1.dbo.AccPrdOffice as apo
			on acm.OfficeCode = apo.OfficeCode
		left join AccountA1.dbo.AccCrPayment as ap
			on acm.UniqueID = ap.UniqueID		
		join AccountA1.dbo.AccCrMedia as am
			on acm.UniqueID = am.UniqueID
		cross apply (
			select 
				amc. Creditor			
				,ama.BuySerial	
				,amc.InvoiceLongNumber 	
				,amc.InvoiceNumber
				,min(amc.UsedDate) as UsedDate
			from AccountA1.dbo.AccCrMaster as amc
			join AccountA1.dbo.AccCrMedia as ama
				on amc.UniqueID = ama.UniqueID
			where amc.UsedDate between @StartDate and @EndDate
				and amc.Ledger = 'F'
				and amc.Creditor = acm.Creditor
				and amc.InvoiceLongNumber = acm.InvoiceLongNumber
				and amc.InvoiceNumber = acm.InvoiceNumber
				and ama.BuySerial = am.BuySerial
			group by amc. Creditor			
				,ama.BuySerial	
				,amc.InvoiceLongNumber 	
				,amc.InvoiceNumber			
		)as t
		join MediaA1.dbo.BuyMoney as bm
			on am.BuySerial = bm.BuySerial		
	) as t
	group by
		t.MediaCode
		,t.[Serial Number]
		,t.Creditor
		,t.AccountName
		,t.BookedDate
		,t.[Insertion/Aired/PlacementDate]
		,t.DueDate
		,t.ChequeDate
		,t.OfficeCode
		,t.Office
		,t.Long	
		,t.Ref
		,t.[Actual/Chq/ContraDate]
end
GO
/****** Object:  StoredProcedure [dbo].[SendUserMrecReportEmails]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[SendUserMrecReportEmails]  

-- ticket 6667 MREC Report 
/* 
User Story:
--as a buyer
I want to receive unreconciled bookings within the first five business days of current month for the previous month
So that I can reconcile them
--as a buyer manager
I want to receive a copy of notifications with unreconciled bookings on the fifth business day of current month for the previous month
So that I can control reconciliations buyers
*/
-- created Denis Nkulin (EPAM) 2021-11-24

AS

SET NOCOUNT ON

--check if objects exist, if not - drop
if OBJECT_ID('tempdb..#unreconciled') is not null
drop table #unreconciled 
if OBJECT_ID('tempdb..#users') is not null
drop table #users
if OBJECT_ID('tempdb..#DateTable') is not null
drop table #DateTable
if OBJECT_ID('tempdb..##unreconciledGL') is not null
drop table ##unreconciledGL
if OBJECT_ID('tempdb..#BuyerMeasures') is not null
drop table #BuyerMeasures

--first five working days of current month
	SELECT TheDate, num,
		case num
			when 1 then 'ONE'
			when 2 then 'TWO'
			when 3 then 'THREE'
			when 4 then 'FOUR'
			when 5 then 'FIVE'
			else 'FIVE'
		end as num_name into #DateTable
	FROM (
		SELECT TheDate, row_number() over(partition by TheYear, TheMonth order by (select 1)) as num
			FROM dbo.DateDimension
			WHERE (IsHoliday = 0
			AND IsWeekend = 0
			AND DATEPART(m, TheDate) = DATEPART(m, getdate())
			AND DATEPART(yyyy, TheDate) = DATEPART(yyyy, getdate()))
		) dd
	WHERE num <= 5
	or Thedate = cast(getdate() as date) --for test, when prod - need block

--if today's date does not coincide with one of the first 5 working days of the month - return
IF (SELECT TheDate FROM #DateTable where Thedate = cast(getdate() as date)) is null 
or (SELECT TheDate FROM #DateTable where Thedate = cast(getdate() as date)) = '' RETURN


DECLARE
@user_count smallint,
@user_email nvarchar(64),
@first_name nvarchar(32),
@email_subject varchar(64),
@recon_date_num int,
@recon_date_num_name nvarchar(15),
@importance_recon nvarchar(20),
@end_of_recon_date nvarchar(20),
@Count_Uniq_Camp nvarchar(30),
@Count_number_of_unreconciled_bookings nvarchar(30),
@Calculate_gross_of_unreconciled_bookings nvarchar(50),
@email_body_html nvarchar(max),
@qry nvarchar(max),
@attachment_filename nvarchar(150),
@tab char(1) = CHAR(9)

--for test, when prod - need ublock
--WHILE NOT EXISTS -- wait for update to be complete
--(
--    SELECT
--        *
--    FROM
--        MediaA1..HarpBeat_Log
--    WHERE
--        ProcessName = 'UPDATE'
--        AND ProcessAction = 'STOP'
--        AND ProcessStatus = 'STOP'
--        AND ProcessParm1 = FORMAT(GETDATE(), 'yyyyMMdd')
--        AND ProcessParm2 = '1230'
--)
--BEGIN
--    WAITFOR DELAY '00:02:00' -- wait 2 minutes and try again
--END -- update is complete

--WAITFOR DELAY '00:01:00' -- give it a minute to settle


-- get unreconciled bookings for all buyers
    SELECT
		[Buying Agency], [Status V], [Serial Number], [Cli Code], [Client Name], [Cam Num], [Campaign Name], 
		[MonthYear], [MonthYearName], [Buyer Name], [Booking Category], [Type], [Supplier Name], [PO Ref #], 
		[CAMPID], [Gross], [Billable], [Paid],
		case
			when CHARINDEX('-', per.FirstName) = 0 THEN UPPER(SUBSTRING(per.FirstName, 1, 1)) + LOWER(SUBSTRING(per.FirstName, 2, LEN(per.FirstName) - 1))
			else UPPER(SUBSTRING(per.FirstName, 1, 1)) + LOWER(SUBSTRING(per.FirstName, 2, CHARINDEX('-', per.FirstName) - 2))
		end as first_name,
		per.EMailAddress as [email] into #unreconciled
    FROM [ReportingA1 _DEV].[dbo].[ur_MrecReport] AS mr
        JOIN ControlA1..Person AS per
            ON mr.BuyerPIN = per.PIN
			AND per.EmailAddress in ('daisy.stuart@mindshareworld.com', 'Lyle.roberts@mindshareworld.com') --='Thomas.Balaam@mindshareworld.com'-- --for test, when prod - need block
        JOIN (-- get the PIN AND EffectiveDate of the latest record
                SELECT
                    p.PIN,
                    MAX(p.EffectiveDate) AS MaxEffectiveDate
                FROM
                    ControlA1..Person AS p
				WHERE EmailAddress in ('daisy.stuart@mindshareworld.com', 'Lyle.roberts@mindshareworld.com') --= 'Thomas.Balaam@mindshareworld.com'-- --for test, when prod - need block
                GROUP BY
                    p.PIN
            ) AS per2
            ON per.PIN = per2.PIN 
            AND per.EffectiveDate = per2.MaxEffectiveDate
		WHERE mr.[Status V] = 'No'
		AND DATEPART(m, mr.BuyDate) = DATEPART(m, DATEADD(m, -1, getdate()))
		AND DATEPART(yyyy, mr.BuyDate) = DATEPART(yyyy, DATEADD(m, -1, getdate()))
		AND mr.OperatingCompanyCode = 4 --MINDSHARE


-- get buyers with unreconciled bookings
    SELECT DISTINCT
        first_name,
        email,
		0 as is_processed into #users
    FROM 
        #unreconciled


--calculate measures for Buyers (for email body)
    SELECT
        first_name,
        email,
		count(distinct [Campaign Name]) as [Count Uniq Camp],
		count(*) as [Count number of unreconciled bookings],
		sum(Gross) as [Calculate gross of unreconciled bookings] into #BuyerMeasures
    FROM
        #unreconciled
	GROUP BY
	first_name,
	email


-- get number of buyers with bookings
SET @user_count = (select count(*) from #users)

--fifth working day
SET @end_of_recon_date = (select FORMAT(TheDate, 'dMMMyy') from #DateTable where num = 5) 

--if today is working day - get number/name of the day
SET @recon_date_num = (select num from #DateTable where Thedate = cast(getdate() as date))
SET @recon_date_num_name = (select num_name from #DateTable where Thedate = cast(getdate() as date))

--assignment of importance to an email
SET @importance_recon = case when @recon_date_num <= 3 then 'Normal' else 'High' end

-- get @email_subject
SET @email_subject = 'DAY ' + cast(@recon_date_num_name as nvarchar) + ' OF THE ' 
+ (select UPPER(DATENAME(MONTH, DATEADD(mm, -1, TheDate))) from #DateTable where Thedate = cast(getdate() as date)) + '’S RECONCILIATION WINDOW'


--get email body and attachment csv. send email

WHILE @user_count > 0 -- we still have a buyer to process
BEGIN
    BEGIN TRY

        -- get next buyer
        SELECT TOP (1)
            @first_name = first_name,
            @user_email = email
        FROM
            #users
        WHERE
            is_processed = 0
		
		--get data for buyer
		SELECT
			[Buying Agency], [Status V], [Serial Number], [Cli Code], [Client Name], CHAR(160)+cast([Cam Num] as nvarchar(10)) as [Cam Num], [Campaign Name], 
			[MonthYear], [MonthYearName], [Buyer Name], [Booking Category], [Type], [Supplier Name], [PO Ref #], 
			[CAMPID], 
			CHAR(160)+cast(cast([Gross] as int) as nvarchar(40)) as Goss, 
			CHAR(160)+cast(cast([Billable] as int) as nvarchar(40)) as Billable, 
			CHAR(160)+cast(cast([Paid] as int) as nvarchar(40)) as Paid into ##unreconciledGL
		FROM #unreconciled
		WHERE email = @user_email

		--get measures for buyer
		SET @Count_Uniq_Camp = (SELECT cast([Count Uniq Camp] as nvarchar) FROM #BuyerMeasures WHERE @user_email = email)
		SET @Count_number_of_unreconciled_bookings = (SELECT cast([Count number of unreconciled bookings] as nvarchar) FROM #BuyerMeasures WHERE @user_email = email)
		SET @Calculate_gross_of_unreconciled_bookings = (SELECT cast(cast([Calculate gross of unreconciled bookings] as int) as nvarchar) FROM #BuyerMeasures WHERE @user_email = email)
		

        IF @recon_date_num <= 3
			BEGIN
				SET @email_body_html =
				+N'<p style="font-family:Calibri, sans-serif;font-size:14px;font-weight:normal;"><em>--- This is an automated email from a reconciliation bot, for any questions please see or contact your <br>'
				+'Finance Operations Team - <ins style="color:blue;">tamara.rowan-hamilton@mindshareworld.com</ins></em><br><br>'
				+'Hello ' + @first_name + ',<br><br>'
				+'The reconciliation window will be closing at 5.30pm on <strong>'+ @end_of_recon_date+'</strong>, please make sure you have reconciled your bookings by this date where possible. '
				+'Accurate and timely reconciliation is one of the most important elements of preserving our networking capital. '
				+'Without it we can’t bill clients on time or pay suppliers.<br><br>'
				+'Currently you have <strong>'+ @Count_Uniq_Camp +'</strong> campaign(s) and <strong>'+ @Count_number_of_unreconciled_bookings + '</strong> booking(s) '
				+'to the value of <strong>£' + @Calculate_gross_of_unreconciled_bookings + '</strong> still outstanding. Details of which are below.</p>'
			END
		ELSE IF @recon_date_num = 4
			BEGIN
				SET @email_body_html =
				+N'<p style="font-family:Calibri, sans-serif;font-size:14px;font-weight:normal;"><em>--- This is an automated email from a reconciliation bot, for any questions please see or contact your <br>'
				+'Finance Operations Team - <ins style="color:blue;">tamara.rowan-hamilton@mindshareworld.com</ins></em><br><br>'
				+'Hello ' + @first_name + ',<br><br>'
				+'The reconciliation window will be closing tomorrow at 5.30pm.<br><br>'
				+'Please make sure you have reconciled your bookings by this date where possible. '
				+'Accurate and timely reconciliation is one of the most important elements of preserving our networking capital. '
				+'Without it we can’t bill clients on time or pay suppliers.<br><br>'
				+'Currently you have <strong>'+ @Count_Uniq_Camp +'</strong> campaign(s) and <strong>'+ @Count_number_of_unreconciled_bookings + '</strong> booking(s) '
				+'to the value of <strong>£' + @Calculate_gross_of_unreconciled_bookings + '</strong> still outstanding. Details of which are below.<br><br>'
				+'Those who finish reconciliations week with unreconciled bookings in their name and no valid reason will be considered for a Consequence session.</p>'
			END
		ELSE IF @recon_date_num >= 5 --for test, when prod - need change = 5
			BEGIN
				SET @email_body_html =
				+N'<p style="font-family:Calibri, sans-serif;font-size:14px;font-weight:normal;"><em>--- This is an automated email from a reconciliation bot, for any questions please see or contact your <br>'
				+'Finance Operations Team - <ins style="color:blue;">tamara.rowan-hamilton@mindshareworld.com</ins></em><br><br>'
				+'Hello ' + @first_name + ',<br><br>'
				+'The reconciliation window will be closing today at 5.30pm.<br><br>'
				+'Finance Plus will start to lock <strong>'+ (select DATENAME(MONTH, DATEADD(mm, -1, TheDate)) from #DateTable where Thedate = cast(getdate() as date)) + '</strong> '
				+'Digital bookings despite the reconciliation status. Where possible, all bookings need to be reconciled by COP.<br><br>'
				+'Currently you have <strong>'+ @Count_Uniq_Camp +'</strong> campaign(s) and <strong>'+ @Count_number_of_unreconciled_bookings + '</strong> booking(s) '
				+'to the value of <strong>£' + @Calculate_gross_of_unreconciled_bookings + '</strong> still outstanding. Details of which are below.<br><br>'
				+'Those who finish reconciliations week with unreconciled bookings in their name and no valid reason will be considered for a Consequence session.</p>'
			END
			

		SET @attachment_filename = 'Unreconciled bookings - ' + @first_name + ' (' 
		+ (select DATENAME(MONTH, DATEADD(mm, -1, TheDate)) from #DateTable where Thedate = cast(getdate() as date)) +').csv'
		SET @qry = N'set nocount on;
					SELECT
						[Buying Agency], [Status V], [Serial Number], [Cli Code], [Client Name], [Cam Num], [Campaign Name], 
						[MonthYear], [MonthYearName], [Buyer Name], [Booking Category], [Type], [Supplier Name], [PO Ref #], 
						[CAMPID], Goss, Billable, Paid
					FROM ##unreconciledGL'
							

        -- send email to this buyer
        EXEC msdb.dbo.sp_send_dbmail
            @profile_name = 'UK Operations',
            --@recipients = @user_email, --for test, when prod - need unblock
            @recipients = 'denis_nikulin@epam.com',--;andrei_antonchenko@epam.com', --for test, when prod - need block
            @from_address = 'no_reply.uk_operations@groupm.com',
            @subject = @email_subject,
            @body = @email_body_html,
            @body_format = 'HTML',
			@importance = @importance_recon,
			@sensitivity = 'Confidential',
			@query = @qry,
			@execute_query_database = 'ReportingA1 _Dev',
			@attach_query_result_as_file = 1,
			@query_attachment_filename = @attachment_filename,
			@query_result_separator = @tab,
			@query_result_width = 32767,
			@query_result_no_padding = 1

        SET @user_count = @user_count - 1 -- one less buyer to process

        -- set this buyer to processed
        UPDATE #users
        SET is_processed = 1
        WHERE email = @user_email

		--just in case, forcibly drops the global temporary table
		drop table ##unreconciledGL

    END TRY


    BEGIN CATCH
        DECLARE @ErrorMessage nvarchar(400),
                @ErrorSeverity int,
                @ErrorState int
        SELECT
            @ErrorMessage = error_message(),
            @ErrorSeverity = error_severity(),
            @ErrorState = error_state()
        RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState)
    END CATCH
END -- while


--just in case, forcibly drops the temporary tables
drop table #unreconciled
drop table #DateTable
drop table #BuyerMeasures
drop table #users
GO
/****** Object:  StoredProcedure [dbo].[SendUserUnlockingEmails]    Script Date: 30/08/2022 11:39:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[SendUserUnlockingEmails]  @report_window_in_days tinyint = 2, @harp_update_time char(4) = '1230'

-- created RD 2021-06-14
-- send email notification to users for their unlocking requests
-- make @report_window_in_days a parmameter with default value of 1 RD 2021-07-02
-- only return unlocked bookings

AS

SET NOCOUNT ON;

-- Define CSS for html to use
DECLARE @Style NVARCHAR(MAX)= '';

SET @Style += +N'<style type="text/css">' + N'.tg  {font-family:Arial, sans-serif;font-size:12px;font-weight:normal;border-collapse:collapse;border-spacing:0;border-color:#aaa;}'
+ N'.tg td{font-family:Arial, sans-serif;font-size:12px;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#aaa@user_count;color:#333;background-color:#fff;}'
+ N'.tg th{font-family:Arial, sans-serif;font-size:12px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#aaa;color:#333;background-color:#B3E5FC;}'
+ N'.tg .tg-hgcj{font-weight:bold;text-align:center}'
+ N'</style>';
 
DECLARE @report_from_datetime datetime;
DECLARE @report_date_offset tinyint;
DECLARE @user_count smallint;
DECLARE @user_email varchar(64);
DECLARE @first_name varchar(32);
DECLARE @today char(8);
DECLARE @email_subject varchar(64);
DECLARE @single_multiple_requests varchar(32); 
DECLARE @email_body_html NVARCHAR(MAX);

SET @today = FORMAT(GETDATE(), 'yyyyMMdd');

WHILE NOT EXISTS -- wait for 12:30 update to be complete
(
    SELECT
        *
    FROM
        MediaA1..HarpBeat_Log
    WHERE
        ProcessName = 'UPDATE'
        AND ProcessAction = 'STOP'
        AND ProcessStatus = 'COMPLETE'
        AND ProcessParm1 = @today
        AND ProcessParm2 = @harp_update_time
)
BEGIN
    WAITFOR DELAY '00:02:00' -- wait 2 minutes and try again
END -- 12:30 update is complete

WAITFOR DELAY '00:01:00' -- give it a minute to settle

-- get records for the report window in the case that today is monday add 2 days
SET @report_date_offset =
    CASE
        WHEN DATEPART(WEEKDAY, GETDATE()) IN (2, 3) THEN @report_window_in_days + 2
        ELSE @report_window_in_days
    END;
SET @report_from_datetime = DATETIMEFROMPARTS(YEAR(GETDATE()), MONTH(GETDATE()), DAY(GETDATE()), 12, 30, 0, 0);
SET @report_from_datetime = DATEADD(DAY, -@report_date_offset, @report_from_datetime);
SET @email_subject = 'Requests Submitted since ' + FORMAT(@report_from_datetime, 'ddd, MMMM dd, @ hh:mm');

DECLARE @users table
(
    first_name varchar(32),
    email varchar(64),
    is_processed bit  default(0)
);

Declare @unlockings table
(
    agency_name varchar(32),
    requested varchar(16),
    buy_serial varchar(16),
    campaign_name varchar(32),
    cl_prod_camp varchar(16),
    po_cp varchar(32),
    unlock_reason varchar(64),
    lock_status varchar(8),
    first_name varchar(32),
    email varchar(64)
);

-- get requests for all users
INSERT INTO @unlockings
        (
            agency_name,
            requested,
            buy_serial,
            campaign_name,
            cl_prod_camp,
            po_cp,
            unlock_reason,
            lock_status,
            first_name,
            email
        )
    SELECT
        ba.AgencyName,
        FORMAT (bu.RequestedDateTime, 'ddd MMM dd HH:mm'),
        bu.BuySerial,
        cmp.CampaignName,
        RTRIM(bm.ClientCode) + '/' + CONVERT(VARCHAR(8), bm.ProductCode) + '/' + CONVERT(VARCHAR(8), bm.CampaignCode),
        CASE
            WHEN poa.PurchaseOrderSerial IS NOT NULL
                AND im.InternalCampaignCode IS NOT NULL THEN CONVERT(VARCHAR(16), poa.PurchaseOrderSerial) + '  -  ' + im.InternalCampaignCode
            WHEN poa.PurchaseOrderSerial IS NOT NULL
                AND im.InternalCampaignCode IS NULL THEN CONVERT(VARCHAR(16), poa.PurchaseOrderSerial)
            WHEN poa.PurchaseOrderSerial IS NULL
                AND im.InternalCampaignCode IS NOT NULL THEN im.InternalCampaignCode
            ELSE ''
        END,
        rr.[Description],
        CASE
            WHEN bm.IsLocked = 1 THEN 'Locked'
            ELSE 'Unlocked'
        END,
        CASE
            WHEN CHARINDEX('-', per.FirstName) = 0 THEN UPPER(SUBSTRING(per.FirstName, 1, 1)) + LOWER(SUBSTRING(per.FirstName, 2, LEN(per.FirstName) - 1))
            ELSE UPPER(SUBSTRING(per.FirstName, 1, 1)) + LOWER(SUBSTRING(per.FirstName, 2, CHARINDEX('-', per.FirstName) - 2))
        END,
        per.EMailAddress
    FROM
        MediaA1..BuyUnlock AS bu
        JOIN MediaA1..ReasonResolution AS rr
            ON bu.ReasonId = rr.ReasonResolutionID
        JOIN MediaA1..BuyMoney AS bm
            ON bm.BuySerial = bu.BuySerial
        LEFT JOIN MediaA1..PurchaseOrderLineAllocation AS poa
            ON poa.MediaCode = bm.MediaCode
            AND poa.ClientCode = bm.ClientCode
            AND poa.ProductCode = bm.ProductCode
            AND poa.CampaignCode = bm.CampaignCode
        LEFT JOIN MediaA1..InetMedia AS im
            ON im.BuySerial = bm.BuySerial
        LEFT JOIN ControlA1..Person AS per
            ON per.PIN = bu.RequestedByPIN
        JOIN (-- get the PIN AND EffectiveDate of the latest record
                SELECT
                    p.PIN,
                    MAX(p.EffectiveDate) AS MaxEffectiveDate
                FROM
                    ControlA1..Person AS p
                GROUP BY
                    p.PIN
            ) AS per2
            ON per2.PIN = per.PIN
            AND per2.MaxEffectiveDate = per.EffectiveDate
        JOIN MediaA1..Client AS cl
            ON bm.ClientCode = cl.ClientCode
            AND bm.MediaCode = cl.MediaCode
        JOIN MediaA1..Campaign AS cmp
            ON cmp.MediaCode = bm.MediaCode
            AND cmp.ClientCode = bm.ClientCode
            AND cmp.ProductCode = bm.ProductCode
            AND cmp.CampaignCode = bm.CampaignCode
        JOIN MediaA1..BuyingAgency AS ba
            ON cl.BuyingAgencyCode = ba.AgencyCode
    WHERE
        bu.IsCancelled = 0
        AND bu.IsActive = 1
        AND bm.IsLocked = 0
        AND bu.RequestedDateTime >= @report_from_datetime;

-- get users with unlocking requests
INSERT INTO @users
        (
            first_name,
            email
        )
    SELECT DISTINCT
        first_name,
        email
    FROM
        @unlockings;

-- get number of users with requests
SELECT
    @user_count = COUNT(*)
FROM
    @users;

-- Declare Variables for HTML

WHILE @user_count > 0 -- we still have a user to process
BEGIN
    BEGIN TRY

        -- get next user
        SELECT TOP (1)
            @first_name = first_name,
            @user_email = email
        FROM
            @users
        WHERE
            is_processed = 0;

        -- test for mediacom remove when live

        IF @user_email NOT LIKE '%mediacom%'
        BEGIN
            SET @user_count = @user_count - 1 -- one less user to process

            -- set this user to processed
            UPDATE
                    @users
            SET
                    is_processed = 1
            WHERE
                email = @user_email;
            CONTINUE;
        END
        -- end test

        IF (SELECT COUNT(*) FROM @unlockings WHERE email = @user_email) = 1
            SET @single_multiple_requests = 'request has';
        ELSE
            SET @single_multiple_requests = 'requests have';

        SET @email_body_html = '';

        SET @email_body_html += @Style + @email_body_html
        + N'<p style="font-family:Arial, sans-serif;font-size:14px;font-weight:normal;">Hi ' + @first_name + '<br><br>'
        + 'Your unlocking ' + @single_multiple_requests + ' been actioned.<br><br> Please update the booking system as soon as possible. <br><br></p>'
        + N'<table class="tg">' --DEFINE TABLE

        -- Define Column Headers
        + N'<tr>'
        + N'<th class="tg-hgcj">Buying Agency</th>'
        + N'<th class="tg-hgcj">Requested</th>'
        + N'<th class="tg-hgcj">BuySerial</th>'
        + N'<th class="tg-hgcj">Campaign Name</th>'
        + N'<th class="tg-hgcj">Cli/Pro/Camp Codes</th>'
        + N'<th class="tg-hgcj">PO Number or Prisma Camp ID</th>'
        + N'<th class="tg-hgcj">Unlock Reason</th>'
        + N'<th class="tg-hgcj">Lock Status</th>'
        + N'</tr>'

        -- Define data for table and cast to xml
        + CAST(
        (
            SELECT
                td = agency_name,
                '',
                td = requested,
                '',
                td = buy_serial,
                '',
                td = campaign_name,
                '',
                td = cl_prod_camp,
                '',
                td = po_cp,
                '',
                td = unlock_reason,
                '',
                td = lock_status,
                ''
            FROM
                @unlockings
            WHERE
                email = @user_email
            ORDER BY campaign_name, requested
            FOR
            XML PATH ('tr'),
            TYPE
        )
        AS NVARCHAR(MAX)) + N'</table>';

        -- send email to this user
        EXEC msdb.dbo.sp_send_dbmail
            @profile_name = 'Unlockings',
            --@recipients = @user_email,
            --@recipients = 'david.henderson@groupm.com',
            @recipients = 'ray.drew@groupm.com',
            @from_address = 'noreply.unlocking_requests@groupm.com',
            @subject = @email_subject,
            @body = @email_body_html,
            @body_format = 'HTML';

        SET @user_count = @user_count - 1 -- one less user to process

        -- set this user to processed
        UPDATE
                @users
        SET
                is_processed = 1
        WHERE
            email = @user_email;
    END TRY

    BEGIN CATCH
        DECLARE @ErrorMessage nvarchar(400),
                @ErrorSeverity int,
                @ErrorState int;
        SELECT
            @ErrorMessage = error_message(),
            @ErrorSeverity = error_severity(),
            @ErrorState = error_state();
        RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);
    END CATCH
END -- while

GO
USE [master]
GO
ALTER DATABASE [ReportingA1_DEV] SET  READ_WRITE 
GO
