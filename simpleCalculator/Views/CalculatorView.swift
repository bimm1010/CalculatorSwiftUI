//
//  CalculatorView.swift
//  simpleCalculator
//
//  Created by Hoàng Nam on 12/03/2021.
//

import SwiftUI

struct CalculatorView: View {
    @State private var giaTri = ""
    @State private var giaTriLuutru = 0.0
    @State private var Pheptinh: String!
    var body: some View {
        
        VStack{
            HStack{
                Text(giaTri)
                    .padding()
                    .frame(width: 300, height: 40, alignment: .trailing)
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 1.0))
                    .foregroundColor(.gray)
                    .font(.title)
            }.padding(EdgeInsets(top: 0, leading: 0, bottom: 15, trailing: 0))
            HStack{
                Button(action: {
                    giaTri += "7"
                }, label: {
                    Text("7")
                        .frame(width: 45, height: 45, alignment: .center)
                        .overlay((RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 2)))
                })
                Button(action: {
                    giaTri += "8"
                }, label: {
                    Text("8")
                        .frame(width: 45, height: 45, alignment: .center)
                        .overlay((RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 2)))
                })
                Button(action: {
                    giaTri += "9"
                }, label: {
                    Text("9")
                        .frame(width: 45, height: 45, alignment: .center)
                        .overlay((RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 2)))
                })
                Button(action: {
                    self.Pheptinh = "+"
                    self.giaTriLuutru = Double(self.giaTri)!
                    self.giaTri = ""
                }, label: {
                    Text("+")
                        .frame(width: 45, height: 45, alignment: .center)
                        .overlay((RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 2)))
                })
            }.padding(EdgeInsets(top: 0, leading: 0, bottom: 15, trailing: 0))
            
            HStack{
                Button(action: {
                    giaTri += "4"
                }, label: {
                    Text("4")
                        .frame(width: 45, height: 45, alignment: .center)
                        .overlay((RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 2)))
                })
                Button(action: {
                    giaTri += "5"
                }, label: {
                    Text("5")
                        .frame(width: 45, height: 45, alignment: .center)
                        .overlay((RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 2)))
                })
                Button(action: {
                    giaTri += "6"
                }, label: {
                    Text("6")
                        .frame(width: 45, height: 45, alignment: .center)
                        .overlay((RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 2)))
                })
                Button(action: {
                    self.Pheptinh = "-"
                    self.giaTriLuutru = Double(self.giaTri)!
                    self.giaTri = ""
                }, label: {
                    Text("-")
                        .frame(width: 45, height: 45, alignment: .center)
                        .overlay((RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 2)))
                })
            }.padding(EdgeInsets(top: 0, leading: 0, bottom: 15, trailing: 0))
            
            HStack{
                Button(action: {
                    giaTri += "1"
                }, label: {
                    Text("1")
                        .frame(width: 45, height: 45, alignment: .center)
                        .overlay((RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 2)))
                })
                Button(action: {
                    giaTri += "2"
                }, label: {
                    Text("2")
                        .frame(width: 45, height: 45, alignment: .center)
                        .overlay((RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 2)))
                })
                Button(action: {
                    giaTri += "3"
                }, label: {
                    Text("3")
                        .frame(width: 45, height: 45, alignment: .center)
                        .overlay((RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 2)))
                })
                Button(action: {
                    self.Pheptinh = "*"
                    self.giaTriLuutru = Double(self.giaTri)!
                    self.giaTri = ""
                }, label: {
                    Text("*")
                        .frame(width: 45, height: 45, alignment: .center)
                        .overlay((RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 2)))
                })
            }.padding(EdgeInsets(top: 0, leading: 0, bottom: 15, trailing: 0))
            
            HStack{
                Button(action: {
                    giaTri = ""
                }, label: {
                    Text("C")
                        .frame(width: 45, height: 45, alignment: .center)
                        .overlay((RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 2)))
                })
                Button(action: {
                    giaTri += "0"
                }, label: {
                    Text("0")
                        .frame(width: 45, height: 45, alignment: .center)
                        .overlay((RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 2)))
                })
                Button(action: {
                    if self.Pheptinh == "+"{
                        self.giaTri = "\(self.giaTriLuutru + Double(self.giaTri)!)"
                    } else if self.Pheptinh == "-"{
                        self.giaTri = "\(self.giaTriLuutru - Double(self.giaTri)!)"
                    }else if self.Pheptinh == "*"{
                        self.giaTri = "\(self.giaTriLuutru * Double(self.giaTri)!)"
                    }else if self.Pheptinh == "/"{
                        self.giaTri = "\(self.giaTriLuutru / Double(self.giaTri)!)"
                    }
                }, label: {
                    Text("=")
                        .frame(width: 45, height: 45, alignment: .center)
                        .overlay((RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 2)))
                })
                Button(action: {
                    self.Pheptinh = "/"
                    self.giaTriLuutru = Double(self.giaTri)!
                    self.giaTri = ""
                }, label: {
                    Text("/")
                        .frame(width: 45, height: 45, alignment: .center)
                        .overlay((RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 2)))
                })
            }.padding(EdgeInsets(top: 0, leading: 0, bottom: 15, trailing: 0))
        }
    }
}
struct CalculatorView_Previews: PreviewProvider {
    static var previews: some View {
        CalculatorView()
    }
}
