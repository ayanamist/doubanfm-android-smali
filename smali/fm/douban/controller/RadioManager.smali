.class public Lfm/douban/controller/RadioManager;
.super Ljava/lang/Object;
.source "RadioManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RadioManager"


# instance fields
.field private api:Lfm/douban/api/Api;

.field private app:Lfm/douban/FmApp;

.field public checkedToken:Z

.field private client:Lcom/loopj/android/http/AsyncHttpClient;

.field private cm:Lfm/douban/controller/ChannelManager;

.field private db:Lfm/douban/model/RadioDB;

.field private fmsp:Lfm/douban/model/FMSharedPreferences;

.field private sm:Lfm/douban/controller/SongManager;

.field private ss:Lfm/douban/model/SongStore;

.field private stm:Lfm/douban/controller/SongTaskManager;

.field private store:Lfm/douban/net/BlacklistCookieStore;

.field private userToken:Lfm/douban/model/Token;


# direct methods
.method public constructor <init>(Lfm/douban/FmApp;)V
    .locals 2
    .parameter "app"

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object v1, p0, Lfm/douban/controller/RadioManager;->userToken:Lfm/douban/model/Token;

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfm/douban/controller/RadioManager;->checkedToken:Z

    .line 38
    iput-object p1, p0, Lfm/douban/controller/RadioManager;->app:Lfm/douban/FmApp;

    .line 39
    iput-object v1, p0, Lfm/douban/controller/RadioManager;->db:Lfm/douban/model/RadioDB;

    .line 40
    iput-object v1, p0, Lfm/douban/controller/RadioManager;->store:Lfm/douban/net/BlacklistCookieStore;

    .line 41
    iput-object v1, p0, Lfm/douban/controller/RadioManager;->client:Lcom/loopj/android/http/AsyncHttpClient;

    .line 42
    iput-object v1, p0, Lfm/douban/controller/RadioManager;->api:Lfm/douban/api/Api;

    .line 43
    iput-object v1, p0, Lfm/douban/controller/RadioManager;->cm:Lfm/douban/controller/ChannelManager;

    .line 44
    iput-object v1, p0, Lfm/douban/controller/RadioManager;->fmsp:Lfm/douban/model/FMSharedPreferences;

    .line 45
    iput-object v1, p0, Lfm/douban/controller/RadioManager;->ss:Lfm/douban/model/SongStore;

    .line 46
    iput-object v1, p0, Lfm/douban/controller/RadioManager;->stm:Lfm/douban/controller/SongTaskManager;

    .line 47
    return-void
.end method


# virtual methods
.method public getApi()Lfm/douban/api/Api;
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lfm/douban/controller/RadioManager;->api:Lfm/douban/api/Api;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Lfm/douban/api/Api;

    invoke-virtual {p0}, Lfm/douban/controller/RadioManager;->getHttpClient()Lcom/loopj/android/http/AsyncHttpClient;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lfm/douban/api/Api;-><init>(Lcom/loopj/android/http/AsyncHttpClient;Lfm/douban/controller/RadioManager;)V

    iput-object v0, p0, Lfm/douban/controller/RadioManager;->api:Lfm/douban/api/Api;

    .line 84
    :cond_0
    iget-object v0, p0, Lfm/douban/controller/RadioManager;->api:Lfm/douban/api/Api;

    return-object v0
.end method

.method public getBlacklistCookieStore()Lfm/douban/net/BlacklistCookieStore;
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lfm/douban/controller/RadioManager;->store:Lfm/douban/net/BlacklistCookieStore;

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Lfm/douban/net/BlacklistCookieStore;

    iget-object v1, p0, Lfm/douban/controller/RadioManager;->app:Lfm/douban/FmApp;

    invoke-direct {v0, v1}, Lfm/douban/net/BlacklistCookieStore;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lfm/douban/controller/RadioManager;->store:Lfm/douban/net/BlacklistCookieStore;

    .line 91
    :cond_0
    iget-object v0, p0, Lfm/douban/controller/RadioManager;->store:Lfm/douban/net/BlacklistCookieStore;

    return-object v0
