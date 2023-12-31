/*create and use a new database called EmployeeExpense - Start*/
create database EmployeeExpense;
use EmployeeExpense;
/*create and use a new database called EmployeeExpense - End*/
/*create all the entities and attributes as per the ERD - Start*/
drop table DEPARTMENT;
create table DEPARTMENT(
DeptName varchar(20) primary key, 
HEAD VARCHAR(25),
DEPTSIZE INT);

drop table EMPLOYEE;
create table EMPLOYEE(
EMPLID VARCHAR(25) primary key, 
EmpFirstName varchar(20),
 EmpMiddleName varchar(20), 
 EmpLastName varchar(20),
 BankAccountNo varchar(20), 
 Location varchar(20),
 Phone_No Int,
 DeptName varchar(20),
 SupervisorID VARCHAR(25),
 FOREIGN KEY (DeptName) REFERENCES DEPARTMENT(DeptName));
 
 drop table AUDITOR;
 create table AUDITOR(
 AuditorID VARCHAR(25) primary key,
 AuditorName varchar(20));
 
 DROP TABLE REIMBURSEMENT;
 create table REIMBURSEMENT(
 ReimbursementID VARCHAR(10) primary key,
 ReimbursementDept varchar(20),
 ReimbursementDate Date,
 ReimbursementStatus varchar(10),
 ReimbursementAmount float(10,2),
 ReasonofRejection varchar(50),
 AuditorID VARCHAR(25),
 FOREIGN KEY (AuditorID) REFERENCES AUDITOR(AuditorID));
 
  DROP TABLE EXPENSETYPE;
  create table EXPENSETYPE(
  ExpTypeID VARCHAR(10) primary key, 
  ExpTypeName Varchar(25),
  Lmt Int);
  
DROP TABLE Expense;
  create table Expense(
  ExpID VARCHAR(10) primary key, 
  ReimbursementID VARCHAR(10),
  EMPLID VARCHAR(25),
  ExpDate Date,
  SubmitDate Date,
  ExpAmt float(10,2),
  ExpDesc varchar(50),
  ExpStatus varchar(10),
  ExpTypeID VARCHAR(10),
  SupervisorID VARCHAR(25),
  SupervisorComment VARCHAR(50),
  AuditorID VARCHAR(25),
  FOREIGN KEY (ReimbursementID) REFERENCES REIMBURSEMENT(ReimbursementID),
  FOREIGN KEY (AuditorID) REFERENCES AUDITOR(AuditorID)
  );
 
 /*POPULATE DEPARTMENT TABLE*/
insert into DEPARTMENT VALUES('RADIOLOGY','Deindorfer,James',197);
insert into DEPARTMENT VALUES('NEUROLOGY','Dobbs,Susan',122);
insert into DEPARTMENT VALUES('TECHNOLOGY','Schofield,Barbara',108);
insert into DEPARTMENT VALUES('HR','Brown III,Anne',107);
insert into DEPARTMENT VALUES('OPTOMOLOGY','Ng,Frances',172);
insert into DEPARTMENT VALUES('PROCUREMENT','Lee,Susan',71);
insert into DEPARTMENT VALUES('FINANCE','Collins,Mike',119);
insert into DEPARTMENT VALUES('OTHER','Martignoni,David',161);
insert into DEPARTMENT VALUES('GENERAL','Ball,Nancy',189);
insert into DEPARTMENT VALUES('ADMIN','Emmerson,Nancy',52);
insert into DEPARTMENT VALUES('ONCOLOGY','Chae,Kevin',195);
insert into DEPARTMENT VALUES('GYNAECOLOGY','Hoinck,Susan',196);
insert into DEPARTMENT VALUES('CARDIOLOGY','Channing,Rosanna',118);
insert into DEPARTMENT VALUES('TRANSPORTATION','Monet,Claude',173);
insert into DEPARTMENT VALUES('LOGISTICS','Patterson,John',127);
insert into DEPARTMENT VALUES('UROLOGY','Turner,Ed',39);
insert into DEPARTMENT VALUES('DERMATOLOGY','Parker,Russell',199);
insert into DEPARTMENT VALUES('DENTAL','Elliot,Ken',75);
insert into DEPARTMENT VALUES('PODIATRY','Ann,Mary',196);
insert into DEPARTMENT VALUES('OUTPATIENT','Ash,Jude',20);
insert into DEPARTMENT VALUES('INPATIENT','Ling,Cornelia',164);
insert into DEPARTMENT VALUES('PARAMEDICAL','Summer,Alice',63);
insert into DEPARTMENT VALUES('REHABILITATION','Morgan,Richard',75);

 /*POPULATE AUDITOR TABLE*/
