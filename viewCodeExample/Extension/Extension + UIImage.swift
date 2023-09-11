//
//  Extention + UIImage.swift
//  viewCodeExample
//
//

import UIKit

extension UIImageView {
    
    static func iconImageView(width: CGFloat = 64, heigth: CGFloat = 64) -> UIImageView {
        let image = UIImageView()
        
        image.size(size: .init(width: width, height: heigth))
        image.backgroundColor = .red
        image.layer.borderWidth = 0.5
        image.layer.borderColor = UIColor(white: 0.5, alpha: 0.5).cgColor
        image.layer.cornerRadius = 12
        image.clipsToBounds = true

        return image
    }
}
