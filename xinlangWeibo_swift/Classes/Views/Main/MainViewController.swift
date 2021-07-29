//
//  MainViewController.swift
//  xinlangWeibo_swift
//
//  Created by 芝麻汤圆 on 2021/7/29.
//

import UIKit

class MainViewController: UITabBarController {
    //重写viewWillAppear方法来推送按钮到页面前面
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tabBar.bringSubviewToFront(composedButton)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addChildViewControllers()
        setupComposedButton()
        
    }
    ///MARK - 懒加载控件
    private lazy var composedButton:UIButton = UIButton(imageName: "push", backIamgeName: "pushbackground")
}

///MARK - 设置界面
extension MainViewController{

    ///添加所有控制器
    private func addChildViewController(vc: UIViewController, title: String, imageName: String ){
        //设置标题 由内之外
        vc.title = title
        //设置图像
        vc.tabBarItem.image = UIImage(named: imageName)
        //导航控制器
        let nav = UINavigationController(rootViewController: vc)
        addChild(nav)
    }
    private func addChildViewControllers(){
        tabBar.tintColor = UIColor.orange
        addChildViewController(vc: HomeTableViewController(), title: "首页", imageName: "imageNormal")
        addChildViewController(vc: DiscoverTableViewController(), title: "发现", imageName: "imageNormal")
        addChild(UIViewController())
        addChildViewController(vc: MessageTableViewController(), title: "消息", imageName: "imageNormal")
        addChildViewController(vc: ProfileTableViewController(), title: "我的", imageName: "imageNormal")
    }
    
    //设置按钮
    private func setupComposedButton(){
        //添加按钮
        tabBar.addSubview(composedButton)
        //调整按钮
        let count = self.children.count
        let width = tabBar.bounds.width / CGFloat(count) - 1
        composedButton.frame = tabBar.bounds.insetBy(dx: 2*width, dy: 0)
        
        
    }
}
