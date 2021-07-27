//
//  ViewController.swift
//  xinlangWeibo_swift
//
//  Created by 芝麻汤圆 on 2021/7/27.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let subview = UIView()
        let subButton = UIButton(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
        subButton.backgroundColor = UIColor.black
        subview.addSubview(subButton)
        print("this is \(subview) and next is \(subButton)")
        
    }


}

