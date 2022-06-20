//
//  ReaderViewController.swift
//  TSD UITextView
//
//  Created by Anton Zyabkin on 20.06.2022.
//

import UIKit

class ReaderViewController: UIViewController {
    
    let settingUIView = UIView ()
    let settingBarButtonItem = UIBarButtonItem (systemItem: .edit)

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemGray6
        print(curentBookNumber)
        navigationItem.rightBarButtonItem = settingBarButtonItem
        
        settingBarButtonItem.addTargetForAction(target: self, action: #selector(createSettingUIView))
    }
    
    @objc func createSettingUIView () {
        
        settingUIView.backgroundColor = UIColor (red: 0.1, green: 0.1, blue: 0.1, alpha: 0.8)
        settingUIView.layer.cornerRadius = 20
        view.addSubview(settingUIView)
        
    }

}
