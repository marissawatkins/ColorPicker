//
//  ColorPickerViewController.swift
//  ColorPicker
//
//  Created by Marissa watkins on 11/15/17.
//  Copyright © 2017 Marissa Watkins. All rights reserved.
//

import UIKit

class ColorPickerViewController: UIViewController, UITableViewDelegate, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var colorPickerView: UIPickerView!
    
    @IBOutlet weak var colorLabel: UILabel!
    
    let colors:[Colored] = [Colored(name: "Red", color: UIColor.red),
                          Colored(name: "Orange", color: UIColor.orange),
                          Colored(name: "Yellow", color: UIColor.yellow),
                          Colored(name: "Green", color: UIColor.green),
                          Colored(name: "Blue", color: UIColor.blue),
                          Colored(name: "Purple", color: UIColor.purple)]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return colors[row].name
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colors.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        //colorLabel.text = colors[row]
        self.view.backgroundColor = colors[row].color
        self.colorLabel.text = colors[row].name
    }
    
    let initialPick = 0
    //a good place to use the index of the initial color and set the initial background color, label text, and selected picker row
    override func viewDidLoad() {
        super.viewDidLoad()
        //self.colorPickerView.selectedRow(initialPick, inComponent: 0, animated: true)
        let colorDisplay = colors[initialPick]
        self.view.backgroundColor = colorDisplay.color
        self.colorLabel.text = colorDisplay.name
        
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
