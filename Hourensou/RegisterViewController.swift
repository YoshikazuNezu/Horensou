//
//  File.swift
//  Hourensou
//
//  Created by 根津嘉一 on 2019/07/20.
//  Copyright © 2019 根津嘉一. All rights reserved.
//

import Foundation
import UIKit

class RegisterViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource{
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var pickerView: UIPickerView!
    
    var heightArray: [Int] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        for i in 100...200 {
            heightArray.append(i)
        }
        
        pickerView.delegate = self
        pickerView.dataSource = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent: Int) -> Int {
        return heightArray.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return String(heightArray[row])
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        label.text = String( heightArray[row])
        
    }
}


