//
//  DetailView.swift
//  HackerNews
//
//  Created by Thin Myat Noe on 25/2/21.
//

import SwiftUI

struct DetailView: View {
	
	let url: String?
	
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
		DetailView(url: "https://www.google.com")
    }
}

