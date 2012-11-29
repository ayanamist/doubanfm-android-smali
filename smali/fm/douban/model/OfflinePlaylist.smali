.class public Lfm/douban/model/OfflinePlaylist;
.super Ljava/lang/Object;
.source "OfflinePlaylist.java"

# interfaces
.implements Lfm/douban/model/Playlist;


# static fields
.field private static final TAG:Ljava/lang/String; = "OfflinePlaylist"


# instance fields
.field private radio:Lfm/douban/service/Radio;

.field private sm:Lfm/douban/controller/SongManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lfm/douban/service/Radio;)V
    .locals 1
    .parameter "ctx"
    .parameter "r"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p2, p0, Lfm/douban/model/OfflinePlaylist;->radio:Lfm/douban/service/Radio;

    .line 19
    invoke-static {p1}, Lfm/douban/FmApp;->getRadioManager(Landroid/content/Context;)Lfm/douban/controller/RadioManager;

    move-result-object v0

    invoke-virtual {v0}, Lfm/douban/controller/RadioManager;->getSongManager()Lfm/douban/controller/SongManager;

    move-result-object v0

    iput-object v0, p0, Lfm/douban/model/OfflinePlaylist;->sm:Lfm/douban/controller/SongManager;

    .line 20
    return-void
.end method


# virtual methods
.method public empty()Z
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lfm/douban/model/OfflinePlaylist;->sm:Lfm/douban/controller/SongManager;

    invoke-virtual {v0}, Lfm/douban/controller/SongManager;->getOfflineSongCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNextSong()Lfm/douban/model/Song;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lfm/douban/model/OfflinePlaylist;->sm:Lfm/douban/controller/SongManager;

    invoke-virtual {v0}, Lfm/douban/controller/SongManager;->getRandomSong()Lfm/douban/model/OfflineSong;

    move-result-object v0

    return-object v0
.end method

.method public isOffline()Z
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x1

    return v0
.end method

.method public played(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .parameter "song_id"
    .parameter "playTime"
    .parameter "channel"

    .prologue
    .line 54
    const-string v0, "OfflinePlaylist"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "played song "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in channel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfm/douban/util/DBLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget-object v0, p0, Lfm/douban/model/OfflinePlaylist;->sm:Lfm/douban/controller/SongManager;

    const-string v1, "e"

    invoke-virtual {v0, p1, v1}, Lfm/douban/controller/SongManager;->saveHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public require(Lfm/douban/model/Song;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "song"
    .parameter "playTime"
    .parameter "type"
    .parameter "channel"

    .prologue
    .line 34
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lfm/douban/model/OfflinePlaylist;->require(Lfm/douban/model/Song;ILjava/lang/String;Ljava/lang/String;Z)V

    .line 35
    return-void
.end method

.method public require(Lfm/douban/model/Song;ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .parameter "song"
    .parameter "playTime"
    .parameter "type"
    .parameter "channel"
    .parameter "autoplay"

    .prologue
    .line 39
    if-eqz p1, :cond_0

    .line 40
    const-string v0, "OfflinePlaylist"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "save history: song-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lfm/douban/model/Song;->song_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; type-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    iget-object v0, p0, Lfm/douban/model/OfflinePlaylist;->sm:Lfm/douban/controller/SongManager;

    iget-object v1, p1, Lfm/douban/model/Song;->song_id:Ljava/lang/String;

    invoke-virtual {v0, v1, p3}, Lfm/douban/controller/SongManager;->saveHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    :cond_0
    iget-object v0, p0, Lfm/douban/model/OfflinePlaylist;->radio:Lfm/douban/service/Radio;

    iget-object v0, v0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lfm/douban/service/RadioState;->canOp:Z

    .line 46
    if-eqz p5, :cond_1

    .line 47
    iget-object v0, p0, Lfm/douban/model/OfflinePlaylist;->radio:Lfm/douban/service/Radio;

    invoke-virtual {v0, p4}, Lfm/douban/service/Radio;->play(Ljava/lang/String;)V

    .line 50
    :cond_1
    return-void
.end method

.method public stop()V
    .locals 0

    .prologue
    .line 66
    return-void
.end method
