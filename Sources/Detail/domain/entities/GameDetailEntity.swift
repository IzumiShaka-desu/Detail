//
//  GameDetailEntity.swift
//  Gemmu
//
//  Created by Akashaka on 15/02/22.
//

public struct GameDetailEntity: Equatable, Identifiable {
  public let id: Int
  let name: String
  let publisher: String
  let rating: Double
  let releaseDate: String
  let platforms: [String]
  let genres: [String]
  let description: String
  let imageUrl: String
}
