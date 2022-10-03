import SwiftUI

struct ContentView: View {
    @State private var Numero:Int = 0
    @State private var numeroAnterior:Int = 0
    
    var body: some View {
        ZStack{
            Image("wallpaper ok")
                .resizable()
                .aspectRatio(contentMode: ContentMode.fill)
                .ignoresSafeArea()
            VStack{
                Spacer()
                Text("Menor/Mayor")
                    .font(.system(size: 40))
                    .foregroundColor(Color.white)
                Spacer()
                ZStack{
                    Image("box ok ok")
                        .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
                    Text(String(Numero))
                        .font(.system(size: 250))
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .minimumScaleFactor(0.01)
                        
                }
                Spacer()
                Spacer()
                Button(action: {
                    numeroAnterior = Numero
                    while(Numero == numeroAnterior){
                        Numero = Int.random(in: 0...9)
                    }
                }, label: {
                    Image("button ok")
                        .resizable()
                        .aspectRatio(contentMode:ContentMode.fit)
                        .frame(width: 300, height: 200)
                })
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portrait)
    }
}