INSERT INTO AUDITOR VALUES ('KU0079','Ball,Nancy');
INSERT INTO AUDITOR VALUES ('KU0080','Emmerson,Nancy');
INSERT INTO AUDITOR VALUES ('KU0106','Chae,Kevin');
INSERT INTO AUDITOR VALUES ('KU0119','Hoinck,Susan');
INSERT INTO AUDITOR VALUES ('KU0046','Channing,Rosanna');
INSERT INTO AUDITOR VALUES ('PU007','Monet,Claude');
INSERT INTO AUDITOR VALUES ('KU0131','Patterson,John');
INSERT INTO AUDITOR VALUES ('KU9103','Turner,Ed');
INSERT INTO AUDITOR VALUES ('KU9104','Parker,Russell');
INSERT INTO AUDITOR VALUES ('KU9105','Elliot,Ken');
INSERT INTO AUDITOR VALUES ('KU9106','Ann,Mary');
INSERT INTO AUDITOR VALUES ('KU9107','Ash,Jude');

/*POPULATE  EMPLOYEE TABLE*/
insert into EMPLOYEE (EMPLID,EMPFIRSTNAME,EMPLASTNAME,BANKACCOUNTNO,LOCATION,PHONE_NO,DEPTNAME,SUPERVISORID) VALUES('IXHEEE168','JAMES','DEINDORFER','100003619','Berlin','888555','RADIOLOGY','KUTZ485');
insert into EMPLOYEE (EMPLID,EMPFIRSTNAME,EMPLASTNAME,BANKACCOUNTNO,LOCATION,PHONE_NO,DEPTNAME,SUPERVISORID) VALUES('IXHEEE172','SUSAN','DOBBS','100007069','Greater London','888555','NEUROLOGY','KUTZ486');
insert into EMPLOYEE (EMPLID,EMPFIRSTNAME,EMPLASTNAME,BANKACCOUNTNO,LOCATION,PHONE_NO,DEPTNAME,SUPERVISORID) VALUES('IXHEEE174','BARBARA','SCHOFIELD','100004255','Tokyo-To','888555','TECHNOLOGY','KUTZ487');
insert into EMPLOYEE (EMPLID,EMPFIRSTNAME,EMPLASTNAME,BANKACCOUNTNO,LOCATION,PHONE_NO,DEPTNAME,SUPERVISORID) VALUES('IXHEEE176','ANNE','BROWNIII','100004989','Chatswood','888555','HR','KUTZ488');
insert into EMPLOYEE (EMPLID,EMPFIRSTNAME,EMPLASTNAME,BANKACCOUNTNO,LOCATION,PHONE_NO,DEPTNAME,SUPERVISORID) VALUES('IXHEEE178','FRANCES','NG','100005925','Groningen','888555','OPTOMOLOGY','KUTZ489');
insert into EMPLOYEE (EMPLID,EMPFIRSTNAME,EMPLASTNAME,BANKACCOUNTNO,LOCATION,PHONE_NO,DEPTNAME,SUPERVISORID) VALUES('KU0042','KENNETH','SCHUMACHER','100007407','San Jose','888555','PROCUREMENT','KUTZ490');
insert into EMPLOYEE (EMPLID,EMPFIRSTNAME,EMPLASTNAME,BANKACCOUNTNO,LOCATION,PHONE_NO,DEPTNAME,SUPERVISORID) VALUES('KU0056','EDWARD','NG','100004732','San Jose','888555','FINANCE','KUTZ491');
insert into EMPLOYEE (EMPLID,EMPFIRSTNAME,EMPLASTNAME,BANKACCOUNTNO,LOCATION,PHONE_NO,DEPTNAME,SUPERVISORID) VALUES('KU0057','JENNIFER','LUIS','100003487','San Jose','888555','OTHER','KUTZ492');
insert into EMPLOYEE (EMPLID,EMPFIRSTNAME,EMPLASTNAME,BANKACCOUNTNO,LOCATION,PHONE_NO,DEPTNAME,SUPERVISORID) VALUES('IXHEEE161','CHERI','SMITH','100007337','Luxemburg','888555','GENERAL','KUTZ493');
insert into EMPLOYEE (EMPLID,EMPFIRSTNAME,EMPLASTNAME,BANKACCOUNTNO,LOCATION,PHONE_NO,DEPTNAME,SUPERVISORID) VALUES('KU0008','CALVIN','ROTH','100004088','San Jose','888555','ADMIN','KUTZ494');
insert into EMPLOYEE (EMPLID,EMPFIRSTNAME,EMPLASTNAME,BANKACCOUNTNO,LOCATION,PHONE_NO,DEPTNAME,SUPERVISORID) VALUES('KU0009','THERESA','MONROE','100004503','San Jose','888555','ONCOLOGY','KUTZ495');
insert into EMPLOYEE (EMPLID,EMPFIRSTNAME,EMPLASTNAME,BANKACCOUNTNO,LOCATION,PHONE_NO,DEPTNAME,SUPERVISORID) VALUES('KU0010','SONYA','VINCENT','100006375','Inglewood','888555','GYNAECOLOGY','KUTZ496');
insert into EMPLOYEE (EMPLID,EMPFIRSTNAME,EMPLASTNAME,BANKACCOUNTNO,LOCATION,PHONE_NO,DEPTNAME,SUPERVISORID) VALUES('KU0011','JOHN','BENDETTO','100005979','San Jose','888555','CARDIOLOGY','KUTZ497');
insert into EMPLOYEE (EMPLID,EMPFIRSTNAME,EMPLASTNAME,BANKACCOUNTNO,LOCATION,PHONE_NO,DEPTNAME,SUPERVISORID) VALUES('KU0021','JESSICA','BENDETTO','100004932','San Jose','888555','TRANSPORTATION','KUTZ498');
insert into EMPLOYEE (EMPLID,EMPFIRSTNAME,EMPLASTNAME,BANKACCOUNTNO,LOCATION,PHONE_NO,DEPTNAME,SUPERVISORID) VALUES('KU0022','CORNELIA','TURNER','100003940','San Jose','888555','LOGISTICS','KUTZ499');
insert into EMPLOYEE (EMPLID,EMPFIRSTNAME,EMPLASTNAME,BANKACCOUNTNO,LOCATION,PHONE_NO,DEPTNAME,SUPERVISORID) VALUES('KU0029','CORNELIA','LING','100003758','San Jose','888555','OTHER','MM000000001');
insert into EMPLOYEE (EMPLID,EMPFIRSTNAME,EMPLASTNAME,BANKACCOUNTNO,LOCATION,PHONE_NO,DEPTNAME,SUPERVISORID) VALUES('KU0032','ALICE','SUMMER','100005421','San Jose','888555','GENERAL','MM000000002');
insert into EMPLOYEE (EMPLID,EMPFIRSTNAME,EMPLASTNAME,BANKACCOUNTNO,LOCATION,PHONE_NO,DEPTNAME,SUPERVISORID) VALUES('KU0037','RICHARD','MORGAN','100007013','San Jose','888555','ADMIN','MM000000003');
insert into EMPLOYEE (EMPLID,EMPFIRSTNAME,EMPLASTNAME,BANKACCOUNTNO,LOCATION,PHONE_NO,DEPTNAME,SUPERVISORID) VALUES('KU9101','SUSAN','LEE','100006216','San Francisco','888555','ONCOLOGY','MM000000004');
insert into EMPLOYEE (EMPLID,EMPFIRSTNAME,EMPLASTNAME,BANKACCOUNTNO,LOCATION,PHONE_NO,DEPTNAME,SUPERVISORID) VALUES('KU9102','MIKE','COLLINS','100003763','San Francisco','888555','GYNAECOLOGY','MM000000005');
insert into EMPLOYEE (EMPLID,EMPFIRSTNAME,EMPLASTNAME,BANKACCOUNTNO,LOCATION,PHONE_NO,DEPTNAME,SUPERVISORID) VALUES('KU0075','DAVID','MARTIGNONI','100003669','San Jose','888555','CARDIOLOGY','MM000000006');
insert into EMPLOYEE (EMPLID,EMPFIRSTNAME,EMPLASTNAME,BANKACCOUNTNO,LOCATION,PHONE_NO,DEPTNAME,SUPERVISORID) VALUES('KU0079','NANCY','BALL','100005893','Ontario','888555','TRANSPORTATION','MM000000007');
insert into EMPLOYEE (EMPLID,EMPFIRSTNAME,EMPLASTNAME,BANKACCOUNTNO,LOCATION,PHONE_NO,DEPTNAME,SUPERVISORID) VALUES('KU0080','NANCY','EMMERSON','100004729','San Jose','888555','LOGISTICS','KUTZ485');
insert into EMPLOYEE (EMPLID,EMPFIRSTNAME,EMPLASTNAME,BANKACCOUNTNO,LOCATION,PHONE_NO,DEPTNAME,SUPERVISORID) VALUES('KU0106','KEVIN','CHAE','100006778','San Jose','888555','DENTAL','KUTZ486');
insert into EMPLOYEE (EMPLID,EMPFIRSTNAME,EMPLASTNAME,BANKACCOUNTNO,LOCATION,PHONE_NO,DEPTNAME,SUPERVISORID) VALUES('KU0119','SUSAN','HOINCK','100005031','Arlington','888555','PODIATRY','KUTZ487');
insert into EMPLOYEE (EMPLID,EMPFIRSTNAME,EMPLASTNAME,BANKACCOUNTNO,LOCATION,PHONE_NO,DEPTNAME,SUPERVISORID) VALUES('KU0046','ROSANNA','CHANNING','100006609','Casper','888555','OUTPATIENT','KUTZ488');
insert into EMPLOYEE (EMPLID,EMPFIRSTNAME,EMPLASTNAME,BANKACCOUNTNO,LOCATION,PHONE_NO,DEPTNAME,SUPERVISORID) VALUES('PU007','CLAUDE','MONET','100005269','Centerville','888555','INPATIENT','KUTZ489');
insert into EMPLOYEE (EMPLID,EMPFIRSTNAME,EMPLASTNAME,BANKACCOUNTNO,LOCATION,PHONE_NO,DEPTNAME,SUPERVISORID) VALUES('KU0131','JOHN','PATTERSON','100004645','Kansas City','888555','PARAMEDICAL','KUTZ490');
insert into EMPLOYEE (EMPLID,EMPFIRSTNAME,EMPLASTNAME,BANKACCOUNTNO,LOCATION,PHONE_NO,DEPTNAME,SUPERVISORID) VALUES('KU9103','ED','TURNER','100003703','San Francisco','888555','REHABILITATION','KUTZ491');
insert into EMPLOYEE (EMPLID,EMPFIRSTNAME,EMPLASTNAME,BANKACCOUNTNO,LOCATION,PHONE_NO,DEPTNAME,SUPERVISORID) VALUES('KU9104','RUSSELL','PARKER','100005698','San Francisco','888555','DENTAL','KUTZ492');
insert into EMPLOYEE (EMPLID,EMPFIRSTNAME,EMPLASTNAME,BANKACCOUNTNO,LOCATION,PHONE_NO,DEPTNAME,SUPERVISORID) VALUES('KU9105','KEN','ELLIOT','100004926','San Francisco','888555','PODIATRY','KUTZ493');
insert into EMPLOYEE (EMPLID,EMPFIRSTNAME,EMPLASTNAME,BANKACCOUNTNO,LOCATION,PHONE_NO,DEPTNAME,SUPERVISORID) VALUES('KU9106','MARY','ANN','100005146','San Francisco','888555','OUTPATIENT','KUTZ494');
insert into EMPLOYEE (EMPLID,EMPFIRSTNAME,EMPLASTNAME,BANKACCOUNTNO,LOCATION,PHONE_NO,DEPTNAME,SUPERVISORID) VALUES('KU9107','JUDE','ASH','100006416','San Francisco','888555','INPATIENT','KUTZ495');

