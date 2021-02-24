//
//  PostData.swift
//  HackerNews
//
//  Created by Thin Myat Noe on 24/2/21.
//

import Foundation

struct Results: Decodable {
	let hits: [Post]
}
struct Post: Decodable, Identifiable{
	var id: String{
		return objectID
	}
	let objectID: String
	let points: Int
	let title: String
	let url: String?
}
