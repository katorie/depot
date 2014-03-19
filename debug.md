*depot

**テストはいくつある？ total => 22
- test/functional/carts_controller_test.rb => 7
- test/functional/line_items_controller_test.rb => 7
- test/functional/products_controller_test.rb => 7
- test/functional/store_controller_test.rb => 1

**1) Error:
>"test_should_create_line_item(LineItemsControllerTest):"
>"ActiveModel::MassAssignmentSecurity::Error: Can't mass-assign protected attributes: product"  
- show test/functional/line_items_controller_test.rb
- ???

**2) Error:
>"test_should_update_line_item(LineItemsControllerTest):"
>"ActiveModel::MassAssignmentSecurity::Error: Can't mass-assign protected attributes: cart_id, product_id"
- show test/functional/line_items_controller_test.rb

**3) Error:
>"test_should_destroy_product(ProductsControllerTest):"
>"NameError: undefined local variable or method `ensure_not_referenced_by_my_line_item' for #<Product:0x00000101657118>"
- show test/functional/products_controller_test.rb

**4) Failure:
>"test_should_get_index(StoreControllerTest) [/Users/katorie/rails/depot/test/functional/store_controller_test.rb:8]:"
>"Expected exactly 3 elements matching "#main .entry", found 1."
- show test/functional/store_controller_test.rb
- '#mailn .entry', 1　にするとでなくなる。
