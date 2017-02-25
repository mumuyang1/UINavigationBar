//
//  ViewController.swift
//  UINavigationBar
//
//  Created by Yanzi Li on 2/25/17.
//  Copyright © 2017 Yanzi Li. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var blueView: UIView!
  
  let padding: CGFloat = 20.0
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    navigationItem.title = "我是不是红色呀"
    navigationController?.navigationBar.barTintColor = UIColor.red
    addBlueView()
  }
  
  func addBlueView() {
    blueView.translatesAutoresizingMaskIntoConstraints = false
    blueView.topAnchor.constraint(equalTo: topLayoutGuide.bottomAnchor, constant: padding).isActive = true
    blueView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: padding).isActive = true
    blueView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -padding).isActive =  true
    blueView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -padding).isActive = true
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
}
