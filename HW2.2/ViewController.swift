//
//  ViewController.swift
//  HW2.2
//
//  Created by Anatoliy Khramchenko on 24.03.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var viewImage: UIView!
    
    @IBOutlet weak var redCount: UITextField!
    @IBOutlet weak var greenCount: UITextField!
    @IBOutlet weak var blueCount: UITextField!
    
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewImage.layer.cornerRadius = 5
    }
    
    
    
    func colorChange() {
        viewImage.backgroundColor = UIColor(displayP3Red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }

    @IBAction func sliderChange(_ sender: Any) {
        colorChange()
        redCount.text = String (redSlider.value)
        greenCount.text = String (greenSlider.value)
        blueCount.text = String (blueSlider.value)
    }
    
    @IBAction func changeRed(_ sender: Any) {
        redSlider.value = Float(redCount.text!)!
        colorChange()
    }
    
    @IBAction func changeGreen(_ sender: Any) {
        greenSlider.value = Float(greenCount.text!)!
        colorChange()
    }
    
    @IBAction func changeBlue(_ sender: Any) {
        blueSlider.value = Float(blueCount.text!)!
        colorChange()
    }
    
    @IBAction func tap(_ sender: Any) {
        redCount.resignFirstResponder()
        greenCount.resignFirstResponder()
        blueCount.resignFirstResponder()
    }
    
}

