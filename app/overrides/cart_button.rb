Deface::Override.new(:virtual_path  => "spree/home/index",
                     :insert_before => "h1",
                     :text          => "<p>ROBOTS are the future!</p>",
                     :name          => "cart_button")