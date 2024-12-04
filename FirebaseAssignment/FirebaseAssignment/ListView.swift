import SwiftUI

struct ListView: View {
    @EnvironmentObject var dataManager: DataManager
    
    
    
    @State private var showPopUp = false

    var body: some View {
        Color.cyan
                       .edgesIgnoringSafeArea(.all)
        NavigationView {
            List(dataManager.dogs, id: \.id) { dog in
                Text(dog.breed)
            }
            .navigationTitle("Dogs")
            .navigationBarItems(trailing: Button(action: {
                
                showPopUp.toggle()
                
                
                // add
            }, label: {
                Image(systemName: "plus")
            }))
            
            .sheet(isPresented: $showPopUp ) {
                NewDogView()
            }
        
            
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView().environmentObject(DataManager())
    }
}