/*POPULATE  EXPENSETYPE TABLE*/
insert into EXPENSETYPE VALUES('AUTO','Auto Rental','500');
insert into EXPENSETYPE VALUES('AIRFARE','Airfare Expense','1000');
insert into EXPENSETYPE VALUES('ENTERO','Entertainment other','300');
insert into EXPENSETYPE VALUES('MEETING','Meeting','200');
insert into EXPENSETYPE VALUES('LAUNDRY','Laundry Expense','50');
insert into EXPENSETYPE VALUES('DINNER','Dinner Expense','80');
insert into EXPENSETYPE VALUES('PERDIEM','Per Diem Charge','100');
insert into EXPENSETYPE VALUES('LODGING','Hotel Expense ','600');
insert into EXPENSETYPE VALUES('ENTERM','Entertainment meeting','300');
insert into EXPENSETYPE VALUES('COURIER','Courier Charge','80');
insert into EXPENSETYPE VALUES('GAS','Gas Expense','200');
insert into EXPENSETYPE VALUES('BRKFAST','Breakfast Expense','30');
insert into EXPENSETYPE VALUES('GROUND','Ground Transportation','100');
insert into EXPENSETYPE VALUES('LUNCH','Lunch Expense','50');
insert into EXPENSETYPE VALUES('POSTAGE','Postage Expense','70');

