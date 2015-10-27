Deface::Override.new(:virtual_path => "spree/products/_cart_form",
                     :name => "cart_button",
                     :set_attributes => "button#add-to-cart-button",
                     :disabled => false,
                     :remove_attributes => {:class => 'btn-success'},
                     :attributes => {:class => 'btn btn-primary'})