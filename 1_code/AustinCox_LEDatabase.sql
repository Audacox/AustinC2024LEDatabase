/* 
    Create a table, Officers, that has a total of 7 Fields
    to account for identifying information necessary for Officers
    that will be submitting evidence. 
*/

CREATE TABLE Officers (
    Officer_ID int NOT NULL,
    First_Name varchar(25) NOT NULL,
    Middle_Initial varchar(2) NOT NULL,
    Last_Name varchar(25) NOT NULL,
    Shift_ID int NOT NULL,
    District_ID int NOT NULL,
    District_Supervisor_ID int DEFAULT NULL,
    PRIMARY KEY (Officer_ID)
    );
    
    /*
        Create realistic records to be inserted into the "Officers" table. 
    */
    
    INSERT INTO Officers VALUES (20248110,'Willliam','D.','Lesley',1,1,NULL);
    INSERT INTO Officers VALUES (20248111,'Brian','C.','Booker',1,1,NULL);
    INSERT INTO Officers VALUES (20248112,'John','D.','Mastadon',1,1,NULL);
    INSERT INTO Officers VALUES (20248113,'Alex','F.','Ulrich',2,1,NULL);
    INSERT INTO Officers VALUES (20248114,'Von','A.','Meadlow',2,1,NULL);
    INSERT INTO Officers VALUES (20248115,'Katie','L.','Chapman',2,1,NULL);
    INSERT INTO Officers VALUES (20248116,'Lawerence','B.','Johnson',2,1,NULL);
    INSERT INTO Officers VALUES (20248117,'Kitt','R.','Lesley',2,1,NULL);
    INSERT INTO Officers VALUES (20248118,'Bobby','C.','Earnhardt',3,1,NULL);
    INSERT INTO Officers VALUES (20248119,'Kyle','D.','Bush',3,1,NULL);
    INSERT INTO Officers VALUES (20248120,'Art','Z.','Durant',3,1,1);
    INSERT INTO Officers VALUES (20248121,'Bertrand','D.','Russell',1,2,NULL);
    INSERT INTO Officers VALUES (20248122,'Andy','H.','Holmes',1,2,NULL);
    INSERT INTO Officers VALUES (20248123,'Demarcus','D.','Cousins',1,2,NULL);
    INSERT INTO Officers VALUES (20248124,'Tyrese','V.','Haliburton',1,2,NULL);
    INSERT INTO Officers VALUES (20248125,'John','A.','Cooper',2,2,NULL);
    INSERT INTO Officers VALUES (20248126,'Jeff','G.','Minnix',2,2,NULL);
    INSERT INTO Officers VALUES (20248127,'Sarah','T.','Abble',2,2,NULL);
    INSERT INTO Officers VALUES (20248128,'Stacie','L.','Peters',2,2,NULL);
    INSERT INTO Officers VALUES (20248129,'Chris','D.','Lesley',3,2,NULL);
    INSERT INTO Officers VALUES (20248130,'Ty','D.','Washington',3,2,NULL);
    INSERT INTO Officers VALUES (20248131,'Carmen','D.','Santana',3,2,2);
    
    /*
        Create a table, Districts, that will contain the information about the districts
        that officers are assigned for their posting. 
    */
    
CREATE TABLE Districts (
    District_ID int NOT NULL,
    District_Name varchar(50) NOT NULL,
    District_Supervisor_ID int NOT NULL,
    Address varchar(100) NOT NULL,
    PRIMARY KEY(District_ID)
    );
    
    /*
        Create realistic records to be inserted into the "Districts" table. 
    */
    
    INSERT INTO Districts Values (1,'Washington',1,'100 N Main St Plainfield, IN');
    INSERT INTO Districts Values (2,'Rockville',2,'400 E Government St Avon, IN');
    
    
    /*
        Create a table, District Supervisor, that will contain the information about the districts
        supervisor. 
    */
    
CREATE TABLE District_Supervisor (
    District_Supervisor_ID int NOT NULL,
    District_ID int NOT NULL,
    Officer_ID int NOT NULL,
    Officer_Rank varchar(25) NOT NULL,
    PRIMARY KEY(District_Supervisor_ID)
    );
    
    /*
        Made two officers from the "Officers" table into district supervisors for both districts. 
    */
    
    INSERT INTO District_Supervisor VALUES (1,1,20248120,'Captain');
    INSERT INTO District_Supervisor VALUES (2,2,20248131,'Captain');
    
    
    /*
        Create a table, Cases, that will contain the information about all cases that have 
        been put into the system, along with relavent identifying information.
    */
    
