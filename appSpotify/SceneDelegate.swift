//
//  SceneDelegate.swift
//  appSpotify
//
//  Created by user on 03/08/23.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: windowScene)
        let navigationController = UINavigationController(rootViewController: MusicViewController())
        window?.rootViewController = navigationController //primeira tela a ser apresentada, no caso a de lista de filmes
        window?.makeKeyAndVisible()
    }



}

