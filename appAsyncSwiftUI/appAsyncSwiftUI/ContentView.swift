//
//  ContentView.swift
//  appAsyncSwiftUI
//
//  Created by Apple on 19.08.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView {
            
            VStack {
                // dogru yol bu image indirme swfit UI da
                AsyncImage(url: URL(string: "https://cdn.wallpapersafari.com/92/84/Y0oiFU.jpg")!) { image in
                    
                    image.resizable().frame(width: 300, height: 300, alignment: .center)
                    
                    
                } placeholder: {
                    // buraya progress bar koyabılırız resım ıdnırelnecek kadar !
                    ProgressView()
                }

        
        List(superHeroArray) { Superhero in
            Text(Superhero.name)
                .font(.title3)
                .foregroundColor(.blue)
          }.navigationTitle(Text("super hero book"))
                
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
