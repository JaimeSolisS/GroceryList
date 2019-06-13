//
//  TableViewCell.swift
//  ListaDeCompras
//
//  Created by Jaime Solís on 6/13/19.
//  Copyright © 2019 ITESM. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var lbTotal: UILabel!
    @IBOutlet weak var lbPrice: UILabel!
    @IBOutlet weak var lbItem: UILabel!
    @IBOutlet weak var lbQuantity: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
