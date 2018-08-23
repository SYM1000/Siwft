//
//  FirstViewController.swift
//  To Do - App
//
//  Created by Santiago Yeomans on 21/10/17.
//  Copyright © 2017 Santiago Yeomans. All rights reserved.
//

import UIKit

var List = ["Comprar leche 🥛", "Pasear al perro 🐕", "Llamar a Juanito 🙍‍♂️", "Hechar gasolina 🚗"]



class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{

    @IBOutlet weak var myTableViw: UITableView!
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
       return (List.count)
    }

    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    
    {
        let cell = UITableViewCell (style: UITableViewCellStyle.default, reuseIdentifier: "cell")
        cell.textLabel?.text = List[indexPath.row]
        
        
        return(cell)
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath)
    {
        if editingStyle == UITableViewCellEditingStyle.delete
        {
            List.remove(at: indexPath.row)
            myTableViw.reloadData()
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        myTableViw.reloadData()
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

