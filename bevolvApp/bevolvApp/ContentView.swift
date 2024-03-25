
import SwiftUI


struct ContentView: View {
    
    @State private var publicationItem = [PublicationItem]()
    
    var body: some View {
        VStack {
            NavigationView {
                List(publicationItem, id: \.id) { publicationItems in
                    NavigationLink(destination: DetailsView(publicationItems: publicationItems)) {
                        HStack {
                            Image("charleyrivers_feature")
                                .resizable()
                                .frame(width: 60, height: 60)
                                .cornerRadius(4)
                            
                            VStack(alignment: .leading) {
                                Text("\(publicationItems.title)")
                                    .font(.headline)
                                
                                if let publisher = publicationItems.publisher {
                                           Text("\(publisher)")
                                               .font(.subheadline)
                                       }
                            }
                        }
                    }
                }
                .navigationTitle("Publications")
                .onAppear {
                    FetchData().getPublicationDetails() { publicationItems in
                        self.publicationItem = publicationItems.items
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}




