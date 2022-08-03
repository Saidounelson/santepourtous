/*
 See LICENSE folder for this sample’s licensing information.
 
 Abstract:
 Storage for model data.
 */

import Foundation
import Combine

final class ModelData: ObservableObject {
    @Published var users: [Users] = load("usersData.json")
    
    var sicknes: [Sickness] = load("maladieData.json")
    
    var chats: [Chats] = load("chatsData.json")
    var organism: [Organisms] = load("organismData.json")
    var communautes: [Communautes] = load("communautesData.json")
    
}

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        print("Couldn't find \(filename) in main bundle.")
        fatalError("Couldn't find \(filename) in main bundle.")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}

