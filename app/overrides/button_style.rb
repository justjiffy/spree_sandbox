Deface::Override.new(:virtual_path  => "spree/products/_cart_form",
                     :insert_after => "h3",
                     :text          => "<p>ROBOTS are the future!</p>",
                     :name          => "cart_button")