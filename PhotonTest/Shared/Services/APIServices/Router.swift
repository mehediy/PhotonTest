//
//  Router.swift
//  VoiceMate
//

import Foundation


enum Router: APIRouter {

    case fetchSchools

    
    //MARK: method
    var method: HTTPMethod {
        switch self {
        case .fetchSchools:
            return .get
        default:
            return .post
        }
    }
    
    //MARK: path
    var path: String {
        switch self {
        case .fetchSchools:
            return "/resource/s3k6-pzi2.json"
        }
    }

    //MARK: parameters
    var parameters: Parameters? {
        switch self {
        case .fetchSchools:
            return nil
        //default:
            //return [:]
        }
    }
    
    
    //MARK: bodyData
    var bodyData: Data? {
        switch self {
//        case .transactionData(let data):
//            return data
        default:
            return nil
        }
    }
    
//    var cachePolicy: NSURLRequest.CachePolicy {
//        switch self {
//        case .getAllNotifications:
//            return .returnCacheDataElseLoad
//        default:
//            return .useProtocolCachePolicy
//        }
//    }
    
    //MARK: ContentType
    var contentType: ContentType? {
        switch self {
//        case .uploadFile:
//            //return ContentType.multipartFormData.rawValue
//            return nil
        default:
            return .json
        }
    }
    
    var sessionCheck: Bool {
        switch self {
        default:
            return false
        }
    }
    
    var imageDataTuple: (String, Data)? {
        switch self {
        default:
            return nil
        }
    }
}
