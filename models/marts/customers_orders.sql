select
    o.order_id,
    o.customer_id,
    o.product_id,
    o.quantity,
    c.customer_name,
    p.product_name,
    p.price
from {{ ref('stg_orders') }} as o

left join {{ ref('stg_customers') }} as c
    on o.customer_id = c.customer_id

left join {{ ref('stg_products') }} as p
    on o.product_id = p.product_id