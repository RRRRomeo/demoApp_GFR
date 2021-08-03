//
//  VisitorView.swift
//  xinlangWeibo_swift
//
//  Created by 芝麻汤圆 on 2021/8/2.
//

import UIKit
///按钮点击回调
typealias ClickCallback = ()->String;
class VisitorView: UIView {
    let buttonClickCallback:ClickCallback = {
        return "callback is callbacked"
    }
    private lazy var testDemoButton = UIButton()
    ///按钮点击
    @objc private func demoButtonClick(){
        if self.testDemoButton.isTouchInside{
            print(buttonClickCallback())
        }
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func draw(_ rect: CGRect) {
        // Drawing code
        setLoadView()
    }
    private func setLoadView() {
        let demoView = UIView()
        demoView.frame = CGRect(x: 0, y: 0, width: self.frame.width, height: self.frame.height)
        demoView.backgroundColor = UIColor.white
        
        let demoButton = UIButton()
        demoButton.frame = CGRect(x: self.frame.midX, y: self.frame.midY, width: 46, height: 46)
        demoButton.setBackgroundImage(.add, for: UIControl.State.normal)
//        demoButton.backgroundColor = .blue
        self.testDemoButton = demoButton
        demoButton.addTarget(self, action: #selector(self.demoButtonClick), for: .touchUpInside)
        demoView.addSubview(demoButton)
        self.addSubview(demoView)
        //banner创建测试
        addBannerView()
        
    }
    private lazy var bannerView:UIScrollView = {
        var bannerView = UIScrollView()
        bannerView.frame = CGRect(x: 0, y: 160, width: 100, height: 100)
        bannerView.backgroundColor = .blue
        self.addSubview(bannerView)
        return bannerView
    }()
    private func addBannerView(){
        let imageView = UIImageView()
        imageView.center = self.bannerView.center
        imageView.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        imageView.backgroundColor = .brown
        self.bannerView.addSubview(imageView)
        print("iamgeView already created into bannerView")
        
    }
}
///MARK- 页面搭建效果
//banner轮播效果
extension VisitorView {
    //banner
    //1创建一个scrollView
    //2scrollView里放一个ImageView,安装定时器
}
