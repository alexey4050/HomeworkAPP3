//
//  ViewController.swift
//  HomeworkApp3
//
//  Created by testing on 29.09.2023.
//

import UIKit

final class ViewController: UIViewController {
    //MARK: - IBOutlet
    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var redValueSlider: UILabel!
    @IBOutlet weak var greenValueSlider: UILabel!
    @IBOutlet weak var blueValueSlider: UILabel!
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        colorView.layer.cornerRadius = 10
        
        setupRedSlider()
        setupGreenSlider()
        setupBlueSlider()
        
        setupRedLabel()
        setupGreenLabel()
        setupBlueLabel()
        
        setupValueSlider()
        
        updateColor()
    }
    
    // MARK: - IB Actions
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        switch sender {
        case redSlider:
            redValueSlider.text = "\(String(format: "%.1f", sender.value))"
        case greenSlider:
            greenValueSlider.text = "\(String(format: "%.1f", sender.value))"
        case blueSlider:
            blueValueSlider.text = "\(String(format: "%.1f",sender.value))"
        default:
            break
        }
        updateColor()
    }
    
    private func updateColor() {
        let redValue = CGFloat(redSlider.value)
        let greenValue = CGFloat(greenSlider.value)
        let blueValue = CGFloat(blueSlider.value)
        colorView.backgroundColor = UIColor(red: redValue, green: greenValue, blue: blueValue, alpha: 1.0)
    }
}

//MARK: - Private Methods
extension ViewController {
    private func setupRedLabel() {
        redLabel.text = "Red"
        redLabel.font = redLabel.font.withSize(20)
        redLabel.textAlignment = .left
        redLabel.numberOfLines = 1
    }
    
    private func setupGreenLabel() {
        greenLabel.text = "Green"
        greenLabel.font = greenLabel.font.withSize(20)
        greenLabel.textAlignment = .left
        greenLabel.numberOfLines = 1
    }
    
    private func setupBlueLabel() {
        blueLabel.text = "Blue"
        blueLabel.font = blueLabel.font.withSize(20)
        blueLabel.textAlignment = .left
        blueLabel.numberOfLines = 1
    }
    
    private func setupValueSlider() {
        redValueSlider.text = "0.5"
        redValueSlider.font = redValueSlider.font.withSize(18)
        redValueSlider.textColor = .brown
        greenValueSlider.text = "0.5"
        greenValueSlider.font = redValueSlider.font.withSize(18)
        greenValueSlider.textColor = .brown
        blueValueSlider.text = "0.5"
        blueValueSlider.font = redValueSlider.font.withSize(18)
        blueValueSlider.textColor = .brown
    }
    
    private func setupRedSlider() {
        redSlider.value = 0.5
        redSlider.minimumValue = 0
        redSlider.maximumValue = 1
        redSlider.minimumTrackTintColor = .yellow
        redSlider.maximumTrackTintColor = .red
        redSlider.thumbTintColor = .gray
    }
    
    private func setupGreenSlider() {
        greenSlider.value = 0.5
        greenSlider.minimumValue = 0
        greenSlider.maximumValue = 1
        greenSlider.minimumTrackTintColor = .yellow
        greenSlider.maximumTrackTintColor = .red
        greenSlider.thumbTintColor = .gray
    }
    
    private func setupBlueSlider() {
        blueSlider.value = 0.5
        blueSlider.minimumValue = 0
        blueSlider.maximumValue = 1
        blueSlider.minimumTrackTintColor = .yellow
        blueSlider.maximumTrackTintColor = .red
        blueSlider.thumbTintColor = .gray
    }
}
