//
//  testButton.swift
//  playground
//
//  Created by 西川裕介 on 2025/04/04.
//
import UIKit
class TestButton: UIControl {
    var label = UILabel()

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.handleRegisterForTraitChanges()
    }

    /*
     UIControl（親）のプロパティisEnabledをオーバーライド。
     */
    override var isEnabled: Bool {
        didSet {
            if(isEnabled){
                print("有効状態")
            }else{
                print("無効状態")
            }
        }
    }

    /*
     UIControl（親）のプロパティisHighlightedをオーバーライド。
     */
    override var isHighlighted: Bool {
        didSet {
            if(self.isHighlighted){
                print("ハイライトオン")

            }else{
                print("ハイライトオフ")
            }
        }
    }

    /**
     *  ダーク/ライトモードの変化を検知。
     *  init時に読み込んで、ボタンが生成された時に監視する。
     */
    private func handleRegisterForTraitChanges(){
        registerForTraitChanges([UITraitUserInterfaceStyle.self], handler: { (self: Self, previousTraitCollection: UITraitCollection) in
            if self.traitCollection.userInterfaceStyle == .light {
                print("LightMode")
            } else {
                print("DarkMode")
            }
        })
    }

    /**
     * ボタン生成。
     * レイアウトは適当。
     */
    func makeButton() {
        self.layer.cornerRadius = 12
        self.layer.backgroundColor = UIColor(red: 37/255, green: 99/255, blue: 235/255, alpha: 1).cgColor
        self.label.font = UIFont.boldSystemFont(ofSize:20)
        self.label.adjustsFontSizeToFitWidth = true
        self.label.frame = self.bounds
        self.label.textAlignment = .center
        self.label.textColor = UIColor.white
        self.label.text = "Button"
        addSubview(label)
    }
}


////
////  testButton.swift
////  playground
////
////  Created by 西川裕介 on 2025/04/04.
////
//import UIKit
//class TestButton: UIControl {
//    var label = UILabel()
//    let darkBg = UIColor.white
//    let lightBg = UIColor.gray
//
//
//
//    required init?(coder aDecoder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//    override init(frame: CGRect) {
//        super.init(frame: frame)
//        self.updateSysColor()
//    }
//
//    override var isEnabled: Bool {
//        didSet {
//            if(isEnabled){
//                print("有効状態")
//                self.layer.backgroundColor = UIColor.blue.cgColor
//            }else{
//                print("無効状態")
//                self.layer.backgroundColor = UIColor.gray.cgColor
//            }
//        }
//    }
//    override var isHighlighted: Bool {
//        didSet {
//            if(self.isHighlighted){
//                print("ハイライトオン")
//                self.label.text = "タップ中"
//                self.layer.backgroundColor = lightBg.cgColor
//
//            }else{
//                print("ハイライトオフ")
//                self.label.text = "通常状態"
//                self.layer.backgroundColor  = lightBg.cgColor
//            }
//        }
//    }
//    private func updateSysColor(){
//        registerForTraitChanges([UITraitUserInterfaceStyle.self], handler: { (self: Self, previousTraitCollection: UITraitCollection) in
//            if self.traitCollection.userInterfaceStyle == .light {
//                print("LightMode")
//                self.label.text = "ライトモード"
//                self.label.textColor = UIColor.white
//                self.label.backgroundColor = UIColor.gray
//            } else {
//                print("DarkMode")
//                self.label.text = "ダークモード"
//                self.label.textColor = UIColor.black
//                self.label.backgroundColor = UIColor.white
//            }
//        })
//    }
//
//    /**
//     * キャビネット用ボタン生成：ボタンまたはメニューボタン
//     */
//    func makeButton(title:String) {
//        self.frame = CGRect(x: 500, y: 100, width: CGFloat(200), height: CGFloat(100))
//        self.layer.cornerRadius = 20
//
//        self.label.font = UIFont.boldSystemFont(ofSize:20)
//        self.label.adjustsFontSizeToFitWidth = true
//        self.label.frame = self.bounds
//        self.label.textAlignment = .center
//        self.label.textColor = UIColor.white
//        self.label.text = "ボタン"
//
//        addSubview(label)
//    }
//
//
//}
//
