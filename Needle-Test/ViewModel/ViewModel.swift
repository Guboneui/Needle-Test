//
//  ViewModel.swift
//  Needle-Test
//
//  Created by 구본의 on 2023/03/30.
//

import Foundation

protocol ViewModel {
  var text: String { get }
}

final class RobotViewModel: ViewModel {
  var text: String
  
  init(text: String) {
    self.text = text
  }
}

final class PersonViewModel: ViewModel {
  var text: String
  
  init(text: String) {
    self.text = text
  }
}
