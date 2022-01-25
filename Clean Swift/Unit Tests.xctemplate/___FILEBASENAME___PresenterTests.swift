//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//
//

@testable import ___PROJECTNAMEASIDENTIFIER___
import XCTest

class ___VARIABLE_sceneName___PresenterTests: XCTestCase {

    // MARK: - Subject under test

    var sut: ___VARIABLE_sceneName___Presenter!
    var viewController: ___VARIABLE_sceneName___ViewControllerSpy!

    // MARK: - Test lifecycle

    override func setUp() {
        super.setUp()
        setup___VARIABLE_sceneName___Presenter()
    }

    override func tearDown() {
        super.tearDown()
    }

    // MARK: - Test setup

    func setup___VARIABLE_sceneName___Presenter() {
        viewController = ___VARIABLE_sceneName___ViewControllerSpy()
        sut = ___VARIABLE_sceneName___Presenter(viewController: viewController)
    }

    // MARK: - Test doubles

    class ___VARIABLE_sceneName___ViewControllerSpy: ___VARIABLE_sceneName___Displaying {

        var displayCalled = false
        var displayErrorCalled = false

        func display(viewModel: ___VARIABLE_sceneName___.ViewModel) {
            switch viewModel {
            case .presentData:
                displayCalled = true
            case .presentError:
                displayErrorCalled = true
            }
        }
    }

    // MARK: - Tests

    func testPresentSomething() {
        // Given
        let response = ___VARIABLE_sceneName___.Response.data([""])

        // When
        sut.present(response: response)

        // Then
        XCTAssertTrue(viewController.displayCalled, "present(response:) should ask the view controller to display the result")
    }
}
