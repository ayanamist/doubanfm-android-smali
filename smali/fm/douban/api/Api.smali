.class public Lfm/douban/api/Api;
.super Ljava/lang/Object;
.source "Api.java"


# static fields
.field public static final API_CHANNEL:Ljava/lang/String; = "http://www.douban.com/j/app/radio/channels"

.field public static final API_CHECK_HEARTS:Ljava/lang/String; = "http://www.douban.com/j/app/radio/can_use_offline_channel"

.field public static final API_FEEDBACK:Ljava/lang/String; = "https://www.douban.com/j/app/help"

.field public static final API_HEARTS:Ljava/lang/String; = "http://www.douban.com/j/app/radio/liked_songs"

.field public static final API_LOGIN_DOUBAN:Ljava/lang/String; = "https://www.douban.com/j/app/login"

.field public static final API_LOGIN_SINA:Ljava/lang/String; = null

.field public static final API_PLAYLIST:Ljava/lang/String; = "https://www.douban.com/j/app/radio/people"

.field public static final API_REPORT:Ljava/lang/String; = "http://www.douban.com/j/app/radio/people"

.field public static final API_REPORT_OFFLINE:Ljava/lang/String; = "http://www.douban.com/j/app/radio/play_record"

.field public static final API_SHARE:Ljava/lang/String; = "https://www.douban.com/j/app/radio/share_to_douban"

.field public static final API_SHARE_CHECK:Ljava/lang/String; = "http://www.douban.com/j/app/radio/can_share_douban_broadcast"

.field public static final API_SINA_CALLBACK_PREFIX:Ljava/lang/String; = "http://www.douban.com/j/app/radio/partner/sina/callback"

.field public static final API_VERIFY_EMAIL:Ljava/lang/String; = "https://www.douban.com/j/app/radio/bind_email"

.field private static CLIENT_INFO:Ljava/lang/String; = null

.field public static final COOKIE_DOMAIN:Ljava/lang/String; = "douban.com"

.field private static DISTRIBUTION_CHANNEL:Ljava/lang/String; = null

.field public static final OP_CANCEL_LIKE:Ljava/lang/String; = "u"

.field public static final OP_END_NEW:Ljava/lang/String; = "p"

.field public static final OP_HATE:Ljava/lang/String; = "b"

.field public static final OP_LIKE:Ljava/lang/String; = "r"

.field public static final OP_NEW:Ljava/lang/String; = "n"

.field public static final OP_PLAY:Ljava/lang/String; = "p"

.field public static final OP_REPORT:Ljava/lang/String; = "e"

.field public static final OP_SKIP:Ljava/lang/String; = "s"

.field private static final TAG:Ljava/lang/String; = "Api"


# instance fields
.field private client:Lcom/loopj/android/http/AsyncHttpClient;

.field private rm:Lfm/douban/controller/RadioManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://www.douban.com/j/app/radio/partner/sina/login"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lfm/douban/model/Token;->ARGS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfm/douban/api/Api;->API_LOGIN_SINA:Ljava/lang/String;

    .line 60
    const-string v0, ""

    sput-object v0, Lfm/douban/api/Api;->DISTRIBUTION_CHANNEL:Ljava/lang/String;

    .line 61
    const-string v0, ""

    sput-object v0, Lfm/douban/api/Api;->CLIENT_INFO:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/loopj/android/http/AsyncHttpClient;Lfm/douban/controller/RadioManager;)V
    .locals 0
    .parameter "c"
    .parameter "rm"

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lfm/douban/api/Api;->client:Lcom/loopj/android/http/AsyncHttpClient;

    .line 68
    iput-object p2, p0, Lfm/douban/api/Api;->rm:Lfm/douban/controller/RadioManager;

    .line 69
    return-void
.end method

.method public static setClientInfo(Ljava/lang/String;)V
    .locals 0
    .parameter "clientInfo"

    .prologue
    .line 76
    sput-object p0, Lfm/douban/api/Api;->CLIENT_INFO:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public static setDistributionChannel(Ljava/lang/String;)V
    .locals 0
    .parameter "channelName"

    .prologue
    .line 72
    sput-object p0, Lfm/douban/api/Api;->DISTRIBUTION_CHANNEL:Ljava/lang/String;

    .line 73
    return-void
.end method


