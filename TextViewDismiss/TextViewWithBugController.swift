//
//  TextViewController.swift
//  TextViewDismiss
//
//  Created by Eugene Kazakov on 23/10/2019.
//  Copyright © 2019 Eugene Kazakov. All rights reserved.
//

import UIKit

class TextViewWithBugController: UIViewController {
    
    let textView = UITextView()
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        
        view.backgroundColor = .white
        view.addSubview(textView)
        
        textView.attributedText = makeAttributedString("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ")

        let tapRecognizer = UITapGestureRecognizer(target: self, action: #selector(didTap))
        textView.addGestureRecognizer(tapRecognizer)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        textView.frame = view.safeAreaLayoutGuide.layoutFrame
    }
    
    @objc
    private func didTap() {
        dismiss(animated: true, completion: nil)
    }

    private func makeAttributedString(_ text: String) -> NSAttributedString {
        return NSAttributedString(string: text,
                                  attributes: [
                                    NSAttributedString.Key.foregroundColor: UIColor.black,
                                    NSAttributedString.Key.font: UIFont.preferredFont(forTextStyle: .body)
        ])
    }

}
