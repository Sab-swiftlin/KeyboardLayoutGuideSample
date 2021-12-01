import UIKit

class MultipleViewController: UIViewController {
    
    @IBOutlet private var confirmEmailField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    private func setUpUI() {
        NSLayoutConstraint.activate([
            view.keyboardLayoutGuide.topAnchor.constraint(greaterThanOrEqualTo: confirmEmailField.bottomAnchor, constant: 10)
        ])
    }
}
