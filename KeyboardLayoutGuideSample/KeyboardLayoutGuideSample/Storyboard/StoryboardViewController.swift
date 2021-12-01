import UIKit

class StoryboardViewController: UIViewController {
    
    @IBOutlet private var field: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    private func setUpUI() {
        field.translatesAutoresizingMaskIntoConstraints = false
        let keyboardConstraint = view.keyboardLayoutGuide.topAnchor.constraint(equalTo: field.bottomAnchor, constant: 10)
        keyboardConstraint.priority = .defaultHigh
        NSLayoutConstraint.activate([
            keyboardConstraint
        ])
    }
}