.end method

.method public getChannelManager()Lfm/douban/controller/ChannelManager;
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lfm/douban/controller/RadioManager;->cm:Lfm/douban/controller/ChannelManager;

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Lfm/douban/controller/ChannelManager;

    iget-object v1, p0, Lfm/douban/controller/RadioManager;->app:Lfm/douban/FmApp;

    invoke-direct {v0, v1}, Lfm/douban/controller/ChannelManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lfm/douban/controller/RadioManager;->cm:Lfm/douban/controller/ChannelManager;

    .line 106
    :cond_0
    iget-object v0, p0, Lfm/douban/controller/RadioManager;->cm:Lfm/douban/controller/ChannelManager;

    return-object v0
.end method

.method public getDB()Lfm/douban/model/RadioDB;
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lfm/douban/controller/RadioManager;->db:Lfm/douban/model/RadioDB;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lfm/douban/model/RadioDB;

    iget-object v1, p0, Lfm/douban/controller/RadioManager;->app:Lfm/douban/FmApp;

    invoke-direct {v0, v1}, Lfm/douban/model/RadioDB;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lfm/douban/controller/RadioManager;->db:Lfm/douban/model/RadioDB;

    .line 61
    :cond_0
    iget-object v0, p0, Lfm/douban/controller/RadioManager;->db:Lfm/douban/model/RadioDB;

    return-object v0
.end method

.method public getHttpClient()Lcom/loopj/android/http/AsyncHttpClient;
    .locals 3

    .prologue
    .line 65
    iget-object v1, p0, Lfm/douban/controller/RadioManager;->client:Lcom/loopj/android/http/AsyncHttpClient;

    if-nez v1, :cond_0

    .line 66
    new-instance v1, Lfm/douban/net/BlacklistCookieStore;

    iget-object v2, p0, Lfm/douban/controller/RadioManager;->app:Lfm/douban/FmApp;

    invoke-direct {v1, v2}, Lfm/douban/net/BlacklistCookieStore;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lfm/douban/controller/RadioManager;->store:Lfm/douban/net/BlacklistCookieStore;

    .line 69
    iget-object v1, p0, Lfm/douban/controller/RadioManager;->store:Lfm/douban/net/BlacklistCookieStore;

    const-string v2, "dbcl2"

    invoke-virtual {v1, v2}, Lfm/douban/net/BlacklistCookieStore;->ban(Ljava/lang/String;)V

    .line 71
    new-instance v1, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v1}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    iput-object v1, p0, Lfm/douban/controller/RadioManager;->client:Lcom/loopj/android/http/AsyncHttpClient;

    .line 72
    iget-object v1, p0, Lfm/douban/controller/RadioManager;->client:Lcom/loopj/android/http/AsyncHttpClient;

    iget-object v2, p0, Lfm/douban/controller/RadioManager;->store:Lfm/douban/net/BlacklistCookieStore;

    invoke-virtual {v1, v2}, Lcom/loopj/android/http/AsyncHttpClient;->setCookieStore(Lorg/apache/http/client/CookieStore;)V

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Android-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, USER_AGENT:Ljava/lang/String;
    iget-object v1, p0, Lfm/douban/controller/RadioManager;->client:Lcom/loopj/android/http/AsyncHttpClient;

    invoke-virtual {v1, v0}, Lcom/loopj/android/http/AsyncHttpClient;->setUserAgent(Ljava/lang/String;)V

    .line 77
    .end local v0           #USER_AGENT:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lfm/douban/controller/RadioManager;->client:Lcom/loopj/android/http/AsyncHttpClient;

    return-object v1
.end method

.method public getSharedPreferences()Lfm/douban/model/FMSharedPreferences;
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lfm/douban/controller/RadioManager;->fmsp:Lfm/douban/model/FMSharedPreferences;

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Lfm/douban/model/FMSharedPreferences;

    iget-object v1, p0, Lfm/douban/controller/RadioManager;->app:Lfm/douban/FmApp;

    invoke-direct {v0, v1}, Lfm/douban/model/FMSharedPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lfm/douban/controller/RadioManager;->fmsp:Lfm/douban/model/FMSharedPreferences;

    .line 113
    :cond_0
    iget-object v0, p0, Lfm/douban/controller/RadioManager;->fmsp:Lfm/douban/model/FMSharedPreferences;

    return-object v0
