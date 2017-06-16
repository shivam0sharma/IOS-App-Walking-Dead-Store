//
//  ViewController.swift
//  Walking Dead Store
//
//  Created by Shivam Sharma on 6/16/17.
//  Copyright © 2017 ShivamSharma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    
    let WIDTH: CGFloat = 271
    let HEIGHT: CGFloat = 428
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for x in 1...5 {
            let image = UIImage(named: "\(x)")
            let imageView = UIImageView(image: image)
            
            scrollView.addSubview(imageView)
            
            imageView.frame = CGRect(x: -WIDTH + (WIDTH * CGFloat(x)), y: 320, width: WIDTH, height: HEIGHT)
            
            scrollView.contentSize = CGSize(width: WIDTH * 5, height: scrollView.frame.size.height)
        }
    }

}

