
    supplier = Supplier.new({name: "CCM", email: "ccm@ccm.com", phone_number: "5425561345"})
    supplier.save

    product = Product.new({name: "Baur Supreme 1s Hockey Stick", price: "230", supplier_id: 1})
    product.save 

    product = Product.new({name: "CCM Tacks 3092 Hockey Elbow Pads Sr", price: "34.99", supplier_id: 1})
    product.save

    product = Product.new({name: "CCM Tacks 3092 Hockey Shin Guards Sr", price: "49.99", supplier_id: 1})
    product.save

    product = Product.new({name: "Shock Doc Core Comp Perf L/S Grip Hockey Shirt Sr '16", price: "39.97", supplier_id: 1})
    product.save

    product = Product.new({name: "Labeda Pama 7.1 Hockey Protective Jock Sr", price: "59.99", supplier_id: 1})
    product.save 

    product = Product.new({name: "CCM Jetspeed FT1 Ice Hockey Skates Sr", price: "899.99", supplier_id: 1})
    product.save

    category = Category.new({name: "Skates"})
    category.save

    category = Category.new({name: "Pads"})
    category.save

    category = Category.new({name: "Elbow Pads"})
    category.save

    category_product = CategoryProduct.new({product_id: 2, category_id:2})
    category_product.save

    user = User.create({name: "Bob", email: "bob@email.com", password: "password"})
    user.save

