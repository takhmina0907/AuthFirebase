//
//  InfoDetailViewController.swift
//  tableview
//
//  Created by Takhmina Talipova on 8/4/18.
//  Copyright © 2018 Takhmina Talipova. All rights reserved.
//

import UIKit

class InfoDetailViewController: UIViewController {

    @IBOutlet weak var infoScrollView: UIScrollView!
    @IBOutlet weak var infodetailImage: UIImageView!
    
    @IBOutlet weak var infodetailTitle: UILabel!
    
    @IBOutlet weak var infodetailDesc: UILabel!
    
    var infoDetailImage = UIImage()
    var infoDetailTitle =  " "
    var infoDetailDesc = " "
    
    override func viewDidLoad() {
        super.viewDidLoad()

        infodetailImage.image = infoDetailImage
        infodetailDesc.text = infoDetailDesc
        infodetailTitle.text = infoDetailTitle
        
        infodetailTitle.numberOfLines = 4
        infodetailDesc.numberOfLines = 10000
        
    }

   

}
