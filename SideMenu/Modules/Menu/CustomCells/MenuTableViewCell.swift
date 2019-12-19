//
//  MenuTableViewCell.swift
//  Creapolis
//
//  Created by Rajat on 11/15/19.
//

import UIKit

class MenuTableViewCell: UITableViewCell {
    // MARK: Outlets
    @IBOutlet weak var itemImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setupCell(with data: [String: Any]) {
        titleLabel.text = data[DictionaryKeys.title] as? String
        itemImageView.image = data[DictionaryKeys.image] as? UIImage
    }
}
