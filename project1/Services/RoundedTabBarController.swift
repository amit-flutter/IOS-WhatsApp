//
//  RoundedTabBarController.swift
//  project1
//
//  Created by karmaln technology on 07/02/22.
//

import UIKit

class RoundedTabBarController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()

        let layer = CAShapeLayer()
        layer.path = UIBezierPath(roundedRect: CGRect(x: 30, y: tabBar.bounds.minY + 5, width: tabBar.bounds.width - 60, height: tabBar.bounds.height + 10), cornerRadius: tabBar.frame.width / 2).cgPath
        layer.shadowColor = UIColor.green.cgColor
        layer.shadowOffset = CGSize(width: 5.0, height: 5.0)
        layer.shadowRadius = 25.0
        layer.shadowOpacity = 0.3
        layer.borderWidth = 1.0
        layer.opacity = 1.0
        layer.isHidden = false
        layer.masksToBounds = false
        layer.fillColor = UIColor.white.cgColor

        tabBar.layer.insertSublayer(layer, at: 0)

        if let items = self.tabBar.items {
            items.forEach { item in item.imageInsets = UIEdgeInsets(top: 10, left: 0, bottom: 0, right: 0) }
        }

        self.tabBar.itemWidth = 70.0
        self.tabBar.itemPositioning = .centered
    }


}
