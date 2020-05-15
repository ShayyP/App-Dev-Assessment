-- Adding crimes if they were deleted, if new crimes were added in their place, overwrite them as the below data is inserted based on CrimeID alone
INSERT INTO Crime(CrimeID, CrimeName) VALUES(1, "Homicide") ON DUPLICATE KEY UPDATE CrimeName = "Homicide";
INSERT INTO Crime(CrimeID, CrimeName) VALUES(2, "Violence with injury") ON DUPLICATE KEY UPDATE CrimeName = "Violence with injury";
INSERT INTO Crime(CrimeID, CrimeName) VALUES(3, "Violence without injury") ON DUPLICATE KEY UPDATE CrimeName = "Violence without injury";
INSERT INTO Crime(CrimeID, CrimeName) VALUES(4, "Stalking and harassment") ON DUPLICATE KEY UPDATE CrimeName = "Stalking and harassment";
INSERT INTO Crime(CrimeID, CrimeName) VALUES(5, "Death or serious injury - unlawful driving") ON DUPLICATE KEY UPDATE CrimeName = "Death or serious injury - unlawful driving";
INSERT INTO Crime(CrimeID, CrimeName) VALUES(6, "Sexual offences") ON DUPLICATE KEY UPDATE CrimeName = "Sexual offences";
INSERT INTO Crime(CrimeID, CrimeName) VALUES(7, "Robbery") ON DUPLICATE KEY UPDATE CrimeName = "Robbery";
INSERT INTO Crime(CrimeID, CrimeName) VALUES(8, "Burglary") ON DUPLICATE KEY UPDATE CrimeName = "Burglary";
INSERT INTO Crime(CrimeID, CrimeName) VALUES(9, "Vehicle offences") ON DUPLICATE KEY UPDATE CrimeName = "Vehicle offences";
INSERT INTO Crime(CrimeID, CrimeName) VALUES(10, "Theft from a person") ON DUPLICATE KEY UPDATE CrimeName = "Theft from a person";
INSERT INTO Crime(CrimeID, CrimeName) VALUES(11, "Bicycle theft") ON DUPLICATE KEY UPDATE CrimeName = "Bicycle theft";
INSERT INTO Crime(CrimeID, CrimeName) VALUES(12, "Shoplifting") ON DUPLICATE KEY UPDATE CrimeName = "Shoplifting";
INSERT INTO Crime(CrimeID, CrimeName) VALUES(13, "Other theft offences") ON DUPLICATE KEY UPDATE CrimeName = "Other theft offences";
INSERT INTO Crime(CrimeID, CrimeName) VALUES(14, "Criminal damage and arson") ON DUPLICATE KEY UPDATE CrimeName = "Criminal damage and arson";
INSERT INTO Crime(CrimeID, CrimeName) VALUES(15, "Drug offences") ON DUPLICATE KEY UPDATE CrimeName = "Drug offences";
INSERT INTO Crime(CrimeID, CrimeName) VALUES(16, "Possession of weapons offences") ON DUPLICATE KEY UPDATE CrimeName = "Possession of weapons offences";
INSERT INTO Crime(CrimeID, CrimeName) VALUES(17, "Public order offences") ON DUPLICATE KEY UPDATE CrimeName = "Public order offences";
INSERT INTO Crime(CrimeID, CrimeName) VALUES(18, "Miscellaneous crimes") ON DUPLICATE KEY UPDATE CrimeName = "Miscellaneous crimes";

