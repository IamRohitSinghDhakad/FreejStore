//
//  ViewController.swift
//  Freejstore
//
//  Created by Rohit SIngh Dhakad on 21/09/23.
//

import UIKit

class ViewController: UIViewController {

    var counter = 3
    var timer:Timer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        self.timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
    }
    
    
    @objc func updateCounter() {
        //example functionality
        if counter > 0 {
            print("\(counter) seconds to the end of the world")
            counter -= 1
        }else{
            self.timer?.invalidate()
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "WebViewViewController")as! WebViewViewController
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    
}