/*POPULATE  Reimbursement TABLE*/
Insert into Reimbursement values ('2566','PROCUREMENT','2022-04-15','Approved',697,'','KU0079');
Insert into Reimbursement values ('6226','CARDIOLOGY','2022-04-18','Approved',983,'','KU0119');
Insert into Reimbursement values ('5563','CARDIOLOGY','2022-04-15','Approved',910,'','KU0046');
Insert into Reimbursement values ('9542','CARDIOLOGY','2022-04-15','Approved',21,'','PU007');
Insert into Reimbursement values ('6999','CARDIOLOGY','2022-04-15','Approved',666,'','KU0131');
Insert into Reimbursement values ('8605','CARDIOLOGY','2022-04-17','Approved',769,'','KU9103');
Insert into Reimbursement values ('4632','CARDIOLOGY','2022-04-21','Approved',406,'','KU9104');
Insert into Reimbursement values ('8577','CARDIOLOGY','2022-04-15','Approved',924,'','KU9105');
Insert into Reimbursement values ('2450','CARDIOLOGY','2022-04-15','Approved',362,'','KU9106');
Insert into Reimbursement values ('7591','PROCUREMENT','2022-04-15','Rejected',470,'No receipt','KU9107');
Insert into Reimbursement values ('9900','PROCUREMENT','2022-04-18','Rejected',198,'No receipt','PU007');
Insert into Reimbursement values ('8238','FINANCE','2022-04-15','Approved',305,'','PU007');
Insert into Reimbursement values ('7784','GYNAECOLOGY','2022-04-15','Approved',767,'','PU007');
Insert into Reimbursement values ('2944','PROCUREMENT','2022-04-15','Approved',399,'','PU007');
Insert into Reimbursement values ('8380','LOGISTICS','2022-04-15','Approved',785,'','PU007');
Insert into Reimbursement values ('3459','PODIATRY','2022-04-29','Approved',265,'','KU0131');
Insert into Reimbursement values ('1950','PODIATRY','2022-04-27','Approved',399,'','KU9103');
Insert into Reimbursement values ('1868','PODIATRY','2022-04-15','Approved',69,'','KU9104');
Insert into Reimbursement values ('2747','PODIATRY','2022-04-15','Approved',424,'','KU9105');
Insert into Reimbursement values ('7546','PODIATRY','2022-04-15','Approved',225,'','KU9106');

