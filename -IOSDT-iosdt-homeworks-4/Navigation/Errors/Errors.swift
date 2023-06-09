//
//  Error.swift
//  Navigation
//
//  Created by Aleksandr Derevyanko on 07.03.2023.
//

import Foundation

enum AutorizationErrors: Error {
    case emptyPasswordOrEmail
    case invalidPassword
    case weakPassword
    case mismatchPassword
    case notFound
    case emailAlreadyInUse
    case invalidEmail
    case unexpected
}

extension AutorizationErrors: LocalizedError {
    public var errorDescription: String? {
        switch self {
        case .emptyPasswordOrEmail:
            return NSLocalizedString("Похоже, вы оставили поле Email или Password пустым",
                                     comment: "")
        case .invalidPassword:
            return NSLocalizedString("Не верный email или пароль",
                                     comment: "")
        case .weakPassword:
            return NSLocalizedString("Пароль состоит менее чем из 6 символов",
                                     comment: "")
        case .mismatchPassword:
            return NSLocalizedString("Введенные пароли не совпадают",
                                     comment: "")
        case .notFound:
            return NSLocalizedString("Error Description: The specified item could not be found.",
                                     comment: "")
        case .emailAlreadyInUse:
            return NSLocalizedString("Такой email уже используется",
                                     comment: "")
        case .invalidEmail:
            return NSLocalizedString("Неверно введен email",
                                     comment: "")
        case .unexpected:
            return NSLocalizedString("Что то пошло не так",
                                     comment: "")
        }
    }
}

enum ImagesError: Error {
    case badURL
    case unexpected
}