-- Adding records
-- Durham and Cleveland
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (1, 1, 20);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (1, 2, 11596);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (1, 3, 15809);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (1, 4, 16571);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (1, 5, 21);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (1, 6, 3640);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (1, 7, 823);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (1, 8, 9752);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (1, 9, 7588);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (1, 10, 795);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (1, 11, 1467);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (1, 12, 13729);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (1, 13, 11706);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (1, 14, 18955);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (1, 15, 2567);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (1, 16, 667);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (1, 17, 8977);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (1, 18, 3107);
-- Northumbria
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (2, 1, 11);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (2, 2, 13352);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (2, 3, 19982);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (2, 4, 14522);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (2, 5, 37);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (2, 6, 4952);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (2, 7, 855);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (2, 8, 9207);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (2, 9, 8406);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (2, 10, 1421);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (2, 11, 2027);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (2, 12, 14081);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (2, 13, 16832);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (2, 14, 22742);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (2, 15, 3344);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (2, 16, 1392);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (2, 17, 23401);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (2, 18, 3728);
-- Cheshire
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (3, 1, 19);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (3, 2, 10590);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (3, 3, 12892);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (3, 4, 9095);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (3, 5, 4);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (3, 6, 3195);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (3, 7, 416);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (3, 8, 4638);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (3, 9, 3652);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (3, 10, 635);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (3, 11, 1577);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (3, 12, 7084);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (3, 13, 7712);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (3, 14, 10162);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (3, 15, 2180);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (3, 16, 532);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (3, 17, 17976);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (3, 18, 1842);
-- Cumbria
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (4, 1, 4);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (4, 2, 4860);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (4, 3, 5472);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (4, 4, 2903);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (4, 5, 5);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (4, 6, 1593);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (4, 7, 123);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (4, 8, 2103);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (4, 9, 1174);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (4, 10, 197);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (4, 11, 296);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (4, 12, 2899);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (4, 13, 3210);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (4, 14, 5458);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (4, 15, 1022);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (4, 16, 252);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (4, 17, 3084);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (4, 18, 717);
-- Greater Manchester
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (5, 1, 78);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (5, 2, 28581);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (5, 3, 45640);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (5, 4, 22905);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (5, 5, 32);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (5, 6, 9656);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (5, 7, 7642);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (5, 8, 30156);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (5, 9, 31669);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (5, 10, 7351);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (5, 11, 4061);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (5, 12, 17352);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (5, 13, 32096);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (5, 14, 35821);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (5, 15, 4981);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (5, 16, 3542);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (5, 17, 45151);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (5, 18, 8262);
-- Lancashire
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (6, 1, 21);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (6, 2, 19920);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (6, 3, 23040);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (6, 4, 19287);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (6, 5, 5);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (6, 6, 5131);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (6, 7, 1097);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (6, 8, 13228);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (6, 9, 10078);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (6, 10, 2000);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (6, 11, 1698);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (6, 12, 9476);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (6, 13, 16378);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (6, 14, 20238);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (6, 15, 2342);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (6, 16, 701);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (6, 17, 14938);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (6, 18, 3241);
-- Merseyside
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (7, 1, 21);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (7, 2, 14398);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (7, 3, 17163);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (7, 4, 12151);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (7, 5, 19);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (7, 6, 3188);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (7, 7, 1462);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (7, 8, 11083);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (7, 9, 10382);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (7, 10, 2146);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (7, 11, 1890);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (7, 12, 8645);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (7, 13, 10633);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (7, 14, 16328);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (7, 15, 8181);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (7, 16, 1033);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (7, 17, 12689);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (7, 18, 2752);
-- East Yorkshire
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (8, 1, 17);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (8, 2, 10979);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (8, 3, 12939);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (8, 4, 8791);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (8, 5, 21);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (8, 6, 3175);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (8, 7, 973);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (8, 8, 8341);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (8, 9, 5795);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (8, 10, 702);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (8, 11, 2246);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (8, 12, 10356);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (8, 13, 8460);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (8, 14, 12809);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (8, 15, 1374);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (8, 16, 509);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (8, 17, 8395);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (8, 18, 2429);
-- North Yorkshire
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (9, 1, 5);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (9, 2, 5469);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (9, 3, 5478);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (9, 4, 2741);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (9, 5, 36);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (9, 6, 1854);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (9, 7, 211);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (9, 8, 3807);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (9, 9, 2460);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (9, 10, 483);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (9, 11, 1177);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (9, 12, 4448);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (9, 13, 4706);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (9, 14, 5993);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (9, 15, 1563);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (9, 16, 309);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (9, 17, 2210);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (9, 18, 812);
-- South Yorkshire
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (10, 1, 19);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (10, 2, 14291);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (10, 3, 13108);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (10, 4, 16273);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (10, 5, 27);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (10, 6, 3911);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (10, 7, 1669);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (10, 8, 14044);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (10, 9, 12607);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (10, 10, 2086);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (10, 11, 1163);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (10, 12, 10834);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (10, 13, 14326);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (10, 14, 18045);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (10, 15, 2490);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (10, 16, 1377);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (10, 17, 12632);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (10, 18, 3837);
-- West Yorkshire
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (11, 1, 39);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (11, 2, 29214);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (11, 3, 42901);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (11, 4, 29967);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (11, 5, 51);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (11, 6, 8564);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (11, 7, 3830);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (11, 8, 26237);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (11, 9, 24422);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (11, 10, 4145);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (11, 11, 2465);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (11, 12, 18714);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (11, 13, 25639);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (11, 14, 31094);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (11, 15, 6303);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (11, 16, 2314);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (11, 17, 28213);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (11, 18, 7461);
-- Derbyshire
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (12, 1, 4);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (12, 2, 9390);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (12, 3, 4650);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (12, 4, 2516);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (12, 5, 2);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (12, 6, 2039);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (12, 7, 640);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (12, 8, 6229);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (12, 9, 5465);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (12, 10, 706);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (12, 11, 1030);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (12, 12, 5851);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (12, 13, 6472);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (12, 14, 7872);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (12, 15, 2237);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (12, 16, 593);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (12, 17, 2225);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (12, 18, 1241);
-- Leicestershire
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (13, 1, 10);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (13, 2, 6840);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (13, 3, 12234);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (13, 4, 6231);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (13, 5, 12);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (13, 6, 2354);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (13, 7, 1019);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (13, 8, 8415);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (13, 9, 9347);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (13, 10, 1232);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (13, 11, 2124);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (13, 12, 6647);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (13, 13, 9234);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (13, 14, 10300);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (13, 15, 1867);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (13, 16, 740);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (13, 17, 6638);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (13, 18, 1923);
-- Lincolnshire
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (14, 1, 5);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (14, 2, 5716);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (14, 3, 6220);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (14, 4, 2873);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (14, 5, 8);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (14, 6, 1907);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (14, 7, 334);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (14, 8, 4336);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (14, 9, 3030);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (14, 10, 284);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (14, 11, 1038);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (14, 12, 5524);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (14, 13, 5058);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (14, 14, 6084);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (14, 15, 1778);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (14, 16, 525);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (14, 17, 2767);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (14, 18, 1095);
-- Northamptonshire
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (15, 1, 12);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (15, 2, 7206);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (15, 3, 8596);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (15, 4, 3157);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (15, 5, 2);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (15, 6, 2105);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (15, 7, 817);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (15, 8, 5863);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (15, 9, 7466);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (15, 10, 595);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (15, 11, 902);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (15, 12, 4104);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (15, 13, 5630);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (15, 14, 6619);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (15, 15, 1577);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (15, 16, 614);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (15, 17, 2249);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (15, 18, 1118);
-- Nottinghamshire
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (16, 1, 14);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (16, 2, 13601);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (16, 3, 9475);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (16, 4, 7857);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (16, 5, 7);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (16, 6, 3488);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (16, 7, 1225);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (16, 8, 7974);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (16, 9, 9153);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (16, 10, 1401);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (16, 11, 1904);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (16, 12, 10983);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (16, 13, 11511);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (16, 14, 12129);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (16, 15, 3259);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (16, 16, 954);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (16, 17, 6807);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (16, 18, 2370);
-- Staffordshire
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (17, 1, 9);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (17, 2, 10886);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (17, 3, 10766);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (17, 4, 9069);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (17, 5, 13);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (17, 6, 3247);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (17, 7, 972);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (17, 8, 6032);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (17, 9, 5668);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (17, 10, 484);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (17, 11, 1233);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (17, 12, 7414);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (17, 13, 9238);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (17, 14, 10971);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (17, 15, 1816);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (17, 16, 801);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (17, 17, 4258);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (17, 18, 1888);
-- Warwickshire
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (18, 1, 6);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (18, 2, 4440);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (18, 3, 5308);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (18, 4, 3075);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (18, 5, 4);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (18, 6, 1281);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (18, 7, 451);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (18, 8, 4115);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (18, 9, 4907);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (18, 10, 462);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (18, 11, 729);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (18, 12, 3422);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (18, 13, 4416);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (18, 14, 4520);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (18, 15, 839);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (18, 16, 412);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (18, 17, 2194);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (18, 18, 723);
-- West Mercia
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (19, 1, 15);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (19, 2, 9778);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (19, 3, 12263);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (19, 4, 7717);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (19, 5, 28);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (19, 6, 3456);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (19, 7, 584);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (19, 8, 7658);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (19, 9, 5623);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (19, 10, 911);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (19, 11, 1122);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (19, 12, 7713);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (19, 13, 9052);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (19, 14, 10037);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (19, 15, 2024);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (19, 16, 809);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (19, 17, 4249);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (19, 18, 1515);
-- West Midlands
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (20, 1, 50);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (20, 2, 30561);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (20, 3, 24861);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (20, 4, 15002);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (20, 5, 33);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (20, 6, 7016);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (20, 7, 8107);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (20, 8, 29850);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (20, 9, 37250);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (20, 10, 3230);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (20, 11, 3058);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (20, 12, 18774);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (20, 13, 24763);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (20, 14, 25695);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (20, 15, 4558);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (20, 16, 2281);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (20, 17, 13918);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (20, 18, 3682);
-- Bedfordshire
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (21, 1, 7);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (21, 2, 4833);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (21, 3, 6242);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (21, 4, 3569);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (21, 5, 15);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (21, 6, 1611);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (21, 7, 797);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (21, 8, 6440);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (21, 9, 7722);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (21, 10, 774);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (21, 11, 1296);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (21, 12, 3966);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (21, 13, 5466);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (21, 14, 6101);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (21, 15, 1343);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (21, 16, 415);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (21, 17, 3601);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (21, 18, 975);
-- Cambridgeshire
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (22, 1, 11);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (22, 2, 5081);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (22, 3, 8950);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (22, 4, 2953);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (22, 5, 24);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (22, 6, 1929);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (22, 7, 761);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (22, 8, 5429);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (22, 9, 6084);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (22, 10, 1015);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (22, 11, 4228);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (22, 12, 5041);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (22, 13, 7315);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (22, 14, 7491);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (22, 15, 1325);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (22, 16, 534);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (22, 17, 4177);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (22, 18, 1330);
-- Essex
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (23, 1, 13);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (23, 2, 14316);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (23, 3, 20074);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (23, 4, 18166);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (23, 5, 42);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (23, 6, 4003);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (23, 7, 1667);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (23, 8, 12276);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (23, 9, 15204);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (23, 10, 1529);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (23, 11, 2254);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (23, 12, 10721);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (23, 13, 13579);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (23, 14, 15910);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (23, 15, 3743);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (23, 16, 2099);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (23, 17, 12222);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (23, 18, 3285);
-- Hertfordshire
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (24, 1, 13);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (24, 2, 8726);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (24, 3, 11253);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (24, 4, 5047);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (24, 5, 27);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (24, 6, 2289);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (24, 7, 855);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (24, 8, 6574);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (24, 9, 9059);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (24, 10, 1380);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (24, 11, 1444);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (24, 12, 8607);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (24, 13, 8775);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (24, 14, 9216);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (24, 15, 3148);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (24, 16, 715);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (24, 17, 6466);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (24, 18, 1777);
-- Norfolk
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (25, 1, 6);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (25, 2, 6876);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (25, 3, 9990);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (25, 4, 4120);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (25, 5, 14);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (25, 6, 2520);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (25, 7, 474);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (25, 8, 3528);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (25, 9, 2778);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (25, 10, 500);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (25, 11, 1242);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (25, 12, 4151);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (25, 13, 5639);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (25, 14, 7083);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (25, 15, 2300);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (25, 16, 580);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (25, 17, 5496);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (25, 18, 1675);
-- Suffolk
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (26, 1, 7);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (26, 2, 5637);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (26, 3, 8286);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (26, 4, 4790);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (26, 5, 6);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (26, 6, 2260);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (26, 7, 462);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (26, 8, 4111);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (26, 9, 3620);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (26, 10, 553);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (26, 11, 1116);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (26, 12, 4148);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (26, 13, 4729);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (26, 14, 6520);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (26, 15, 1290);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (26, 16, 450);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (26, 17, 5075);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (26, 18, 1064);
-- Greater London
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (27, 1, 141);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (27, 2, 77365);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (27, 3, 85433);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (27, 4, 48806);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (27, 5, 49);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (27, 6, 20581);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (27, 7, 33207);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (27, 8, 80785);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (27, 9, 112901);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (27, 10, 43533);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (27, 11, 19942);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (27, 12, 44645);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (27, 13, 115772);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (27, 14, 56769);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (27, 15, 35899);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (27, 16, 7473);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (27, 17, 48693);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (27, 18, 10005);
-- Hampshire
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (28, 1, 14);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (28, 2, 21387);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (28, 3, 24199);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (28, 4, 9695);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (28, 5, 24);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (28, 6, 5623);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (28, 7, 1260);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (28, 8, 11514);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (28, 9, 12760);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (28, 10, 1272);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (28, 11, 3815);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (28, 12, 12969);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (28, 13, 13559);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (28, 14, 18549);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (28, 15, 3682);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (28, 16, 1621);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (28, 17, 14894);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (28, 18, 2650);
-- Kent
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (29, 1, 17);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (29, 2, 20522);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (29, 3, 35995);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (29, 4, 20958);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (29, 5, 67);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (29, 6, 7182);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (29, 7, 1851);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (29, 8, 11842);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (29, 9, 12993);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (29, 10, 1063);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (29, 11, 1744);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (29, 12, 12700);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (29, 13, 16994);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (29, 14, 22359);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (29, 15, 3043);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (29, 16, 1335);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (29, 17, 21115);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (29, 18, 5305);
-- Surrey
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (30, 1, 1);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (30, 2, 7198);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (30, 3, 10376);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (30, 4, 4964);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (30, 5, 19);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (30, 6, 2349);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (30, 7, 440);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (30, 8, 5911);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (30, 9, 6273);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (30, 10, 565);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (30, 11, 1237);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (30, 12, 4347);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (30, 13, 9080);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (30, 14, 9457);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (30, 15, 2853);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (30, 16, 585);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (30, 17, 7526);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (30, 18, 1564);
-- Sussex
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (31, 1, 30);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (31, 2, 13676);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (31, 3, 16950);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (31, 4, 7125);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (31, 5, 14);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (31, 6, 4154);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (31, 7, 1053);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (31, 8, 7177);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (31, 9, 8251);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (31, 10, 1490);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (31, 11, 2204);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (31, 12, 7983);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (31, 13, 12608);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (31, 14, 13767);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (31, 15, 3483);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (31, 16, 1598);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (31, 17, 10203);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (31, 18, 2283);
-- Thames Valley
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (32, 1, 17);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (32, 2, 15711);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (32, 3, 22168);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (32, 4, 8396);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (32, 5, 19);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (32, 6, 5453);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (32, 7, 1602);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (32, 8, 12283);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (32, 9, 17093);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (32, 10, 2965);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (32, 11, 5581);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (32, 12, 14256);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (32, 13, 20782);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (32, 14, 19104);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (32, 15, 5065);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (32, 16, 1419);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (32, 17, 6848);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (32, 18, 3308);
-- Avon and Somerset
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (33, 1, 15);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (33, 2, 12804);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (33, 3, 17830);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (33, 4, 11798);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (33, 5, 3);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (33, 6, 4205);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (33, 7, 1447);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (33, 8, 10066);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (33, 9, 10606);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (33, 10, 1132);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (33, 11, 3420);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (33, 12, 10663);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (33, 13, 13592);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (33, 14, 15487);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (33, 15, 2876);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (33, 16, 782);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (33, 17, 17450);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (33, 18, 1779);
-- Devon and Cornwall
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (34, 1, 19);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (34, 2, 15662);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (34, 3, 15097);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (34, 4, 10110);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (34, 5, 41);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (34, 6, 4547);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (34, 7, 601);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (34, 8, 5761);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (34, 9, 5769);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (34, 10, 844);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (34, 11, 911);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (34, 12, 7725);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (34, 13, 10742);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (34, 14, 14527);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (34, 15, 3982);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (34, 16, 932);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (34, 17, 7151);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (34, 18, 2195);
-- Dorset
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (35, 1, 3);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (35, 2, 6186);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (35, 3, 7667);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (35, 4, 4087);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (35, 5, 7);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (35, 6, 1897);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (35, 7, 376);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (35, 8, 4270);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (35, 9, 3812);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (35, 10, 493);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (35, 11, 1360);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (35, 12, 4046);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (35, 13, 6417);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (35, 14, 6861);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (35, 15, 1609);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (35, 16, 323);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (35, 17, 3003);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (35, 18, 682);
-- Gloucestershire
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (36, 1, 8);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (36, 2, 5173);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (36, 3, 2251);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (36, 4, 2004);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (36, 5, 7);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (36, 6, 1085);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (36, 7, 368);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (36, 8, 4183);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (36, 9, 4084);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (36, 10, 395);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (36, 11, 980);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (36, 12, 3373);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (36, 13, 3865);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (36, 14, 4456);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (36, 15, 959);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (36, 16, 246);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (36, 17, 1413);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (36, 18, 442);
-- Wiltshire
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (37, 1, 2);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (37, 2, 5701);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (37, 3, 5840);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (37, 4, 2380);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (37, 5, 2);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (37, 6, 1646);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (37, 7, 338);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (37, 8, 3222);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (37, 9, 2895);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (37, 10, 347);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (37, 11, 826);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (37, 12, 4300);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (37, 13, 4479);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (37, 14, 5709);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (37, 15, 1044);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (37, 16, 305);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (37, 17, 2710);
INSERT INTO Record(CountyID, CrimeID, Amount)
VALUES (37, 18, 737);