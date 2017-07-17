//
//  BaseCell.swift
//  Audible
//
//  Created by Amar Bhatia on 7/16/17.
//  Copyright © 2017 AmarBhatia. All rights reserved.
//

import UIKit

class BaseCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViews() {
        
    }
}
