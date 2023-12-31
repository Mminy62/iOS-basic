//
//  LoginView.swift
//  UITestingDemo
//
//  Created by 이민영 on 2023/12/18.
//

import SwiftUI

struct LoginView: View {
    // User 인스턴스에 액세스할 수 있도록 EnvironmentObject 속성 선언
    @EnvironmentObject private var user: User
    @State private var showAlert = false
    
    //
    //presentationMode: 화면에 닫고 열고 하는 모드
    // 13, 14버전 호환이 되고, 그 이상은 dismiss로도 된다
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationStack {
            Form {
                Section {
                    TextField("Username", text: $user.username)
                    SecureField("Password", text: $user.password)
                    
                }
                
                Button {
                    if user.login() {
                        // login 시트 닫기
                        presentationMode.wrappedValue.dismiss()
                    } else {
                        showAlert = true
                    }
                } label: {
                    Text("Login")
                }
                .accessibilityIdentifier("loginNow")
                
            }
            .navigationTitle(Text("Login"))
            .navigationBarItems(trailing: Button {
                //로그인 취소하면 로그인 시트 닫기
                presentationMode.wrappedValue.dismiss()
                
            } label: {
                Image(systemName: "xmark.circle")
                    .accessibilityLabel("Dismiss")
            })
            .alert(isPresented: $showAlert) {
                Alert(title: Text("Login Failed"),
                      message: Text("사용자이름, 패스워드가 일치하지 않습니다."),
                      dismissButton: Alert.Button.default(Text("OK"), action: {
                    showAlert = false
                }) )
            }
            
        }
        
        
    }
}

//#Preview {
//    LoginView()
//}
