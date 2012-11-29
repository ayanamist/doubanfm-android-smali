.class public Lfm/douban/model/OnlinePlaylist;
.super Ljava/lang/Object;
.source "OnlinePlaylist.java"

# interfaces
.implements Lfm/douban/model/Playlist;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfm/douban/model/OnlinePlaylist$MyPlaylistHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "OnlinePlaylist"


# instance fields
.field private api:Lfm/douban/api/Api;

.field private autoplay:Z

.field private context:Landroid/content/Context;

.field private handler:Lfm/douban/model/OnlinePlaylist$MyPlaylistHandler;

.field private index:I

.field private isStopping:Z

.field private list:Lorg/json/JSONArray;

.field private radio:Lfm/douban/service/Radio;

.field private requiring:Z

.field private total:I

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lfm/douban/service/Radio;)V
    .locals 2
    .parameter "ctx"
    .parameter "r"

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lfm/douban/model/OnlinePlaylist$MyPlaylistHandler;

    invoke-direct {v0, p0}, Lfm/douban/model/OnlinePlaylist$MyPlaylistHandler;-><init>(Lfm/douban/model/OnlinePlaylist;)V

    iput-object v0, p0, Lfm/douban/model/OnlinePlaylist;->handler:Lfm/douban/model/OnlinePlaylist$MyPlaylistHandler;

    .line 35
    iput-boolean v1, p0, Lfm/douban/model/OnlinePlaylist;->isStopping:Z

    .line 38
    iput-object p1, p0, Lfm/douban/model/OnlinePlaylist;->context:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lfm/douban/model/OnlinePlaylist;->radio:Lfm/douban/service/Radio;

    .line 40
    invoke-static {p1}, Lfm/douban/FmApp;->getRadioManager(Landroid/content/Context;)Lfm/douban/controller/RadioManager;

    move-result-object v0

    invoke-virtual {v0}, Lfm/douban/controller/RadioManager;->getApi()Lfm/douban/api/Api;

    move-result-object v0

    iput-object v0, p0, Lfm/douban/model/OnlinePlaylist;->api:Lfm/douban/api/Api;

    .line 41
    iput-boolean v1, p0, Lfm/douban/model/OnlinePlaylist;->autoplay:Z

    .line 42
    invoke-virtual {p0}, Lfm/douban/model/OnlinePlaylist;->reset()V

    .line 43
    return-void
.end method

