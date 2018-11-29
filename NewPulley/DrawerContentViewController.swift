//
//  ViewControllerWithButton.swift
//  NewPulley
//
//  Created by Luiz Fernando França on 27/11/18.
//  Copyright © 2018 Luiz Fernando França. All rights reserved.
//

import UIKit

class ViewControllerWithButton: UIViewController {
    
    let tableView: UITableView = {
        let tb = UITableView()
        tb.backgroundColor = .red
        return tb
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    private func addButon() {
        let buttonWidth: CGFloat = 150
        let buttonHeight: CGFloat = 20
        let frame = CGRect(x: (view.frame.width-buttonWidth)/2, y: (view.frame.height-buttonHeight)/2, width: buttonWidth, height: buttonHeight)
        let table = UITableView(frame: frame)
        view.addSubview(table)
    }
    
    override func viewWillLayoutSubviews() {
        addButon()
    }
    
    @objc func buttonTapped() {
        print("Button tapped in \(self)")
    }
}
