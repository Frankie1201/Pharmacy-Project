create database nfs;
use nfs;

create table staff( 
sId int(3) zerofill auto_increment primary key,
fullName varchar(100),
address varchar(100),
phone varchar(100),
email varchar(100),
password varchar(100)
);

select * from staff;

insert into Staff(fullName , address , phone , email , password)values('admin' , '1 admin avenue' , '111222' , 'admin@google.com' , 'admin123');
insert into Staff(fullName , address , phone , email , password)values('dr samuel ironta' , '123 lincoln street' , '123456' , 'drsi@google.com' , 'sam123');
insert into Staff(fullName , address , phone , email , password)values('dr nefees rabbani' , '101 worcester avenue' , '234567' , 'drnr@google.com' , 'naf123');
insert into Staff(fullName , address , phone , email , password)values('dr francesca worsnop' , '1 bristol road' , '345678' , 'drfw@google.com' , 'fra123');
insert into Staff(fullName , address , phone , email , password)values('dr jack smith' , '99 coronation street' , '456789' , 'drjs@google.com' , 'jac123');

update staff set fullName='fullName' where sid=101;


create table medicine( 
medId int(4) zerofill auto_increment primary key,
name varchar(100),
supplierId int(3) zerofill,
quantity int,
price double,
foreign key(supplierId) references supplier(supplierId)
);

select * from medicine;
alter table medicine auto_increment=1000;

insert into Medicine(name , supplierId , quantity , price)values('calpol' , (select supplierId from supplier where supplierName='Johnson & Johnson') , 75 , 2.99);
insert into Medicine(name , supplierId , quantity , price)values('paracetamol' , (select supplierId from supplier where supplierName='Medex'), 278 , 1.50);
insert into Medicine(name , supplierId , quantity , price)values('ibuprofen' , (select supplierId from supplier where supplierName='Rochem International Inc') , 345 , 3.99);
insert into Medicine(name , supplierId , quantity , price)values('co-codamol' , (select supplierId from supplier where supplierName='Johnson & Johnson') , 136 , 3.59);
insert into Medicine(name , supplierId , quantity , price)values('penicillin' , (select supplierId from supplier where supplierName='Pfizer') , 98 , 4.99);
insert into Medicine(name , supplierId , quantity , price)values('chesty cough remedy' , (select supplierId from supplier where supplierName='Lemsip') , 57 , 4.79);
insert into Medicine(name , supplierId , quantity , price)values('soothers' , (select supplierId from supplier where supplierName='Lemsip') , 79 , 0.50);
insert into Medicine(name , supplierId , quantity , price)values('lemsip' , (select supplierId from supplier where supplierName='Lemsip') , 102 , 5.49);
insert into Medicine(name , supplierId , quantity , price)values('amoxicillin' , (select supplierId from supplier where supplierName='Pfizer') , 86 , 9.49);
insert into Medicine(name , supplierId , quantity , price)values('Dulcolax' , (select supplierId from supplier where supplierName='Medex') , 70 , 3.99);


CREATE TABLE `myorder` (
`medId` int,
  `name` varchar(100),
  `price` double
);

select * from myorder;



create table supplier( 
supplierId int(3) zerofill auto_increment primary key,
supplierName varchar(100),
address varchar(100),
phone varchar(100),
email varchar(100)
);

select * from supplier;
alter table supplier auto_increment=101;

insert into supplier(supplierName , address , phone , email)values('Johnson & Johnson' , '123 lincoln street' , '223344' , 'jandj@google.com');
insert into supplier(supplierName , address , phone , email)values('Medex' , '124 lincoln street' , '334455' , 'medex@google.com');
insert into supplier(supplierName , address , phone , email)values('Rochem International Inc' , '125 lincoln street' , '445566' , 'rochem@google.com');
insert into supplier(supplierName , address , phone , email)values('Pfizer' , '126 lincoln street' , '556677' , 'pfizer@google.com');
insert into supplier(supplierName , address , phone , email)values('Lemsip' , '127 lincoln street' , '667788' , 'lemsip@google.com');


