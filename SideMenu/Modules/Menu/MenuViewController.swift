import UIKit

class MenuViewController: UIViewController {
    // MARK: Outlets
    @IBOutlet weak var menuTableView: UITableView!
    
    // MARK: Properties
    var data: [[String: Any]] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        configureTableView()
    }
    
    func configureTableView() {
        data = [[DictionaryKeys.title: "Home", DictionaryKeys.image: #imageLiteral(resourceName: "Outbox Icon")], [DictionaryKeys.title: "Notification", DictionaryKeys.image: #imageLiteral(resourceName: "Outbox Icon-2")], [DictionaryKeys.title: "Profile", DictionaryKeys.image: #imageLiteral(resourceName: "Outbox Icon-3")],  [DictionaryKeys.title: "Logout", DictionaryKeys.image: #imageLiteral(resourceName: "Forums Icon-2")]]
        self.menuTableView.register(MenuTableViewCell.self)
    }
}

extension MenuViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: MenuTableViewCell = tableView.dequeueReusableCell(forIndexPath: indexPath)
        cell.setupCell(with: data[indexPath.row])
        return cell
    }
}

extension MenuViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}
