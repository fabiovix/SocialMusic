package br.com.ufes.dwws.socialMusic

class Music {

    String name
    Album album

    static hasMany = [urls: MusicURL]

    static constraints = {
    }

    static mappedBy = [album: 'musics']
}
