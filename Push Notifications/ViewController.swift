//
//  ViewController.swift
//  Push Notifications
//
//  Created by Jair Moreno Gaspar on 17/10/18.
//  Copyright © 2018 Jair Moreno Gaspar. All rights reserved.
//  🧟‍♂️𝕵𝕬𝕴𝕽

import UIKit
import Crashlytics

class ViewController: UIViewController {

    
    let botonCrashlytics: UIButton = UIButton()
    let botonTrackKeyMetric: UIButton = UIButton()
    var ancho: CGFloat = CGFloat()
    var alto: CGFloat = CGFloat()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ancho = self.view.frame.width
        alto = self.view.frame.height
        
        self.view.backgroundColor = UIColor.white
        
        botonCrashlytics.backgroundColor = UIColor.blue
        botonCrashlytics.setTitle("Crashlytics", for: .normal)
        botonCrashlytics.setTitleColor(UIColor.white, for: .normal)
        botonCrashlytics.frame = CGRect(x: ancho * 0.3, y: alto * 0.3, width: ancho * 0.4, height: alto * 0.1)
        botonCrashlytics.addTarget(self, action: #selector(self.enviarReporteCrashlytics), for: .touchUpInside)
        
        
        botonTrackKeyMetric.backgroundColor = UIColor.red
        botonTrackKeyMetric.setTitle("keyMetric", for: .normal)
        botonTrackKeyMetric.setTitleColor(UIColor.white, for: .normal)
        botonTrackKeyMetric.frame = CGRect(x: ancho * 0.3, y: alto * 0.5, width: ancho * 0.4, height: alto * 0.1)
        botonTrackKeyMetric.addTarget(self, action: #selector(self.importantUserAction), for: .touchUpInside)
        
        self.view.addSubview(botonTrackKeyMetric)
        self.view.addSubview(botonCrashlytics)
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc func importantUserAction(){
         Answers.logCustomEvent(withName: "Video Played", customAttributes: ["Category":"Comedy", "Length":350])
    }
    
    @objc func enviarReporteCrashlytics(){
        
        
        
        print("")
        
        
        
        var jair = [""]
        print(jair[2])
        
    }
    
    
    
 

}

