Deface::Override.new(:virtual_path  => "spree/products/_cart_form",
                     :insert_after => "inside_product_cart_form",
                     :text          => "<p>ROBOTS are the future!</p>",
                     :name          => "cart_button")