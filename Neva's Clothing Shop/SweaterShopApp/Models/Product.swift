//
//  Product.swift
//  Neva's Clothing
//
//  Created by Nevanjith De Silva on 2024-03-16.
//

import Foundation

struct Product: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var price: Int
    var description: String
    var sizes: [String]
    var colors: [String]
}

var productList = [
    Product(name: "Blue Shirt (SS)", image: "shirt1", price: 25, description: "A stylish blue short-sleeved shirt, perfect for casual outings.", sizes: ["S", "M", "L", "XL"], colors: ["Blue", "Navy"]),
    Product(name: "White Shirt (LS)", image: "shirt2", price: 40, description: "A sophisticated white long-sleeved shirt, suitable for formal occasions.", sizes: ["S", "M", "L", "XL"], colors: ["White", "Cream"]),
    Product(name: "Casual Tee", image: "tshirt1", price: 35, description: "A comfortable casual tee for everyday wear.", sizes: ["S", "M", "L", "XL"], colors: ["Black", "Grey", "Blue"]),
    Product(name: "Black Tee", image: "tshirt2", price: 15, description: "A classic black tee, essential for any wardrobe.", sizes: ["S", "M", "L", "XL"], colors: ["Black"]),
    Product(name: "Work Pack (2 Items)", image: "pack1", price: 90, description: "A pack of two work outfits to keep you stylish and professional.", sizes: ["S/M", "L/XL"], colors: ["Black", "Navy"]),
    Product(name: "Play Pack (6 Items)", image: "pack2", price: 120, description: "A pack of six casual outfits for your weekend adventures.", sizes: ["S", "M", "L"], colors: ["Red", "Blue", "Green"]),
    Product(name: "Brown sweater", image: "brownSweater", price: 54, description: "A cozy brown sweater, perfect for chilly days.", sizes: ["S", "M", "L", "XL"], colors: ["Brown", "Beige"]),
    Product(name: "White sweater", image: "whiteSweater", price: 64, description: "A stylish white sweater that goes well with any outfit.", sizes: ["S", "M", "L"], colors: ["White"]),
    Product(name: "Orange sweater", image: "sweater1", price: 54, description: "An eye-catching orange sweater to add a pop of color to your wardrobe.", sizes: ["S", "M", "L", "XL"], colors: ["Orange", "Yellow"]),
    Product(name: "Red wine sweater", image: "sweater2", price: 89, description: "A luxurious red wine-colored sweater for a touch of elegance.", sizes: ["S", "M", "L"], colors: ["Red", "Burgundy"]),
    Product(name: "Sand sweater", image: "sweater3", price: 79, description: "A warm sand-colored sweater, perfect for cozy evenings.", sizes: ["S", "M", "L"], colors: ["Sand", "Cream"]),
    Product(name: "Sea sweater", image: "sweater4", price: 94, description: "A refreshing sea-blue sweater to brighten up your look.", sizes: ["S", "M", "L"], colors: ["Blue", "Teal"]),
    Product(name: "Cream sweater", image: "sweater5", price: 99, description: "A creamy white sweater for a soft and elegant style.", sizes: ["S", "M", "L", "XL"], colors: ["Cream", "Ivory"]),
    Product(name: "Beige sweater", image: "sweater6", price: 65, description: "A classic beige sweater that pairs well with any outfit.", sizes: ["S", "M", "L"], colors: ["Beige", "Taupe"]),
    Product(name: "Grey sweater", image: "sweater7", price: 54, description: "A versatile grey sweater, perfect for layering.", sizes: ["S", "M", "L", "XL"], colors: ["Grey", "Charcoal"]),
    Product(name: "Mink sweater", image: "sweater8", price: 83, description: "A luxurious mink-colored sweater for a touch of sophistication.", sizes: ["S", "M", "L"], colors: ["Mink", "Chocolate"])
]
