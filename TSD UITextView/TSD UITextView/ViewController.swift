//
//  ViewController.swift
//  TSD UITextView
//
//  Created by Anton Zyabkin on 19.06.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var firstBookButton = UIButton ()
    var secondBookButton = UIButton ()
    var thirdBookButton = UIButton ()
    var fourthBookButton = UIButton ()

    
    
    
//    var testBarButtomItem = UIBarButtonItem ()
    let settingUIView = UIView ()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white

        firstBookButton = albumButton(vC: self,
                                      coord: CGRect(x: view.center.x - 185 , y: 130, width: 180, height: 300),
                                      imageName: "Image-1")
        secondBookButton = albumButton(vC: self,
                                      coord: CGRect(x: view.center.x + 10 , y: 130, width: 180, height: 300),
                                      imageName: "Image-2")
        thirdBookButton = albumButton(vC: self,
                                      coord: CGRect(x: view.center.x - 185 , y: 450, width: 180, height: 300),
                                      imageName: "Image-3")
        fourthBookButton = albumButton(vC: self,
                                      coord: CGRect(x: view.center.x + 10 , y: 450, width: 180, height: 300),
                                      imageName: "Image-4")
        
//        let testBarButtomItem = createCustomeButotn(imageName: "setting", selecton: #selector(createSettingUIView))
//
//        navigationItem.rightBarButtonItems = [testBarButtomItem]
        
        firstBookButton.addTarget(self, action: #selector(goToRead), for: .touchUpInside)
        secondBookButton.addTarget(self, action: #selector(goToRead), for: .touchUpInside)
        thirdBookButton.addTarget(self, action: #selector(goToRead), for: .touchUpInside)
        fourthBookButton.addTarget(self, action: #selector(goToRead), for: .touchUpInside)

        
        
        view.addSubview(firstBookButton)
        view.addSubview(secondBookButton)
        view.addSubview(thirdBookButton)
        view.addSubview(fourthBookButton)
}


    
    @objc func createSettingUIView () {
        settingUIView.backgroundColor = UIColor (red: 0.1, green: 0.1, blue: 0.1, alpha: 0.8)
        settingUIView.layer.cornerRadius = 20
        
        view.addSubview(settingUIView)
    }
    
    @objc func goToRead () {
        let newController = ReaderViewController ()
        navigationController?.pushViewController(newController, animated: true)
    }
}

