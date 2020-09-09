//
//  detailViewController.swift
//  manySegue
//
//  Created by Yida on 2020/9/8.
//  Copyright © 2020 Yida. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var detail:Detail!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var textView: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imageView.image = UIImage(named: detail.imageName)
        textView.text = detail.info
    }
    
}
