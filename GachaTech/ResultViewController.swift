//
//  ResultViewController.swift
//  GachaTech
//
//  Created by 森田貴帆 on 2020/05/08.
//  Copyright © 2020 森田貴帆. All rights reserved.
//

import UIKit

class ResultViewController: UITabBarController {

    @IBOutlet var haikeiImageView: UIImageView!
    @IBOutlet var monsterImageView: UIImageView!
    @IBAction func back(){
       self.dismiss(animated: true, completion: nil)
   }
    //モンスターを保存する配列
    var monsterArray: [UIImage]!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //09の間で乱数を発生させる
        let number = Int.random(in: 0..<10)
        monsterArray = [UIImage(named:"monster001.png")!,
                        UIImage(named:"monster002.png")!,
                        UIImage(named:"monster003.png")!,
                        UIImage(named:"monster004.png")!,
                        UIImage(named:"monster005.png")!,
                        UIImage(named:"monster006.png")!,
                        UIImage(named:"monster007.png")!,
                        UIImage(named:"monster008.png")!,
                        UIImage(named:"monster009.png")!,
                        UIImage(named:"monster010.png")!]
        //選んだモンスターを表示
       monsterImageView.image = monsterArray[number]
        //背景の切り替え
        if number == 9{
            haikeiImageView.image = UIImage(named: "bg_gold@2x.png")
        }else if number > 6{
            haikeiImageView.image = UIImage(named: "bg_red@2x.png")
        }else{
            haikeiImageView.image = UIImage(named: "bg_blue@2x.png")
        }
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
