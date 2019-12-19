import UIKit

class BaseViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func initializeNavigationBar(navigationTitle: String = String.emptyString, leftButtonAction: Int, rightButtonImage: UIImage?) {
        navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.9758176208, green: 0.2559485137, blue: 0.2234108746, alpha: 1)
        self.navigationItem.setHidesBackButton(false, animated: true)
        navigationController?.navigationBar.isTranslucent = false
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        
        navigationItem.title = navigationTitle
        
        switch leftButtonAction {
        case LeftButtonAction.hideBackButton.rawValue:
            self.navigationItem.setHidesBackButton(true, animated: true)
        case LeftButtonAction.showbackButton.rawValue:
            showBackButton()
        case LeftButtonAction.showHamburgerMenu.rawValue:
            showHumburgerMenu()
        default:
            break
        }
        
        if let rightImage = rightButtonImage {
            showRightButton(image: rightImage)
        }
    }
    
    //Add BackButton
    func showBackButton() {
        let backButtonImage: UIImage = Assets.back
        let imageFrame = CGRect(x: 0, y: 0, width: backButtonImage.size.width + 20, height: backButtonImage.size.height + 20)
        let backButton = UIButton(frame: imageFrame)
        backButton.setImage(backButtonImage, for: .normal)
        backButton.tintColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        backButton.imageEdgeInsets.left = -10
        backButton.addTarget(self, action: #selector(onClickOfBackButton), for: UIControl.Event.touchUpInside)
        let barButton = UIBarButtonItem(customView: backButton)
        navigationItem.backBarButtonItem = nil
        navigationItem.setLeftBarButton(barButton, animated: false)
    }
    
    //Add BackButton
    func showRightButton(image: UIImage) {
        let moreButton = UIBarButtonItem(image: image, style: .plain, target: self, action: #selector(onClickOfHelpButton(sender:)))
        moreButton.tintColor = UIColor.white
        moreButton.image?.withRenderingMode(.alwaysTemplate)
        navigationItem.setRightBarButtonItems([moreButton], animated: false)
    }
    
    //Add Humburger Menu
    func showHumburgerMenu() {
        let humburgerButtonImage: UIImage = Assets.menu
        let imageFrame = CGRect(x: 0, y: 0, width: humburgerButtonImage.size.width + 20, height: humburgerButtonImage.size.height + 20)
        let humburgerButton = UIButton(frame: imageFrame)
        humburgerButton.setImage(humburgerButtonImage, for: .normal)
        humburgerButton.imageEdgeInsets.left = -10
        humburgerButton.addTarget(self, action: #selector(onClickOfHumburgerButton), for: UIControl.Event.touchUpInside)
        let barButton = UIBarButtonItem(customView: humburgerButton)
        navigationItem.backBarButtonItem = nil
        navigationItem.setLeftBarButton(barButton, animated: false)
    }
    
    /// Back button action
    @objc func onClickOfBackButton(sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @objc func onClickOfHumburgerButton(sender: UIButton) {
        
    }
    
    //More Navigation button action
    @objc func onClickOfHelpButton(sender: UIButton) {
    }
}
