//
//  FundingViewController.swift
//  VGift
//
//  Created by Aruna Srinivasalu on 7/10/18.
//  Copyright © 2018 Aruna Srinivasalu. All rights reserved.
//

import UIKit

class FundingViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    var giftCardSendController: GiftCardSendController!
    
    let fundingTypes = ["Credit card/Debit card","Bank account"]
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    @IBOutlet weak var achFunding: UIStackView!
    @IBOutlet weak var ccFunding: UIStackView!
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return fundingTypes.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return fundingTypes[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        switch row {
        case 0:
            ccFunding.isHidden = false
            achFunding.isHidden = true
        case 1:
            ccFunding.isHidden = true
            achFunding.isHidden = false
        default:
            print("default")  
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Fund the Gift Card"
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? ConfirmationViewController {
            destination.giftCardSendController = giftCardSendController
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
