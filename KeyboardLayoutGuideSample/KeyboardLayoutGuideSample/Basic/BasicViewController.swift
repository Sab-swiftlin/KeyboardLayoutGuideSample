import UIKit

class BasicViewController: UIViewController {
    private lazy var field: UITextField = {
        let field = UITextField()
        field.translatesAutoresizingMaskIntoConstraints = false
        field.borderStyle = .roundedRect
        field.placeholder = "Input here"
        return field
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    private func setUpUI() {
        view.backgroundColor = .systemBackground
        view.addSubview(field)
        NSLayoutConstraint.activate([
            field.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            field.widthAnchor.constraint(equalToConstant: 200),
            field.heightAnchor.constraint(equalToConstant: 40),
            view.keyboardLayoutGuide.topAnchor.constraint(equalTo: field.bottomAnchor, constant: 10)
        ])
    }
}
