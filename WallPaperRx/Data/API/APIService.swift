//
//  APIService.swift
//  WallPaperRx
//
//  Created by Duy Nguyễn on 29/05/2024.
//

import Foundation
import RxSwift
import RxCocoa
import Moya
import Alamofire
import Then

protocol APIServiceType {
    func request(_ target: APITarget) -> Single<Response>
}

class APIService: APIServiceType {
    
    static let shared = APIService()
    
    private let provider: MoyaProvider<APITarget>
    private let semaphore = DispatchSemaphore(value: 1)
    
    private init() {
        let configuration = URLSessionConfiguration.default.with {
            $0.headers = .default
            $0.timeoutIntervalForRequest = 30
            $0.timeoutIntervalForResource = 60
        }
        
        let session = Alamofire.Session(configuration: configuration)
        
        let networkPlugin = NetworkLoggerPlugin(configuration: NetworkLoggerPlugin.Configuration(logOptions: .verbose))
        
        provider = MoyaProvider(session: session, plugins: [networkPlugin])
    }
    
    // MARK: - Functions
    func request(_ target: APITarget) -> Single<Response> {
        print("Request URL: \(target.baseURL)\(target.path)")
        print("Request Method: \(target.method.rawValue)")
        print("Request Headers: \(target.headers ?? [:])")
        print("Request Task: \(target.task)")
        
        let request = Single<Void>.just(())
            .do(onSuccess: { response in
                print("[LOG 🌏][\(target.method.rawValue)] Request \(target.baseURL.absoluteString + target.path)")
            })
            .flatMap { [unowned self] _ -> Single<Response> in
                return self.provider.rx.request(target)
            }
            .do(onSuccess: { response in
                print("[LOG 🌏][\(target.method.rawValue)] Response: \(response)")
            }, onError: { error in
                print("[LOG 🌏][\(target.method.rawValue)] Error: \(error)")
            })
            .catchApiError()
        return request
    }
}

extension PrimitiveSequence where Trait == SingleTrait, Element == Response {
    
    func catchApiError() -> Single<Element> {
        let response = flatMap { response -> Single<Element> in
            switch response.statusCode {
            case 200...299:
                print("[LOG ✅] Request Success \(response.request?.url?.absoluteString ?? "")")
                return .just(response)
            default:
                print("[LOG ❌] Request Error \(response.statusCode) \(response.request?.url?.absoluteString ?? "")")
                let domain = response.request?.url?.absoluteString ?? ""
                let code = response.statusCode
                let errorMessage = HTTPURLResponse.localizedString(forStatusCode: response.statusCode)
                if let responseBody = try? response.mapString() {
                    print("Response Body: \(responseBody)")
                }
                throw NSError(domain: domain,
                              code: code,
                              userInfo: [NSLocalizedDescriptionKey: errorMessage])
            }
        }
        return response
    }
}
