------------------------------------------
-- -------- POPULATE ALL TABLES ----------
------------------------------------------


-- -------- POPULATE TABLE "MODULE" ----------

INSERT INTO APP.MODULE (OID, MODULEID, MODULENAME) VALUES (1, 'sv1', 'Voters');
INSERT INTO APP.MODULE (OID, MODULEID, MODULENAME) VALUES (2, 'sv3', 'Administrators');



-- -------- POPULATE TABLE "GROUP" ----------

INSERT INTO "APP"."GROUP" (OID, GROUPNAME) VALUES (1, 'Voters');
INSERT INTO "APP"."GROUP" (OID, GROUPNAME) VALUES (2, 'Administrators');


-- -------- POPULATE TABLE "GROUP_MODULETABLE" ----------

INSERT INTO APP.GROUP_MODULE (GROUP_OID, MODULE_OID) VALUES (1, 1);
INSERT INTO APP.GROUP_MODULE (GROUP_OID, MODULE_OID) VALUES (2, 2);

-- -------- POPULATE TABLE "USER" ----------

INSERT INTO "APP"."USER" (OID, USERNAME, PASSWORD, EMAIL) VALUES (1, 'user', 'user', 'user@test.com');
INSERT INTO "APP"."USER" (OID, USERNAME, PASSWORD, EMAIL) VALUES (2, 'admin', 'admin', 'admin@test.com');

-- -------- POPULATE TABLE "USER_GROUP" ----------

INSERT INTO APP.USER_GROUP (USER_OID, GROUP_OID) VALUES (1, 1);
INSERT INTO APP.USER_GROUP (USER_OID, GROUP_OID) VALUES (2, 2);

-- -------- POPULATE TABLE "EXHIBIT" ----------

INSERT INTO APP.EXHIBIT (OID, NAME) VALUES (1, 'Science');
INSERT INTO APP.EXHIBIT (OID, NAME) VALUES (2, 'WebRatio');