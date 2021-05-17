use springmvc;
go

insert into role(code,name) values ('ADMIN',N'quản trị');
insert into role(code,name) values ('EMP',N'Nhân viên');
insert into role(code,name) values ('USER',N'người dùng');
select * from role;
go

insert into users(username,password,status) values ('admin01','$2a$10$/RUbuT9KIqk6f8enaTQiLOXzhnUkiwEJRdtzdrMXXwU7dgnLKTCYG',1);
insert into users(username,password,status) values ('emp','$2a$10$/RUbuT9KIqk6f8enaTQiLOXzhnUkiwEJRdtzdrMXXwU7dgnLKTCYG',1);
insert into users(username,password,status) values ('user1','$2a$10$/RUbuT9KIqk6f8enaTQiLOXzhnUkiwEJRdtzdrMXXwU7dgnLKTCYG',1);
insert into users(username,password,status) values ('uses2','$2a$10$/RUbuT9KIqk6f8enaTQiLOXzhnUkiwEJRdtzdrMXXwU7dgnLKTCYG',1);
select * from users;
go

insert into role_user(roleid,userid) values (1,1);
insert into role_user(roleid,userid) values (2,2);
insert into role_user(roleid,userid) values (3,3);
insert into role_user(roleid,userid) values (3,4);
select * from role_user;
go

insert into category(name) values (N'Newest Sneakers')
insert into category(name) values (N'Lifestyle')
insert into category(name) values (N'Running')
insert into category(name) values (N'Basketball')
insert into category(name) values (N'Gym & Training')
insert into category(name) values (N'Sandal')
insert into category(name) values (N'Newest Sneakers')
insert into category(name) values (N'Lifestyle')
insert into category(name) values (N'Running')
insert into category(name) values (N'Basketball')
insert into category(name) values (N'Gym & Training')
insert into category(name) values (N'Sandal')
insert into category(name) values (N'Newest Sneakers')
insert into category(name) values (N'Lifestyle')
insert into category(name) values (N'Running')
insert into category(name) values (N'Basketball')
insert into category(name) values (N'Gym & Training')
insert into category(name) values (N'Sandal')
select * from category
go

insert into company(Name) values('Nike')
insert into company(Name) values('Adidas')
insert into company(Name) values('Off White')
insert into company(Name) values('Cross')
insert into company(Name) values('Puma')
insert into company(Name) values('Ananas')
select * from company
go

insert into product(anh,description,discount,discount_price,name,price,size36,size37,size38,size39,size40,size41,size42,size43,size44,category_id,company_id) values('1.jpg','SKU 554724-092 Air Jordan 1 Mid Light Smoke Grey',0,0,'AIR JORDAN 1 MID LIGHT SMOKE GREY',3000,10,10,10,10,10,10,10,10,10,1,1)
insert into product(anh,description,discount,discount_price,name,price,size36,size37,size38,size39,size40,size41,size42,size43,size44,category_id,company_id) values('2.jpg','SKU DB4612-300 Wmns Air Jordan 1 Retro High OG Lucky Green ',0,0,'AIR JORDAN 1 RETRO HIGH OG LUCKY GREEN',3000,10,10,10,10,10,10,10,10,10,1,1)
insert into product(anh,description,discount,discount_price,name,price,size36,size37,size38,size39,size40,size41,size42,size43,size44,category_id,company_id) values('3.jpg','SKU 554724-092 SEAN CLIVER X NIKE DUNK LOW SB HOLIDAY SPECIA',0,0,'SEAN CLIVER X NIKE DUNK LOW SB HOLIDAY SPECIAL',4000,10,10,10,10,10,10,10,10,10,1,1)
insert into product(anh,description,discount,discount_price,name,price,size36,size37,size38,size39,size40,size41,size42,size43,size44,category_id,company_id) values('4.jpg','SKU GY2649 adidas Yeezy Boost 380 Yecoraite Reflective',0,0,'ADIDAS YEEZY BOOST 380 YECORAITE REFLECTIVE',3000,10,10,10,10,10,10,10,10,10,1,2)
insert into product(anh,description,discount,discount_price,name,price,size36,size37,size38,size39,size40,size41,size42,size43,size44,category_id,company_id) values('5.jpg','SKU DB3610-105',0,0,'AIR JORDAN 1 ZOOM AIR CMFT PSG PARIS SAINT-GERMAIN',3000,10,10,10,10,10,10,10,10,10,2,1)
insert into product(anh,description,discount,discount_price,name,price,size36,size37,size38,size39,size40,size41,size42,size43,size44,category_id,company_id) values('6.jpg','SKU 554724-092 Air Jordan 1 Mid Light Smoke Grey',0,0,'NIKE AIR MAX 97 UNDFTD BLACK MILITIA GREEN',3000,10,10,10,10,10,10,10,10,10,3,1)
insert into product(anh,description,discount,discount_price,name,price,size36,size37,size38,size39,size40,size41,size42,size43,size44,category_id,company_id) values('7.jpg','SKU 554724-092 Air Jordan 1 Mid Light Smoke Grey',0,0,'KYRIE LOW 4 EP KEEP SUE FRESH',3000,10,10,10,10,10,10,10,10,10,4,1)
insert into product(anh,description,discount,discount_price,name,price,size36,size37,size38,size39,size40,size41,size42,size43,size44,category_id,company_id)values('8.jpg','SKU 554724-092 Air Jordan 1 Mid Light Smoke Grey',0,0,'NIKE KYRIE 6 TEAM WOLF GREY',3000,10,10,10,10,10,10,10,10,10,5,1)
insert into product(anh,description,discount,discount_price,name,price,size36,size37,size38,size39,size40,size41,size42,size43,size44,category_id,company_id) values('9.jpg','SKU 554724-092 Air Jordan 1 Mid Light Smoke Grey',0,0,'NIKE OFFCOURT SLIDE BLACK',3000,10,10,10,10,10,10,10,10,10,6,1)
select * from product
go

insert into dbo.admin(address,email,gender,name,phone,user_id) values (N'12 Nguyễn Văn Bảo','admin@gmail.com',1,N'admin','0123456789',1)
select * from dbo.admin
go

insert into employee(address,email,gender,name,phone,salary,user_id) values (N'12 Nguyễn Văn Bảo','emp@gmail.com',1,N'Đạt','0123456789',5000,2)
select * from employee
go

insert into customer(address,email,gender,name,phone,user_id) values(N'12 Nguyễn Văn Bảo','cus1@gmail.com',1,N'cus1','0123456789',3)
insert into customer(address,email,gender,name,phone,user_id) values(N'12 Nguyễn Văn Bảo','cus2@gmail.com',1,N'cus1','012456786',4)
select * from customer
go

insert into orders(date,name,customer_id,employee_id) values(GETDATE(),N'cus1',1,1)
insert into orders(date,name,customer_id,employee_id) values(GETDATE(),N'cus2',2,1)
select * from orders
go

insert into orderdetail(product_id,size,quantity,price,order_id) values (1,38,2,3000,1)
insert into orderdetail(product_id,size,quantity,price,order_id) values (5,40,2,3000,1)
insert into orderdetail(product_id,size,quantity,price,order_id) values (2,41,2,3000,2)
insert into orderdetail(product_id,size,quantity,price,order_id) values (8,39,2,3000,2)
insert into orderdetail(product_id,size,quantity,price,order_id) values (7,38,2,3000,2)
select * from orderdetail
go


