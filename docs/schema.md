# Schema Information

## products
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
name        | integer   | not null, foreign key (references users)
attack      | integer   | not null
defense     | integer   | not null
poke_type   | string    | not null
moves       | string    | not null
image_url   | string    | not null
age         | integer   | not null
price       | integer   | not null
sex         | string    | not null
description | text      | not null


## follows
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
user_id     | integer   | not null, foreign key (references users)
product_id  | integer   | not null, foreign key (references products)

## comments
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
author_id   | integer   | not null, foreign key (references users)
product_id  | integer   | not null, foreign key (references products)
title       | string    | not null
body        | text      | not null

## ratings
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
author_id   | integer   | not null, foreign key (references users), unique within product_id scope
product_id  | integer   | not null, foreign key (references products)

## carts
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
user_id     | integer   | not null, foreign key (references users)
product_id  | integer   | not null, foreign key (references products)

## orders
column name     | data type | details
----------------|-----------|-----------------------
id              | integer   | not null, primary key
user_id         | integer   | not null, foreign key (references users)
product_id      | integer   | not null, foreign key (references products)

## users
column name     | data type | details
----------------|-----------|-----------------------
id              | integer   | not null, primary key
email           | string    | not null, unique
password_digest | string    | not null
session_token   | string    | not null, unique