create table customer( 
customerId int(5) zerofill auto_increment primary key,
fullName varchar(100),
address varchar(100),
phone varchar(100),
email varchar(100),
password varchar(100)
);

select * from customer;
alter table customer auto_increment=10000;

insert into customer(fullName , address , phone , email , password)values('Mr Phil Start' , '23 East Ella Grove' , 909877 , 'Phil@hotmail.co.uk' , 'phil123');
insert into customer(fullName , address , phone , email , password)values('Mrs Tracey Stokes' , '7 Rikerby Close' , 567104 , 'Tracey@hotmail.co.uk' , 'tracey123');
insert into customer(fullName , address , phone , email , password)values('Mr Max Signs' , '45 Newland Avenue' , 148203 , 'Max@hotmail.co.uk' , 'max123');
insert into customer(fullName , address , phone , email , password)values('Mrs Hannah Russell' , '62 Shirley Street' , 343893 , 'Hannah@hotmail.co.uk' , 'hannah123');
insert into customer(fullName , address , phone , email , password)values('Miss Pam Lee' , '4 York Close' , 679261 , 'Pam@hotmail.co.uk' , 'pam123');
insert into customer(fullName , address , phone , email , password)values('Mr Robert Mccan' , '59 Walton Street' , 326181 , 'Robert@hotmail.co.uk' , 'robert123');
insert into customer(fullName , address , phone , email , password)values('Mr Dan Scott' , 'Flat 11, 34 Selly Road' , 453434 , 'Dan@hotmail.co.uk' , 'dan123');
insert into customer(fullName , address , phone , email , password)values('Miss Charlotte Turner' , '12 Boundary Way' , 506782 , 'Charlotte@hotmail.co.uk' , 'charlotte123');

create table Corder( 
orderId int(6) zerofill auto_increment primary key,
medId int(4) zerofill,
customerId int(5) zerofill,
price double,
foreign key(customerId) references customer(customerId),
foreign key(medId) references medicine(medId));


select * from Corder;
alter table Corder auto_increment=100000;
drop table Corder;

insert into Corder(medID , customerId , quantity , unitPrice)values((select medId from medicine where name='amoxicillin') , (select customerId from customer where fullName='Mrs Hannah Russell') , 2 , 9.49);
update Corder set totalPrice = quantity*unitPrice where orderId = 100000;
insert into Corder(medID , customerId , quantity , unitPrice)values((select medId from medicine where name='lemsip') , (select customerId from customer where fullName='Mr Phil Start') , 2 , 5.49);
update Corder set totalPrice = quantity*unitPrice where orderId = 100001;
insert into Corder(medID , customerId , quantity , unitPrice)values((select medId from medicine where name='calpol') , (select customerId from customer where fullName='Mr Robert Mccan') , 4 , 2.99);
update Corder set totalPrice = quantity*unitPrice where orderId = 100002;
insert into Corder(medID , customerId , quantity , unitPrice)values((select medId from medicine where name='penicillin') , (select customerId from customer where fullName='Miss Pam Lee') , 7 , 4.99);
update Corder set totalPrice = quantity*unitPrice where orderId = 100003;
insert into Corder(medID , customerId , quantity , unitPrice)values((select medId from medicine where name='Dulcolax') , (select customerId from customer where fullName='Mrs Tracey Stokes') , 3 , 3.99);
update Corder set totalPrice = quantity*unitPrice where orderId = 100004;
insert into Corder(medID , customerId , quantity , unitPrice)values((select medId from medicine where name='ibuprofen') , (select customerId from customer where fullName='Miss Charlotte Turner') , 2 , 3.99);
update Corder set totalPrice = quantity*unitPrice where orderId = 100005;
insert into Corder(medID , customerId , quantity , unitPrice)values((select medId from medicine where name='chesty cough remedy') , (select customerId from customer where fullName='Mr Max Signs') , 8 , 4.79);
update Corder set totalPrice = quantity*unitPrice where orderId = 100006;


