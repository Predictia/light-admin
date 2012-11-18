insert into Customer (id, email, firstname, lastname) values (1, 'dave@dmband1.com', 'Dave', 'Matthews1')
insert into Customer (id, email, firstname, lastname) values (2, 'carter@dmband2.com', 'Carter', 'Beauford');
insert into Customer (id, email, firstname, lastname) values (3, 'boyd@dmband3.com', 'Boyd', 'Tinsley');
insert into Customer (id, email, firstname, lastname) values (4, 'dave@dmband4.com', 'Dave', 'Matthews2')
insert into Customer (id, email, firstname, lastname) values (5, 'carter@dmband5.com', 'Carter', 'Beauford');
insert into Customer (id, email, firstname, lastname) values (6, 'boyd@dmband6.com', 'Boyd', 'Tinsley');
insert into Customer (id, email, firstname, lastname) values (7, 'dave@dmband7.com', 'Dave', 'Matthews3')
insert into Customer (id, email, firstname, lastname) values (8, 'carter@dmband8.com', 'Carter', 'Beauford');
insert into Customer (id, email, firstname, lastname) values (9, 'boyd@dmband9.com', 'Boyd', 'Tinsley');
insert into Customer (id, email, firstname, lastname) values (10, 'dave@dmband10.com', 'Dave', 'Matthews4')
insert into Customer (id, email, firstname, lastname) values (11, 'carter@dmband11.com', 'Carter', 'Beauford');
insert into Customer (id, email, firstname, lastname) values (12, 'boyd@dmband12.com', 'Boyd', 'Tinsley');
insert into Customer (id, email, firstname, lastname) values (13, 'dave@dmband13.com', 'Dave', 'Matthews5')
insert into Customer (id, email, firstname, lastname) values (14, 'carter@dmband14.com', 'Carter', 'Beauford');
insert into Customer (id, email, firstname, lastname) values (15, 'boyd@dmband15.com', 'Boyd', 'Tinsley');
insert into Customer (id, email, firstname, lastname) values (16, 'dave@dmband16.com', 'Dave', 'Matthews6')
insert into Customer (id, email, firstname, lastname) values (17, 'carter@dmband17.com', 'Carter', 'Beauford');
insert into Customer (id, email, firstname, lastname) values (18, 'boyd@dmband18.com', 'Boyd', 'Tinsley');
insert into Customer (id, email, firstname, lastname) values (19, 'dave@dmband19.com', 'Dave', 'Matthews7')
insert into Customer (id, email, firstname, lastname) values (20, 'carter@dmband20.com', 'Carter', 'Beauford');
insert into Customer (id, email, firstname, lastname) values (21, 'boyd@dmband21.com', 'Boyd', 'Tinsley');
insert into Customer (id, email, firstname, lastname) values (22, 'dave@dmband22.com', 'Dave', 'Matthews8')
insert into Customer (id, email, firstname, lastname) values (23, 'carter@dmband23.com', 'Carter', 'Beauford');
insert into Customer (id, email, firstname, lastname) values (24, 'boyd@dmband24.com', 'Boyd', 'Tinsley');
insert into Customer (id, email, firstname, lastname) values (25, 'boyd@dmband25.com', 'Boyd', 'Matthews1');

insert into Address (id, street, city, country, customer_id) values (1, '27 Broadway', 'New York', 'United States', 1);
insert into Address (id, street, city, country, customer_id) values (2, '27 Broadway', 'New York', 'United States', 1);

insert into Product (id, name, description, price) values (1, 'iPad', 'Apple tablet device', 499.0);
insert into Product (id, name, description, price) values (2, 'MacBook Pro', 'Apple notebook', 1299.0);
insert into Product (id, name, description, price) values (3, 'Dock', 'Dock for iPhone/iPad', 49.0);

insert into Product_Attributes (attributes_key, product_id, attributes) values ('connector', 1, 'socket');
insert into Product_Attributes (attributes_key, product_id, attributes) values ('connector', 3, 'plug');

insert into Orders (id, customer_id, billingaddress_id, shippingaddress_id) values (1, 1, 1, 2);
insert into Orders (id, customer_id, billingaddress_id, shippingaddress_id) values (2, 3, 2, 1);
insert into LineItem (id, product_id, amount, order_id, price) values (1, 1, 2, 1, 499.0);
insert into LineItem (id, product_id, amount, order_id, price) values (2, 2, 1, 1, 1299.0);

insert into FilterTestEntity (id, textfield, integerfield, decimalfield) values (1, 'integer search test', 1234567, 22.2);
insert into FilterTestEntity (id, textfield, integerfield, decimalfield) values (2, 'decimal search test', 456, 1499.99);
insert into FilterTestEntity (id, textfield, integerfield, decimalfield) values (3, '#<,&«$''(*@×¢¤₤€¥ª ™®© ØøÅåÆæĈę ¦_{~>½', 789, 22.2);
insert into FilterTestEntity (id, textfield, integerfield, decimalfield) values (4, 'Case Sensitivity Test', 901, 22.2);
insert into FilterTestEntity (id, textfield, integerfield, decimalfield) values (5, 'Case sensitivity test', 901, 22.2);
insert into FilterTestEntity (id, textfield, integerfield, decimalfield) values (6, 'query partial search test', 234, 22.2);
insert into FilterTestEntity (id, textfield, integerfield, decimalfield) values (7, 'partial querysearch test', 345, 22.2);
insert into FilterTestEntity (id, textfield, integerfield, decimalfield) values (8, 'search test by partial query', 567, 22.2);

insert into ParentTestEntity (id, name) values (1, 'Parent Item1');
insert into ParentTestEntity (id, name) values (2, 'Parent Item2');
insert into ParentTestEntity (id, name) values (3, 'Parent Item3');

insert into ChildTestEntity (id, name, parent_id) values (1, 'Child Item 1', 1);
insert into ChildTestEntity (id, name, parent_id) values (2, 'Child Item 2', 2);
insert into ChildTestEntity (id, name, parent_id) values (3, 'Child Item 3', 3);

insert into ComplexDataTypeEntity (id, name, parent_id, child_id) values (1, 'Parent1.Entity 1', 1, 2);
insert into ComplexDataTypeEntity (id, name, parent_id, child_id) values (2, 'Parent1.Entity 2', 1, 2);
insert into ComplexDataTypeEntity (id, name, parent_id, child_id) values (3, 'Parent1.Entity 3', 3, 1);
insert into ComplexDataTypeEntity (id, name, parent_id, child_id) values (4, 'Parent2.Entity 1', 2, 3);
insert into ComplexDataTypeEntity (id, name, parent_id, child_id) values (5, 'Parent2.Entity 2', 2, 3);