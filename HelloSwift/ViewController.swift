//
//  ViewController.swift
//  HelloSwift
//
//  Created by 修敏傑 on 8/9/15.
//  Copyright (c) 2015 NTU. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var userDefineModel : UserDefineModel?
    @IBOutlet var userDefineButton: UserDefineButton!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var levelLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        
        userDefineModel = UserDefineModel()
        NSNotificationCenter.defaultCenter().addObserver(self, selector: Selector("updateUILabels"), name: "objectUpdated", object: nil)
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func updateUILabels()
    {
        nameLabel.text = userDefineModel!.currenName
        levelLabel.text = userDefineModel!.level.rawValue
    }

}