CREATE TABLE Cases (
    Case_ID int NOT NULL,
    District_ID int NOT NULL,
    Officer_ID int NOT NULL,
    Case_Open_Date date NOT NULL,
    Case_Status varchar(10) NOT NULL,
    PRIMARY KEY(Case_ID)
    );
    
    /*
        Create realistic records to be inserted into the "Cases" table. 
    */
    
    INSERT INTO Cases VALUES (111111111,1,20248110,'2024-01-01','Closed');
    INSERT INTO Cases VALUES (111111112,1,20248112,'2024-01-01','Closed');
    INSERT INTO Cases VALUES (111111113,1,20248114,'2024-01-02','Closed');
    INSERT INTO Cases VALUES (111111114,1,20248119,'2024-01-02','Open');
    INSERT INTO Cases VALUES (111111115,1,20248113,'2024-01-02','Open');
    INSERT INTO Cases VALUES (111111116,1,20248115,'2024-01-03','Open');
    INSERT INTO Cases VALUES (111111117,2,20248126,'2024-01-03','Open');
    INSERT INTO Cases VALUES (111111118,2,20248121,'2024-01-05','Open');
    INSERT INTO Cases VALUES (111111119,2,20248124,'2024-01-07','Open');
    INSERT INTO Cases VALUES (111111120,2,20248122,'2024-01-10','Open');
    INSERT INTO Cases VALUES (111111121,1,20248111,'2024-01-11','Open');
    INSERT INTO Cases VALUES (111111122,1,20248118,'2024-01-15','Open');
    INSERT INTO Cases VALUES (111111123,2,20248130,'2024-01-19','Open');
    INSERT INTO Cases VALUES (111111124,1,20248117,'2024-01-01','Open');
    
    /*
	    Create a table, Evidence, that will contain all of the relevant information for an evidence submission,
        and allows for a single case to be assigned multiple records of evidence if necessary. 
    */
    
CREATE TABLE Evidence (
    Evidence_ID int NOT NULL,
    Case_ID int NOT NULL,
    Officer_ID int NOT NULL,
    Evidence_Entry date NOT NULL,
    Evidence_Status varchar(25) NOT NULL,
    Evidence_Type varchar(50) NOT NULL,
    Amount varchar(50) NOT NULL,
    Address varchar(100) NOT NULL,
    Zipcode int NOT NULL,
    PRIMARY KEY(Evidence_ID)
    );
    
    /*
       Create realistic records to be inserted into the "Evidence" table. 
    */
    INSERT INTO Evidence VALUES (90000001,111111111,20248110,'2024-01-01','Closed','Arson','2 Kg Heroin','2552 W Washington St Plainfield, IN',46168);
    INSERT INTO Evidence VALUES (90000002,111111112,20248112,'2024-01-01','Closed','Theft','$1000','4452 E Washington St Plainfield, IN',46168);
    INSERT INTO Evidence VALUES (90000003,111111113,20248114,'2024-01-02','Closed','Narcotics','1 Kg Cocaine','9880 W Shady Lane Plainfield, IN', 46168);
    INSERT INTO Evidence VALUES (90000004,111111114,20248119,'2024-01-02','Open','Biological','1 Sexual Assault Kit','1400 E Carr Rd Plainfield, IN',46168);
	INSERT INTO Evidence VALUES (90000005,111111115,20248113,'2024-01-02','Open','Hit and Run','1 Kg of Debris','355 E Main St Plainfield, IN',46168);
    INSERT INTO Evidence VALUES (90000006,111111116,20248115,'2024-01-03','Open','Homicide','1 Firearm','675 N Parkview Lane Avon, IN',46123);
    INSERT INTO Evidence VALUES (90000007,111111117,20248136,'2024-01-03','Open','Assault(Deadly Weapon)','1 Knife','811 N Bridgeport Road Avon, IN',46123);
    INSERT INTO Evidence VALUES (90000008,111111118,20248121,'2024-01-05','Open','Theft','$52,500','400 N Dan Jones Rd Avon, IN',46123);
    INSERT INTO Evidence VALUES (90000009,111111119,20248124,'2024-01-07','Open','Narcotics','1Kg Cannabis','245 N Avon Avenue Avon, IN',46123);
    INSERT INTO Evidence VALUES (90000010,111111120,20248122,'2024-01-10','Open','Narcotics','1000 Fentanyl Pills','555 Prestwick Drive Avon, IN',46123);

/*
    Create a table, Evidence_Firearms, that will be utilized whenever an evidence submission involves a firearm, 
    and this table will allow the input for the specialized information concerning them, such as Serial#, Manufactuer, and Model. 
*/

CREATE TABLE Evidence_Firearms (
    Evidence_ID int NOT NULL,
    Serial_Number varchar(12) NOT NULL,
    Manufacturer varchar(50) NOT NULL,
    Model varchar(25) NOT NULL,
    Caliber varchar(10) NOT NULL,
    Color varchar(20) NOT NULL,
    Firearm_Class varchar(25) NOT NULL,
    Crime_Type varchar(50) NOT NULL,
    PRIMARY KEY(Evidence_ID)
    );
    
    /*
      Create a realistic records to be inserted into the "Evidence_Firearm" table, to support 
      our case that involved the submission of evidence conercerning a single firearm recovered 
      that was utilized for the criminal offense. 
    */
    INSERT INTO Evidence_Firearms VALUES (90000006,144476533000,'Ruger','LCP 9','9mm','Black','Pistol','Homicide');



