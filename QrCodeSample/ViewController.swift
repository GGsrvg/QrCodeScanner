//
//  ViewController.swift
//  QrCodeSample
//
//  Created by GGsrvg on 18.06.2020.
//  Copyright © 2020 GGsrvg. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var label: UILabel!
    
    @IBAction func GoToScaner(_ sender: Any) {
        navigationController?.show(ScannerViewController(successScan: { text in
            self.label.text = text
        }), sender: nil)
    }
    
    @IBAction func Clear(_ sender: Any) {
        label.text = nil
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

