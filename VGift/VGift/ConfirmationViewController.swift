//
//  ConfirmationViewController.swift
//  VGift
//
//  Created by Aruna Srinivasalu on 7/10/18.
//  Copyright © 2018 Aruna Srinivasalu. All rights reserved.
//

import UIKit

class ConfirmationViewController: UIViewController {

    @IBOutlet weak var confirmationMessage: UILabel!
    @IBOutlet weak var giftSent: UIImageView!
    var giftCardSendController: GiftCardSendController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Gift Card Sent!"
        // Do any additional setup after loading the view.
        self.navigationItem.hidesBackButton = true
        
        giftSent.image = UIImage(named: giftCardSendController.sendGift.giftCardImage!)
        
        confirmationMessage.text = "Congratulations! Your Gift card for $\(giftCardSendController.sendGift.giftAmount!) was succesfully sent to \(giftCardSendController.sendGift.receiverName!)."
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
