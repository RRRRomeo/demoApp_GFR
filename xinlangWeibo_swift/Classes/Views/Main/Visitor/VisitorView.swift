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
        demoView.frame = CGRect(x: 150, y: 300, width: 100, height: 100)
        demoView.backgroundColor = UIColor.red
        
        let demoButton = UIButton()
        demoButton.frame = CGRect(x: 0, y: 0, width: 46, height: 46)
        demoButton.setBackgroundImage(.add, for: UIControl.State.normal)
//        demoButton.backgroundColor = .blue
        self.testDemoButton = demoButton
        demoButton.addTarget(self, action: #selector(self.demoButtonClick), for: .touchUpInside)
        demoView.addSubview(demoButton)
        self.addSubview(demoView)
        
    }
}
extension VisitorView {

}
