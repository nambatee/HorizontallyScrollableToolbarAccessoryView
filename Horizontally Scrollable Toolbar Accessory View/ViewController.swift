//
//  ViewController.swift
//  Horizontally Scrollable Toolbar Accessory View
//
//  Created by Natalia Harateh on 11/17/18.
//  Copyright © 2018 Natalia Harateh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textView: UITextView!

    private lazy var horizontallyScrollableToolbarAccessoryView: UIView? = {
        let nibName = "HorizontallyScrollableToolbarAccessoryView"
        let view = Bundle.main.loadNibNamed(nibName, owner: nil, options: nil)?.first as? UIView
        return view
    }()

    override var inputAccessoryView: UIView? {
        assert(horizontallyScrollableToolbarAccessoryView != nil)
        return horizontallyScrollableToolbarAccessoryView
    }

    override var canBecomeFirstResponder: Bool {
        return true
    }

    @IBAction private func dismissKeyboardButtonPressed(_ sender: UIButton) {
        textView.resignFirstResponder()
        becomeFirstResponder()
    }

}

