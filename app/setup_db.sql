
-- this is to create my table structure for my users

CREATE TABLE users(

    -- this will be the users unique id
    unique_id INTEGER PRIMARY KEY UNIQUE,

    -- this will be the actual account info that users see about eachother

    user_name TEXT NOT NULL UNIQUE, -- users cannot re-use usernames
    user_handle TEXT NOT NULL UNIQUE, -- users cannot re-use handles

    -- basic user information
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    birthday DATE NOT NULL,

    -- contact info
    phone TEXT NOT NULL UNIQUE, -- phone should be text not int to account for other country formats
    email TEXT NOT NULL UNIQUE, -- this MUST be unique because user cannot use one email for multiple accounts
    user_address TEXT NOT NULL -- this will NOT be unique because multiple users could be at one address


)
