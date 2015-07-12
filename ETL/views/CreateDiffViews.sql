-- Example of script output from gseCreateViews Geoprocessing tool - for SQL Server.
CREATE VIEW dbo.eBuildingFoundationExceptProduction AS SELECT SOURCEDWG,BUILDINGID,FOUNDTYPE,SHAPE.STAsText() AS SHAPE_TEXT FROM GISStaging.dbo.Building_Foundation EXCEPT  SELECT SOURCEDWG,BUILDINGID,FOUNDTYPE,SHAPE.STAsText() AS SHAPE_TEXT FROM GISProduction.dbo.Building_Foundation;
GO
CREATE VIEW dbo.eBuildingFoundationExceptStaging AS SELECT SOURCEDWG,BUILDINGID,FOUNDTYPE,SHAPE.STAsText() AS SHAPE_TEXT FROM GISProduction.dbo.Building_Foundation EXCEPT  SELECT SOURCEDWG,BUILDINGID,FOUNDTYPE,SHAPE.STAsText() AS SHAPE_TEXT FROM GISStaging.dbo.Building_Foundation;
GO
-- View createdC:\Apps\Gizinta\gseFP\ETL\serverConfig\GIS Staging.sde\eBuildingFoundationExceptProduction
-- View createdC:\Apps\Gizinta\gseFP\ETL\serverConfig\GIS Staging.sde\eBuildingFoundationExceptStaging
CREATE VIEW dbo.eBuildingOutlineTiltExceptProduction AS SELECT BUILDINGID,SOURCEID,CALCROT,SHAPE.STAsText() AS SHAPE_TEXT FROM GISStaging.dbo.Building_Outline_Tilt EXCEPT  SELECT BUILDINGID,SOURCEID,CALCROT,SHAPE.STAsText() AS SHAPE_TEXT FROM GISProduction.dbo.Building_Outline_Tilt;
GO
CREATE VIEW dbo.eBuildingOutlineTiltExceptStaging AS SELECT BUILDINGID,SOURCEID,CALCROT,SHAPE.STAsText() AS SHAPE_TEXT FROM GISProduction.dbo.Building_Outline_Tilt EXCEPT  SELECT BUILDINGID,SOURCEID,CALCROT,SHAPE.STAsText() AS SHAPE_TEXT FROM GISStaging.dbo.Building_Outline_Tilt;
GO
-- View createdC:\Apps\Gizinta\gseFP\ETL\serverConfig\GIS Staging.sde\eBuildingOutlineTiltExceptProduction
-- View createdC:\Apps\Gizinta\gseFP\ETL\serverConfig\GIS Staging.sde\eBuildingOutlineTiltExceptStaging
CREATE VIEW dbo.eBuildingOutlinePtExceptProduction AS SELECT BUILDINGID FROM GISStaging.dbo.Building_Outline_Point EXCEPT  SELECT BUILDINGID FROM GISProduction.dbo.Building_Outline_Point;
GO
CREATE VIEW dbo.eBuildingOutlinePtExceptStaging AS SELECT BUILDINGID FROM GISProduction.dbo.Building_Outline_Point EXCEPT  SELECT BUILDINGID FROM GISStaging.dbo.Building_Outline_Point;
GO
-- View createdC:\Apps\Gizinta\gseFP\ETL\serverConfig\GIS Staging.sde\eBuildingOutlinePtExceptProduction
-- View createdC:\Apps\Gizinta\gseFP\ETL\serverConfig\GIS Staging.sde\eBuildingOutlinePtExceptStaging
CREATE VIEW dbo.eBuildingRoofExceptProduction AS SELECT SOURCEDWG,BUILDINGID,SHAPE.STAsText() AS SHAPE_TEXT FROM GISStaging.dbo.Building_Roof EXCEPT  SELECT SOURCEDWG,BUILDINGID,SHAPE.STAsText() AS SHAPE_TEXT FROM GISProduction.dbo.Building_Roof;
GO
CREATE VIEW dbo.eBuildingRoofExceptStaging AS SELECT SOURCEDWG,BUILDINGID,SHAPE.STAsText() AS SHAPE_TEXT FROM GISProduction.dbo.Building_Roof EXCEPT  SELECT SOURCEDWG,BUILDINGID,SHAPE.STAsText() AS SHAPE_TEXT FROM GISStaging.dbo.Building_Roof;
GO
-- View createdC:\Apps\Gizinta\gseFP\ETL\serverConfig\GIS Staging.sde\eBuildingRoofExceptProduction
-- View createdC:\Apps\Gizinta\gseFP\ETL\serverConfig\GIS Staging.sde\eBuildingRoofExceptStaging
CREATE VIEW dbo.eBuildingExceptProduction AS SELECT SOURCEDWG,BUILDINGID,FACILITYNO,SHAPE.STAsText() AS SHAPE_TEXT FROM GISStaging.dbo.Building EXCEPT  SELECT SOURCEDWG,BUILDINGID,FACILITYNO,SHAPE.STAsText() AS SHAPE_TEXT FROM GISProduction.dbo.Building;
GO
CREATE VIEW dbo.eBuildingExceptStaging AS SELECT SOURCEDWG,BUILDINGID,FACILITYNO,SHAPE.STAsText() AS SHAPE_TEXT FROM GISProduction.dbo.Building EXCEPT  SELECT SOURCEDWG,BUILDINGID,FACILITYNO,SHAPE.STAsText() AS SHAPE_TEXT FROM GISStaging.dbo.Building;
GO
-- View createdC:\Apps\Gizinta\gseFP\ETL\serverConfig\GIS Staging.sde\eBuildingExceptProduction
-- View createdC:\Apps\Gizinta\gseFP\ETL\serverConfig\GIS Staging.sde\eBuildingExceptStaging
CREATE VIEW dbo.eBuildingPointExceptProduction AS SELECT BUILDINGID,SOURCEDWG,SHAPE.STAsText() AS SHAPE_TEXT FROM GISStaging.dbo.Building_Point EXCEPT  SELECT BUILDINGID,SOURCEDWG,SHAPE.STAsText() AS SHAPE_TEXT FROM GISProduction.dbo.Building_Point;
GO
CREATE VIEW dbo.eBuildingPointExceptStaging AS SELECT BUILDINGID,SOURCEDWG,SHAPE.STAsText() AS SHAPE_TEXT FROM GISProduction.dbo.Building_Point EXCEPT  SELECT BUILDINGID,SOURCEDWG,SHAPE.STAsText() AS SHAPE_TEXT FROM GISStaging.dbo.Building_Point;
GO
-- View createdC:\Apps\Gizinta\gseFP\ETL\serverConfig\GIS Staging.sde\eBuildingPointExceptProduction
-- View createdC:\Apps\Gizinta\gseFP\ETL\serverConfig\GIS Staging.sde\eBuildingPointExceptStaging
CREATE VIEW dbo.eFloorExceptProduction AS SELECT FLOORID,SOURCEDWG,SHAPE.STAsText() AS SHAPE_TEXT FROM GISStaging.dbo.Floor_Area EXCEPT  SELECT FLOORID,SOURCEDWG,SHAPE.STAsText() AS SHAPE_TEXT FROM GISProduction.dbo.Floor_Area;
GO
CREATE VIEW dbo.eFloorExceptStaging AS SELECT FLOORID,SOURCEDWG,SHAPE.STAsText() AS SHAPE_TEXT FROM GISProduction.dbo.Floor_Area EXCEPT  SELECT FLOORID,SOURCEDWG,SHAPE.STAsText() AS SHAPE_TEXT FROM GISStaging.dbo.Floor_Area;
GO
-- View createdC:\Apps\Gizinta\gseFP\ETL\serverConfig\GIS Staging.sde\eFloorExceptProduction
-- View createdC:\Apps\Gizinta\gseFP\ETL\serverConfig\GIS Staging.sde\eFloorExceptStaging
CREATE VIEW dbo.eFloorplanLineExceptProduction AS SELECT FLOORID,SOURCELAYER,SOURCEDWG,SHAPE.STAsText() AS SHAPE_TEXT FROM GISStaging.dbo.FloorplanLine EXCEPT  SELECT FLOORID,SOURCELAYER,SOURCEDWG,SHAPE.STAsText() AS SHAPE_TEXT FROM GISProduction.dbo.FloorplanLine;
GO
CREATE VIEW dbo.eFloorplanLineExceptStaging AS SELECT FLOORID,SOURCELAYER,SOURCEDWG,SHAPE.STAsText() AS SHAPE_TEXT FROM GISProduction.dbo.FloorplanLine EXCEPT  SELECT FLOORID,SOURCELAYER,SOURCEDWG,SHAPE.STAsText() AS SHAPE_TEXT FROM GISStaging.dbo.FloorplanLine;
GO
-- View createdC:\Apps\Gizinta\gseFP\ETL\serverConfig\GIS Staging.sde\eFloorplanLineExceptProduction
-- View createdC:\Apps\Gizinta\gseFP\ETL\serverConfig\GIS Staging.sde\eFloorplanLineExceptStaging
CREATE VIEW dbo.eFloorOutlineExceptProduction AS SELECT FLOORID,SOURCEDWG,SHAPE.STAsText() AS SHAPE_TEXT FROM GISStaging.dbo.Floor_Outline EXCEPT  SELECT FLOORID,SOURCEDWG,SHAPE.STAsText() AS SHAPE_TEXT FROM GISProduction.dbo.Floor_Outline;
GO
CREATE VIEW dbo.eFloorOutlineExceptStaging AS SELECT FLOORID,SOURCEDWG,SHAPE.STAsText() AS SHAPE_TEXT FROM GISProduction.dbo.Floor_Outline EXCEPT  SELECT FLOORID,SOURCEDWG,SHAPE.STAsText() AS SHAPE_TEXT FROM GISStaging.dbo.Floor_Outline;
GO
-- View createdC:\Apps\Gizinta\gseFP\ETL\serverConfig\GIS Staging.sde\eFloorOutlineExceptProduction
-- View createdC:\Apps\Gizinta\gseFP\ETL\serverConfig\GIS Staging.sde\eFloorOutlineExceptStaging
CREATE VIEW dbo.eFloorPointExceptProduction AS SELECT FLOORID FROM GISStaging.dbo.Floor_Point EXCEPT  SELECT FLOORID FROM GISProduction.dbo.Floor_Point;
GO
CREATE VIEW dbo.eFloorPointExceptStaging AS SELECT FLOORID FROM GISProduction.dbo.Floor_Point EXCEPT  SELECT FLOORID FROM GISStaging.dbo.Floor_Point;
GO
-- View createdC:\Apps\Gizinta\gseFP\ETL\serverConfig\GIS Staging.sde\eFloorPointExceptProduction
-- View createdC:\Apps\Gizinta\gseFP\ETL\serverConfig\GIS Staging.sde\eFloorPointExceptStaging
CREATE VIEW dbo.eFloorAreaExceptProduction AS SELECT BUILDINGID,FLOORCODE,FLOORID,FLOORAREA,SOURCEID,SOURCEDWG,SHAPE.STAsText() AS SHAPE_TEXT FROM GISStaging.dbo.Floor_Poly EXCEPT  SELECT BUILDINGID,FLOORCODE,FLOORID,FLOORAREA,SOURCEID,SOURCEDWG,SHAPE.STAsText() AS SHAPE_TEXT FROM GISProduction.dbo.Floor_Poly;
GO
CREATE VIEW dbo.eFloorAreaExceptStaging AS SELECT BUILDINGID,FLOORCODE,FLOORID,FLOORAREA,SOURCEID,SOURCEDWG,SHAPE.STAsText() AS SHAPE_TEXT FROM GISProduction.dbo.Floor_Poly EXCEPT  SELECT BUILDINGID,FLOORCODE,FLOORID,FLOORAREA,SOURCEID,SOURCEDWG,SHAPE.STAsText() AS SHAPE_TEXT FROM GISStaging.dbo.Floor_Poly;
GO
-- View createdC:\Apps\Gizinta\gseFP\ETL\serverConfig\GIS Staging.sde\eFloorAreaExceptProduction
-- View createdC:\Apps\Gizinta\gseFP\ETL\serverConfig\GIS Staging.sde\eFloorAreaExceptStaging
CREATE VIEW dbo.eInteriorSpaceExceptProduction AS SELECT FLOORID,ROOMNUMBER,SPACEID,SPACEAREA,SOURCEID,SHAPE.STAsText() AS SHAPE_TEXT FROM GISStaging.dbo.InteriorSpace EXCEPT  SELECT FLOORID,ROOMNUMBER,SPACEID,SPACEAREA,SOURCEID,SHAPE.STAsText() AS SHAPE_TEXT FROM GISProduction.dbo.InteriorSpace;
GO
CREATE VIEW dbo.eInteriorSpaceExceptStaging AS SELECT FLOORID,ROOMNUMBER,SPACEID,SPACEAREA,SOURCEID,SHAPE.STAsText() AS SHAPE_TEXT FROM GISProduction.dbo.InteriorSpace EXCEPT  SELECT FLOORID,ROOMNUMBER,SPACEID,SPACEAREA,SOURCEID,SHAPE.STAsText() AS SHAPE_TEXT FROM GISStaging.dbo.InteriorSpace;
GO
-- View createdC:\Apps\Gizinta\gseFP\ETL\serverConfig\GIS Staging.sde\eInteriorSpaceExceptProduction
-- View createdC:\Apps\Gizinta\gseFP\ETL\serverConfig\GIS Staging.sde\eInteriorSpaceExceptStaging
CREATE VIEW dbo.eInteriorSpacePointExceptProduction AS SELECT ROOMNUMBER,SPACEID,FLOORID FROM GISStaging.dbo.InteriorSpace_Point EXCEPT  SELECT ROOMNUMBER,SPACEID,FLOORID FROM GISProduction.dbo.InteriorSpace_Point;
GO
CREATE VIEW dbo.eInteriorSpacePointExceptStaging AS SELECT ROOMNUMBER,SPACEID,FLOORID FROM GISProduction.dbo.InteriorSpace_Point EXCEPT  SELECT ROOMNUMBER,SPACEID,FLOORID FROM GISStaging.dbo.InteriorSpace_Point;
GO
-- View createdC:\Apps\Gizinta\gseFP\ETL\serverConfig\GIS Staging.sde\eInteriorSpacePointExceptProduction
-- View createdC:\Apps\Gizinta\gseFP\ETL\serverConfig\GIS Staging.sde\eInteriorSpacePointExceptStaging
CREATE VIEW dbo.eInteriorSpaceTiltExceptProduction AS SELECT BUILDINGID,FLOORCODE,FLOORID,ROOMNUMBER,SPACEID,SHAPE.STAsText() AS SHAPE_TEXT FROM GISStaging.dbo.InteriorSpace_Tilt EXCEPT  SELECT BUILDINGID,FLOORCODE,FLOORID,ROOMNUMBER,SPACEID,SHAPE.STAsText() AS SHAPE_TEXT FROM GISProduction.dbo.InteriorSpace_Tilt;
GO
CREATE VIEW dbo.eInteriorSpaceTiltExceptStaging AS SELECT BUILDINGID,FLOORCODE,FLOORID,ROOMNUMBER,SPACEID,SHAPE.STAsText() AS SHAPE_TEXT FROM GISProduction.dbo.InteriorSpace_Tilt EXCEPT  SELECT BUILDINGID,FLOORCODE,FLOORID,ROOMNUMBER,SPACEID,SHAPE.STAsText() AS SHAPE_TEXT FROM GISStaging.dbo.InteriorSpace_Tilt;
GO
-- View createdC:\Apps\Gizinta\gseFP\ETL\serverConfig\GIS Staging.sde\eInteriorSpaceTiltExceptProduction
-- View createdC:\Apps\Gizinta\gseFP\ETL\serverConfig\GIS Staging.sde\eInteriorSpaceTiltExceptStaging
