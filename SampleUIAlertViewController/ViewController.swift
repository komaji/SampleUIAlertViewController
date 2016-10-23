//
//  ViewController.swift
//  SampleUIAlertViewController
//
//  Created by KojimaTatsuya on 2016/10/24.
//  Copyright © 2016年 komaji. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let defaultAction = UIAlertAction(title: "Default",
                                      style: .default,
                                      handler: { action in
                                        print("Default")
    })
    
    let defaultAction2 = UIAlertAction(title: "Default2",
                                       style: .default,
                                       handler: { action in
                                        print("Default2")
    })
    
    let destructiveAction = UIAlertAction(title: "Destructive",
                                          style: .destructive,
                                          handler: { action in
                                            print("Destructive")
    })
    
    let destructiveAction2 = UIAlertAction(title: "Destructive2",
                                          style: .destructive,
                                          handler: { action in
                                            print("Destructive2")
    })
    
    let cancelAction = UIAlertAction(title: "Cancel",
                                     style: .cancel,
                                     handler: { action in
                                        print("Cancel")
    })
    
    let cancelAction2 = UIAlertAction(title: "Cancel2",
                                     style: .cancel,
                                     handler: { action in
                                        print("Cancel2")
    })
    
    @IBAction func alertButtonDidTap(_ sender: UIButton) {
        let alert = UIAlertController(title: "Alert",
                                      message: "Alert Message",
                                      preferredStyle: .alert
        )
    
        alert.addAction(defaultAction)
        alert.addAction(defaultAction2)
        alert.addAction(destructiveAction)
        alert.addAction(destructiveAction2)
        alert.addAction(cancelAction)
        
        // キャンセルを2つ追加するとクラッシュする
        //  alert.addAction(cancelAction2)
        
        present(alert, animated: true, completion: nil)
    }

    @IBAction func actionSheetButtonDidTap(_ sender: UIButton) {
        let actionSheet = UIAlertController(title: "Action Sheet",
                                      message: "Action Sheet Message",
                                      preferredStyle: .actionSheet
        )
        
        actionSheet.addAction(defaultAction)
        actionSheet.addAction(defaultAction2)
        actionSheet.addAction(destructiveAction)
        actionSheet.addAction(destructiveAction2)
        actionSheet.addAction(cancelAction)
        
        // キャンセルを2つ追加するとクラッシュする
        // actionSheet.addAction(cancelAction2)
        
        present(actionSheet, animated: true, completion: nil)
    }

}

