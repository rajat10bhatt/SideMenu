import UIKit

class ContainerViewController: UIViewController {

    @IBOutlet weak var menuLeadingConstraint: NSLayoutConstraint!
    
    var isSideMenuOpen = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(toggleSideMenu), name: NSNotification.Name.toggleMenu, object: nil)
    }
    
    @objc func toggleSideMenu() {
        if isSideMenuOpen {
            self.menuLeadingConstraint.constant = -230
        } else {
            self.menuLeadingConstraint.constant = 0
        }
        isSideMenuOpen = !isSideMenuOpen
        UIView.animate(withDuration: 0.3) {
            self.view.layoutIfNeeded()
        }
    }
}
