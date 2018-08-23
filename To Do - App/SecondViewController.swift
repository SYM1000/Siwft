//
//  SecondViewController.swift
//  To Do - App
//
//  Created by Santiago Yeomans on 21/10/17.
//  Copyright © 2017 Santiago Yeomans. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var mainBoton: UIButton!
    
    @IBOutlet weak var Input: UITextField!
    

    @IBAction func additem(_ sender: Any) {
        
        if (Input.text != "")
        {
            List.append(Input.text!)
            Input.text = ""
            
        }
        
        
    }

    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Codigo para corner del boton azul
        mainBoton.layer.cornerRadius = 5
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

