.class public Lcom/douban/share/RenrenTokenManager;
.super Lcom/douban/share/ShareToken;
.source "RenrenTokenManager.java"


# static fields
.field public static final API_KEY:Ljava/lang/String; = "4fc99789076e4651a363cb18de0a4709"

.field public static final APP_ID:Ljava/lang/String; = "167249"

.field public static final AUTHORIZE_URL:Ljava/lang/String; = "https://graph.renren.com/oauth/authorize"

.field public static final CANCEL_URI:Ljava/lang/String; = "rrconnect://cancel"

.field public static final DEFAULT_PERMISSIONS:[Ljava/lang/String; = null

.field public static final DEFAULT_REDIRECT_URI:Ljava/lang/String; = "http://douban.fm"

.field public static final RESTSERVER_URL:Ljava/lang/String; = "http://api.renren.com/restserver.do"

.field public static final SECRET_KEY:Ljava/lang/String; = "a228e4f49ca8456fb6deb88136b4f420"

.field public static final SP_RENREN:Ljava/lang/String; = "com_douban_share_renren"

.field private static final SP_RENREN_ACCESS_TOKEN:Ljava/lang/String; = "renren_access_token"

.field private static final SP_RENREN_EXPIRE:Ljava/lang/String; = "renren_expire"

.field private static final SP_RENREN_NAME:Ljava/lang/String; = "renren_name"

.field private static final SP_RENREN_USER_ID:Ljava/lang/String; = "renren_user_id"

.field public static final SUCCESS_URI:Ljava/lang/String; = "rrconnect://success"


# instance fields
.field private sp:Landroid/content/SharedPreferences;

.field private uid:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 39
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "publish_feed"

    aput-object v2, v0, v1

    sput-object v0, Lcom/douban/share/RenrenTokenManager;->DEFAULT_PERMISSIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/douban/share/ShareToken;-><init>()V

    .line 56
    const-string v0, "com_douban_share_renren"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/douban/share/RenrenTokenManager;->sp:Landroid/content/SharedPreferences;

    .line 57
    invoke-direct {p0}, Lcom/douban/share/RenrenTokenManager;->initFromSP()V

    .line 58
    return-void
.end method

.method private declared-synchronized initFromSP()V
    .locals 4

    .prologue
    .line 134
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/douban/share/RenrenTokenManager;->loadToken()V

    .line 136
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 139
    .local v0, current:J
    iget-wide v2, p0, Lcom/douban/share/RenrenTokenManager;->expireTime:J

    cmp-long v2, v2, v0

    if-gez v2, :cond_0

    .line 140
    invoke-virtual {p0}, Lcom/douban/share/RenrenTokenManager;->removeToken()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    :cond_0
    monitor-exit p0

    return-void

    .line 134
    .end local v0           #current:J
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private loadToken()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    .line 124
    iget-object v0, p0, Lcom/douban/share/RenrenTokenManager;->sp:Landroid/content/SharedPreferences;

    const-string v1, "renren_access_token"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/douban/share/RenrenTokenManager;->accessToken:Ljava/lang/String;

    .line 125
    iget-object v0, p0, Lcom/douban/share/RenrenTokenManager;->sp:Landroid/content/SharedPreferences;

    const-string v1, "renren_name"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/douban/share/RenrenTokenManager;->name:Ljava/lang/String;

    .line 126
    iget-object v0, p0, Lcom/douban/share/RenrenTokenManager;->sp:Landroid/content/SharedPreferences;

    const-string v1, "renren_user_id"

    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/douban/share/RenrenTokenManager;->uid:J

    .line 127
    iget-object v0, p0, Lcom/douban/share/RenrenTokenManager;->sp:Landroid/content/SharedPreferences;

    const-string v1, "renren_expire"

    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/douban/share/RenrenTokenManager;->expireTime:J

    .line 128
    return-void
.end method

.method private storeTokens()V
    .locals 4

    .prologue
    .line 150
    iget-object v1, p0, Lcom/douban/share/RenrenTokenManager;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 151
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v1, p0, Lcom/douban/share/RenrenTokenManager;->accessToken:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 152
    const-string v1, "renren_access_token"

    iget-object v2, p0, Lcom/douban/share/RenrenTokenManager;->accessToken:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 153
    const-string v1, "renren_expire"

    iget-wide v2, p0, Lcom/douban/share/RenrenTokenManager;->expireTime:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 157
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 158
    return-void

    .line 155
    :cond_0
    invoke-virtual {p0}, Lcom/douban/share/RenrenTokenManager;->removeToken()V

    goto :goto_0
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/douban/share/RenrenTokenManager;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/douban/share/RenrenTokenManager;->accessToken:Ljava/lang/String;

    .line 65
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/douban/share/RenrenTokenManager;->isAvailable()Z

    .line 110
    iget-object v0, p0, Lcom/douban/share/RenrenTokenManager;->name:Ljava/lang/String;

    return-object v0
.end method

.method getUid()J
    .locals 2

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/douban/share/RenrenTokenManager;->uid:J

    return-wide v0
.end method

.method public isAvailable()Z
    .locals 4

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/douban/share/RenrenTokenManager;->expireTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 75
    invoke-direct {p0}, Lcom/douban/share/RenrenTokenManager;->loadToken()V

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/douban/share/RenrenTokenManager;->accessToken:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/douban/share/RenrenTokenManager;->accessToken:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/douban/share/RenrenTokenManager;->expireTime:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 78
    const/4 v0, 0x1

    .line 81
    :goto_0
    return v0

    .line 80
    :cond_1
    invoke-virtual {p0}, Lcom/douban/share/RenrenTokenManager;->removeToken()V

    .line 81
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeToken()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 85
    iput-object v1, p0, Lcom/douban/share/RenrenTokenManager;->accessToken:Ljava/lang/String;

    .line 86
    iput-wide v2, p0, Lcom/douban/share/RenrenTokenManager;->expireTime:J

    .line 87
    iput-wide v2, p0, Lcom/douban/share/RenrenTokenManager;->uid:J

    .line 88
    iput-object v1, p0, Lcom/douban/share/RenrenTokenManager;->name:Ljava/lang/String;

    .line 90
    iget-object v1, p0, Lcom/douban/share/RenrenTokenManager;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 91
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "renren_expire"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 92
    const-string v1, "renren_access_token"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 93
    const-string v1, "renren_user_id"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 94
    const-string v1, "renren_name"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 95
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 96
    invoke-super {p0}, Lcom/douban/share/ShareToken;->removeToken()V

    .line 97
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 101
    invoke-super {p0, p1}, Lcom/douban/share/ShareToken;->setName(Ljava/lang/String;)V

    .line 102
    iget-object v1, p0, Lcom/douban/share/RenrenTokenManager;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 103
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "renren_name"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 104
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 105
    return-void
.end method

.method public updateTokens(Ljava/lang/String;)V
    .locals 8
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 114
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 115
    .local v3, uri:Landroid/net/Uri;
    const-string v4, "access_token"

    invoke-virtual {v3, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/douban/share/RenrenTokenManager;->accessToken:Ljava/lang/String;

    .line 116
    const-string v4, "expires_in"

    invoke-virtual {v3, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 117
    .local v2, expire:Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 118
    .local v0, current:J
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/douban/share/RenrenTokenManager;->expireTime:J

    .line 120
    invoke-direct {p0}, Lcom/douban/share/RenrenTokenManager;->storeTokens()V

    .line 121
    return-void
.end method
