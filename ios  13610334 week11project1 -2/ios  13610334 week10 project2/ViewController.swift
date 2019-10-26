//
//  ViewController.swift
//  ios  13610334 week10 project2
//
//  Created by waepa on 19/10/2562 BE.
//  Copyright © 2562 waepa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //Global Variable คือ ตัวแปรตรงกลางที่ใช้ร่วมกันได้ใน class ซึ่งสามารถเรียกใช้ได้
    var bmiValueCal = "0"
    //var calBrain = CalculateBrain()
    var calculateBrain = CalculateBrain()
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    @IBOutlet weak var heightslider: UISlider!
    @IBOutlet weak var weightslider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderPressed(_ sender: UISlider) {
        let height = String(format: "%.2f", sender.value)
        heightLabel.text = "\(height) M"
    }
    
    @IBAction func weightSliderPressed(_ sender: UISlider) {
        //print(sender.value)
        
//       print( String(format: "%.2f", sender.value))
//       print(String(format: "%.0f", sender.value))
        
        let weight = String(format: "%.0f", sender.value)
        weightLabel.text = "\(weight) Kg"
        
        
    }
    
    
    @IBAction func calculatePressed(_ sender: Any) {
        
        let weightFromUser = weightslider.value
        let heightFromUser = heightslider.value
        
        //let bmi = weight / (height * height)
        //print(bmi)
        
        //bmiValueCal = String(format: "%.1f", weight / (height * height))
        //เรียกใช้ struct #2 เรียกใช้ func โดยใช้ค่าเดียวกัน
        calculateBrain.calculateBMI(height: heightFromUser, weight: weightFromUser)
        
        //self.performSegue(withIdentifier: "goToresult", sender: self)
        performSegue(withIdentifier: "goToresult", sender: self)
        
    }
    
    
    @IBAction func heartPressed(_ sender: UIButton) {
        //self.performSegue(withIdentifier: "goToCredit", sender: self)
        performSegue(withIdentifier: "goToCredit", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToresult" {
            let destinationVC = segue.destination as! ResultViewController
            //destinationVC.bmiValue = bmiValueCal
            // ชื่อ object ชื่อตัวแปร = ค่าที่ต้องการ หำะ ให้
            //เรียกใช้ struct #3 เรียกใช้ func getBMIValue()
            // ส่งกลับมาเป็น String ซึ่งชนิดเดียวกับที่ .bmiValue ต้องการ
            //รู้ตัวเดียวกันด้วยชื่อ calculateBrain
            
            destinationVC.bmiValue = calculateBrain.getBMIValue()
            
            destinationVC.advice = calculateBrain.getAdvice()
            destinationVC.color = calculateBrain.getColor()
            
        }//if
        
        if segue.identifier == "goToCredit" {
        
            
            let CreditVC = segue.destination as! CreditViewController
            CreditVC.fullmane = "Waepa"
            
        }
        
    }//fucn prepare
    
}//class

