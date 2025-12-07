//
//  ArticlerefDocument.swift
//  Semantex
//
//  Created by Herve Crespel on 13/11/2025.
//

import SwiftUI
import UniformTypeIdentifiers
import Fichiers

extension UTType {
    static var jsonArticle: UTType {
        UTType(importedAs: "org.inawani.do.articles")
    }
}

public nonisolated struct ArticlerefDocument: FileDocument {
    public var ref = Articleref()

    public init () {}
    
    public init(_ json:String) {
        let jsonData = json.data(using: .utf8)!
        let item = try! JSONDecoder().decode(Articleref.self, from: jsonData)
        ref = item
    }

    public static let readableContentTypes = [
        UTType(importedAs: "org.inawani.do.articles")
    ]

    public init(configuration: ReadConfiguration) throws {
        guard let data = configuration.file.regularFileContents
               // , let string = String(data: data, encoding: .utf8)
        else {
            throw CocoaError(.fileReadCorruptFile)
        }
        ref = try JSONDecoder().decode(Articleref.self, from: data)
    }
    
    public func fileWrapper(configuration: WriteConfiguration) throws -> FileWrapper {
        let json = try JSONEncoder().encode(ref)
        //let data = text.data(using: .utf8)!
        return .init(regularFileWithContents: json)
    }
    
 /*   public init(url:String) async throws {
        guard let url = URL(string: url) else { return }
        ref = try await URLSession.shared.decode(Articleref.self, from: url)
    }*/
    public init(url:String)  {
        guard let url = URL(string: url) else { return }
        var refa = Articleref()
        URLSession.shared.dataTask(with: url) { data, response, error in
           if let json = data {
               do {
                   refa = try JSONDecoder().decode(Articleref.self, from: json)
               } catch {
                   print("Erreur de parsing:", error)
               }
           }
        }.resume()
        ref = refa
   }
}

extension URLSession {
    func decode<T: Decodable>(
        _ type: T.Type = T.self,
        from url: URL,
        keyDecodingStrategy: JSONDecoder.KeyDecodingStrategy = .useDefaultKeys,
        dataDecodingStrategy: JSONDecoder.DataDecodingStrategy = .deferredToData,
        dateDecodingStrategy: JSONDecoder.DateDecodingStrategy = .deferredToDate
    ) async throws  -> T {
        let (data, _) = try await data(from: url)

        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = keyDecodingStrategy
        decoder.dataDecodingStrategy = dataDecodingStrategy
        decoder.dateDecodingStrategy = dateDecodingStrategy

        let decoded = try decoder.decode(T.self, from: data)
        return decoded
    }
}
