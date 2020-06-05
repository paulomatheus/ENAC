//
//  CollectionViewCell.swift
//  teste04
//
//  Created by Paulo Matheus on 26/10/2018.
//  Copyright © 2018 Paulo Matheus. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
	
	@IBOutlet weak var ivPatrocinador: UIImageView!
	
	func prepare(with logo: PartnerImage){
		ivPatrocinador.image = UIImage(named: logo.image)
	}
}
