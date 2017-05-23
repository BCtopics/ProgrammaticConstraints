//
//  ViewController.swift
//  ProgrammaticConstraints
//
//  Created by Bradley GIlmore on 5/23/17.
//  Copyright © 2017 Bradley Gilmore. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let topLeftButton = UIButton()
    let topRightButton = UIButton()
    let bottomLeftButton = UIButton()
    let bottomRightButton = UIButton()
    //^^ This creates the four buttons for use

    override func viewDidLoad() {
        super.viewDidLoad()
        
        topLeftButton.backgroundColor = .green
        topRightButton.backgroundColor = .yellow
        bottomLeftButton.backgroundColor = .blue
        bottomRightButton.backgroundColor = .red
        
        topLeftButton.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        topRightButton.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        bottomLeftButton.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        bottomRightButton.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        
        // This is the comparable thing too using IBActions
        
        topLeftButton.addTarget(self, action: #selector(buttonExited(_:)), for: .touchDragExit)
        topRightButton.addTarget(self, action: #selector(buttonExited(_:)), for: .touchDragExit)
        bottomLeftButton.addTarget(self, action: #selector(buttonExited(_:)), for: .touchDragExit)
        bottomRightButton.addTarget(self, action: #selector(buttonExited(_:)), for: .touchDragExit)
        
        view.addSubview(topLeftButton)
        view.addSubview(topRightButton)
        view.addSubview(bottomLeftButton)
        view.addSubview(bottomRightButton)
        //^^ Adds the buttons to the view
        
        setupConstraints()
    }
    
    func buttonTapped() {
        
    }
    
    func buttonExited(_ sender: UIButton) {
        
    }
    
    func setupConstraints() {
        
        topLeftButton.translatesAutoresizingMaskIntoConstraints = false
        topRightButton.translatesAutoresizingMaskIntoConstraints = false
        bottomLeftButton.translatesAutoresizingMaskIntoConstraints = false
        bottomRightButton.translatesAutoresizingMaskIntoConstraints = false
        
        // Height and Width Constraints
        let topButtonWidths = NSLayoutConstraint(item: topLeftButton, attribute: .width, relatedBy: .equal, toItem: topRightButton, attribute: .width, multiplier: 1.0, constant: 0)
        let leftButtonHeights = NSLayoutConstraint(item: topLeftButton, attribute: .height, relatedBy: .equal, toItem: topRightButton, attribute: .height, multiplier: 1.0, constant: 0)
        let bottomButtonWidths = NSLayoutConstraint(item: bottomLeftButton, attribute: .width, relatedBy: .equal, toItem: bottomRightButton, attribute: .width, multiplier: 1.0, constant: 0)
        let rightButtonHeights = NSLayoutConstraint(item: bottomRightButton, attribute: .height, relatedBy: .equal, toItem: topRightButton, attribute: .height, multiplier: 1.0, constant: 0)
        
        view.addConstraints([topButtonWidths, leftButtonHeights, bottomButtonWidths, rightButtonHeights])
        
        // Green Button Constraints (topLeftButtom)
        let topLeftLeadingConstraints = NSLayoutConstraint(item: topLeftButton, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1.0, constant: 0)
        let topLeftTopConstraint = NSLayoutConstraint(item: topLeftButton, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1.0, constant: 0)
        
        // topLeftButton trailing to topRightButton
        let topLeftToTopRightConstraint = NSLayoutConstraint(item: topLeftButton, attribute: .trailing, relatedBy: .equal, toItem: topRightButton, attribute: .leading, multiplier: 1.0, constant: 0)
        
        // topLeftButton bottom to bottomLeftButton top
        let topLeftButtonBottomToBottomleftButtonConstraint = NSLayoutConstraint(item: topLeftButton, attribute: .bottom, relatedBy: .equal, toItem: bottomLeftButton, attribute: .top, multiplier: 1.0, constant: 0)
        
        
        // Yellow Button Constraints (topRightButton)
        let topRightButtonTopConstraint = NSLayoutConstraint(item: topRightButton, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1.0, constant: 0)
        let topRightButtonTrailingConstraint = NSLayoutConstraint(item: topRightButton, attribute: .trailing, relatedBy: .equal, toItem: view, attribute: .trailing, multiplier: 1.0, constant: 0)
        
        // Blue Button Constraints (bottomLeftButton)
        let bottomLeftButtonLeadingConstraint = NSLayoutConstraint(item: bottomLeftButton, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1.0, constant: 0)
        let bottomLeftButtonBottomConstraint = NSLayoutConstraint(item: bottomLeftButton, attribute: .bottom, relatedBy: .equal, toItem: view, attribute: .bottom, multiplier: 1.0, constant: 0)
        
        // bottomLeftButton trailing to bottomRightButton
        let bottomLeftButtonToBottomRightButtonConstraint = NSLayoutConstraint(item: bottomLeftButton, attribute: .trailing, relatedBy: .equal, toItem: bottomRightButton, attribute: .leading, multiplier: 1.0, constant: 0)
        
        // topRightButton to bottomRight
        let topRightBottomToBottomRightTopConstraint = NSLayoutConstraint(item: topRightButton, attribute: .bottom, relatedBy: .equal, toItem: bottomRightButton, attribute: .top, multiplier: 1.0, constant: 0)
        
        // bottomRightButton Constraints
        let bottomRightButtonConstraint = NSLayoutConstraint(item: bottomRightButton, attribute: .bottom, relatedBy: .equal, toItem: view, attribute: .bottom, multiplier: 1.0, constant: 0)
        let bottomRightTrailingConstraint = NSLayoutConstraint(item: bottomRightButton, attribute: .trailing, relatedBy: .equal, toItem: view, attribute: .trailing, multiplier: 1.0, constant: 0)
        
        view.addConstraints([topLeftLeadingConstraints, topLeftTopConstraint, topLeftToTopRightConstraint, topLeftButtonBottomToBottomleftButtonConstraint, topRightButtonTopConstraint, topRightButtonTrailingConstraint, bottomLeftButtonLeadingConstraint, bottomLeftButtonBottomConstraint, bottomLeftButtonToBottomRightButtonConstraint, topRightBottomToBottomRightTopConstraint, bottomRightButtonConstraint, bottomRightTrailingConstraint])
        
    }
    
}

































