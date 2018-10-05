--remove data from tables
delete from patient;
delete from doctor;
delete from nurse;
delete from treatment;
delete from diagnosis;

--insert data into tables to practice standard and complex qyeries.

insert into patient values ('201', 'Kush', 'Patel', '05-24-1993', 'M', '07003');
insert into patient values ('202', 'Serena', 'Williams', '01-21-1971', 'F', '01001');
insert into patient values ('203', 'Tom', 'Cruse', '11-18-1978', 'M', '04560');
insert into patient values ('204', 'Johnny', 'Depp', '08-05-1995', 'M', '09547');
insert into patient values ('205', 'Venus', 'Williams', '07-19-1962', 'F', '15624');
insert into patient values ('782','Ezra','Allen','02-04-1969','F','10515');
insert into patient values ('226','Brenden','Nelson','03-27-1989','M','44236');
insert into patient values ('942','Tanisha','Pratt','10-18-1969','F','61324');
insert into patient values ('953','Francis','Rowe','02-23-1974','M','66303');
insert into patient values ('075','Robin','Mendez','10-27-1963','M','03749');

insert into doctor values ('101', 'Nancie', 'Fleury', 'F', 'Anesthesia', '1001');
insert into doctor values ('102', 'Anabel', 'Tam', 'F', 'Gynecology', '1002');
insert into doctor values ('103', 'Danelle', 'Haley', 'F', 'Neurology', '1003');
insert into doctor values ('104', 'Queenie', 'Hodak', 'F', 'Oncology', '1004');
insert into doctor values ('105', 'Genaro', 'Radabaugh', 'M', 'Neurology', '1005');
insert into doctor values ('126','Jasper','Casey','M', 'Neonatology','4608');
insert into doctor values ('903','Sylvia','Houston','F','Hemtology','5799');
insert into doctor values ('117','Boris','Battle','M','Internal Medicine','8932');
insert into doctor values ('331','Rose','Sandoval','F','Nephrology','6300');
insert into doctor values ('158','Lee','Blackwell','M','Nephrology','6438');

insert into nurse values ('301', 'Greta', 'Mcgirt', 'F', '2');
insert into nurse values ('302', 'Jessie', 'Berk', 'M', '4');
insert into nurse values ('303', 'Nadene', 'Pontes', 'F', '6');
insert into nurse values ('304', 'Kelli', 'Massaro', 'F', '6');
insert into nurse values ('305', 'Lane', 'Marchi', 'M', '10');

insert into treatment values ('1001', '201', '101', '301', '12-08-2015', '12-09-2015', 'Medicated');
insert into treatment values ('1002', '202', '102', '302', '09-24-2015', '09-26-2015', 'Medicated');
insert into treatment values ('1003', '203', '103', '303', '11-10-2015', '11-10-2015', 'Cured');
insert into treatment values ('1004', '204', '104', '304', '11-08-2015', '11-09-2015', 'Cured');
insert into treatment values ('1005', '205', '105', '305', '12-16-2015', null, null);
insert into treatment values ('1006', '201', '101', '301', '12-16-2015', null, null);
insert into treatment values ('1007', '202', '102', '302', '10-08-2015', '10-15-2015', 'Medicated');
insert into treatment values ('1008', '203', '103', '305', '08-08-2015', '08-11-2015', 'Medicated');
insert into treatment values ('1009', '201', '101', '301', '09-18-2015', '09-18-2015', 'Under Observation');
insert into treatment values ('1010', '782', '903', '305', '12-18-2015',  null, 'Under Observation');

insert into diagnosis values ('12345', '201', '101', '1001', '12-06-2015', '15', '2');
insert into diagnosis values ('12346', '201', '331', '1001', '12-07-2015', '17', '4');
insert into diagnosis values ('14345', '202', '102', '1002', '09-21-2015', '18', '3');
insert into diagnosis values ('19345', '202', '158', '1002', '09-21-2015', '14', '4');
insert into diagnosis values ('12845', '203', '103', '1003', '12-06-2015', '2', '1');
insert into diagnosis values ('92345', '204', '104', '1004', '12-06-2015', '6', '1');
insert into diagnosis values ('12445', '205', '158', '1005', '12-06-2015', '8', '2');
insert into diagnosis values ('82345', '201', '101', '1006', '12-06-2015', '10', '1');
insert into diagnosis values ('62345', '202', '117', '1007', '12-06-2015', '8', '3');
insert into diagnosis values ('12340', '203', '117', '1008', '12-06-2015', '11', '2');
insert into diagnosis values ('89345', '201', '903', '1009', '12-06-2015', '17', '1');
insert into diagnosis values ('78345', '782', '903', '1010', '12-06-2015', '22', '0');

