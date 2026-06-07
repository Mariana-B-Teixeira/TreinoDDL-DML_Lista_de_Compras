CREATE TABLE IF NOT EXISTS shopping_list(
product VARCHAR(30) NOT NULL UNIQUE,
quantity INT UNSIGNED,
weight TEXT,
price DECIMAL(4,2) UNSIGNED NOT NULL,
shopping_date DATE NOT NULL
);

ALTER TABLE shopping_list
MODIFY COLUMN weight TEXT DEFAULT'';

ALTER TABLE shopping_list
MODIFY COLUMN quantity INT UNSIGNED DEFAULT 1;

INSERT INTO shopping_list VALUES
	(
		DEFAULT,
		'oleo de cozinha', 
        2,
        DEFAULT,
        6.00,
        '2026-06-06'
	),
    (
		DEFAULT,
        'manteiga', 
        1,
        DEFAULT,
        15.00,
        '2026-06-06'
    ),
    (
		DEFAULT,
		'batata', 
        DEFAULT,
        '2 quilos',
        20.00,
        '2026-06-06'
	),
    (
		DEFAULT,
		'maçã', 
        DEFAULT,
        '1 quilo',
        20.00,
        '2026-06-06'
	);
    
    ALTER TABLE shopping_list
    ADD COLUMN id_product INT NOT NULL FIRST;
    
    ALTER TABLE shopping_list
    ADD PRIMARY KEY(id_product);
    
    ALTER TABLE shopping_list
    CHANGE id_product id INT NOT NULL AUTO_INCREMENT;
    
    ALTER TABLE shopping_list
    MODIFY price DECIMAL(6,2) UNSIGNED NOT NULL;
    
    DESCRIBE shopping_list;
    SELECT * FROM shopping_list;
    
    ALTER TABLE shopping_list
    DROP COLUMN shopping_date;
    
    DROP TABLE IF EXISTS shopping_list;