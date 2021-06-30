//
//  ViewController.swift
//  Day 3 Practice
//
//  Created by Kate Zhang on 6/23/21.
//

import UIKit

class Variables{
    
    static var global = Variables(selectedFood: "", foods: [""])
    
    var selectedFood: String
    var foods: [String]
    
    private init(selectedFood: String, foods: [String]){
        self.selectedFood = selectedFood
        self.foods = foods
    }
}


class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}

