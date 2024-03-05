//
//  CommonService.swift
//
//  Created by Mehedi Hasan on 3/21/19.
//

import Foundation

struct CommonService {
    
    static func fetchNYCSchools(completion: @escaping (_ schools: [School], _ err : Error?) -> Void) {
        
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
    
    
//    static func getStaticPage(pageName:String, version: String,
//                              completion: @escaping (_ success: Bool, _ staticPage:StaticPageModel?, _ err : Error?) -> Void){
//        
//        let params:Dictionary<String, Any> = [
//            "pageName":pageName,
//            "version":version,
//        ]
//        
//        APIService.performRequest(route: Router.getStaticPage(params: params)) { (result: AFResult<StaticPageModel>) in
//            switch result {
//            case .success(let response):
//                if response.status == .success  {
//                    completion(true, response, nil)
//                } else {
//                    completion(false, nil, NSError(domain: response.message, code: 100, userInfo: nil))
//                }
//            case .failure( let error):
//                completion(false, nil, error)
//            }
//        }
//    }
    
}
