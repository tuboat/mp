//
//  ViewController.swift
//  magicPils
//
//  Created by unkown on 8/29/18.
//  Copyright © 2018 dotunderscoredot. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {

    @IBOutlet weak var statePickerButton: UIButton!
    @IBOutlet weak var statePicker: UIPickerView!
    
    let states:Array<String> = ["Alaska","Ohio","Texas","New Mexico","Massachusetts"];
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(statePickerButton.isHidden);
        statePicker.dataSource = self;
        statePicker.delegate = self;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1;
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count;
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row];
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerButton.setTitle(states[row], for: .normal)
        statePicker.isHidden = true;
        statePickerButton.isHidden = false;
    }
    
    @IBAction func stateButtonPressed(_ sender: Any) {
        if statePickerButton.isHidden == false{
            statePickerButton.isHidden = true;
            statePicker.isHidden = false;
            
            
            
            
        }
    }
    
}

