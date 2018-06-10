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
    
    @IBOutlet weak var divideImageView: UIImageView!
    @IBOutlet weak var divideTitleLabel: UILabel!
    @IBOutlet weak var divideStackView: UIStackView!
    
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
    
    // MARK: - Const
    private let presentSuanDetailSegueID = "presentSuanDetail"
    private var isPlusSelected:Bool = false
    private var isMinusSelected:Bool = false
    private var isMultiSelected:Bool = false
    private var isDivideSelected:Bool = false
    
    // MARK: - ViewController Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initViews()
    }
    
    func initViews() {
        self.suanButton.layer.cornerRadius = 20.0
        
        self.plusImageView.layer.cornerRadius = 4.0
        self.minusImageView.layer.cornerRadius = 4.0
        self.multiplyImageView.layer.cornerRadius = 4.0
        self.divideImageView.layer.cornerRadius = 4.0
        
        let tapPlus:UITapGestureRecognizer = UITapGestureRecognizer.init(target: self,
                                                                         action: #selector(tapOnPlus(gesture:)))
        let tapMinus:UITapGestureRecognizer = UITapGestureRecognizer.init(target: self,
                                                                          action: #selector(tapOnMinus(gesture:)))
        let tapMultiply:UITapGestureRecognizer = UITapGestureRecognizer.init(target: self,
                                                                             action: #selector(tapOnMultiply(gesture:)))
        let tapDivide:UITapGestureRecognizer = UITapGestureRecognizer.init(target: self,
                                                                           action: #selector(tapOnDivide(gesture:)))
        
        self.plusStackView.addGestureRecognizer(tapPlus)
        self.minusStackView.addGestureRecognizer(tapMinus)
        self.multiplyStackView.addGestureRecognizer(tapMultiply)
        self.divideStackView.addGestureRecognizer(tapDivide)
    }

    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if segue.identifier == presentSuanDetailSegueID {
            if let detail:SuanDetailsViewController = segue.destination as? SuanDetailsViewController {
                detail.config = sender as? SuanPuzzlesConfig
            }
        }
    }
    
    // MARK: - IBAction
    @IBAction func timeSilderAction(_ sender: UISlider) {
        let value = Int(sender.value)
        self.timeNumberLabel.text = "\(value)"
    }
    
    @IBAction func puzzlesSilderAction(_ sender: UISlider) {
        let value = Int(sender.value)
        self.puzzlesNumberLabel.text = "\(value)"
    }
    
    @IBAction func suanButtonAction(_ sender: UIButton) {
        let segueSender = self.generateSegueSender()
        self.performSegue(withIdentifier: presentSuanDetailSegueID, sender: segueSender)
    }
    
    // MARK: - Tap Gesture
    @objc func tapOnPlus(gesture: UITapGestureRecognizer) {
        if self.isPlusSelected {
            self.isPlusSelected = false
            self.plusImageView.backgroundColor = UIColor.lightGray
        } else {
            self.isPlusSelected = true
            self.plusImageView.backgroundColor = UIColor.lightGray
        }
    }
    @objc func tapOnMinus(gesture: UITapGestureRecognizer) {
        if self.isMinusSelected {
            
        } else {
            
        }
    }
    @objc func tapOnMultiply(gesture: UITapGestureRecognizer) {
        if self.isMultiSelected {
            
        } else {
            
        }
    }
    @objc func tapOnDivide(gesture: UITapGestureRecognizer) {
        if self.isDivideSelected {
            
        } else {
            
        }
    }
}

// MARK: - self extension
extension SuanConfigViewController {
    func generateSegueSender() -> SuanPuzzlesConfig {
        let max = self.maxDigitSegmentedControl.selectedSegmentIndex + 1
        let timeValue = Int(self.timeSilder.value)
        let puzzleNum = Int(self.puzzlesSilder.value)
        var calArr:[calculatingSigns] = []
        
        if self.isPlusSelected {
            calArr.append(calculatingSigns.plus)
        }
        
        if self.isMinusSelected {
            calArr.append(calculatingSigns.minus)
        }
        
        if self.isMultiSelected {
            calArr.append(calculatingSigns.multiply)
        }
        
        if self.isDivideSelected {
            calArr.append(calculatingSigns.divide)
        }
        
        let config = SuanPuzzlesConfig.init(maxDigit: max,
                                            calculations: calArr,
                                            timeLimit: timeValue,
                                            puzzlesNumber: puzzleNum)
        
        return config
    }
}






