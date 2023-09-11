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
    
    let screenshotImage1 : UIImageView = .screenshotImageView()
    let screenshotImage2 : UIImageView = .screenshotImageView()
    let screenshotImage3 : UIImageView = .screenshotImageView()
    
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
        
        
        let screenshotStackView = UIStackView(arrangedSubviews: [screenshotImage1, screenshotImage2, screenshotImage3])
        screenshotStackView.spacing = 12
        screenshotStackView.distribution = .fillEqually
        let globalStackView = UIStackView(arrangedSubviews: [headerStackView,screenshotStackView])
        globalStackView.spacing = 16
        globalStackView.axis = .vertical
        
        addSubview(globalStackView)
        globalStackView.fillSuperView(padding: .init(top: 20,
                                                     left: 20,
                                                     bottom: 20,
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
