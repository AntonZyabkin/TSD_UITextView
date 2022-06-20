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

        firstBookButton.addTarget(self, action: #selector(firstBook), for: .touchUpInside)
        secondBookButton.addTarget(self, action: #selector(secondBook), for: .touchUpInside)
        thirdBookButton.addTarget(self, action: #selector(thirdBook), for: .touchUpInside)
        fourthBookButton.addTarget(self, action: #selector(fourthBook), for: .touchUpInside)

        view.addSubview(firstBookButton)
        view.addSubview(secondBookButton)
        view.addSubview(thirdBookButton)
        view.addSubview(fourthBookButton)
}
    
    
    @objc func firstBook () {
        goToRead()
        curentBookNumber = 0
    }
    @objc func secondBook () {
        goToRead()
        curentBookNumber = 1
    }
    @objc func thirdBook () {
        goToRead()
        curentBookNumber = 2
    }
    @objc func fourthBook () {
        goToRead()
        curentBookNumber = 3
    }
    func goToRead () {
        let newController = ReaderViewController ()
        navigationController?.pushViewController(newController, animated: true)
    }
}