# virtual methods
.method public addToken(Lcom/loopj/android/http/RequestParams;)V
    .locals 5
    .parameter "params"

    .prologue
    const/4 v4, 0x1

    .line 87
    iget-object v1, p0, Lfm/douban/api/Api;->rm:Lfm/douban/controller/RadioManager;

    invoke-static {v1}, Lfm/douban/model/Token;->get(Lfm/douban/controller/RadioManager;)Lfm/douban/model/Token;

    move-result-object v0

    .line 88
    .local v0, t:Lfm/douban/model/Token;
    const-string v1, "app_name"

    const-string v2, "radio_android"

    invoke-virtual {p1, v1, v2}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v1, "version"

    sget-object v2, Lfm/douban/model/Token;->version:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    sget-object v1, Lfm/douban/api/Api;->CLIENT_INFO:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v4, :cond_0

    .line 91
    const-string v1, "client"

    sget-object v2, Lfm/douban/api/Api;->CLIENT_INFO:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :cond_0
    if-eqz v0, :cond_1

    .line 95
    const-string v1, "user_id"

    iget-object v2, v0, Lfm/douban/model/Token;->user_id:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v1, "token"

    iget-object v2, v0, Lfm/douban/model/Token;->token:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v1, "expire"

    iget-object v2, v0, Lfm/douban/model/Token;->expire:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :cond_1
    const-string v1, "Api"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "from: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lfm/douban/api/Api;->DISTRIBUTION_CHANNEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    sget-object v1, Lfm/douban/api/Api;->DISTRIBUTION_CHANNEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v4, :cond_2

    .line 102
    const-string v1, "from"

    sget-object v2, Lfm/douban/api/Api;->DISTRIBUTION_CHANNEL:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :cond_2
    return-void
.end method

