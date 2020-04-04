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
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if let identifier = segue.identifier{
            if let url = DemoURLs.NASA[identifier]{
                if let imageVC = segue.destination as? ImageViewController{
                    imageVC.imageURL = url
                    imageVC.title = (sender as? UIButton)?.currentTitle
                }
            }
        }
        
    }
    

}
