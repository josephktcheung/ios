//
//  DetailsViewController.swift
//  altitudelabs-ios
//
//  Created by Joseph Cheung on 15/11/14.
//  Copyright (c) 2014 josephktcheung. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func imagePressed(sender: UIButton) {
        let alertController = UIAlertController(title: "Hello World", message: nil, preferredStyle: .Alert)
        let cancelAction = UIAlertAction(title: "OK", style: .Cancel, handler: nil)
        alertController.addAction(cancelAction)
        presentViewController(alertController, animated: true, completion: nil)
    }

    @IBAction func backButtonPressed(sender: UIButton) {
        dismissViewControllerAnimated(true, completion: nil)
    }
}
