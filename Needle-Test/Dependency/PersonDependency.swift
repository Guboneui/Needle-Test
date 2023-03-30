//
//  PersonDependency.swift
//  Needle-Test
//
//  Created by 구본의 on 2023/03/30.
//

import UIKit
import NeedleFoundation

protocol PersonDependency: Dependency {
  var prefixTitle: String { get }
  var someProperty: String { get }
}

final class PersonComponent: Component<PersonDependency> {
  var personViewController: UIViewController {
    DetailViewController(viewModel: viewModel)
  }
  
  var viewModel: ViewModel {
    PersonViewModel(text: "\(dependency.prefixTitle) 사람입니다.")
  }
}
