create database moneyflow;

use moneyflow;

CREATE TABLE IF NOT EXISTS `member` (
	`mem_id` int(10) NOT NULL auto_increment,
	`refer_id` int(10),
	`first_name` varchar(20) NOT NULL,
	`last_name` varchar(20) NOT NULL,
	`email_id` varchar(50) ,
	`mobile_no` varchar(12) NOT NULL,
	PRIMARY KEY( `mem_id` ),
	FOREIGN KEY (refer_id) REFERENCES member(mem_id)
);

CREATE TABLE IF NOT EXISTS `address` (
	`adr_id` int(10) NOT NULL auto_increment,
	`mem_id` int(10),
	`address` varchar(255) NOT NULL,
	`city` varchar(30) NOT NULL,
	`state` varchar(30) NOT NULL,
	`country` varchar(30) NOT NULL,
	PRIMARY KEY( `adr_id` ), 
	FOREIGN KEY (mem_id) REFERENCES member(mem_id)
);


CREATE TABLE IF NOT EXISTS `bank_details` (
	`acc_id` int(10) NOT NULL auto_increment,
	`mem_id` int(10),
	`account_no` int(20),
	`account_name` varchar(30),
	`ifsc_code` varchar(10),
	`branch_code` varchar(10),
	PRIMARY KEY( `acc_id` ),
	FOREIGN KEY (mem_id) REFERENCES member(mem_id)
);


CREATE TABLE IF NOT EXISTS `upi_details` (
	`upi_id` int(10) NOT NULL auto_increment,
	`mem_id` int(10),
	`payment_id` varchar(30),	
	PRIMARY KEY( `upi_id` ),
	FOREIGN KEY (mem_id) REFERENCES member(mem_id)
);
