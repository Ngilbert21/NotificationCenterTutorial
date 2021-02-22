//
//  SecondViewController.swift
//  NotificationCenterTutorial
//
//  Created by Nicholas Gilbert on 2/22/21.
//  Copyright © 2021 Nicholas Gilbert. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
   let redKey = "notificationRed"
   let greenKey = "notificationGreen"
   let yellowKey = "notificationYellow"
   let orangeKey = "notificationOrange"
   let blackKey = "notificationBlack"
    

    override func viewDidLoad() {
        
        
        
        
        
        super.viewDidLoad()
        
        

        // Do any additional setup after loading the view.
    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    @IBAction func colorDidTap(_ sender: UIButton) {
      switch sender.tag {
      case 0:
        NotificationCenter.default.post(name: Notification.Name(rawValue: redKey), object: nil, userInfo: ["tag": sender.tag])
      case 1:
        NotificationCenter.default.post(name: Notification.Name(rawValue: greenKey), object: nil, userInfo: ["tag": sender.tag])
      case 2:
        NotificationCenter.default.post(name: Notification.Name(rawValue: yellowKey), object: nil, userInfo: ["tag": sender.tag])
      case 3:
        NotificationCenter.default.post(name: Notification.Name(rawValue: orangeKey), object: nil, userInfo: ["tag": sender.tag])
      case 4:
        NotificationCenter.default.post(name: Notification.Name(rawValue: blackKey), object: nil, userInfo: ["tag": sender.tag])
      default:
        break
      }
      self.navigationController?.popViewController(animated: true)
    }
     

    
}
