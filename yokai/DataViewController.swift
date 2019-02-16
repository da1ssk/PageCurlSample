//
//  DataViewController.swift
//  yokai
//
//  Created by 佐々木大地 on 2015/11/21.
//  Copyright © 2015年 Kakumei. All rights reserved.
//

import UIKit

class DataViewController: UIViewController {
	
	@IBOutlet weak var dataLabel: UILabel!
	@IBOutlet weak var dataImageView: UIImageView!
	var dataObject: String = ""
	var imageNameData: String = ""

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}

	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
		self.dataLabel!.text = dataObject
		self.dataImageView!.image = UIImage(named: imageNameData)
	}

	
	@IBAction func viewTapped(_ sender: AnyObject) {
		let r = CGFloat(Float(arc4random()) / Float(UINT32_MAX))
		let g = CGFloat(Float(arc4random()) / Float(UINT32_MAX))
		let b = CGFloat(Float(arc4random()) / Float(UINT32_MAX))
		
		view.backgroundColor = UIColor(red: r, green: g, blue: b, alpha: 1)
	}

}

