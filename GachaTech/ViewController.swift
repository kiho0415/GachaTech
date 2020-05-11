//
//  ViewController.swift
//  GachaTech
//
//  Created by 森田貴帆 on 2020/05/08.
//  Copyright © 2020 森田貴帆. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func gacha(){
        self.performSegue(withIdentifier: "result", sender: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       
        
    }


}

