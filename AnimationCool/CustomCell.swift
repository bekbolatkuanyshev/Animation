//
//  CustomCell.swift
//  AnimationCool
//
//  Created by Бекболат Куанышев on 07.04.17.
//  Copyright © 2017 Bekbolat. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {

    @IBOutlet weak var detailView: UIView!
    @IBOutlet weak var proccessorLabel: UILabel!
    @IBOutlet weak var mpxLabel: UILabel!
    @IBOutlet weak var hideButton: UIButton!
    
    @IBOutlet weak var infoView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var infoButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        hideButton.layer.borderWidth = 1.0
        hideButton.layer.borderColor = UIColor.white.cgColor
        hideButton.layer.cornerRadius = 10.0
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(tapping))
        detailView.addGestureRecognizer(tap)
    }
    
    func tapping(){
        detailView.alpha = 0.2
    }

    @IBAction func hidePressed(_ sender: UIButton) {
        UIView.transition(from: detailView, to: infoView, duration: 1.0, options: .transitionFlipFromLeft) { (success) in
        }
    }
    @IBAction func infoPressed(_ sender: UIButton) {
        UIView.transition(from: self.infoView, to: self.detailView, duration: 1.0, options: .transitionFlipFromRight) { (success) in
        }
        detailView.isHidden = true
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
