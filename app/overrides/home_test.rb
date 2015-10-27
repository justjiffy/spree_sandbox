Deface::Override.new(:virtual_path  => "spree/home/index",
                     :insert_after => "h1",
                     :text          => "<p>ROBOTS are the future!</p>",
                     :name          => "home_test")