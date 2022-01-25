//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//
//

import UIKit

protocol ___VARIABLE_sceneName___Presentation: AnyObject {
    func present(response: ___VARIABLE_sceneName___.Response)
}

final class ___VARIABLE_sceneName___Presenter {

    private weak var viewController: ___VARIABLE_sceneName___Displaying?
    
    init(viewController: ___VARIABLE_sceneName___Displaying) {
        self.viewController = viewController
    }
}

// MARK: - Presentation

extension ___VARIABLE_sceneName___Presenter: ___VARIABLE_sceneName___Presentation {

    func present(response: ___VARIABLE_sceneName___.Response) {
        switch response {
        case .failure(let error):
            viewController?.display(viewModel: .presentError(error))
        case .data(let objects):
            viewController?.display(viewModel: .presentData(objects))
        }
    }
}
