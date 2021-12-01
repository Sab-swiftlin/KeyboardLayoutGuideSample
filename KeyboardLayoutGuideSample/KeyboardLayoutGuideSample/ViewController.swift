import UIKit

class ViewController: UIViewController {
    
    private let list: [ScreenType] = [.basic, .storyboard]

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = list[indexPath.row].rawValue
        return cell
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch list[indexPath.row] {
        case .basic:
            let basicVC = BasicViewController()
            basicVC.title = list[indexPath.row].rawValue
            navigationController?.pushViewController(basicVC, animated: true)
        case .storyboard:
            guard let storyboardVC = UIStoryboard(name: "Storyboard", bundle: nil).instantiateInitialViewController() else { return }
            storyboardVC.title = list[indexPath.row].rawValue
            navigationController?.pushViewController(storyboardVC, animated: true)
        }
    }
}

enum ScreenType: String {
    case basic = "Basic"
    case storyboard = "Storyboard"
}
