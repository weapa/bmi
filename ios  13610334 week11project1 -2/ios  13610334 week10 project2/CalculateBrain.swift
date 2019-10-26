
import Foundation
import UIKit
//Kit ชุดเครื่องมือ
//UI แปลว่า User Interface ส่วนเชื่อมต่อกับผู้ใช้ เช่น ปุ่มกด

//struct จะเป็นแบบ pass by value เหมือน copy แยกกันคนละอัน แก้กับอันใดอันหนึ่งไม่มีผลกับอีกอัน
//class จะเป็นแบบ pass by Reference เหมือน copy แยกกันคนละอัน แต่แก้กับอันใดอันหนึ่งมีผลกับอีกอัน
struct CalculateBrain {
    
    //var bmi: Float = 0.0 // 1 value เก็บตัวเดียว
    //ไม่ใช้แล้ว เพราะใช้ bmiStruct แทน
    
    var bmiStruct: BMI? // 3 value เก็บสามตัว เป็นชุด ได้แก่ value advice color
    //เครื่องหมาย ? เป็นตัวแปร Optional คือ ตัวเลือกจะมีหรือไม่มีค่าก็ได้
    
    func getBMIValue() -> String {
        //let bmiTo1DecimalPlace = String(format: "%.1f", bmi)
        let bmiTo1DecimalPlace = String(format: "%.1f", bmiStruct?.value ?? 0.0)
        
        
        return bmiTo1DecimalPlace
    }
    func getAdvice() -> String {
        return bmiStruct?.advice ?? "No Advice"
        //if แบบย่อ
        //ตัวแปลที่ต้องการดูค่าหรือไหม ?? ถ้าไม่มีค่าให้ใช้ค่าตรงนี้แทน
        //ตัวแปลที่ต้องการดูค่าว่ามีค่าหรือไม่ = bmiStruct?.advice
    }
    
    func getColor() -> UIColor {
        return bmiStruct?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    
    mutating func calculateBMI(height:Float, weight:Float){
        //bmi ตัวที่ใช้นี้ ไม่มี var หรือ let นำหน้า คือตัวที่เป็น Global var
        //ส่วน weight กับ height คือ ตัวที่ func รับค่ามาในชื่อนั้น เป็น local var
        //bmi = weight / (height * height)
        
        let bmiValueLocal = weight / (height * height)
        
        if bmiValueLocal < 18.5 {
            bmiStruct = BMI(value: bmiValueLocal, advice: "Eat more pies!", color: #colorLiteral(red: 0.06065326929, green: 0.3979274035, blue: 0.5244676471, alpha: 1))
        }else if bmiValueLocal < 24.9 {
             bmiStruct = BMI(value: bmiValueLocal, advice: "Eat more fiddle!", color: #colorLiteral(red: 0, green: 0.5208773017, blue: 0.2758455873, alpha: 1))
        }else {
            bmiStruct = BMI(value: bmiValueLocal, advice: "Eat more pies!", color: #colorLiteral(red: 0.5574907064, green: 0.1312793493, blue: 0.1745647192, alpha: 1))
        }//if else
        
        
    }//calculateBMI
}//CalculateBrain
