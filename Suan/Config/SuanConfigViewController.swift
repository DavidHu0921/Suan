//
//  SuanConfigViewController.swift
//  Suan
//
//  Created by David Hu on 2018/6/1.
//  Copyright © 2018 DavidHu. All rights reserved.
//

import UIKit

class SuanConfigViewController: UIViewController {
    
    // MARK: - Max Digit
    @IBOutlet weak var maxDigitTitleLabel: UILabel!
    @IBOutlet weak var maxDigitSegmentedControl: UISegmentedControl!
    
    // MARK: - Calculating Signs
    @IBOutlet weak var plusImageView: UIImageView!
    @IBOutlet weak var plusTitleLabel: UILabel!
    @IBOutlet weak var plusStackView: UIStackView!
    
    @IBOutlet weak var minusImageView: UIImageView!
    @IBOutlet weak var minusTitleLabel: UILabel!
    @IBOutlet weak var minusStackView: UIStackView!
    
    @IBOutlet weak var multiplyImageView: UIImageView!
    @IBOutlet weak var multiplyTitleLabel: UILabel!
    @IBOutlet weak var multiplyStackView: UIStackView!
    
    @IBOutlet weak var divdeImageView: UIImageView!
    @IBOutlet weak var divdeTitleLabel: UILabel!
    @IBOutlet weak var divdeStackView: UIStackView!
    
    // MARK: - Time
    @IBOutlet weak var timeTitleLabel: UILabel!
    @IBOutlet weak var timeNumberLabel: UILabel!
    @IBOutlet weak var timeSubLabel: UILabel!
    @IBOutlet weak var timeSilder: UISlider!
    
    // MARK: - Puzzles
    @IBOutlet weak var puzzlesTitleLabel: UILabel!
    @IBOutlet weak var puzzlesNumberLabel: UILabel!
    @IBOutlet weak var puzzlesSilder: UISlider!
    
    // MARK: - SuanButton
    @IBOutlet weak var suanButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initViews()
    }
    
    func initViews() {
        
    }

    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    
    @IBAction func timeSilderAction(_ sender: UISlider) {
        let value = Int(sender.value)
        self.timeNumberLabel.text = "\(value)"
    }
    
    @IBAction func puzzlesSilderAction(_ sender: UISlider) {
        let value = Int(sender.value)
        self.puzzlesNumberLabel.text = "\(value)"
    }
    
    
}
