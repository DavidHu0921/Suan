//
//  SuanDetailsViewController.swift
//  Suan
//
//  Created by David Hu on 2018/6/2.
//  Copyright © 2018 DavidHu. All rights reserved.
//

import UIKit

class SuanDetailsViewController: UIViewController {
    
    var config:SuanPuzzlesConfig? = nil

    override func viewDidLoad() {
        super.viewDidLoad()

        print("\(String(describing: config))")
    }

    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }

    @IBAction func backBackButtonACtion(_ sender: UIButton) {
        self.dismiss(animated: true) {
            // to do
        }
    }
    
}
