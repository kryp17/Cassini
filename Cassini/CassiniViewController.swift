//
//  CassiniViewController.swift
//  Cassini
//
//  Created by krupakhar gandeepan on 04/04/20.
//  Copyright © 2020 krupakhar. All rights reserved.
//

import UIKit

class CassiniViewController: UIViewController {

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let identifier = segue.identifier{
            if let url = DemoURLs.NASA[identifier]{
                if let imageVC = segue.destination.contents as? ImageViewController{
                    imageVC.imageURL = url
                    imageVC.title = (sender as? UIButton)?.currentTitle
                }
            }
        }
        
    }
}

extension UIViewController{
    var contents: UIViewController{
        if let navcon = self as? UINavigationController{
            return navcon.visibleViewController ?? self
        } else{
            return self
        }
    }
    
}
