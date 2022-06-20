//
//  ReaderViewController.swift
//  TSD UITextView
//
//  Created by Anton Zyabkin on 20.06.2022.
//

import UIKit

class ReaderViewController: UIViewController {
    
    let settingUIView = UIView ()
    let fontSizeSlider = UISlider ()
    let colorLabel = UILabel ()
    let colorsegmentedControl = UISegmentedControl ()
    let nightModeSwitch = UISwitch ()
    let fontTypePicker = UIPickerView ()
    
    
    
    
    var textView = UITextView ()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let settingBarButtonItem = createCustomeButotn(imageName: "gear", selecton: #selector(hideSettingView) )
        view.backgroundColor = .systemGray6
        navigationItem.rightBarButtonItem = settingBarButtonItem
        
        
        
        
        createTextView ()
        createSettingUIView ()

        fontSizeSliderCreating ()
        fontSizeCreating ()
    }
    
    @objc func hideSettingView () {
        if settingUIView.isHidden {
            settingUIView.isHidden = false
        } else {
            settingUIView.isHidden = true
        }
    }
    
    func createSettingUIView () {
        settingUIView.isHidden = true
        settingUIView.frame = CGRect (x: 50, y: 95, width: view.frame.maxX - 80, height:250)
        settingUIView.backgroundColor = UIColor (red: 0.88, green: 0.88, blue: 0.88, alpha: 0.95)
        settingUIView.layer.cornerRadius = 20
        view.addSubview(settingUIView)
    }

    func createTextView () {
        textView = UITextView  (frame: CGRect (x: 0, y: 70 , width: view.frame.maxX, height: view.frame.maxY - 150))
        textView.text = bookText [curentBookNumber]
        view.addSubview(textView)
        textView.isEditable = false
    }
    

    func fontSizeSliderCreating () {
        fontSizeSlider.frame = CGRect (x: 40, y: 20, width: 250, height: 50)
        fontSizeSlider.minimumValue = 10
        fontSizeSlider.maximumValue = 40
        settingUIView.addSubview(fontSizeSlider)
        fontSizeSlider.addTarget(self, action: #selector(changeFontSize), for: .valueChanged)
    }
    
    func fontSizeCreating () {
        colorLabel.text = "SIZE OF TEXT"
        colorLabel.frame = CGRect (x: 75, y: 10, width: 200, height: 30)
        colorLabel.textAlignment = .center
        colorLabel.backgroundColor = .clear
        colorLabel.textColor = .black
        settingUIView.addSubview(colorLabel)
    }

    
    
    
    
    
    @objc func changeFontSize () {
        let fontSize = Int(fontSizeSlider.value)
        textView.font = UIFont(name: curentFontType, size: CGFloat(fontSize))
        
    }
    
}
extension ReaderViewController : UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 4
    }
}

extension ReaderViewController : UIPickerViewDelegate {
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return "test"
    }
}
