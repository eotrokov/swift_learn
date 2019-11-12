//
//  LoadData.swift
//  test
//
//  Created by Евгений Отроков on 12.11.2019.
//  Copyright © 2019 Евгений Отроков. All rights reserved.
//

import Foundation

func loadData(urlName url: String) -> [[String: Any]]? {
    let session = URLSession.shared
    let url = URL(string: url)!
    var result: [[String: Any]]? = nil
    let semaphore = DispatchSemaphore(value: 0)  //1. create a counting semaphore
    
    let task = session.dataTask(with: url) { data, response, error in
        
        if error != nil || data == nil {
            print("Client error!")
            return
        }
        
        guard let response = response as? HTTPURLResponse, (200...299).contains(response.statusCode) else {
            print("Server error!")
            return
        }
        
        guard let mime = response.mimeType, mime == "application/json" else {
            print("Wrong MIME type!")
            return
        }
        
        do {
            let json = try JSONSerialization.jsonObject(with: data!, options: [])
            
            
            guard let jsonArray = json as? [[String: Any]] else {
                return
            }
            result = jsonArray
            semaphore.signal()
        } catch {
            print("JSON error: \(error.localizedDescription)")
        }
    }
    task.resume()
    semaphore.wait()  //2. wait for finished counting
    
    return result
}

func createArrayItems()->[WorkItem] {
   return loadData(urlName: "https://learnappmaking.com/ex/users.json")!.compactMap(WorkItem.init)
}
