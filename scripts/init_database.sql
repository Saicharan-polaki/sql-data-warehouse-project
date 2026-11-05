use master;
Go

--- Drop and recreate the 'DataWareHouse' database ---

if exists (select 1 from sys.databases where name = 'DataWareHouse')
begin
	alter database DataWareHouse set single_user with rollback immediate;
	drop database DataWareHouse;
end;
Go


--- create the 'DataWareHouse' database ---
create database DataWareHouse;
Go

use DataWareHouse;
Go

--- Create Schema ---
create schema bronze;
Go

create schema silver;
Go

create schema gold;
