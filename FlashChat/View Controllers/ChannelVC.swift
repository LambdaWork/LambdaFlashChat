//
//  ChannelVC.swift
//  FlashChat
//
//  Created by Seschwan on 9/6/19.
//  Copyright © 2019 Seschwan. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {
    
    // Outlets:
    @IBOutlet weak var channelVCBGImageView: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        styleSetup()
        
    }
    
    // MARK: - Styling
    func styleSetup() {
        channelVCBGImageView.alpha = 0.7
    }

    

}
