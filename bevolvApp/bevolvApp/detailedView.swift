

import SwiftUI

struct DetailsView: View {
    let publicationItems: PublicationItem
    
    var body: some View {
        VStack {
            TopView(publicationItems: publicationItems)
            
            ScrollView {
                BottomView(publicationItems: publicationItems)
            }
        }
    }
}



private struct TopView: View {
    let publicationItems: PublicationItem
    var body: some View {
                CircleImage(image: Image("charleyrivers_feature"))
                    .offset(y: -40)
                    .frame(height: 300)
    }
}


private struct BottomView: View {
    let publicationItems: PublicationItem
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Start: \(publicationItems.startYear.description)").font(.headline)
                
                Spacer()
                
                Text("End: \(publicationItems.endYear.description)").font(.headline)
            }
            
            Divider().padding(.bottom)
            
            HStack {
                Text("Title:").font(.headline)
                Text("\(publicationItems.title)").font(.subheadline)
            }
            
            HStack {
                Text("Publisher:").font(.headline)
                if let publisher = publicationItems.publisher {
                    Text("\(publisher)").font(.subheadline)
                } else {
                    Text("Unknown").font(.subheadline)
                }
            }
            
            HStack {
                Text("Place of Publication:").font(.headline)
                Text("\(publicationItems.placeOfPublication)").font(.subheadline)
            }
            
            HStack {
                Text("City:").font(.headline)
                if let city = publicationItems.city.first {
                    Text(city).font(.subheadline)
                }
            }
            
            HStack {
                Text("Country:").font(.headline)
                Text("\(publicationItems.country)").font(.subheadline)
            }
            
            HStack {
                Text("Language:").font(.headline)
                Text("\(publicationItems.language[0])").font(.subheadline)
            }
            
            HStack (alignment: .firstTextBaseline){
                Text("Holding Type:").font(.headline)
                
                
                VStack (alignment: .leading) {
                    ForEach(publicationItems.holdingType, id: \.self) { holdingType in
                        Text(holdingType).font(.subheadline)
                    }.listStyle(.plain)
                }
            }
            
            HStack (alignment: .top) {
                Text("NOTE:").font(.headline)
                Text("\(publicationItems.note[0])").font(.subheadline)
            }
            
        }
        .padding()
    }
}


