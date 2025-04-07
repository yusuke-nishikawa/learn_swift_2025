import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        var button:TestButton
        view.backgroundColor = UIColor.tertiarySystemBackground
        // Hello UIkitを画面に表示する
        button = TestButton(frame:CGRect(x: 1200, y: 100, width: CGFloat(112), height: CGFloat(41)))
        button.makeButton()
        view.addSubview(button)


        let toggleSwitch = UISwitch()
        toggleSwitch.frame = CGRect(x: 1256, y: 145, width: CGFloat(30), height: CGFloat(10))
        toggleSwitch.addAction(UIAction { _ in
            button.isEnabled.toggle()
        }, for: .valueChanged)
        view.addSubview(toggleSwitch)
    }

//    @objc func switchChanged(_ sender: UISwitch) {
//        if sender.isOn {
//            button.isEnabled = true
//        } else {
//            button.isEnabled = false
//        }
//    }


}
