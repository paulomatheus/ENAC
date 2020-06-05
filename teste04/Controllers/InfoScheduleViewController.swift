//
//  InfoScheduleViewController.swift
//  teste04
//
//  Created by Paulo Matheus on 08/10/2018.
//  Copyright © 2018 Paulo Matheus. All rights reserved.
//

import UIKit
import QuartzCore

class InfoScheduleViewController: UIViewController {

	var indexDayOne: DayOne!
	
    @IBOutlet weak var ivImagePerson: UIImageView!
    @IBOutlet weak var lbType: UILabel!

    @IBOutlet weak var lbName: UILabel!
    
    @IBOutlet weak var lbTime: UILabel!
    @IBOutlet weak var lbSpeaker: UILabel!
    @IBOutlet weak var lbGroup: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = indexDayOne.day
        //Comando para deixar a fonte em negrito
        self.navigationController?.navigationBar.titleTextAttributes = [
            NSAttributedString.Key.font: UIFont.systemFont(ofSize: 20, weight: UIFont.Weight.heavy)]
        type()
        name()
        time()
        speaker()
        group()
        // Do any additional setup after loading the view.
    }
    
    func type (){
        lbType.text = ("Tipo: \(indexDayOne.type)")
    }
    func name(){
        //lbName.text = ("Nome: \(indexDayOne.completeName)")
        lbName.text = indexDayOne.completeName
        lbName.sizeToFit()
    }
    func time(){
        lbTime.text = ("🕓 Horário: \(indexDayOne.startTime) - \(indexDayOne.finishedTime)")
    }
    
    func speaker(){
        lbSpeaker.text = ("👤 Palestrante: \(indexDayOne.speaker)")
    }
    
    func group(){
        lbGroup.text = ("🌍 Grupo: \(indexDayOne.group)")
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
