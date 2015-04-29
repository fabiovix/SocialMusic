package br.com.ufes.dwws.socialMusic

class Account {

    String login
    String password
    String email

    Profile profile

    static constraints = {
        login(nullable: false, unique: true)
        email(nullable: false,unique: true)
        password(nullable: false,unique: true)

    }
}
