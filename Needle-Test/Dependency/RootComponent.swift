//
//  RootComponent.swift
//  Needle-Test
//
//  Created by 구본의 on 2023/03/30.
//

import UIKit
import NeedleFoundation

final class RootComponent: BootstrapComponent {
  var prefixTitle: String { "당신은... " }
  var someProperty: String { "어떤 프로퍼티" }
  
  var rootViewController: UIViewController {
    ViewController(
      robot: robotComponent,
      person: personComponent
    )
  }
  
  var robotComponent: RobotComponent {
    RobotComponent(parent: self)
  }
  
  var personComponent: PersonComponent {
    PersonComponent(parent: self)
  }
}
