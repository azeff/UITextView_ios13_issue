//
//  ViewController.swift
//  TextViewDismiss
//
//  Created by Eugene Kazakov on 23/10/2019.
//  Copyright © 2019 Eugene Kazakov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func onOpenControllerWithBug() {
        let controller = TextViewWithBugController()
        present(controller, animated: true, completion: nil)
    }

    @IBAction func onOpenControllerWithoutBug() {
        let controller = TextViewWithoutBugController()
        present(controller, animated: true, completion: nil)
    }
}

