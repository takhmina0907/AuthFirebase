//
//  info.swift
//  tableview
//
//  Created by Takhmina Talipova on 8/4/18.
//  Copyright © 2018 Takhmina Talipova. All rights reserved.
//

import Foundation
import UIKit

struct Info {
    var infoTitle: String
    var infoDescription: String
    var infoImage: UIImage!
    
    init (infoTitle: String, infoDescription: String, infoImage: UIImage!){
        self.infoTitle = infoTitle
        self.infoDescription = infoDescription
        self.infoImage = infoImage
    }
}
