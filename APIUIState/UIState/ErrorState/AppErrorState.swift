//
//  ErrorState.swift
//  APIUIState
//
//  Created by PropertyShare on 28/09/24.
//

import Foundation
import UIKit

class AppErrorState: UIView{
    private let nibName = "AppErrorState"
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        print("Loading \(nibName)")
        
        let nib = UINib(nibName: nibName, bundle: nil)
        let view = nib.instantiate(withOwner: self, options: nil).first as! UIView
        view.frame = self.bounds
        view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        self.addSubview(view)
    }
}
