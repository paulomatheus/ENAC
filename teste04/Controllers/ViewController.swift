//
//  ViewController.swift
//  teste04
//
//  Created by Paulo Matheus on 05/09/2018.
//  Copyright © 2018 Paulo Matheus. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
	//var patrocinador: [PartnerImage] = [] //nome da struct em Partners
    
	let patrocinadores = ["Conexão","Confea","Crea Jr","Crea","D.A.","Femeni","Hello","Hue","Inatel","Medikal","Mutua","Prefeitura","Prointec","Qualicorp","Terras","Vivavox","Ideia"]
	
	let Realizadores/*: [UIImage]*/ = [
	UIImage(named: "Logo crea"),
	UIImage(named: "Logo confea"),
	UIImage(named: "Logo mutua"),
	UIImage(named: "Logo inatel"),
	UIImage(named: "Logo fenemi"),
	UIImage(named: "Logo prefeitura"),
	UIImage(named: "Logo qualicorp"),
	UIImage(named: "Logo terras"),
	UIImage(named: "Logo crea jr azul"),
	UIImage(named: "Logo hello"),
	UIImage(named: "Logo conexão"),
	UIImage(named: "Logo vivavox"),
	UIImage(named: "Logo prointec"),
	UIImage(named: "Logo hue"),
	UIImage(named: "Logo da"),
	//UIImage(named: "Logo crea jr"),
	UIImage(named: "Logo ideia"),
	UIImage(named: "Logo medical"),
	
	
	
	
	
	
	//UIImage[named: "Logo "]
		
	
	]
	
	
	
	
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Realizadores.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionViewCell", for: indexPath) as! CollectionViewCell
		//let patrocinadorImage = patrocinador[indexPath.row]
		//cell.prepare(with: patrocinadorImage)
		//return collectionViewCell
		cell.ivPatrocinador.image = Realizadores[indexPath.item]
		return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
		//loadImagePartners()
		collectionView.dataSource = self
		collectionView.delegate = self
		
		/*var layout = self.collectionView.collectionViewLayout as! UICollectionViewFlowLayout
		layout.sectionInset = UIEdgeInsets (top: 0, left: 5, bottom: 0, right: 5)
		layout.minimumInteritemSpacing = 5
		layout.itemSize = CGSize(width: (self.collectionView.frame.size.width - 20)/2, height: self.collectionView.frame.size.height/3) */
    }
	
	/*func loadImagePartners() {
		let fileURL = Bundle.main.url(forResource: "patrocinadores.json", withExtension: nil)
		let jsonData = try! Data(contentsOf: fileURL!)
		do{
			patrocinador = try! JSONDecoder().decode([PartnerImage].self, from: jsonData)
		} catch{
			print(error.localizedDescription)
		}
		
		
	}*/
	
	
}
