//
//  ContentView.swift
//  HackerNews
//
//  Created by Thin Myat Noe on 24/2/21.
//

import SwiftUI

struct ContentView: View {
	
	@ObservedObject var networkManager = NetworkManager()
	
    var body: some View {
		NavigationView{
			List(networkManager.posts){ post in
				HStack {
					Text(String(post.points))
					Text(post.title)
				}
		}
			.navigationTitle("Hacker News")
		
		}
		.onAppear{
			self.networkManager.fetchData()
		}
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


