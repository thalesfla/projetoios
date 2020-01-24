//
//  GamesCollectionViewCell.swift
//  MyGames
//
//  Created by aluno on 16/01/20.
//  Copyright © 2020 CESAR School. All rights reserved.
//

import UIKit

class GamesCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var Cell: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func prepare(){
        Cell.image = UIImage(named: "goku")
    }

}
