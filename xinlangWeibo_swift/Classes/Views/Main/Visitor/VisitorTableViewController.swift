//
//  VisitorTableViewController.swift
//  xinlangWeibo_swift
//
//  Created by 芝麻汤圆 on 2021/8/2.
//

import UIKit

class VisitorTableViewController: UITableViewController {
    ///用户登录标记
    private var userLogin = true
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
        view = VisitorView()
//        view.backgroundColor = UIColor.orange
    }
    
    ///视图生命周期函数
    override func viewDidLoad() {
        let testView = UIView()
        testView.backgroundColor = .orange
        testView.frame = CGRect(x: 0, y: 0, width: 300, height: 50)
        let rightButton = UIBarButtonItem(image: UIImage(named: "imageNormal"), style: .plain, target: self, action: nil)
        print("rightButton rewrited")
        let textDemo = UITextView(frame: CGRect(x: 0, y: 0, width: 300, height: 50))
        textDemo.text = "这里是headView的测试"
        textDemo.textColor = .blue
        testView.addSubview(textDemo)
        
        self.navigationItem.titleView = testView
        self.navigationItem.setRightBarButton(rightButton, animated: true)
        print("titlteView rewrited")
        
        //主体界面View重写
//        let bodyView = UIScrollView()
//        bodyView.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height:self.view.frame.height)
//        bodyView.backgroundColor = .red
//        self.view.addSubview(bodyView)
        
        
        
    }
    
}
