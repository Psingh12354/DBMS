1] Grop by
Create Table orders(
order_no number,
purch_amt number(6,2),
ord_date date,
customer_id number,
salesman_id number
);
insert into orders values(70001, 150.5, to_date('18-05-2012', 'DD-MM-YYYY'),3005, 5002);
insert into orders values(70009, 270.65, to_date('09-10-2012', 'DD-MM-YYYY'),3001, 5005);
insert into orders values(70002, 65.26, to_date('10-05-2012', 'DD-MM-YYYY'),3002, 5001);
insert into orders values(70004, 110.5,to_date( '18-08-2012', 'DD-MM-YYYY'),3009, 5003);
insert into orders values(70007, 948.5, to_date('09-10-2012', 'DD-MM-YYYY'),3005, 5002);
insert into orders values(70005, 2400.6,to_date( '27-07-2012', 'DD-MM-YYYY'),3007, 5001);
insert into orders values(70008, 5760,to_date( '09-10-2012', 'DD-MM-YYYY'),3002, 5001);
insert into orders values(70010, 1983.43,to_date( '10-10-2012','DD-MM-YYYY'), 3004, 5006);
insert into orders values(70003, 2480.4, to_date('10-10-2012', 'DD-MM-YYYY'),3009, 5003);
insert into orders values(70012, 250.45, to_date('27-06-2012', 'DD-MM-YYYY'),3008, 5002);
insert into orders values(70011, 75.29, to_date('17-08-2012', 'DD-MM-YYYY'),3003, 5007);
insert into orders values(70013, 3045.6,to_date( '25-04-2012', 'DD-MM-YYYY'),3002, 5001);
select customer_id,max(purch_amt) from orders group by customer_id;
2]
Create Table orders(
order_no number,
purch_amt number(6,2),
ord_date date,
customer_id number,
salesman_id number
);
insert into orders values(70001, 150.5, to_date('18-05-2012', 'DD-MM-YYYY'),3005, 5002);
insert into orders values(70009, 270.65, to_date('09-10-2012', 'DD-MM-YYYY'),3001, 5005);
insert into orders values(70002, 65.26, to_date('10-05-2012', 'DD-MM-YYYY'),3002, 5001);
insert into orders values(70004, 110.5,to_date( '18-08-2012', 'DD-MM-YYYY'),3009, 5003);
insert into orders values(70007, 948.5, to_date('09-10-2012', 'DD-MM-YYYY'),3005, 5002);
insert into orders values(70005, 2400.6,to_date( '27-07-2012', 'DD-MM-YYYY'),3007, 5001);
insert into orders values(70008, 5760,to_date( '09-10-2012', 'DD-MM-YYYY'),3002, 5001);
insert into orders values(70010, 1983.43,to_date( '10-10-2012','DD-MM-YYYY'), 3004, 5006);
insert into orders values(70003, 2480.4, to_date('10-10-2012', 'DD-MM-YYYY'),3009, 5003);
insert into orders values(70012, 250.45, to_date('27-06-2012', 'DD-MM-YYYY'),3008, 5002);
insert into orders values(70011, 75.29, to_date('17-08-2012', 'DD-MM-YYYY'),3003, 5007);
insert into orders values(70013, 3045.6,to_date( '25-04-2012', 'DD-MM-YYYY'),3002, 5001);
select customer_id,min(purch_amt) from orders  group by customer_id,ord_date;

3] group by and having

Create Table orders(
order_no number,
purch_amt number(6,2),
ord_date date,
customer_id number,
salesman_id number
);
insert into orders values(70001, 150.5, to_date('18-05-2012', 'DD-MM-YYYY'),3005, 5002);
insert into orders values(70009, 270.65, to_date('09-10-2012', 'DD-MM-YYYY'),3001, 5005);
insert into orders values(70002, 65.26, to_date('10-05-2012', 'DD-MM-YYYY'),3002, 5001);
insert into orders values(70004, 110.5,to_date( '18-08-2012', 'DD-MM-YYYY'),3009, 5003);
insert into orders values(70007, 948.5, to_date('09-10-2012', 'DD-MM-YYYY'),3005, 5002);
insert into orders values(70005, 2400.6,to_date( '27-07-2012', 'DD-MM-YYYY'),3007, 5001);
insert into orders values(70008, 5760,to_date( '09-10-2012', 'DD-MM-YYYY'),3002, 5001);
insert into orders values(70010, 1983.43,to_date( '10-10-2012','DD-MM-YYYY'), 3004, 5006);
insert into orders values(70003, 2480.4, to_date('10-10-2012', 'DD-MM-YYYY'),3009, 5003);
insert into orders values(70012, 250.45, to_date('27-06-2012', 'DD-MM-YYYY'),3008, 5002);
insert into orders values(70011, 75.29, to_date('17-08-2012', 'DD-MM-YYYY'),3003, 5007);
insert into orders values(70013, 3045.6,to_date( '25-04-2012', 'DD-MM-YYYY'),3002, 5001);
select customer_id,max(purch_amt),ord_date from orders  group by customer_id,ord_date having max(purch_amt)>2000;

4] In in clause
Create Table orders(
order_no number,
purch_amt number(6,2),
ord_date date,
customer_id number,
salesman_id number
);
insert into orders values(70001, 150.5, to_date('18-05-2012', 'DD-MM-YYYY'),3005, 5002);
insert into orders values(70009, 270.65, to_date('09-10-2012', 'DD-MM-YYYY'),3001, 5005);
insert into orders values(70002, 65.26, to_date('10-05-2012', 'DD-MM-YYYY'),3002, 5001);
insert into orders values(70004, 110.5,to_date( '18-08-2012', 'DD-MM-YYYY'),3009, 5003);
insert into orders values(70007, 948.5, to_date('09-10-2012', 'DD-MM-YYYY'),3005, 5002);
insert into orders values(70005, 2400.6,to_date( '27-07-2012', 'DD-MM-YYYY'),3007, 5001);
insert into orders values(70008, 5760,to_date( '09-10-2012', 'DD-MM-YYYY'),3002, 5001);
insert into orders values(70010, 1983.43,to_date( '10-10-2012','DD-MM-YYYY'), 3004, 5006);
insert into orders values(70003, 2480.4, to_date('10-10-2012', 'DD-MM-YYYY'),3009, 5003);
insert into orders values(70012, 250.45, to_date('27-06-2012', 'DD-MM-YYYY'),3008, 5002);
insert into orders values(70011, 75.29, to_date('17-08-2012', 'DD-MM-YYYY'),3003, 5007);
insert into orders values(70013, 3045.6,to_date( '25-04-2012', 'DD-MM-YYYY'),3002, 5001);
select customer_id,max(purch_amt),ord_date from orders  group by customer_id,ord_date having max(purch_amt) in (2000,3000,5760,6000);
