//
//  ContentView.swift
//  P12_CoreDataProject
//
//  Created by Jae Cho on 6/2/22.
//

import SwiftUI

struct ContentView: View {
	@Environment(\.managedObjectContext) var moc
	@FetchRequest(sortDescriptors: []) var wizards: FetchedResults<Wizard>
	
    var body: some View {
		 VStack{
			 List(wizards, id:\.self) { wizard in
				 Text(wizard.name ?? "Unknown")
			 }
			 Button("ADD") {
				 let wizard = Wizard(context: moc)
				 wizard.name = "Harry Porter"
			 }
			 Button("Save"){
				 do{
					 try moc.save()
				 } catch {
					 print(error.localizedDescription)
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
