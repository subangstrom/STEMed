//
//  ViewController.swift
//  STEMed
//
//  Created by James LeBeau on 9/14/17.
//  Copyright © 2017 The LeBeau Group. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    

    @IBAction func loadFromFile(_ sender: Any) {
        
        let openPanel = NSOpenPanel()
        openPanel.allowsMultipleSelection = false
        openPanel.canChooseDirectories = false
        openPanel.canCreateDirectories = false
        openPanel.canChooseFiles = true
        
        openPanel.begin(completionHandler:  { (result) -> Void in
            if result == NSFileHandlingPanelOKButton {
               let theDataset = NSData.init(contentsOf: openPanel.url!)
                
            }
        })

        
    }


}

