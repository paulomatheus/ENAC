//
//  MapsViewController.swift
//  teste04
//
//  Created by Paulo Matheus on 05/09/2018.
//  Copyright © 2018 Paulo Matheus. All rights reserved.
//

import UIKit
import MapKit

class MapsViewController: UIViewController {


	
	
	
	
    @IBOutlet weak var campus: UIImageView!
    @IBOutlet weak var btp1: UIButton!
    @IBOutlet weak var btp2: UIButton!
    @IBOutlet weak var btp3: UIButton!
    @IBOutlet weak var btp4: UIButton!
    @IBOutlet weak var btp5: UIButton!
    @IBOutlet weak var btpc: UIButton!
    @IBOutlet weak var btnemp: UIButton!
    @IBOutlet weak var qwerty: UIBarButtonItem!
    
  
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      //  campus.layer.borderWidth = 1
     //   campus.layer.masksToBounds = false
     //   campus.layer.borderColor = UIColor.black.cgColor
       // campus.layer.cornerRadius = (campus.frame.height)/2
      //  campus.clipsToBounds = true
        // Do any additional setup after loading the view.
    }

    @IBAction func predio1(_ sender: UIButton) {
        performSegue(withIdentifier: "Mapa", sender: self)
    }
    
    @IBAction func predio2(_ sender: UIButton) {
    }
    
    @IBAction func predio3(_ sender: UIButton) {
    }
    
    @IBAction func predio4(_ sender: UIButton) {
    }
    
    @IBAction func predio5(_ sender: UIButton) {
    }
    
    @IBAction func prediocentral(_ sender: UIButton) {
    }
    
    @IBAction func nemp(_ sender: UIButton) {
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
