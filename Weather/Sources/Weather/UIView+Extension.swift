//
//  UIView+Extension.swift
//  
//
//  Created by 문효재 on 2022/06/06.
//
import UIKit

// MARK: - UIView Extension
extension UIView {
  func addSubview(_ views: [UIView]) {
    views.forEach { self.addSubview($0) }
  }
}

extension UIStackView {
  func addArrangedSubview(_ views: [UIView]) {
    views.forEach { self.addArrangedSubview($0) }
  }
}