.method public canSyncHearts(Lcom/loopj/android/http/AsyncHttpResponseHandler;)V
    .locals 3
    .parameter "handler"

    .prologue
    .line 158
    new-instance v0, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v0}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 159
    .local v0, p:Lcom/loopj/android/http/RequestParams;
    invoke-virtual {p0, v0}, Lfm/douban/api/Api;->addToken(Lcom/loopj/android/http/RequestParams;)V

    .line 160
    iget-object v1, p0, Lfm/douban/api/Api;->client:Lcom/loopj/android/http/AsyncHttpClient;

    const-string v2, "http://www.douban.com/j/app/radio/can_use_offline_channel"

    invoke-virtual {v1, v2, v0, p1}, Lcom/loopj/android/http/AsyncHttpClient;->get(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 161
    return-void
.end method

.method public checkShare(Lcom/loopj/android/http/AsyncHttpResponseHandler;)V
    .locals 4
    .parameter "responseHandler"

    .prologue
    .line 282
    new-instance v0, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v0}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 283
    .local v0, p:Lcom/loopj/android/http/RequestParams;
    invoke-virtual {p0, v0}, Lfm/douban/api/Api;->addToken(Lcom/loopj/android/http/RequestParams;)V

    .line 284
    const-string v1, "Api"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "check share to douban: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/loopj/android/http/RequestParams;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object v1, p0, Lfm/douban/api/Api;->client:Lcom/loopj/android/http/AsyncHttpClient;

    const-string v2, "http://www.douban.com/j/app/radio/can_share_douban_broadcast"

    invoke-virtual {v1, v2, v0, p1}, Lcom/loopj/android/http/AsyncHttpClient;->get(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 286
    return-void
.end method

.method public exchangeSinaToken(Landroid/content/Context;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V
    .locals 11
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 349
    invoke-static {p1}, Lcom/douban/share/ShareMgr;->getInstance(Landroid/content/Context;)Lcom/douban/share/ShareMgr;

    move-result-object v0

    iget-object v10, v0, Lcom/douban/share/ShareMgr;->stm:Lcom/douban/share/SinaTokenManager;

    .line 350
    .local v10, stm:Lcom/douban/share/SinaTokenManager;
    invoke-virtual {v10}, Lcom/douban/share/SinaTokenManager;->getOldToken()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 371
    :goto_0
    return-void

    .line 353
    :cond_0
    const/4 v3, 0x0

    .line 354
    .local v3, headers:[Lorg/apache/http/Header;
    new-instance v8, Lorg/apache/http/message/BasicHeader;

    const-string v0, "Accept-Encoding"

    const-string v1, "gzip"

    invoke-direct {v8, v0, v1}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    .local v8, coding:Lorg/apache/http/Header;
    const-string v2, "http://api.weibo.com/oauth2/get_oauth2_token"

    .line 357
    .local v2, url:Ljava/lang/String;
    new-instance v4, Lfm/douban/net/ParamBundle;

    invoke-direct {v4}, Lfm/douban/net/ParamBundle;-><init>()V

    .line 358
    .local v4, rp:Lfm/douban/net/ParamBundle;
    const-string v0, "source"

    sget-object v1, Lcom/douban/share/SinaTokenManager;->APP_KEY:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Lfm/douban/net/ParamBundle;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    const-string v6, ""

    .line 362
    .local v6, a:Ljava/lang/String;
    :try_start_0
    const-string v0, "GET"

    sget-object v1, Lcom/douban/share/SinaTokenManager;->APP_KEY:Ljava/lang/String;

    sget-object v5, Lcom/douban/share/SinaTokenManager;->APP_SECRET:Ljava/lang/String;

    invoke-virtual {v10, v0, v2, v1, v5}, Lcom/douban/share/SinaTokenManager;->generateAuth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 367
    :goto_1
    new-instance v7, Lorg/apache/http/message/BasicHeader;

    const-string v0, "Authorization"

    invoke-direct {v7, v0, v6}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    .local v7, auth:Lorg/apache/http/Header;
    const/4 v0, 0x2

    new-array v3, v0, [Lorg/apache/http/Header;

    .end local v3           #headers:[Lorg/apache/http/Header;
    const/4 v0, 0x0

    aput-object v8, v3, v0

    const/4 v0, 0x1

    aput-object v7, v3, v0

    .line 370
    .restart local v3       #headers:[Lorg/apache/http/Header;
    iget-object v0, p0, Lfm/douban/api/Api;->client:Lcom/loopj/android/http/AsyncHttpClient;

    const/4 v1, 0x0

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/loopj/android/http/AsyncHttpClient;->get(Landroid/content/Context;Ljava/lang/String;[Lorg/apache/http/Header;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    goto :goto_0

    .line 363
    .end local v7           #auth:Lorg/apache/http/Header;
    :catch_0
    move-exception v9

    .line 364
    .local v9, e:Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public expandSinaUrl(Ljava/lang/String;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V
    .locals 3
    .parameter "path"
    .parameter "expandSinaUrlHandler"

    .prologue
    .line 308
    new-instance v0, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v0}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 309
    .local v0, p:Lcom/loopj/android/http/RequestParams;
    const-string v1, "source"

    sget-object v2, Lcom/douban/share/SinaTokenManager;->APP_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    const-string v1, "url_short"

    invoke-virtual {v0, v1, p1}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    invoke-virtual {p0, v0}, Lfm/douban/api/Api;->addToken(Lcom/loopj/android/http/RequestParams;)V

    .line 312
    const-string v1, "Api"

    const-string v2, "verify"

    invoke-static {v1, v2}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object v1, p0, Lfm/douban/api/Api;->client:Lcom/loopj/android/http/AsyncHttpClient;

    const-string v2, "http://api.t.sina.com.cn/short_url/expand.json"

    invoke-virtual {v1, v2, v0, p2}, Lcom/loopj/android/http/AsyncHttpClient;->post(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 314
    return-void
.end method

.method public getChannels(Lcom/loopj/android/http/AsyncHttpResponseHandler;)V
    .locals 3
    .parameter "handler"

    .prologue
    .line 152
    new-instance v0, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v0}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 153
    .local v0, p:Lcom/loopj/android/http/RequestParams;
    invoke-virtual {p0, v0}, Lfm/douban/api/Api;->addToken(Lcom/loopj/android/http/RequestParams;)V

    .line 154
    iget-object v1, p0, Lfm/douban/api/Api;->client:Lcom/loopj/android/http/AsyncHttpClient;

    const-string v2, "http://www.douban.com/j/app/radio/channels"

    invoke-virtual {v1, v2, v0, p1}, Lcom/loopj/android/http/AsyncHttpClient;->get(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 155
    return-void
.end method

.method public getHearts(Ljava/util/ArrayList;Ljava/lang/String;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V
    .locals 6
    .parameter
    .parameter "format"
    .parameter "handler"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/loopj/android/http/AsyncHttpResponseHandler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 164
    .local p1, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v1}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 165
    .local v1, p:Lcom/loopj/android/http/RequestParams;
    const-string v3, "count"

    const-string v4, "10"

    invoke-virtual {v1, v3, v4}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    .local v2, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 168
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_0

    .line 170
    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 173
    :cond_1
    const-string v3, "Api"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exclude:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const-string v3, "exclude"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string v3, "formats"

    invoke-virtual {v1, v3, p2}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0, v1}, Lfm/douban/api/Api;->addToken(Lcom/loopj/android/http/RequestParams;)V

    .line 177
    iget-object v3, p0, Lfm/douban/api/Api;->client:Lcom/loopj/android/http/AsyncHttpClient;

    const-string v4, "http://www.douban.com/j/app/radio/liked_songs"

    invoke-virtual {v3, v4, v1, p3}, Lcom/loopj/android/http/AsyncHttpClient;->get(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 178
    return-void
.end method

.method public getPlaylist(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V
    .locals 10
    .parameter "song_id"
    .parameter "playTime"
    .parameter "type"
    .parameter "channel"
    .parameter "start"
    .parameter "cid"
    .parameter "format"
    .parameter "handler"

    .prologue
    .line 108
    new-instance v1, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v1}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 109
    .local v1, p:Lcom/loopj/android/http/RequestParams;
    if-eqz p5, :cond_0

    .line 110
    const-string v2, "start"

    invoke-virtual {v1, v2, p5}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :cond_0
    if-eqz p6, :cond_1

    .line 112
    const-string v2, "cid"

    move-object/from16 v0, p6

    invoke-virtual {v1, v2, v0}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :cond_1
    const-string v2, "sid"

    invoke-virtual {v1, v2, p1}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string v2, "type"

    invoke-virtual {v1, v2, p3}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string v2, "channel"

    invoke-virtual {v1, v2, p4}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v2, "formats"

    move-object/from16 v0, p7

    invoke-virtual {v1, v2, v0}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v2, "pt"

    const-string v3, "%.1f"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    int-to-double v6, p2

    const-wide v8, 0x408f400000000000L

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0, v1}, Lfm/douban/api/Api;->addToken(Lcom/loopj/android/http/RequestParams;)V

    .line 119
    iget-object v2, p0, Lfm/douban/api/Api;->client:Lcom/loopj/android/http/AsyncHttpClient;

    const-string v3, "https://www.douban.com/j/app/radio/people"

    move-object/from16 v0, p8

    invoke-virtual {v2, v3, v1, v0}, Lcom/loopj/android/http/AsyncHttpClient;->get(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 120
    return-void
.end method

.method public getRenrenName(Lfm/douban/net/ParamBundle;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V
    .locals 8
    .parameter "p"
    .parameter "asyncHttpResponseHandler"

    .prologue
    .line 322
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 323
    .local v4, sb:Ljava/lang/StringBuffer;
    new-instance v3, Ljava/util/TreeSet;

    invoke-virtual {p1}, Lfm/douban/net/ParamBundle;->keySet()Ljava/util/Collection;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 324
    .local v3, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 325
    .local v2, key:Ljava/lang/String;
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 326
    const-string v6, "="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 327
    invoke-virtual {p1, v2}, Lfm/douban/net/ParamBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 329
    .end local v2           #key:Ljava/lang/String;
    :cond_0
    const-string v6, "a228e4f49ca8456fb6deb88136b4f420"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 330
    const-string v5, ""

    .line 332
    .local v5, sig:Ljava/lang/String;
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lfm/douban/util/Utils;->md5(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 337
    :goto_1
    const-string v6, "sig"

    invoke-virtual {p1, v6, v5}, Lfm/douban/net/ParamBundle;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    iget-object v6, p0, Lfm/douban/api/Api;->client:Lcom/loopj/android/http/AsyncHttpClient;

    const-string v7, "http://api.renren.com/restserver.do"

    invoke-virtual {v6, v7, p1, p2}, Lcom/loopj/android/http/AsyncHttpClient;->post(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 340
    return-void

    .line 333
    :catch_0
    move-exception v0

    .line 334
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public getSinaInfo(Ljava/lang/String;Lfm/douban/net/ParamBundle;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V
    .locals 1
    .parameter "url"
    .parameter "rp"
    .parameter "asyncHttpResponseHandler"

    .prologue
    .line 343
    iget-object v0, p0, Lfm/douban/api/Api;->client:Lcom/loopj/android/http/AsyncHttpClient;

    invoke-virtual {v0, p1, p2, p3}, Lcom/loopj/android/http/AsyncHttpClient;->get(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 345
    return-void
.end method

.method public getTencentInfo(Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V
    .locals 2
    .parameter "rp"
    .parameter "asyncHttpResponseHandler"

    .prologue
    .line 317
    iget-object v0, p0, Lfm/douban/api/Api;->client:Lcom/loopj/android/http/AsyncHttpClient;

    const-string v1, "https://open.t.qq.com/api/user/info"

    invoke-virtual {v0, v1, p1, p2}, Lcom/loopj/android/http/AsyncHttpClient;->post(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 318
    return-void
.end method

.method public loginDouban(Ljava/lang/String;Ljava/lang/String;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V
    .locals 3
    .parameter "name"
    .parameter "password"
    .parameter "handler"

    .prologue
    .line 134
    new-instance v0, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v0}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 135
    .local v0, p:Lcom/loopj/android/http/RequestParams;
    const-string v1, "@"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "email"

    :goto_0
    invoke-virtual {v0, v1, p1}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string v1, "password"

    invoke-virtual {v0, v1, p2}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0, v0}, Lfm/douban/api/Api;->addToken(Lcom/loopj/android/http/RequestParams;)V

    .line 138
    iget-object v1, p0, Lfm/douban/api/Api;->client:Lcom/loopj/android/http/AsyncHttpClient;

    const-string v2, "https://www.douban.com/j/app/login"

    invoke-virtual {v1, v2, v0, p3}, Lcom/loopj/android/http/AsyncHttpClient;->post(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 139
    return-void

    .line 135
    :cond_0
    const-string v1, "username"

    goto :goto_0
.end method

.method public loginSina(Ljava/lang/String;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V
    .locals 4
    .parameter "url"
    .parameter "handler"

    .prologue
    .line 142
    move-object v0, p1

    .line 143
    .local v0, u:Ljava/lang/String;
    const-string v1, "http://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    const-string v1, "http://"

    const-string v2, "https://"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 146
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lfm/douban/model/Token;->ARGS_APPEND:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 147
    const-string v1, "Api"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loginSina url= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v1, p0, Lfm/douban/api/Api;->client:Lcom/loopj/android/http/AsyncHttpClient;

    invoke-virtual {v1, v0, p2}, Lcom/loopj/android/http/AsyncHttpClient;->get(Ljava/lang/String;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 149
    return-void
.end method

.method public postFeedback(Ljava/lang/String;Ljava/lang/String;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V
    .locals 3
    .parameter "email"
    .parameter "feedback"
    .parameter "ahr"

    .prologue
    .line 297
    new-instance v0, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v0}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 298
    .local v0, p:Lcom/loopj/android/http/RequestParams;
    if-eqz p1, :cond_0

    .line 299
    const-string v1, "email"

    invoke-virtual {v0, v1, p1}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    :cond_0
    const-string v1, "title"

    invoke-virtual {v0, v1, p2}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    invoke-virtual {p0, v0}, Lfm/douban/api/Api;->addToken(Lcom/loopj/android/http/RequestParams;)V

    .line 303
    const-string v1, "Api"

    const-string v2, "post feedback"

    invoke-static {v1, v2}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-object v1, p0, Lfm/douban/api/Api;->client:Lcom/loopj/android/http/AsyncHttpClient;

    const-string v2, "https://www.douban.com/j/app/help"

    invoke-virtual {v1, v2, v0, p3}, Lcom/loopj/android/http/AsyncHttpClient;->post(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 305
    return-void
.end method

.method public reportOfflineHistory(Ljava/lang/String;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V
    .locals 4
    .parameter "records"
    .parameter "handler"

    .prologue
    .line 181
    const-string v1, "Api"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "report offline history: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    new-instance v0, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v0}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 183
    .local v0, p:Lcom/loopj/android/http/RequestParams;
    const-string v1, "records"

    invoke-virtual {v0, v1, p1}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-virtual {p0, v0}, Lfm/douban/api/Api;->addToken(Lcom/loopj/android/http/RequestParams;)V

    .line 185
    iget-object v1, p0, Lfm/douban/api/Api;->client:Lcom/loopj/android/http/AsyncHttpClient;

    const-string v2, "http://www.douban.com/j/app/radio/play_record"

    invoke-virtual {v1, v2, v0, p2}, Lcom/loopj/android/http/AsyncHttpClient;->post(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 186
    return-void
.end method

.method public reportPlayed(Ljava/lang/String;ILjava/lang/String;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V
    .locals 9
    .parameter "song_id"
    .parameter "playTime"
    .parameter "channel"
    .parameter "handler"

    .prologue
    .line 124
    new-instance v0, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v0}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 125
    .local v0, p:Lcom/loopj/android/http/RequestParams;
    const-string v1, "sid"

    invoke-virtual {v0, v1, p1}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string v1, "type"

    const-string v2, "e"

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const-string v1, "channel"

    invoke-virtual {v0, v1, p3}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v1, "pt"

    const-string v2, "%.1f"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    int-to-double v5, p2

    const-wide v7, 0x408f400000000000L

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0, v0}, Lfm/douban/api/Api;->addToken(Lcom/loopj/android/http/RequestParams;)V

    .line 130
    iget-object v1, p0, Lfm/douban/api/Api;->client:Lcom/loopj/android/http/AsyncHttpClient;

    const-string v2, "https://www.douban.com/j/app/radio/people"

    invoke-virtual {v1, v2, v0, p4}, Lcom/loopj/android/http/AsyncHttpClient;->get(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 131
    return-void
.end method

.method public shareTo(Landroid/content/Context;Lfm/douban/service/RadioState;Ljava/lang/String;Ljava/lang/String;ILcom/loopj/android/http/AsyncHttpResponseHandler;)V
    .locals 27
    .parameter "context"
    .parameter "state"
    .parameter "content"
    .parameter "href"
    .parameter "shareSource"
    .parameter "handler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 190
    move-object/from16 v0, p2

    iget-object v1, v0, Lfm/douban/service/RadioState;->song:Lfm/douban/model/Song;

    iget-object v0, v1, Lfm/douban/model/Song;->song_id:Ljava/lang/String;

    move-object/from16 v25, v0

    .line 191
    .local v25, songId:Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v1, v0, Lfm/douban/service/RadioState;->song:Lfm/douban/model/Song;

    invoke-virtual {v1}, Lfm/douban/model/Song;->pictureUrl()Ljava/lang/String;

    move-result-object v21

    .line 192
    .local v21, picUrl:Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v1, v0, Lfm/douban/service/RadioState;->song:Lfm/douban/model/Song;

    iget-object v0, v1, Lfm/douban/model/Song;->title:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 193
    .local v19, name:Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v1, v0, Lfm/douban/service/RadioState;->channelId:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v23, 0x7f0900db

    .line 195
    .local v23, shareInfoResource:I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    move/from16 v0, v23

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    move-object/from16 v0, p2

    iget-object v4, v0, Lfm/douban/service/RadioState;->channel:Lfm/douban/model/Channel;

    iget-object v4, v4, Lfm/douban/model/Channel;->name:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 196
    .local v13, desc:Ljava/lang/String;
    const/4 v1, 0x2

    new-array v9, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    move-object/from16 v0, p2

    iget-object v2, v0, Lfm/douban/service/RadioState;->song:Lfm/douban/model/Song;

    iget-object v2, v2, Lfm/douban/model/Song;->artist:Ljava/lang/String;

    aput-object v2, v9, v1

    const/4 v1, 0x1

    move-object/from16 v0, p2

    iget-object v2, v0, Lfm/douban/service/RadioState;->song:Lfm/douban/model/Song;

    iget-object v2, v2, Lfm/douban/model/Song;->title:Ljava/lang/String;

    aput-object v2, v9, v1

    .line 197
    .local v9, args:[Ljava/lang/Object;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900e3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 199
    .local v12, con:Ljava/lang/String;
    if-nez p5, :cond_2

    .line 201
    const-string v17, "3043"

    .line 203
    .local v17, kind:Ljava/lang/String;
    new-instance v5, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v5}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 204
    .local v5, p:Lcom/loopj/android/http/RequestParams;
    const-string v1, "object_id"

    move-object/from16 v0, v25

    invoke-virtual {v5, v1, v0}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const-string v1, "object_kind"

    move-object/from16 v0, v17

    invoke-virtual {v5, v1, v0}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const-string v1, "image"

    move-object/from16 v0, v21

    invoke-virtual {v5, v1, v0}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const-string v1, "href"

    move-object/from16 v0, p4

    invoke-virtual {v5, v1, v0}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const-string v1, "desc"

    invoke-virtual {v5, v1, v13}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const-string v1, "name"

    move-object/from16 v0, v19

    invoke-virtual {v5, v1, v0}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const-string v1, "text"

    move-object/from16 v0, p3

    invoke-virtual {v5, v1, v0}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lfm/douban/api/Api;->addToken(Lcom/loopj/android/http/RequestParams;)V

    .line 212
    const-string v1, "Api"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "share to douban: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v5}, Lcom/loopj/android/http/RequestParams;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    move-object/from16 v0, p0

    iget-object v1, v0, Lfm/douban/api/Api;->client:Lcom/loopj/android/http/AsyncHttpClient;

    const-string v2, "https://www.douban.com/j/app/radio/share_to_douban"

    move-object/from16 v0, p6

    invoke-virtual {v1, v2, v5, v0}, Lcom/loopj/android/http/AsyncHttpClient;->post(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 278
    .end local v5           #p:Lcom/loopj/android/http/RequestParams;
    .end local v17           #kind:Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 193
    .end local v9           #args:[Ljava/lang/Object;
    .end local v12           #con:Ljava/lang/String;
    .end local v13           #desc:Ljava/lang/String;
    .end local v23           #shareInfoResource:I
    :cond_1
    const v23, 0x7f0900da

    goto/16 :goto_0

    .line 214
    .restart local v9       #args:[Ljava/lang/Object;
    .restart local v12       #con:Ljava/lang/String;
    .restart local v13       #desc:Ljava/lang/String;
    .restart local v23       #shareInfoResource:I
    :cond_2
    const/4 v1, 0x1

    move/from16 v0, p5

    if-ne v1, v0, :cond_3

    .line 215
    invoke-static/range {p1 .. p1}, Lcom/douban/share/ShareMgr;->getInstance(Landroid/content/Context;)Lcom/douban/share/ShareMgr;

    move-result-object v1

    iget-object v0, v1, Lcom/douban/share/ShareMgr;->stm:Lcom/douban/share/SinaTokenManager;

    move-object/from16 v26, v0

    .line 216
    .local v26, st:Lcom/douban/share/SinaTokenManager;
    invoke-virtual/range {v26 .. v26}, Lcom/douban/share/SinaTokenManager;->getAccessToken()Ljava/lang/String;

    move-result-object v10

    .line 218
    .local v10, at:Ljava/lang/String;
    new-instance v5, Lfm/douban/net/ParamBundle;

    invoke-direct {v5}, Lfm/douban/net/ParamBundle;-><init>()V

    .line 219
    .local v5, p:Lfm/douban/net/ParamBundle;
    const-string v1, "access_token"

    invoke-virtual {v5, v1, v10}, Lfm/douban/net/ParamBundle;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const-string v1, "status"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Lfm/douban/net/ParamBundle;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const-string v1, "url"

    move-object/from16 v0, v21

    invoke-virtual {v5, v1, v0}, Lfm/douban/net/ParamBundle;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    move-object/from16 v0, p0

    iget-object v1, v0, Lfm/douban/api/Api;->client:Lcom/loopj/android/http/AsyncHttpClient;

    const/4 v2, 0x0

    const-string v3, "https://api.weibo.com/2/statuses/upload_url_text.json"

    const/4 v4, 0x0

    const-string v6, "application/x-www-form-urlencoded"

    move-object/from16 v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/loopj/android/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;[Lorg/apache/http/Header;Lcom/loopj/android/http/RequestParams;Ljava/lang/String;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    goto :goto_1

    .line 224
    .end local v5           #p:Lfm/douban/net/ParamBundle;
    .end local v10           #at:Ljava/lang/String;
    .end local v26           #st:Lcom/douban/share/SinaTokenManager;
    :cond_3
    const/4 v1, 0x2

    move/from16 v0, p5

    if-ne v1, v0, :cond_6

    .line 225
    new-instance v5, Lfm/douban/net/ParamBundle;

    invoke-direct {v5}, Lfm/douban/net/ParamBundle;-><init>()V

    .line 226
    .restart local v5       #p:Lfm/douban/net/ParamBundle;
    const-string v24, ""

    .line 227
    .local v24, sig:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/douban/share/ShareMgr;->getInstance(Landroid/content/Context;)Lcom/douban/share/ShareMgr;

    move-result-object v1

    iget-object v1, v1, Lcom/douban/share/ShareMgr;->rtm:Lcom/douban/share/RenrenTokenManager;

    invoke-virtual {v1}, Lcom/douban/share/RenrenTokenManager;->getAccessToken()Ljava/lang/String;

    move-result-object v8

    .line 228
    .local v8, accessToken:Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    .line 229
    .local v11, callId:Ljava/lang/String;
    const-string v1, "method"

    const-string v2, "feed.publishFeed"

    invoke-virtual {v5, v1, v2}, Lfm/douban/net/ParamBundle;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const-string v1, "access_token"

    invoke-virtual {v5, v1, v8}, Lfm/douban/net/ParamBundle;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string v1, "v"

    const-string v2, "1.0"

    invoke-virtual {v5, v1, v2}, Lfm/douban/net/ParamBundle;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const-string v1, "format"

    const-string v2, "json"

    invoke-virtual {v5, v1, v2}, Lfm/douban/net/ParamBundle;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const-string v1, "call_id"

    invoke-virtual {v5, v1, v11}, Lfm/douban/net/ParamBundle;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string v1, "name"

    invoke-virtual {v5, v1, v12}, Lfm/douban/net/ParamBundle;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const-string v1, "description"

    invoke-virtual {v5, v1, v13}, Lfm/douban/net/ParamBundle;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const-string v1, "url"

    move-object/from16 v0, p4

    invoke-virtual {v5, v1, v0}, Lfm/douban/net/ParamBundle;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const-string v1, "image"

    move-object/from16 v0, v21

    invoke-virtual {v5, v1, v0}, Lfm/douban/net/ParamBundle;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    const-string v1, ""

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 239
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900d0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 240
    .local v18, m:Ljava/lang/String;
    const-string v1, "message"

    move-object/from16 v0, v18

    invoke-virtual {v5, v1, v0}, Lfm/douban/net/ParamBundle;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    .end local v18           #m:Ljava/lang/String;
    :goto_2
    new-instance v22, Ljava/lang/StringBuffer;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuffer;-><init>()V

    .line 246
    .local v22, sb:Ljava/lang/StringBuffer;
    new-instance v16, Ljava/util/TreeSet;

    invoke-virtual {v5}, Lfm/douban/net/ParamBundle;->keySet()Ljava/util/Collection;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 247
    .local v16, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 248
    .local v15, key:Ljava/lang/String;
    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 249
    const-string v1, "="

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 250
    invoke-virtual {v5, v15}, Lfm/douban/net/ParamBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 242
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v15           #key:Ljava/lang/String;
    .end local v16           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v22           #sb:Ljava/lang/StringBuffer;
    :cond_4
    const-string v1, "message"

    move-object/from16 v0, p3

    invoke-virtual {v5, v1, v0}, Lfm/douban/net/ParamBundle;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 252
    .restart local v14       #i$:Ljava/util/Iterator;
    .restart local v16       #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v22       #sb:Ljava/lang/StringBuffer;
    :cond_5
    const-string v1, "a228e4f49ca8456fb6deb88136b4f420"

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 253
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lfm/douban/util/Utils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 255
    const-string v1, "sig"

    move-object/from16 v0, v24

    invoke-virtual {v5, v1, v0}, Lfm/douban/net/ParamBundle;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    move-object/from16 v0, p0

    iget-object v1, v0, Lfm/douban/api/Api;->client:Lcom/loopj/android/http/AsyncHttpClient;

    const/4 v2, 0x0

    const-string v3, "http://api.renren.com/restserver.do"

    const/4 v4, 0x0

    const-string v6, "application/x-www-form-urlencoded"

    move-object/from16 v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/loopj/android/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;[Lorg/apache/http/Header;Lcom/loopj/android/http/RequestParams;Ljava/lang/String;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    goto/16 :goto_1

    .line 258
    .end local v5           #p:Lfm/douban/net/ParamBundle;
    .end local v8           #accessToken:Ljava/lang/String;
    .end local v11           #callId:Ljava/lang/String;
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v16           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v22           #sb:Ljava/lang/StringBuffer;
    .end local v24           #sig:Ljava/lang/String;
    :cond_6
    const/4 v1, 0x3

    move/from16 v0, p5

    if-ne v1, v0, :cond_0

    .line 259
    invoke-static/range {p1 .. p1}, Lcom/douban/share/ShareMgr;->getInstance(Landroid/content/Context;)Lcom/douban/share/ShareMgr;

    move-result-object v1

    iget-object v0, v1, Lcom/douban/share/ShareMgr;->ttm:Lcom/douban/share/TencentTokenManager;

    move-object/from16 v26, v0

    .line 260
    .local v26, st:Lcom/douban/share/TencentTokenManager;
    if-eqz v26, :cond_0

    .line 263
    invoke-virtual/range {v26 .. v26}, Lcom/douban/share/TencentTokenManager;->getAccessToken()Ljava/lang/String;

    move-result-object v10

    .line 264
    .restart local v10       #at:Ljava/lang/String;
    invoke-virtual/range {v26 .. v26}, Lcom/douban/share/TencentTokenManager;->getOpenid()Ljava/lang/String;

    move-result-object v20

    .line 266
    .local v20, openid:Ljava/lang/String;
    new-instance v5, Lfm/douban/net/ParamBundle;

    invoke-direct {v5}, Lfm/douban/net/ParamBundle;-><init>()V

    .line 268
    .restart local v5       #p:Lfm/douban/net/ParamBundle;
    const-string v1, "oauth_consumer_key"

    const-string v2, "801145839"

    invoke-virtual {v5, v1, v2}, Lfm/douban/net/ParamBundle;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const-string v1, "access_token"

    invoke-virtual {v5, v1, v10}, Lfm/douban/net/ParamBundle;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    const-string v1, "openid"

    move-object/from16 v0, v20

    invoke-virtual {v5, v1, v0}, Lfm/douban/net/ParamBundle;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const-string v1, "oauth_version"

    const-string v2, "2.a"

    invoke-virtual {v5, v1, v2}, Lfm/douban/net/ParamBundle;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    const-string v1, "format"

    const-string v2, "json"

    invoke-virtual {v5, v1, v2}, Lfm/douban/net/ParamBundle;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const-string v1, "content"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Lfm/douban/net/ParamBundle;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const-string v1, "pic_url"

    move-object/from16 v0, v21

    invoke-virtual {v5, v1, v0}, Lfm/douban/net/ParamBundle;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    move-object/from16 v0, p0

    iget-object v1, v0, Lfm/douban/api/Api;->client:Lcom/loopj/android/http/AsyncHttpClient;

    const/4 v2, 0x0

    const-string v3, "https://open.t.qq.com/api/t/add_pic_url"

    const/4 v4, 0x0

    const-string v6, "application/x-www-form-urlencoded"

    move-object/from16 v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/loopj/android/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;[Lorg/apache/http/Header;Lcom/loopj/android/http/RequestParams;Ljava/lang/String;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    goto/16 :goto_1
.end method

.method public stop(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 80
    iget-object v0, p0, Lfm/douban/api/Api;->client:Lcom/loopj/android/http/AsyncHttpClient;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lfm/douban/api/Api;->client:Lcom/loopj/android/http/AsyncHttpClient;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/loopj/android/http/AsyncHttpClient;->cancelRequests(Landroid/content/Context;Z)V

    .line 83
    :cond_0
    return-void
.end method

.method public verifyEmail(Ljava/lang/String;Ljava/lang/String;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V
    .locals 3
    .parameter "email"
    .parameter "pwd"
    .parameter "responseHandler"

    .prologue
    .line 289
    new-instance v0, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v0}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 290
    .local v0, p:Lcom/loopj/android/http/RequestParams;
    const-string v1, "email"

    invoke-virtual {v0, v1, p1}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    const-string v1, "pwd"

    invoke-virtual {v0, v1, p2}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    invoke-virtual {p0, v0}, Lfm/douban/api/Api;->addToken(Lcom/loopj/android/http/RequestParams;)V

    .line 293
    iget-object v1, p0, Lfm/douban/api/Api;->client:Lcom/loopj/android/http/AsyncHttpClient;

    const-string v2, "https://www.douban.com/j/app/radio/bind_email"

    invoke-virtual {v1, v2, v0, p3}, Lcom/loopj/android/http/AsyncHttpClient;->post(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 294
    return-void
.end method
