//
//  File.swift
//  
//
//  Created by Brandon Stillitano on 25/2/21.
//

import UIKit

class TouchIndicatorView: UIView {
    // MARK: - Static Data
    public var defaultView: TouchIndicatorView = TouchIndicatorView(frame: CGRect(x: 0,
                                                                                  y: 0,
                                                                                  width: 40,
                                                                                  height: 40))
    
    // MARK: - Init
    public override init(frame: CGRect) {
        super.init(frame: frame)

        //Setup Interface
        setupUI()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI() {
        backgroundColor = UIColor(red: 0.8,
                                  green: 0.8,
                                  blue: 0.8,
                                  alpha: 0.7)
        layer.borderColor = UIColor(red: 0.4,
                                    green: 0.4,
                                    blue: 0.4,
                                    alpha: 0.7).cgColor
        layer.borderWidth = 1.0 / UIScreen.main.scale
        layer.zPosition = .greatestFiniteMagnitude
        layer.shadowColor = UIColor.darkGray.cgColor
        layer.shadowOpacity = 0.7
        layer.shadowRadius = 3.0
        layer.shadowOffset = CGSize(width: 4.0, height: 4.0)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        layer.cornerRadius = min(frame.size.width, frame.size.height) / 2
    }
    
}
