//
//  ViewController.swift
//  Demo01TableView
//
//  Created by Aditya Sharma on 9/4/18.
//  Copyright © 2018 AdityaSharma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var demoTableView: UITableView!
    
    internal let nameArray = ["Joseph", "Mike", "Joe", "John" , "Mark", "Peter", "Ivana", "Angelina", "Tamana"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController : UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nameArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as!  TableViewCell
        cell.titleLabel.text = nameArray[indexPath.row]
        cell.selectionStyle = .none
        return cell
    }
    
}

extension ViewController : UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let alertView = UIAlertController(title: "Hi", message: "\(nameArray[indexPath.row])", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertView.addAction(okAction)
        self.present(alertView, animated: true, completion: nil)
    }

    
}

