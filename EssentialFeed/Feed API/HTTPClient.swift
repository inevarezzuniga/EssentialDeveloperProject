//
//  HTTPClient.swift
//  EssentialFeed
//
//  Created by Ignacio Esau Nevarez Zuniga on 30/07/23.
//

import Foundation

public enum HTTPClientResult {
    case success(Data, HTTPURLResponse)
    case failure(Error)
}

public protocol HTTPClient {
    func get(from url: URL, completion: @escaping (HTTPClientResult) -> Void)
}
