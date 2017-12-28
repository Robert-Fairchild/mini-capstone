
    product = Product.new({name: "Baur Supreme 1s Hockey Stick",description: "Top of the line hockey stick", price: "230", supplier_id: 1})
    product.save 

    product = Product.new({name: "CCM Tacks 3092 Hockey Elbow Pads Sr",description:"Adult CCM elbow pads",  price: "34.99", supplier_id: 1})
    product.save

    product = Product.new({name: "CCM Tacks 3092 Hockey Shin Guards Sr",description: "Bad ass shin gaurds",  price: "49.99", supplier_id: 1})
    product.save

    product = Product.new({name: "Shock Doc Core Comp Perf L/S Grip Hockey Shirt Sr '16",description: "Protective t-shirt",  price: "39.97", supplier_id: 1})
    product.save

    product = Product.new({name: "Labeda Pama 7.1 Hockey Protective Jock Sr",description:"Protection for your junk",  price: "59.99", supplier_id: 1})
    product.save 

    product = Product.new({name: "CCM Jetspeed FT1 Ice Hockey Skates Sr",description: "Top of the line skate from CCM",  price: "899.99", supplier_id: 1})
    product.save

    Product.create({name: "Baur Supreme 3600 skates", description: "Top of the line skate from Baur", price: "967.99", supplier_id: 1})


    supplier = Supplier.new({name: "CCM", email: "ccm@ccm.com", phone_number: "5425561345"})
    supplier.save

    Image.create( {image_url: "https://i.ytimg.com/vi/Xwo9NPOLbpQ/maxresdefault.jpg", product_id: 1})
    Image.create( {image_url: "http://www.hockeytron.com/1050-ccm-hockey-protective-elbow-pads-tacks-3092.jpg", product_id: 2})
    Image.create( {image_url: "http://www.hockeytron.com/1050-ccm-hockey-protective-shin-guards-tacks-3092.jpg", product_id: 3})
    Image.create( {image_url: "http://img.inlinewarehouse.com/watermark/rs.php?path=SDCHS-BK-1.jpg&nw=300", product_id: 4})
    Image.create( {image_url: "http://cdn.shopify.com/s/files/1/0977/9482/products/rs_b23d3c99-4cb8-4cc5-8f60-2a213513faed_grande.jpg?v=1497807007", product_id: 5})
    Image.create( {image_url: "https://hockeymonkey.nexcesscdn.net/media/catalog/product/cache/3/image/1000x/9df78eab33525d08d6e5fb8d27136e95/c/c/ccm-hockey-skates-jetspeed-ft1-sr.jpg", product_id: 6})
    Image.create( {image_url: "https://www.hockeyworld.com/common/images/products/large/bauer-180-skate.jpg", product_id: 7})


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

