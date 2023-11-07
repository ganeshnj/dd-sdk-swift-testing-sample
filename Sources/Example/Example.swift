// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation

func httpBinGet() async throws {
    // https://httpbin.org/get
    let url = URL(string: "https://httpbin.org/get")!
    let (data, _) = try await URLSession.shared.data(from: url)
    let string = String(decoding: data, as: UTF8.self)
//        print(string)
}
