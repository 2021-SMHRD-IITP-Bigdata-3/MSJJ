drop table flower_member cascade constraints;
drop table flower cascade constraints;
drop table event cascade constraints;
drop table mix cascade constraints;
drop table product cascade constraints;
drop table store cascade constraints;
drop table buy cascade constraints;
drop table board cascade constraints;
create table flower_member
(member_name varchar2(20), member_email varchar2(100),
member_password varchar2(100), member_tel varchar2(100),
constraint member_memberemail_pk primary key(member_email)
);

create table flower
(flower_name varchar2(50) not null, flower_mean varchar2(100),
flflower_image varchar2(100),
constraint flower_flowername_pk primary key(flower_name)
);

create table event 
(event_name varchar2(50) not null, event_date date,
constraint event_name_pk primary key(event_name)
);

create table mix
(mix_flower varchar2(100) not null, mix_num number(5), mix_ment varchar2(100), 
mix_event varchar2(50), mix_purpose varchar2(50),
constraint mix_mixflower_pk primary key(mix_flower)
);

create table store
(store_num number(36), store_name varchar2(100), store_tel varchar2(100),
store_address varchar2(100), store_image varchar2(100),
constraint store_storenum_pk primary key(store_num)
);

create table product
(product_number number(36), product_mix varchar2(100), product_name varchar2(100),
product_type number(2), product_price number(36), product_image varchar2(100),
product_recomm varchar2(10), product_store number(36),
constraint product_productnum_pk primary key(product_number),
constraint product_mix_fk foreign key(product_mix)
	references mix(mix_flower),
constraint product_store_number_fk foreign key(product_store)
	references store(store_num)
);

create table buy
(buy_number number(36), buy_productnum number(36), buy_price number(36),
buy_date date,  buy_event varchar2(100), buy_store number(36), buy_member varchar2(100),
constraint buy_buynum_pk primary key(buy_number),
constraint buy_product_number_fk foreign key(buy_productnum)
	references product(product_number),
constraint buy_store_number_fk foreign key(buy_store)
	references store(store_num),
constraint buy_member_email_fk foreign key(buy_member)
	references flower_member(member_email)
);

create table board
(board_number number(36), board_content varchar2(200), board_flower number(36),
board_store number(36), board_member varchar2(100), board_date date, board_score number(1),
constraint board_boardnum_pk primary key(board_number),
constraint board_productnum_fk foreign key(board_flower)
	references product(product_number),
constraint board_storenum_fk foreign key(board_store)
	references store(store_num),
constraint board_memberemail_fk foreign key(board_member)
	references flower_member(member_email)
);

insert into flower_member values('test','test','test','test');

select * from product
select * from mix




