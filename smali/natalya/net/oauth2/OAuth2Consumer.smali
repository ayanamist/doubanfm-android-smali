.class public Lnatalya/net/oauth2/OAuth2Consumer;
.super Ljava/lang/Object;


# instance fields
.field private consumerKey:Ljava/lang/String;

.field private consumerSecret:Ljava/lang/String;

.field private redirectUri:Ljava/lang/String;

.field private refreshToken:Ljava/lang/String;

.field private token:Ljava/lang/String;

.field private tokenExpiresIn:I

.field private userId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnatalya/net/oauth2/OAuth2Consumer;->consumerKey:Ljava/lang/String;

    iput-object p2, p0, Lnatalya/net/oauth2/OAuth2Consumer;->consumerSecret:Ljava/lang/String;

    iput-object p3, p0, Lnatalya/net/oauth2/OAuth2Consumer;->redirectUri:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getConsumerKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnatalya/net/oauth2/OAuth2Consumer;->consumerKey:Ljava/lang/String;

    return-object v0
.end method

.method public getConsumerSecret()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnatalya/net/oauth2/OAuth2Consumer;->consumerSecret:Ljava/lang/String;

    return-object v0
.end method

.method public getRedirectUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnatalya/net/oauth2/OAuth2Consumer;->redirectUri:Ljava/lang/String;

    return-object v0
.end method

.method public getRefreshToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnatalya/net/oauth2/OAuth2Consumer;->refreshToken:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnatalya/net/oauth2/OAuth2Consumer;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getTokenExpiresIn()I
    .locals 1

    iget v0, p0, Lnatalya/net/oauth2/OAuth2Consumer;->tokenExpiresIn:I

    return v0
.end method

.method public getUserId()I
    .locals 1

    iget v0, p0, Lnatalya/net/oauth2/OAuth2Consumer;->userId:I

    return v0
.end method

.method public setRefreshToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnatalya/net/oauth2/OAuth2Consumer;->refreshToken:Ljava/lang/String;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnatalya/net/oauth2/OAuth2Consumer;->token:Ljava/lang/String;

    return-void
.end method

.method public setTokenExpiresIn(I)V
    .locals 0

    iput p1, p0, Lnatalya/net/oauth2/OAuth2Consumer;->tokenExpiresIn:I

    return-void
.end method

.method public setUserId(I)V
    .locals 0

    iput p1, p0, Lnatalya/net/oauth2/OAuth2Consumer;->userId:I

    return-void
.end method

.method public sign(Lorg/apache/http/HttpRequest;)V
    .locals 4

    invoke-virtual {p0}, Lnatalya/net/oauth2/OAuth2Consumer;->getToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "Authorization"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bearer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lorg/apache/http/HttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
