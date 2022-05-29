# Create Tables Basic codes
- Table
- Temporary Table

Codes varies in different relational database management systems

## Create a table

    CREATE TABLE Shoes
      (
      Id    char(10)    PRIMARY KEY,
      Brand   char(10)    NOT NULL,
      Type    char(250)   NOT NULL,
      Color   char(250)   NOT NULL,
      Price   decimal(8,2)    NOT NULL,
      Descrip   Varchar(750)    NULL
      );

column name   type    specifications

Primary key is the key we can call a specific row, so it should be unique and not taking any NULL in;

By default, columns takes in Null, but for characters, they might takes in empty string " ", which is invisible while it doesnt counted as NULL

#### Insert Data into a table

    INSERT INTO shoes
    VALUES ('14',
            'Gucci',
            'Slippers',
            'Pink',
            '690.00',
            NULL
              );

More recommended way, so we could know where the data is going, and only insert few column values

    INSERT INTO shoes
            (Id,
             Brand,
             Type,
             Color,
             Price,
             Descrip
              )
    VALUES ('14',
            'Gucci',
            'Slippers',
            'Pink',
            '690.00',
            NULL
              );

## Create a temporary table

- Temporary tables would be deleted when the current session is terminated
- faster than creating a real table
- useful with complex quiries using subsets and joins

        CREATE TEMPORARY TABLE Sandals AS
        (
            SELECT *
            FROM shoes
            WHERE Type = 'Sandals'
          )
