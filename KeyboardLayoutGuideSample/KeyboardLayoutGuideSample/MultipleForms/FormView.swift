import UIKit

class FormView: UIView {
    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var field: UITextField!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        loadNib()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        loadNib()
    }
    
    func setTitle(title: String) {
        titleLabel.text = title
    }
    
    private func loadNib() {
        guard let formView = Bundle.main.loadNibNamed("Form", owner: self, options: nil)?.first as? UIView else { fatalError() }
        addSubview(formView)
        formView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            formView.topAnchor.constraint(equalTo: topAnchor),
            formView.bottomAnchor.constraint(equalTo: bottomAnchor),
            formView.leadingAnchor.constraint(equalTo: leadingAnchor),
            formView.trailingAnchor.constraint(equalTo: trailingAnchor)
        ])
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.endEditing(true)
    }
}
