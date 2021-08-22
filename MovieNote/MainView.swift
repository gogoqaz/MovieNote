//
//  MainView.swift
//  MovieNote
//
//  Created by PX Chen on 2021/8/21.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            TrendingView().tabItem {
                Image(systemName: "star")
                Text("Trending")
            }
            NoteListView().tabItem {
                Image(systemName: "character.book.closed")
                Text("Note")
            }
            SettingRootView().tabItem {
                Image(systemName: "contextualmenu.and.cursorarrow")
                Text("Menu")
            }
        }.accentColor(.black)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
