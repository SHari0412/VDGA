//
//  GiftMessageViewController.swift
//  VGift
//
//  Created by Aruna Srinivasalu on 7/10/18.
//  Copyright © 2018 Aruna Srinivasalu. All rights reserved.
//

import UIKit

class GiftMessageViewController: UIViewController {

    var giftCardSendController: GiftCardSendController!
    
    
    @IBOutlet weak var giftMessage: UITextView!
    @IBOutlet weak var selectedImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Gift Card Message"
        
        giftMessage.text = giftCardSendController.sendGift.giftMessage!
        selectedImage.image = UIImage(named: giftCardSendController.sendGift.giftCardImage!)
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        giftCardSendController.sendGift.giftMessage = giftMessage.text
        
        
        if let destination = segue.destination as? FundingViewController {
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
