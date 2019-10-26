//
//  CreditViewController.swift
//  ios  13610334 week10 project2
//
//  Created by waepa on 19/10/2562 BE.
//  Copyright © 2562 waepa. All rights reserved.
//

import UIKit

class CreditViewController: UIViewController {

    var fullmane = "fullname"
    
    @IBOutlet weak var fullnameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fullnameLabel.text = fullmane
        // Do any additional setup after loading the view.
    }
    

    
    @IBAction func backPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
