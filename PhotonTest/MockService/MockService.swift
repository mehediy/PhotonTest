//
//  MockService.swift
//  PhotonTest
//
//  Created by Md Mehedi Hasan on 3/4/24.
//

import Foundation

struct MockService {
    
    static func fetchNYCSchools(completion: @escaping (_ schools: [School], _ err : Error?) -> Void) {
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
            let schools = MockService.getSchools()
            completion(schools, nil)
        }
        
        APIService.performRequest(route: Router.fetchSchools) { (result: AFResult<[School]>) in
            switch result {
            case .success(let schools):
                print(schools.count)
                completion(schools, nil)
            case .failure( let error):
                completion([], error)
            }
        }
    }
    
    static func getSchools() -> [School] {
        
        let jsonData = readJSONFile(forName: "schools")!
        
        let decoder = JSONDecoder()
        let response = try! decoder.decode([School].self, from: jsonData)
        return response
        
        func readJSONFile(forName name: String) -> Data? {
            do {
                if let bundlePath = Bundle.main.path(forResource: name, ofType: "json"),
                   let jsonData = try String(contentsOfFile: bundlePath).data(using: .utf8) {
                    return jsonData
                } else {
                    return nil
                }
            } catch {
                print(error)
                return nil
            }
        }
    }
    
}


