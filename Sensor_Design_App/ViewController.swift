//
//  ViewController.swift
//  Sensor_Design_App
//
//  Created by Zifan Wang on 4/18/18.
//  Copyright © 2018 Zifan Wang. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    let pdf = "Installation Guide"
    
    // Action to installation guide display
    @IBAction func To_Installation_Guide(_ sender: Any) {
        // performSegue(withIdentifier: "segue_to_installation", sender: self)
        if let url = Bundle.main.url(forResource: pdf, withExtension: "pdf") {
            let webView = UIWebView(frame: self.view.frame)
            let urlRequest = URLRequest(url: url)
            webView.loadRequest(urlRequest as URLRequest)
            //self.view.addSubview(webView)
            let pdfVC = UIViewController()
            pdfVC.view.addSubview(webView)
            pdfVC.title = pdf
            self.navigationController?.pushViewController(pdfVC, animated: true)
        }
    }
    
    // Action to room list
    @IBAction func To_Room_List(_ sender: Any) {
        performSegue(withIdentifier: "segue_to_room_list", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

