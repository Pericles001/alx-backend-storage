--Write a SQL script that creates a trigger that decreases the quantity of an item after adding a new order.
--Quantity in the table items can be negative.
CREATE TRIGGER decrement
AFTER INSERT
ON orders
FOR EACH ROW
UPDATE items SET quantity = quantity - NEW.number WHERE NAME = NEW.item_name;
