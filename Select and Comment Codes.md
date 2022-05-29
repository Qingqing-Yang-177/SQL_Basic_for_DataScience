# Basic Select codes in SQL
The ; is always only at the end of the statement (execute one statement at a time)
based on server SQLite

## Select

#### Select All columns
select all columns from table Invoices:

    Select *     
    From Invoices;

#### Select some columns
select column (Playlistid,name) from table Name

    Select Playlistid,
    Name
    From Playlists;

<img width="300" alt="捕获" src="https://user-images.githubusercontent.com/93237538/170891837-a861fa09-e102-4e4c-af55-8231e5d3fa8e.png">
 
select columns Customer Id, Invoice Date, and Billing City from the table Invoices:

    Select CustomerId,
    InvoiceDate, 
    BillingCity 
    From Invoices;

#### Select based on conditions
track the beginning 10 records (SQLite):

    Select *
    From Playlist_track 
    Limit 10;

track the beginning 10 records (Oracle):

    Select *
    From Playlist_track 
    WHERE ROWNUM <= 5;

track the beginning 10 records (DB2):

    Select *
    From Playlist_track 
    FETCH FIRST 5 ROWS ONLY;

## Comments

#### Single Line

    SELECT shoe_id
    -- brand_id,
    shoe_name
    From shoes

#### Section
    
    SELECT shoe_id,
    /* brand_id,
    shoe_name,
    */
    From shoes
