.class public Lcom/douban/share/ShareToken;
.super Ljava/lang/Object;
.source "ShareToken.java"


# instance fields
.field protected accessToken:Ljava/lang/String;

.field protected expireTime:J

.field protected name:Ljava/lang/String;

.field protected responseStr:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/douban/share/ShareToken;->expireTime:J

    return-void
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/douban/share/ShareToken;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/douban/share/ShareToken;->name:Ljava/lang/String;

    return-object v0
.end method

.method protected getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "parameter"

    .prologue
    .line 42
    const/4 v4, 0x0

    .line 43
    .local v4, value:Ljava/lang/String;
    iget-object v0, p0, Lcom/douban/share/ShareToken;->responseStr:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 44
    .local v3, str:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x3d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 45
    const-string v5, "="

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 49
    .end local v3           #str:Ljava/lang/String;
    :cond_0
    return-object v4

    .line 43
    .restart local v3       #str:Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/douban/share/ShareToken;->accessToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeToken()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/douban/share/ShareToken;->name:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/douban/share/ShareToken;->accessToken:Ljava/lang/String;

    .line 8
    return-void
.end method

.method public setAccessToken(Ljava/lang/String;)V
    .locals 0
    .parameter "accessToken"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/douban/share/ShareToken;->accessToken:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 18
    iput-object p1, p0, Lcom/douban/share/ShareToken;->name:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public updateExpireTime(J)V
    .locals 2
    .parameter "time"

    .prologue
    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/douban/share/ShareToken;->expireTime:J

    .line 29
    return-void
.end method

.method public updateTokens(Ljava/lang/String;)V
    .locals 0
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 33
    return-void
.end method
