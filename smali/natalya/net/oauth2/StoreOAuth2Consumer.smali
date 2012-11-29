.class public Lnatalya/net/oauth2/StoreOAuth2Consumer;
.super Lnatalya/net/oauth2/OAuth2Consumer;


# instance fields
.field private store:Lnatalya/net/oauth2/OAuth2Store;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnatalya/net/oauth2/OAuth2Store;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lnatalya/net/oauth2/OAuth2Consumer;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p4, p0, Lnatalya/net/oauth2/StoreOAuth2Consumer;->store:Lnatalya/net/oauth2/OAuth2Store;

    return-void
.end method


# virtual methods
.method public getRefreshToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnatalya/net/oauth2/StoreOAuth2Consumer;->store:Lnatalya/net/oauth2/OAuth2Store;

    invoke-interface {v0}, Lnatalya/net/oauth2/OAuth2Store;->getRefreshToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnatalya/net/oauth2/StoreOAuth2Consumer;->store:Lnatalya/net/oauth2/OAuth2Store;

    invoke-interface {v0}, Lnatalya/net/oauth2/OAuth2Store;->getToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTokenExpiresIn()I
    .locals 1

    iget-object v0, p0, Lnatalya/net/oauth2/StoreOAuth2Consumer;->store:Lnatalya/net/oauth2/OAuth2Store;

    invoke-interface {v0}, Lnatalya/net/oauth2/OAuth2Store;->getTokenExpiresIn()I

    move-result v0

    return v0
.end method

.method public getUserId()I
    .locals 1

    iget-object v0, p0, Lnatalya/net/oauth2/StoreOAuth2Consumer;->store:Lnatalya/net/oauth2/OAuth2Store;

    invoke-interface {v0}, Lnatalya/net/oauth2/OAuth2Store;->getUserId()I

    move-result v0

    return v0
.end method

.method public setRefreshToken(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lnatalya/net/oauth2/StoreOAuth2Consumer;->store:Lnatalya/net/oauth2/OAuth2Store;

    invoke-interface {v0, p1}, Lnatalya/net/oauth2/OAuth2Store;->setRefreshToken(Ljava/lang/String;)V

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lnatalya/net/oauth2/StoreOAuth2Consumer;->store:Lnatalya/net/oauth2/OAuth2Store;

    invoke-interface {v0, p1}, Lnatalya/net/oauth2/OAuth2Store;->setToken(Ljava/lang/String;)V

    return-void
.end method

.method public setTokenExpiresIn(I)V
    .locals 1

    iget-object v0, p0, Lnatalya/net/oauth2/StoreOAuth2Consumer;->store:Lnatalya/net/oauth2/OAuth2Store;

    invoke-interface {v0, p1}, Lnatalya/net/oauth2/OAuth2Store;->setTokenExpiresIn(I)V

    return-void
.end method

.method public setUserId(I)V
    .locals 1

    iget-object v0, p0, Lnatalya/net/oauth2/StoreOAuth2Consumer;->store:Lnatalya/net/oauth2/OAuth2Store;

    invoke-interface {v0, p1}, Lnatalya/net/oauth2/OAuth2Store;->setUserId(I)V

    return-void
.end method
