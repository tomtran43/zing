//
//  ViewController.swift
//  zing
//
//  Created by Loc Tran on 2/8/17.
//  Copyright © 2017 LocTran. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var image_logo: UIImageView!
    @IBOutlet weak var label_text: UILabel!
    @IBOutlet weak var label_name: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        UIView.animate(withDuration: 4, animations: {
            self.image_logo!.alpha = 1}) {(finished) in
                UIView.animate(withDuration: 3, animations: {
                    self.label_text!.center = CGPoint(x: self.image_logo!.center.x,y: 100)
                    self.label_text!.alpha = 1
                }) {(finished) in UIView.animate(withDuration: 3, animations: {self.label_name!.center = CGPoint(x: self.image_logo!.center.x, y:600)
                    self.label_name!.alpha = 1
                })
            }
        }
    }


}