.end method

.method public getSongManager()Lfm/douban/controller/SongManager;
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lfm/douban/controller/RadioManager;->sm:Lfm/douban/controller/SongManager;

    if-nez v0, :cond_0

    .line 132
    new-instance v0, Lfm/douban/controller/SongManager;

    iget-object v1, p0, Lfm/douban/controller/RadioManager;->app:Lfm/douban/FmApp;

    invoke-direct {v0, v1}, Lfm/douban/controller/SongManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lfm/douban/controller/RadioManager;->sm:Lfm/douban/controller/SongManager;

    .line 134
    :cond_0
    iget-object v0, p0, Lfm/douban/controller/RadioManager;->sm:Lfm/douban/controller/SongManager;

    return-object v0
.end method

.method public getSongStore()Lfm/douban/model/SongStore;
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lfm/douban/controller/RadioManager;->ss:Lfm/douban/model/SongStore;

    if-nez v0, :cond_0

    .line 118
    new-instance v0, Lfm/douban/model/SongStore;

    iget-object v1, p0, Lfm/douban/controller/RadioManager;->app:Lfm/douban/FmApp;

    invoke-direct {v0, v1}, Lfm/douban/model/SongStore;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lfm/douban/controller/RadioManager;->ss:Lfm/douban/model/SongStore;

    .line 120
    :cond_0
    iget-object v0, p0, Lfm/douban/controller/RadioManager;->ss:Lfm/douban/model/SongStore;

    return-object v0
.end method

.method public declared-synchronized getSongTaskManager()Lfm/douban/controller/SongTaskManager;
    .locals 2

    .prologue
    .line 124
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lfm/douban/controller/RadioManager;->stm:Lfm/douban/controller/SongTaskManager;

    if-nez v0, :cond_0

    .line 125
    new-instance v0, Lfm/douban/controller/SongTaskManager;

    iget-object v1, p0, Lfm/douban/controller/RadioManager;->app:Lfm/douban/FmApp;

    invoke-direct {v0, v1}, Lfm/douban/controller/SongTaskManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lfm/douban/controller/RadioManager;->stm:Lfm/douban/controller/SongTaskManager;

    .line 127
    :cond_0
    iget-object v0, p0, Lfm/douban/controller/RadioManager;->stm:Lfm/douban/controller/SongTaskManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getUserToken()Lfm/douban/model/Token;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lfm/douban/controller/RadioManager;->userToken:Lfm/douban/model/Token;

    return-object v0
.end method

.method public listCookies()V
    .locals 4

    .prologue
    .line 95
    iget-object v2, p0, Lfm/douban/controller/RadioManager;->store:Lfm/douban/net/BlacklistCookieStore;

    if-eqz v2, :cond_0

    .line 96
    iget-object v2, p0, Lfm/douban/controller/RadioManager;->store:Lfm/douban/net/BlacklistCookieStore;

    invoke-virtual {v2}, Lfm/douban/net/BlacklistCookieStore;->getCookies()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/cookie/Cookie;

    .line 97
    .local v0, c:Lorg/apache/http/cookie/Cookie;
    const-string v2, "RadioManager"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 100
    .end local v0           #c:Lorg/apache/http/cookie/Cookie;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public setUserToken(Lfm/douban/model/Token;)V
    .locals 0
    .parameter "token"

    .prologue
    .line 54
    iput-object p1, p0, Lfm/douban/controller/RadioManager;->userToken:Lfm/douban/model/Token;

    .line 55
    return-void
.end method

.method public terminate()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lfm/douban/controller/RadioManager;->db:Lfm/douban/model/RadioDB;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lfm/douban/controller/RadioManager;->db:Lfm/douban/model/RadioDB;

    invoke-virtual {v0}, Lfm/douban/model/RadioDB;->close()V

    .line 141
    :cond_0
    return-void
.end method
