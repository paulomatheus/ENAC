//
//  ScheduleViewController.swift
//  teste04
//
//  Created by Paulo Matheus on 05/09/2018.
//  Copyright © 2018 Paulo Matheus. All rights reserved.
//

import UIKit

class ScheduleViewController:   UITableViewController {
	
	
	@IBOutlet var tvSchedule: UITableView!
	var jDayOne: [DayOne] = []
	
	func loadDayOne(){
		let fileURLOne = Bundle.main.url(forResource: "firstDay.json", withExtension: nil)! //Quando coloco nil ele encontra o primeiro arquivo com o nome dito
		let jsonDataOne = try! Data(contentsOf: fileURLOne)
		do{
			jDayOne = try JSONDecoder().decode([DayOne].self, from: jsonDataOne)
		} catch {
			print(error.localizedDescription)
		}
	}
	
	override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return jDayOne.count //quantidade de linhas sera de acordo com tamanho do json
	}
	
	internal override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
		let scheduleCell = tableView.dequeueReusableCell(withIdentifier: "scheduleCell", for: indexPath as IndexPath) //tornando a celula reutilizavel
		let firstDay = jDayOne[indexPath.row] //numero de linhas eh de acordo com o json
		scheduleCell.textLabel?.textColor = UIColor.black //setar cor da linha via codigo
		scheduleCell.textLabel!.text = firstDay.name //Título
		scheduleCell.detailTextLabel!.text = "\(firstDay.type) | \(firstDay.startTime)"//SubTitulo
		return scheduleCell
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
		loadDayOne()
	}
	
	//----------MÉTODO PARA PASSAR INFORMAÇÃO DE UMA TELA PARA OUTRA-----------------
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		let vc = segue.destination as! InfoScheduleViewController
		let indexDayOne = jDayOne[tableView.indexPathForSelectedRow!.row]
		vc.indexDayOne = indexDayOne
	}
	
	
	
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
	
	
	
	/*  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
	myIndex = indexPath.row
	performSegue(withIdentifier: "scheduleCell", sender: self)
	
	} */
	/*
	override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
	let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
	
	// Configure the cell...
	
	return cell
	}
	*/
	
	/*
	// Override to support conditional editing of the table view.
	override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
	// Return false if you do not want the specified item to be editable.
	return true
	}
	*/
	
	/*
	// Override to support editing the table view.
	override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
	if editingStyle == .delete {
	// Delete the row from the data source
	tableView.deleteRows(at: [indexPath], with: .fade)
	} else if editingStyle == .insert {
	// Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
	}
	}
	*/
	
	/*
	// Override to support rearranging the table view.
	override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
	
	}
	*/
	
	/*
	// Override to support conditional rearranging of the table view.
	override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
	// Return false if you do not want the item to be re-orderable.
	return true
	}
	*/
	
	/*
	// MARK: - Navigation
	
	// In a storyboard-based application, you will often want to do a little preparation before navigation
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
	// Get the new view controller using segue.destination.
	// Pass the selected object to the new view controller.
	}
	*/
	
}
