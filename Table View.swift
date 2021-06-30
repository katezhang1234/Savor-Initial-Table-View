//
//  Table View.swift
//  Day 3 Practice
//
//  Created by Kate Zhang on 6/29/21.
//

import UIKit

class Table_View: UITableViewController {
  
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.clearsSelectionOnViewWillAppear = false
        
        Variables.global.foods = ["Fruits", "Veggies", "Corn"]
    }

    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Variables.global.foods.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LabelCell", for: indexPath)
        cell.textLabel?.text = Variables.global.foods[indexPath.row]
        //cell.textLabel?.numberOfLines = 0
        //tableView.rowHeight = UITableView.automaticDimension
        cell.detailTextLabel?.numberOfLines = 2
        tableView.rowHeight = 80
        cell.imageView?.image = UIImage(named: Variables.global.foods[indexPath.row])
        cell.imageView?.isHidden = false

        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        tableView.deselectRow(at: indexPath, animated: true)
        Variables.global.selectedFood = Variables.global.foods[indexPath.row]
    }
    
    
    @IBAction func backButton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    
    
    
    
    
    
    
    
    /*override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCell.EditingStyle.delete {
            Variables.global.foods.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.automatic)
        }
    }*/ //correct
    
    
    /*override func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let deleteAction = UIContextualAction(style: .destructive, title: "Complete") {_,_,_ in
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
        deleteAction.backgroundColor = UIColor.green
        let configuration = UISwipeActionsConfiguration(actions: [deleteAction])
            return configuration
    }*/
    
}
