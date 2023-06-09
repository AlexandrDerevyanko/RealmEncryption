//
//  FeedViewModel.swift
//  Navigation
//
//  Created by Aleksandr Derevyanko on 17.02.2023.
//

protocol FeedViewModelProtocol: ViewModelProtocol{
    func buttonPressed(viewInput: FeedViewModel.ViewInput)
}

class FeedViewModel: FeedViewModelProtocol {
    
    enum ViewInput {
        case postButtonPressed
        case infoButtonPressed
    }
    
    weak var coordinator: FeedCoordinator?
    private let networkService: NetworkServiceProtocol
    var secretWord = "alpha"
    
    init(networkService: NetworkServiceProtocol) {
        self.networkService = networkService
    }
    
    func buttonPressed(viewInput: ViewInput) {
        switch viewInput {
        case .postButtonPressed:
            coordinator?.pushPostViewController()
        case .infoButtonPressed:
            coordinator?.pushInfoViewController()
        }
    }

    func check(word: String) -> String? {
        return word == secretWord ? word : nil
    }
    
}
