import UIKit

class MultipleFormsViewController: UIViewController {
    @IBOutlet private weak var scrollView: UIScrollView!
    @IBOutlet private weak var stackView: UIStackView!

    private let titles = ["Last name", "First name", "Postal code", "Address", "Phone number", "e-mail", "e-mail(confirmation)"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
    }
    
    private func setUpUI() {
        titles.forEach {
            let form = FormView()
            form.setTitle(title: $0)
            stackView.addArrangedSubview(form)
        }

        NSLayoutConstraint.activate([
            view.keyboardLayoutGuide.topAnchor.constraint(equalTo: scrollView.bottomAnchor, constant: 10)
        ])
    }
}
