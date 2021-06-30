//
//  Recipe Screen.swift
//  Day 3 Practice
//
//  Created by Kate Zhang on 6/29/21.
//

import UIKit

class Recipe_Screen: UIViewController {

    @IBOutlet weak var ingredientsTitle: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ingredientsTitle.text = ""
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        
        ingredientsTitle.numberOfLines = 0
        ingredientsTitle.text = "\(Variables.global.selectedFood) ingredients"
        
        print(Variables.global.foods)
    }
    
    
    @IBAction func backButton(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
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
