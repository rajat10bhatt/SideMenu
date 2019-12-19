import UIKit

class LandingViewController: BaseViewController {
    // MARK: Outlet
    @IBOutlet weak var greyOutView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initializeView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.initializeNavigationBar(navigationTitle: NavigationTitles.overview, leftButtonAction: LeftButtonAction.showHamburgerMenu.rawValue, rightButtonImage: Assets.help)
    }
    
    func initializeView() {
        self.greyOutView.isHidden = true
    }
    
    override func onClickOfHumburgerButton(sender: UIButton) {
        print("Menu clicked")
        self.greyOutView.isHidden = !self.greyOutView.isHidden
        NotificationCenter.default.post(name: NSNotification.Name.toggleMenu, object: nil)
    }
}

