import UIKit

class ViewController: UIViewController {
    
    private let list: [ScreenType] = [.basic]

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
            return
        }
    }
}

enum ScreenType: String {
    case basic = "Basic"
}
