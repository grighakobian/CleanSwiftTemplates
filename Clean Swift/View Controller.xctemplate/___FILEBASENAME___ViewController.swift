//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//
//

import UIKit

protocol ___VARIABLE_sceneName___Displaying: AnyObject {
    func display(viewModel: ___VARIABLE_sceneName___.ViewModel)
}

final class ___VARIABLE_sceneName___ViewController: ___VARIABLE_viewControllerSubclass___ {

    var interactor: ___VARIABLE_sceneName___Interaction!
    var router: (___VARIABLE_sceneName___Routing & ___VARIABLE_sceneName___DataPassing)!

    // MARK: - View lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        
        interactor.process(request: .viewDidLoad)
    }
}

// MARK: - Displaying

extension ___VARIABLE_sceneName___ViewController: ___VARIABLE_sceneName___Displaying {

    func display(viewModel: ___VARIABLE_sceneName___.ViewModel) {
        //...
    }
}
