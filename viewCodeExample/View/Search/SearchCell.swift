//
//  SearchCell.swift
//  viewCodeExample
//
//

import UIKit

class SearchCell:UITableViewCell {
    
    let iconImage: UIImageView = .iconImageView()
    let labelTitle: UILabel = .textLabel(text: "App nome", fontSize: 18, numberOfLines: 2)
    let labelDescription: UILabel = .textLabel(text: "Empresa Nome", fontSize: 14)
    let getButton: UIButton = .getButton()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
       
        
        let appDescriptionStackview = UIStackView(arrangedSubviews: [labelTitle,
                                                                     labelDescription])
        appDescriptionStackview.spacing = 8
        appDescriptionStackview.axis = .vertical
        
        
        
        let headerStackView = UIStackView(arrangedSubviews: [iconImage,
                                                             appDescriptionStackview,
                                                             getButton])
        headerStackView.spacing = 12
        headerStackView.alignment = .center
        
        addSubview(headerStackView)
        headerStackView.fillSuperView(padding: .init(top: 0,
                                                     left: 20,
                                                     bottom: 0,
                                                     right: 20))
        
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
}


extension SearchCell {
    func createAppDescription() {
        
    }
}
