//
//  ResultViewController.swift
//  ios  13610334 week10 project2
//
//  Created by waepa on 19/10/2562 BE.
//  Copyright © 2562 waepa. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    //properties
    var bmiValue: String?
    var advice: String?
    var color: UIColor?
    
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        bmiLabel.text = bmiValue
        adviceLabel.text  = advice
        view.backgroundColor = color
    }
    

    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        
        self.dismiss(animated: true, completion: nil)
    }
    
}