/*POPULATE  EXPENSE TABLE*/
insert into EXPENSE VALUES ('0000000070','2566','KU0042','2022-04-03','2022-04-06',697,'Presentation in NY','APPROVED','ENTERO','KUTZ490','Approved as per policy','KU0079');
insert into EXPENSE VALUES ('0000000021','6226','KU0075','2022-04-06','2022-04-10',983,'Training','APPROVED','DINNER','MM000000006','Approved as per policy','KU0119');
insert into EXPENSE VALUES ('0000000022','5563','KU0075','2022-04-07','2022-04-11',910,'Out of town meeting','APPROVED','PERDIEM','MM000000006','Approved as per policy','KU0046');
insert into EXPENSE VALUES ('0000000023','9542','KU0075','2022-04-08','2022-04-12',21,'Product training','APPROVED','LODGING','MM000000006','Approved as per policy','PU007');
insert into EXPENSE VALUES ('0000000024','6999','KU0075','2022-04-09','2022-04-13',666,'consulting','APPROVED','ENTERM','MM000000006','Approved as per policy','KU0131');
insert into EXPENSE VALUES ('0000000025','8605','KU0075','2022-04-10','2022-04-14',769,'Business trip','APPROVED','COURIER','MM000000006','Approved as per policy','KU9103');
insert into EXPENSE VALUES ('0000000026','4632','KU0075','2022-04-11','2022-04-15',406,'Meeting costs','APPROVED','GAS','MM000000006','Approved as per policy','KU9104');
insert into EXPENSE VALUES ('0000000027','8577','KU0075','2022-04-12','2022-04-16',924,'General Expense Report','APPROVED','BRKFAST','MM000000006','Approved as per policy','KU9105');
insert into EXPENSE VALUES ('0000000028','2450','KU0075','2022-04-13','2022-04-17',362,'Customer Training','APPROVED','GROUND','MM000000006','Approved as per policy','KU9106');
insert into EXPENSE VALUES ('0000000051','7591','KU0042','2022-04-14','2022-04-18',470,'Training for overseas sales','STAGED','LUNCH','KUTZ490','Approved as per policy','KU9107');
insert into EXPENSE VALUES ('0000000052','9900','KU0042','2022-04-15','2022-04-19',198,'Training for Germany branch','STAGED','POSTAGE','KUTZ490','Approved as per policy','PU007');
insert into EXPENSE VALUES ('0000000053','8238','KU0056','2022-04-16','2022-04-20',305,'Demo for new product','APPROVED','GROUND','KUTZ491','Approved as per policy','PU007');
insert into EXPENSE VALUES ('0000000054','7784','KU0010','2022-04-17','2022-04-21',767,'Lunch with customer','APPROVED','GROUND','KUTZ496','Approved as per policy','PU007');
insert into EXPENSE VALUES ('0000000055','2944','KU0042','2022-04-18','2022-04-21',399,'Campus Recruitment','STAGED','GROUND','KUTZ490','Approved as per policy','PU007');
insert into EXPENSE VALUES ('0000000056','8380','KU0080','2022-04-19','2022-04-22',785,'Meeting costs','STAGED','GROUND','KUTZ485','Approved as per policy','PU007');
insert into EXPENSE VALUES ('0000000057','3459','KU0119','2022-04-20','2022-04-25',265,'Product training','PAID','GROUND','KUTZ487','Approved as per policy','KU0131');
insert into EXPENSE VALUES ('0000000058','1950','KU0119','2022-04-21','2022-04-23',399,'Out of town meeting','HOLD','ENTERM','KUTZ487','Approved as per policy','KU9103');
insert into EXPENSE VALUES ('0000000059','1868','KU0119','2022-04-22','2022-04-26',69,'Dev and Learning Sciences I','PAID','COURIER','KUTZ487','Approved as per policy','KU9104');
insert into EXPENSE VALUES ('0000000060','2747','KU0119','2022-04-23','2022-04-25',424,'Training','PAID','GAS','KUTZ487','Approved as per policy','KU9105');
insert into EXPENSE VALUES ('0000000061','7546','KU0119','2022-04-23','2022-04-26',225,'Training','PAID','BRKFAST','KUTZ487','Approved as per policy','KU9106');


/*End User Query * - Auditor Query to find out how many expense reports where approved/rejected */
Select E.EMPLID,E.ReimbursementID,E.ExpStatus,E.ExpAmt,A.AuditorID,
A.AuditorName, 
r.ReimbursementAmount,r.ReimbursementStatus,r.ReimbursementDept,
r.ReimbursementDate
from Expense E, Auditor A,Reimbursement R where
 A.auditorid=e.AuditorID and e.AuditorID=r.auditorID and e.ReimbursementID=r.ReimbursementID

