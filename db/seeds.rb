
    product = Product.new({name: "Baur Supreme 1s Hockey Stick", price: "230", image: "https://images.purehockey.com/img.aspx?pic_id=109437&pic_type=5"})
    product.save 

    product = Product.new({name: "CCM Tacks 3092 Hockey Elbow Pads Sr", price: "34.99", image: "http://img.inlinewarehouse.com/watermark/rs.php?path=CT3EP-1.jpg"})
    product.save

    product = Product.new({name: "CCM Tacks 3092 Hockey Shin Guards Sr", price: "49.99", image: "http://img.inlinewarehouse.com/watermark/rs.php?path=CT3SG-1.jpg"})
    product.save

    product = Product.new({name: "Shock Doc Core Comp Perf L/S Grip Hockey Shirt Sr '16", price: "39.97", image: "http://img.inlinewarehouse.com/watermark/rs.php?path=SDCHS-BK-1.jpg"})
    product.save

    product = Product.new({name: "Labeda Pama 7.1 Hockey Protective Jock Sr", price: "59.99", image: "http://img.inlinewarehouse.com/watermark/rs.php?path=LP1JS-1.jpg"})
    product.save 

    product = Product.new({name: "CCM Jetspeed FT1 Ice Hockey Skates Sr", price: "899.99", image: "http://img.inlinewarehouse.com/watermark/rs.php?path=CFT1S-1.jpg"})
    product.save

    supplier = Supplier.new({name: "CCM", email: "ccm@ccm.com", phone_number: "5425561345"})

    category = Category.new({name: "Skates"})
    category.save

    category = Category.new({name: "Pads"})
    category.save

    category = Category.new({name: "Shoulder Pads"})
    category.save
    category_product = CategoryProduct.new({product_id: 2, category_id:2})
    category_product.save