.method static synthetic access$002(Lfm/douban/model/OnlinePlaylist;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput-boolean p1, p0, Lfm/douban/model/OnlinePlaylist;->requiring:Z

    return p1
.end method

.method static synthetic access$100(Lfm/douban/model/OnlinePlaylist;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-boolean v0, p0, Lfm/douban/model/OnlinePlaylist;->isStopping:Z

    return v0
.end method

.method static synthetic access$102(Lfm/douban/model/OnlinePlaylist;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput-boolean p1, p0, Lfm/douban/model/OnlinePlaylist;->isStopping:Z

    return p1
.end method

.method static synthetic access$200(Lfm/douban/model/OnlinePlaylist;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lfm/douban/model/OnlinePlaylist;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lfm/douban/model/OnlinePlaylist;)Lfm/douban/service/Radio;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lfm/douban/model/OnlinePlaylist;->radio:Lfm/douban/service/Radio;

    return-object v0
.end method

.method static synthetic access$400(Lfm/douban/model/OnlinePlaylist;)Lorg/json/JSONArray;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lfm/douban/model/OnlinePlaylist;->list:Lorg/json/JSONArray;

    return-object v0
.end method

.method static synthetic access$402(Lfm/douban/model/OnlinePlaylist;Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput-object p1, p0, Lfm/douban/model/OnlinePlaylist;->list:Lorg/json/JSONArray;

    return-object p1
.end method

.method static synthetic access$500(Lfm/douban/model/OnlinePlaylist;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget v0, p0, Lfm/douban/model/OnlinePlaylist;->total:I

    return v0
.end method

.method static synthetic access$502(Lfm/douban/model/OnlinePlaylist;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput p1, p0, Lfm/douban/model/OnlinePlaylist;->total:I

    return p1
.end method

.method static synthetic access$600(Lfm/douban/model/OnlinePlaylist;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget v0, p0, Lfm/douban/model/OnlinePlaylist;->index:I

    return v0
.end method

.method static synthetic access$700(Lfm/douban/model/OnlinePlaylist;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-boolean v0, p0, Lfm/douban/model/OnlinePlaylist;->autoplay:Z

    return v0
.end method

.method static synthetic access$800(Lfm/douban/model/OnlinePlaylist;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lfm/douban/model/OnlinePlaylist;->type:Ljava/lang/String;

    return-object v0
.end method

.method private isSameList(Lorg/json/JSONArray;)Z
    .locals 6
    .parameter "sa"

    .prologue
    const/4 v2, 0x0

    .line 126
    iget-object v3, p0, Lfm/douban/model/OnlinePlaylist;->list:Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 144
    :cond_0
    :goto_0
    return v2

    .line 131
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    :try_start_0
    iget-object v3, p0, Lfm/douban/model/OnlinePlaylist;->list:Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 132
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "sid"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lfm/douban/model/OnlinePlaylist;->list:Lorg/json/JSONArray;

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "sid"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 131
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 143
    .end local v0           #e:Lorg/json/JSONException;
    :cond_2
    const-string v2, "OnlinePlaylist"

    const-string v3, "Same List!"

    invoke-static {v2, v3}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public empty()Z
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lfm/douban/model/OnlinePlaylist;->list:Lorg/json/JSONArray;

    if-eqz v0, :cond_0

    iget v0, p0, Lfm/douban/model/OnlinePlaylist;->total:I

    if-eqz v0, :cond_0

    iget v0, p0, Lfm/douban/model/OnlinePlaylist;->index:I

    iget v1, p0, Lfm/douban/model/OnlinePlaylist;->total:I

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNextSong()Lfm/douban/model/Song;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 58
    :try_start_0
    iget v1, p0, Lfm/douban/model/OnlinePlaylist;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lfm/douban/model/OnlinePlaylist;->index:I

    .line 59
    iget v1, p0, Lfm/douban/model/OnlinePlaylist;->total:I

    if-lez v1, :cond_0

    iget v1, p0, Lfm/douban/model/OnlinePlaylist;->index:I

    const/4 v3, -0x1

    if-lt v1, v3, :cond_0

    iget v1, p0, Lfm/douban/model/OnlinePlaylist;->index:I

    iget v3, p0, Lfm/douban/model/OnlinePlaylist;->total:I

    add-int/lit8 v3, v3, -0x1

    if-gt v1, v3, :cond_0

    .line 60
    new-instance v1, Lfm/douban/model/Song;

    iget-object v3, p0, Lfm/douban/model/OnlinePlaylist;->list:Lorg/json/JSONArray;

    iget v4, p0, Lfm/douban/model/OnlinePlaylist;->index:I

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v1, v3}, Lfm/douban/model/Song;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    return-object v1

    :cond_0
    move-object v1, v2

    .line 62
    goto :goto_0

    .line 64
    :catch_0
    move-exception v0

    .local v0, e:Lorg/json/JSONException;
    move-object v1, v2

    .line 65
    goto :goto_0
.end method

.method public info()Ljava/lang/String;
    .locals 5

    .prologue
    .line 98
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v3, ""

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 99
    .local v1, s:Ljava/lang/StringBuffer;
    const-string v3, "\n==================\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 100
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requiring : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lfm/douban/model/OnlinePlaylist;->requiring:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 101
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "total: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lfm/douban/model/OnlinePlaylist;->total:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 102
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lfm/douban/model/OnlinePlaylist;->index:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 103
    iget-boolean v3, p0, Lfm/douban/model/OnlinePlaylist;->requiring:Z

    if-nez v3, :cond_0

    iget v3, p0, Lfm/douban/model/OnlinePlaylist;->total:I

    if-lez v3, :cond_0

    .line 104
    const-string v3, "\n songs :\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 105
    const-string v3, "\n song_id\tartist\ttitle\tlike\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 106
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v3, p0, Lfm/douban/model/OnlinePlaylist;->total:I

    if-ge v0, v3, :cond_0

    .line 108
    :try_start_0
    new-instance v2, Lfm/douban/model/Song;

    iget-object v3, p0, Lfm/douban/model/OnlinePlaylist;->list:Lorg/json/JSONArray;

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v2, v3}, Lfm/douban/model/Song;-><init>(Lorg/json/JSONObject;)V

    .line 109
    .local v2, ss:Lfm/douban/model/Song;
    iget-object v3, v2, Lfm/douban/model/Song;->song_id:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 110
    const-string v3, "\t"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 111
    iget-object v3, v2, Lfm/douban/model/Song;->artist:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 112
    const-string v3, "\t"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 113
    iget-object v3, v2, Lfm/douban/model/Song;->title:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 114
    const-string v3, "\t"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 115
    iget-boolean v3, v2, Lfm/douban/model/Song;->like:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 116
    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    .end local v2           #ss:Lfm/douban/model/Song;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 121
    .end local v0           #i:I
    :cond_0
    const-string v3, "==================\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 122
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 117
    .restart local v0       #i:I
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public isOffline()Z
    .locals 1

    .prologue
    .line 272
    const/4 v0, 0x0

    return v0
.end method

.method public played(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .parameter "song_id"
    .parameter "playTime"
    .parameter "channel"

    .prologue
    .line 266
    const-string v0, "OnlinePlaylist"

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

    .line 267
    iget-object v0, p0, Lfm/douban/model/OnlinePlaylist;->api:Lfm/douban/api/Api;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Lfm/douban/api/Api;->reportPlayed(Ljava/lang/String;ILjava/lang/String;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 268
    return-void
.end method

.method public require(Lfm/douban/model/Song;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "song"
    .parameter "playTime"
    .parameter "type"
    .parameter "channel"

    .prologue
    .line 77
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lfm/douban/model/OnlinePlaylist;->require(Lfm/douban/model/Song;ILjava/lang/String;Ljava/lang/String;Z)V

    .line 78
    return-void
.end method

.method public require(Lfm/douban/model/Song;ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 10
    .parameter "song"
    .parameter "playTime"
    .parameter "type"
    .parameter "channel"
    .parameter "autoplay"

    .prologue
    const/4 v9, 0x0

    .line 81
    iget-boolean v0, p0, Lfm/douban/model/OnlinePlaylist;->requiring:Z

    if-nez v0, :cond_1

    .line 82
    iput-boolean p5, p0, Lfm/douban/model/OnlinePlaylist;->autoplay:Z

    .line 83
    iget-object v0, p0, Lfm/douban/model/OnlinePlaylist;->handler:Lfm/douban/model/OnlinePlaylist$MyPlaylistHandler;

    invoke-virtual {v0, p4}, Lfm/douban/model/OnlinePlaylist$MyPlaylistHandler;->setChannel(Ljava/lang/String;)V

    .line 84
    const-string v0, "OnlinePlaylist"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requiring autoplay = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iput-object p3, p0, Lfm/douban/model/OnlinePlaylist;->type:Ljava/lang/String;

    .line 86
    iget-object v0, p0, Lfm/douban/model/OnlinePlaylist;->radio:Lfm/douban/service/Radio;

    iget-object v0, v0, Lfm/douban/service/Radio;->start:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfm/douban/model/OnlinePlaylist;->autoplay:Z

    .line 89
    :cond_0
    iget-object v0, p0, Lfm/douban/model/OnlinePlaylist;->context:Landroid/content/Context;

    invoke-static {v0}, Lfm/douban/FmApp;->getRadioManager(Landroid/content/Context;)Lfm/douban/controller/RadioManager;

    move-result-object v0

    invoke-virtual {v0}, Lfm/douban/controller/RadioManager;->getSharedPreferences()Lfm/douban/model/FMSharedPreferences;

    move-result-object v0

    const-string v1, "audio_format"

    const-string v2, "aac"

    invoke-virtual {v0, v1, v2}, Lfm/douban/model/FMSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 90
    .local v7, format:Ljava/lang/String;
    iget-object v0, p0, Lfm/douban/model/OnlinePlaylist;->api:Lfm/douban/api/Api;

    if-eqz p1, :cond_2

    iget-object v1, p1, Lfm/douban/model/Song;->song_id:Ljava/lang/String;

    :goto_0
    iget-object v2, p0, Lfm/douban/model/OnlinePlaylist;->radio:Lfm/douban/service/Radio;

    iget-object v5, v2, Lfm/douban/service/Radio;->start:Ljava/lang/String;

    iget-object v2, p0, Lfm/douban/model/OnlinePlaylist;->radio:Lfm/douban/service/Radio;

    iget-object v6, v2, Lfm/douban/service/Radio;->cid:Ljava/lang/String;

    iget-object v8, p0, Lfm/douban/model/OnlinePlaylist;->handler:Lfm/douban/model/OnlinePlaylist$MyPlaylistHandler;

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v8}, Lfm/douban/api/Api;->getPlaylist(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 91
    iget-object v0, p0, Lfm/douban/model/OnlinePlaylist;->radio:Lfm/douban/service/Radio;

    iput-object v9, v0, Lfm/douban/service/Radio;->start:Ljava/lang/String;

    .line 92
    iget-object v0, p0, Lfm/douban/model/OnlinePlaylist;->radio:Lfm/douban/service/Radio;

    iput-object v9, v0, Lfm/douban/service/Radio;->cid:Ljava/lang/String;

    .line 95
    .end local v7           #format:Ljava/lang/String;
    :cond_1
    return-void

    .line 90
    .restart local v7       #format:Ljava/lang/String;
    :cond_2
    const-string v1, ""

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lfm/douban/model/OnlinePlaylist;->index:I

    .line 47
    iput v1, p0, Lfm/douban/model/OnlinePlaylist;->total:I

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lfm/douban/model/OnlinePlaylist;->list:Lorg/json/JSONArray;

    .line 49
    iput-boolean v1, p0, Lfm/douban/model/OnlinePlaylist;->requiring:Z

    .line 50
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 277
    const-string v0, "OnlinePlaylist"

    const-string v1, "stop"

    invoke-static {v0, v1}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object v0, p0, Lfm/douban/model/OnlinePlaylist;->api:Lfm/douban/api/Api;

    iget-object v1, p0, Lfm/douban/model/OnlinePlaylist;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lfm/douban/api/Api;->stop(Landroid/content/Context;)V

    .line 280
    iget-boolean v0, p0, Lfm/douban/model/OnlinePlaylist;->requiring:Z

    if-eqz v0, :cond_0

    .line 281
    const-string v0, "OnlinePlaylist"

    const-string v1, "in stop requiring.."

    invoke-static {v0, v1}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfm/douban/model/OnlinePlaylist;->isStopping:Z

    .line 284
    :cond_0
    return-void
.end method
