-- with customers as (

--     select
--         id as customer_id,
--         first_name,
--         last_name

--     from raw.jaffle_shop.customers
-- )

-- select * from customers



with 

source as (

    select * from {{ source('jaffle_shop','customers')}}
),

staged as  (

    select 
        id as customer_id,
        first_name,
        last_name
    from source    
        
)

select * from staged