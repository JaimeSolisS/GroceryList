//
//  ViewController.swift
//  ListaDeCompras
//
//  Created by Jaime Solís on 6/12/19.
//  Copyright © 2019 ITESM. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {
    
    @IBOutlet weak var lbTotal: UILabel!
    
    var itemArray = [Item]()
    

    
    let defaults = UserDefaults.standard

    override func viewDidLoad() {
        super.viewDidLoad()
        
     
        
        
        var newItem = Item(name: "Chile", price: 15, quantity: 0.5)
        itemArray.append(newItem)
        newItem = Item(name: "Tomate", price: 20, quantity: 1)
        itemArray.append(newItem)
        newItem = Item(name: "Cebolla", price: 20, quantity: 1)
        itemArray.append(newItem)
        
         tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "itemList")
       
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let cell = tableView.dequeueReusableCell(withIdentifier: "itemList", for: indexPath) as! TableViewCell
        
       // let cell = UITableViewCell(style: .default, reuseIdentifier: "ToDoItemCell")
        
        cell.lbItem.text = itemArray[indexPath.row].name
        cell.lbQuantity.text = "\(itemArray[indexPath.row].quantity)"
        cell.lbPrice.text = "\(itemArray[indexPath.row].price)"
        cell.lbTotal.text = "\(itemArray[indexPath.row].total)"
        
        return cell
        
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(itemArray[indexPath.row])
        
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        } else {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
  
    @IBAction func btAddNew(_ sender: UIBarButtonItem) {
        
        var item = UITextField()
        var price = UITextField()
        var quantity = UITextField()
        var total: Float
        
        let alert = UIAlertController(title: "Agregar producto a la lista", message: "", preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Agregar", style: .default) { (action) in
       
           // var newItem = Item(name: (textField.text)!, price: "\(price)".text, quantity: quantity.text?)
            
            
            
            //self.itemArray.append(textField.text!)
            self.defaults.set(self.itemArray, forKey: "TodoListArray")
            self.tableView.reloadData()
            
        }
        
        alert.addTextField { (alertTextField) in
            alertTextField.placeholder = "Agregar producto"
            item = alertTextField
        }
        // Cambiar Modelo para implementar precio
        alert.addTextField { (alertTextField) in
            alertTextField.placeholder = "Agregar precio"
            price = alertTextField
        }
        
        alert.addTextField { (alertTextField) in
            alertTextField.placeholder = "Agregar cantidad"
            quantity = alertTextField
        }
 
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
    }
    
}

