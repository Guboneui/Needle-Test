//
//  RobotDependency.swift
//  Needle-Test
//
//  Created by 구본의 on 2023/03/30.
//

import UIKit
import NeedleFoundation

protocol RobotDependency: Dependency {
  var prefixTitle: String { get }
}

final class RobotComponent: Component<RobotDependency> {
  var robotViewController: UIViewController {
    DetailViewController(viewModel: viewModel)
  }
  
  var viewModel: ViewModel {
    mutableViewModel
  }
}

extension RobotComponent {
  var mutableViewModel: ViewModel {
    shared { RobotViewModel(text: "\(dependency.prefixTitle) 로봇입니다")}
  }
}
