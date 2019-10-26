//
//  BMI.swift
//  ios  13610334 week10 project2
//
//  Created by waepa on 19/10/2562 BE.
//  Copyright © 2562 waepa. All rights reserved.
//

import UIKit

//struct ย่อมาจาก structure แปลว่าโครงสร้าง โครงกระดูก
//ใช้สำหรับการจัดกลุ่มข้อมูลเป็นชุดๆ ที่ใช้เหมือนๆกัน
struct BMI {
    let value: Float //ex. 22.22
    let advice: String //คำแนะนำ ex. "กินน้อยลง"
    let color:  UIColor //สีของพื้นหลัง แยกสีเพื่อให้เห็นถึงความต่างเป็นชนิด UIColor
}
