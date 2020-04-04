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
                var destination = segue.destination
                if let navcon = destination as? UINavigationController{
                    destination = navcon.visibleViewController ?? navcon
                }
                if let imageVC = destination as? ImageViewController{
                    imageVC.imageURL = url
                    imageVC.title = (sender as? UIButton)?.currentTitle
                }
            }
        }
        
    }
    

}
