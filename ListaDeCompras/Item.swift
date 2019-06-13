//
//  Item.swift
//  ListaDeCompras
//
//  Created by Jaime Solís on 6/13/19.
//  Copyright © 2019 ITESM. All rights reserved.
//

import UIKit

class Item: NSObject {
    
    var name: String
    var price: Float
    var quantity: Float
    var total: Float
    
     init(name: String, price: Float, quantity: Float) {
        self.name = name
        self.price = price
        self.quantity = quantity
        self.total = quantity * price
    }
}
