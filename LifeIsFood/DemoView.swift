//
//  DemoView.swift
//  LifeIsFood
//
//  Created by 福島大稀 on 2021/02/16.
//

import UIKit

class DemoView: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        loadNib()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        loadNib()
    }
    
//    private func loadNib() {
//        let nib = UINib(nibName: "DemoView", bundle: nil)
//        guard let view = nib.instantiate(withOwner: self, options: nil).first as? UIView else { return }
//            self.addSubview(view)
//    }
    
    func loadNib() {
        let view = Bundle.main.loadNibNamed("DemoView", owner: self, options: nil)?.first as! UIView
        view.frame = self.bounds
        self.addSubview(view)
    }

//    private func loadNib() {
//        if let view = Bundle.main.loadNibNamed(String(describing: type(of: self)), owner: self)?.first as? UIView {
//            view.frame = self.bounds
//            self.addSubview(view)
//        }
//    }
}
