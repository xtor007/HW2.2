//
//  ViewController.swift
//  HW2.2
//
//  Created by Anatoliy Khramchenko on 24.03.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var viewImage: UIView!
    
    @IBOutlet weak var redCount: UILabel!
    @IBOutlet weak var greenCount: UILabel!
    @IBOutlet weak var blueCount: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
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
    

}

