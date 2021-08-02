//
//  VisitorTableViewController.swift
//  xinlangWeibo_swift
//
//  Created by 芝麻汤圆 on 2021/8/2.
//

import UIKit

class VisitorTableViewController: UITableViewController {
    
    ///用户登录标记
    private var userLogin = false
    
    override func loadView() {
        print("执行到loadView")
//        if userLogin != false {
//            super.loadView()
//        }else{
//            view = UIView()
//            view.backgroundColor = UIColor.red
//        }
        userLogin ? super.loadView() : setLoadView()
    }
    private func setLoadView(){
        view = UIView()
        view.backgroundColor = UIColor.orange
        
    }
    
}
