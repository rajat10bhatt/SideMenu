import UIKit

extension NSNotification.Name {
    static let toggleMenu = NSNotification.Name(rawValue: "ToggleMenu")
}

struct DictionaryKeys {
    static let title = "title"
    static let image = "image"
}

enum LeftButtonAction: Int {
    case hideBackButton = 0
    case showbackButton
    case showHamburgerMenu
}

struct Assets {
    static let back = #imageLiteral(resourceName: "Back")
    static let menu = #imageLiteral(resourceName: "menu")
    static let help = #imageLiteral(resourceName: "help")
}

struct NavigationTitles {
    static let overview = "Overzicht"
}
