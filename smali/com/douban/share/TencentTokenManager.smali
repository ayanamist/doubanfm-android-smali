.class public Lcom/douban/share/TencentTokenManager;
.super Lcom/douban/share/ShareToken;
.source "TencentTokenManager.java"


# static fields
.field public static final API_ADD_PIC_URL:Ljava/lang/String; = "https://open.t.qq.com/api/t/add_pic_url"

.field public static final API_INFO_URL:Ljava/lang/String; = "https://open.t.qq.com/api/user/info"

.field public static final API_KEY:Ljava/lang/String; = "801145839"

.field public static final API_SHARE_URL:Ljava/lang/String; = "http://open.t.qq.com/api/t/add_pic_url"

.field public static final AUTHORIZE_URL:Ljava/lang/String; = "https://open.t.qq.com/cgi-bin/oauth2/authorize"

.field public static final OAUTH_CALLBACK_URL:Ljava/lang/String; = "http://douban.fm/app#android_radio"

.field public static final SECRET_KEY:Ljava/lang/String; = "ffb5c9c297903c727ce84caed2e9ef5f"

.field public static final SP_TENCENT:Ljava/lang/String; = "com_douban_share_tencent"

.field private static final SP_TENCENT_ACCESSTOKEN:Ljava/lang/String; = "SP_TENCENT_ACCESSTOKEN"

.field private static final SP_TENCENT_EXPIRE:Ljava/lang/String; = "SP_TENCENT_EXPIRE"

.field private static final SP_TENCENT_NAME:Ljava/lang/String; = "SP_TENCENT_NAME"

.field private static final SP_TENCENT_OPENID:Ljava/lang/String; = "SP_TENCENT_OPENID"

.field private static final SP_TENCENT_OPENKEY:Ljava/lang/String; = "SP_TENCENT_OPENKEY"


# instance fields
.field private openid:Ljava/lang/String;

.field private openkey:Ljava/lang/String;

.field private sp:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/douban/share/ShareToken;-><init>()V

    .line 34
    const-string v0, "com_douban_share_tencent"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/douban/share/TencentTokenManager;->sp:Landroid/content/SharedPreferences;

    .line 35
    invoke-direct {p0}, Lcom/douban/share/TencentTokenManager;->readFromSP()V

    .line 36
    return-void
.end method

.method private readFromSP()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 114
    iget-object v2, p0, Lcom/douban/share/TencentTokenManager;->sp:Landroid/content/SharedPreferences;

    const-string v3, "SP_TENCENT_ACCESSTOKEN"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/douban/share/TencentTokenManager;->accessToken:Ljava/lang/String;

    .line 115
    iget-object v2, p0, Lcom/douban/share/TencentTokenManager;->sp:Landroid/content/SharedPreferences;

    const-string v3, "SP_TENCENT_OPENID"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/douban/share/TencentTokenManager;->openid:Ljava/lang/String;

    .line 116
    iget-object v2, p0, Lcom/douban/share/TencentTokenManager;->sp:Landroid/content/SharedPreferences;

    const-string v3, "SP_TENCENT_OPENKEY"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/douban/share/TencentTokenManager;->openkey:Ljava/lang/String;

    .line 117
    iget-object v2, p0, Lcom/douban/share/TencentTokenManager;->sp:Landroid/content/SharedPreferences;

    const-string v3, "SP_TENCENT_EXPIRE"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/douban/share/TencentTokenManager;->expireTime:J

    .line 118
    iget-object v2, p0, Lcom/douban/share/TencentTokenManager;->sp:Landroid/content/SharedPreferences;

    const-string v3, "SP_TENCENT_NAME"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/douban/share/TencentTokenManager;->name:Ljava/lang/String;

    .line 120
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 121
    .local v0, current:J
    iget-wide v2, p0, Lcom/douban/share/TencentTokenManager;->expireTime:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/douban/share/TencentTokenManager;->removeToken()V

    .line 124
    :cond_0
    return-void
.end method

