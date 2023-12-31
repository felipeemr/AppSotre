//
//  Extension + Button.swift
//  viewCodeExample
//
//

import UIKit

extension UIButton {
    
    static func getButton() -> UIButton {
        
        let button = UIButton(type: .system)
        button.setTitle("Obter", for: .normal)
        button.setTitleColor(UIColor.blue, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.size(size: .init(width: 80, height: 32))
        button.layer.cornerRadius = 16
        button.backgroundColor = UIColor(white: 0.95, alpha: 1)
        button.clipsToBounds = true
        
        return button
        
    }
}
