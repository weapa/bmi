//
//  TestUIProgrammatically.swift
//  ios  13610334 week10 project2
//
//  Created by waepa on 19/10/2562 BE.
//  Copyright © 2562 waepa. All rights reserved.
//

import UIKit
class TestUIProgrammatically: UIViewController {
    
    var bmiValue = "0.0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        let label = UILabel()
        //label.text = "text"//"text"
        label.text = bmiValue // 5.6
        label.frame = CGRect (x: 200, y: 400, width: 100, height: 50)
        view.addSubview(label)
    }
}