.method private storeOpenkeys()V
    .locals 4

    .prologue
    .line 105
    iget-object v1, p0, Lcom/douban/share/TencentTokenManager;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 106
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "SP_TENCENT_ACCESSTOKEN"

    iget-object v2, p0, Lcom/douban/share/TencentTokenManager;->accessToken:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 107
    const-string v1, "SP_TENCENT_OPENID"

    iget-object v2, p0, Lcom/douban/share/TencentTokenManager;->openid:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 108
    const-string v1, "SP_TENCENT_OPENKEY"

    iget-object v2, p0, Lcom/douban/share/TencentTokenManager;->openkey:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 109
    const-string v1, "SP_TENCENT_EXPIRE"

    iget-wide v2, p0, Lcom/douban/share/TencentTokenManager;->expireTime:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 110
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 111
    return-void
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/douban/share/TencentTokenManager;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/douban/share/TencentTokenManager;->isAvailable()Z

    .line 41
    iget-object v0, p0, Lcom/douban/share/TencentTokenManager;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOpenid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/douban/share/TencentTokenManager;->openid:Ljava/lang/String;

    return-object v0
.end method

.method public isAvailable()Z
    .locals 6

    .prologue
    .line 81
    iget-object v2, p0, Lcom/douban/share/TencentTokenManager;->sp:Landroid/content/SharedPreferences;

    const-string v3, "SP_TENCENT_EXPIRE"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/douban/share/TencentTokenManager;->expireTime:J

    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 83
    .local v0, current:J
    iget-wide v2, p0, Lcom/douban/share/TencentTokenManager;->expireTime:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/douban/share/TencentTokenManager;->removeToken()V

    .line 85
    const/4 v2, 0x0

    .line 87
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public removeToken()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    .line 63
    iget-object v1, p0, Lcom/douban/share/TencentTokenManager;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 64
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "SP_TENCENT_ACCESSTOKEN"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 65
    const-string v1, "SP_TENCENT_OPENID"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 66
    const-string v1, "SP_TENCENT_OPENKEY"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 67
    const-string v1, "SP_TENCENT_EXPIRE"

    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 68
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 70
    iput-object v2, p0, Lcom/douban/share/TencentTokenManager;->accessToken:Ljava/lang/String;

    .line 71
    iput-object v2, p0, Lcom/douban/share/TencentTokenManager;->openid:Ljava/lang/String;

    .line 72
    iput-object v2, p0, Lcom/douban/share/TencentTokenManager;->openkey:Ljava/lang/String;

    .line 73
    iput-wide v3, p0, Lcom/douban/share/TencentTokenManager;->expireTime:J

    .line 74
    iput-object v2, p0, Lcom/douban/share/TencentTokenManager;->name:Ljava/lang/String;

    .line 75
    invoke-super {p0}, Lcom/douban/share/ShareToken;->removeToken()V

    .line 76
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 2
    .parameter "n"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/douban/share/TencentTokenManager;->name:Ljava/lang/String;

    .line 56
    iget-object v1, p0, Lcom/douban/share/TencentTokenManager;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 57
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "SP_TENCENT_NAME"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 58
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 59
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
    .line 93
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 94
    .local v3, uri:Landroid/net/Uri;
    const-string v4, "access_token"

    invoke-virtual {v3, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/douban/share/TencentTokenManager;->accessToken:Ljava/lang/String;

    .line 95
    const-string v4, "expires_in"

    invoke-virtual {v3, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 97
    .local v2, expire:Ljava/lang/String;
    const-string v4, "openid"

    invoke-virtual {v3, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/douban/share/TencentTokenManager;->openid:Ljava/lang/String;

    .line 98
    const-string v4, "openkey"

    invoke-virtual {v3, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/douban/share/TencentTokenManager;->openkey:Ljava/lang/String;

    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 100
    .local v0, current:J
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/douban/share/TencentTokenManager;->expireTime:J

    .line 101
    invoke-direct {p0}, Lcom/douban/share/TencentTokenManager;->storeOpenkeys()V

    .line 102
    return-void
.end method
