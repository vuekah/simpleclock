//
//  ViewController.swift
//  simpleclock
//
//  Created by admin on 25/10/2024.
//

import UIKit

class ViewController: UIViewController {
      

    @IBOutlet weak var txtLabel: UILabel!
    var timer = Timer()

        override func viewDidLoad() {
            super.viewDidLoad()
            getCurrentTime()
        }

        private func getCurrentTime() {
            
            timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector:#selector(self.currentTime), userInfo: nil, repeats: true)
        }

        @objc func currentTime() {
            let formatter = DateFormatter()
            formatter.dateFormat = "hh:mm:ss"
            txtLabel.text = formatter.string(from: Date())
        }
    
}

