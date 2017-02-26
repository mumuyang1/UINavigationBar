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
   
    //set bar title and title color
    navigationItem.title = "我是不是红色呀"
    navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.red]
    
    //set bar color
    navigationController?.navigationBar.barTintColor = UIColor.yellow
    
//    navigationController?.navigationBar.isTranslucent = false
    
    addBlueView()
  }
  
  // modify statusbar style 1. set `View controller-based status bar appearance` to NO in info.plist
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    UIApplication.shared.statusBarStyle = .lightContent
  }
  
  override func viewWillDisappear(_ animated: Bool) {
    super.viewWillDisappear(animated)
    UIApplication.shared.statusBarStyle = .default
  }
  
  func addBlueView() {
    blueView.translatesAutoresizingMaskIntoConstraints = false
    blueView.topAnchor.constraint(equalTo: topLayoutGuide.bottomAnchor, constant: padding).isActive = true
    blueView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: padding).isActive = true
    blueView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -padding).isActive =  true
    blueView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -padding).isActive = true
  }

  override func willTransition(to newCollection: UITraitCollection, with coordinator: UIViewControllerTransitionCoordinator) {
 
    coordinator.animate(alongsideTransition: { _ in
        if newCollection.verticalSizeClass == .compact {
          self.navigationController?.navigationBar.alpha = 0.0
        }
      })
  }
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    let item = UIBarButtonItem(title: "自定义", style: .plain, target: self, action: #selector(self.navigationController?.popViewController))
    
    item.setTitleTextAttributes([NSFontAttributeName: UIFont(name: "Helvetica-Bold", size: 23)!], for: .normal)
    
    navigationItem.backBarButtonItem = item
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
}
