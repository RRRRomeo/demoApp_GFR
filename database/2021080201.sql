--create database test01
--	ON 
--	PRIMARY( 
--	NAME =dataBaseTest01,
--	FILENAME ='K:\Program Files (x86)\test2021080201\rice-man-test\dataBase\dataBaseTest01.dmf',
--	SIZE = 10MB,
--	MAXSIZE = 100MB,
--	FILEGROWTH =10MB)
--	LOG ON(
--	NAME =testLog,
--	FILENAME ='K:\Program Files (x86)\test2021080201\rice-man-test\dataBase\testLog.ldf',
--	SIZE = 10MB,
--	MAXSIZE = 100MB,
--	FILEGROWTH =10MB)
--use test01
--create table userTable(
--	user_id_number int not null primary key identity(202100001,1),
--	password_number varchar(16) not null,
--	name varchar(20) not null default 'newuser',
--	region varchar(30) not null,
--	gender char(8) not null,
--	whats_up varchar(100) null,
--	destroy_flag tinyint not null)

--create table pictureTable(
--	p_id int not null identity(2021000001,1),
--	user_id_number int not null,
--	p_data image not null,
--	size int not null,
--	descriptionText text null,
--	p_type char(8),
--	p_path text not null,
--	resolution_l int not null,
--	resolution_w int not null,
--	created_time datetime not null,
--	modified_time datetime null,
--	delete_flag tinyint not null
--	)

--create table picture_log(
--	pl_id int not null primary key identity(20210001,1),
--	user_id_number int not null,
--	size int not null,
--	descriptionText text null,
--	pl_path text not null,
--	merged_time datetime not null,
--	modified_time datetime null,
--	delete_flag tinyint not null)

--create table administrator(
--	admin_id int not null primary key identity (2021001,1),
--	password_number varchar(16) not null,
--	work_number int not null,
--	destroy_flag tinyint not null)

--alter table userTable 
--	add constraint c1 check(gender ='male' or gender='female' or gender='other')
	
--alter table pictureTable 
--	add constraint c2 foreign key(user_id_number) references userTable(user_id_number)

--alter table picture_log 
--	add constraint c3 foreign key(user_id_number) references userTable(user_id_number)


