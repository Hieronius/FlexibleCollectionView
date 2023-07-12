//
//  CollectionViewCell.swift
//  FlexibleCollectionView
//
//  Created by Арсентий Халимовский on 12.07.2023.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    var titleLabel: UILabel = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func layoutSubviews() {
        setupUI()
    }
}

// MARK: - UI Setup
extension CollectionViewCell {
    
    private func setupUI() {
        
        titleLabel.font = UIFont(name: "HelveticaNeue", size: 20)
        titleLabel.textColor = .white
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.backgroundColor = .systemGreen
        titleLabel.textAlignment = .center
        
        addSubview(titleLabel)
        
        titleLabel.snp.makeConstraints {
            $0.centerX.centerY.equalToSuperview()
            $0.height.equalTo(60)
            $0.width.equalTo(100)
        }
    }
}
