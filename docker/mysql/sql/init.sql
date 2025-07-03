CREATE DATABASE IF NOT EXISTS cashflow;
USE cashflow;

CREATE USER 'cashflow'@'%' IDENTIFIED BY 'root';
GRANT ALL PRIVILEGES ON cashflow.* TO 'cashflow'@'%';
FLUSH PRIVILEGES;

CREATE TABLE `trade` (
  `trade_seq` BIGINT NOT NULL,
  `trade_code` VARCHAR(8) NOT NULL,
  `use_code` VARCHAR(8) NOT NULL,
  `contents` VARCHAR(100) NOT NULL DEFAULT '',
  `account` BIGINT NOT NULL,
  `use_date` DATETIME(6) NOT NULL,
  `payments_code` VARCHAR(8) NOT NULL,
  PRIMARY KEY (`trade_seq`)
);

CREATE TABLE `common_code` (
  `item_code` VARCHAR(8) NOT NULL,
  `item_group_code` VARCHAR(8) NOT NULL,
  `item_name` VARCHAR(50) NOT NULL,
  `create_date` DATETIME(6) NOT NULL,
  `update_date` DATETIME(6),
  PRIMARY KEY (`item_code`)
);

CREATE TABLE `asset` (
  `asset_seq` BIGINT NOT NULL,
  `asset_amount` BIGINT NOT NULL,
  PRIMARY KEY (`asset_seq`)
);

CREATE TABLE `budget` (
  `budget_seq` BIGINT NOT NULL,
  `budget_day` DATE,
  `budget_count` BIGINT,
  PRIMARY KEY (`budget_seq`)
);