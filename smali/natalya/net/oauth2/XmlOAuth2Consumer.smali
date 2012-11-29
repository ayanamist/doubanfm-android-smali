.class public Lnatalya/net/oauth2/XmlOAuth2Consumer;
.super Lnatalya/net/oauth2/OAuth2Consumer;


# instance fields
.field private xml:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p2, p3, p4}, Lnatalya/net/oauth2/OAuth2Consumer;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "natalya_oauth2_consumer"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lnatalya/net/oauth2/XmlOAuth2Consumer;->xml:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public getRefreshToken()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lnatalya/net/oauth2/XmlOAuth2Consumer;->xml:Landroid/content/SharedPreferences;

    const-string v1, "refresh_token"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lnatalya/net/oauth2/XmlOAuth2Consumer;->xml:Landroid/content/SharedPreferences;

    const-string v1, "token"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTokenExpiresIn()I
    .locals 3

    iget-object v0, p0, Lnatalya/net/oauth2/XmlOAuth2Consumer;->xml:Landroid/content/SharedPreferences;

    const-string v1, "token_expires_in"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getUserId()I
    .locals 3

    iget-object v0, p0, Lnatalya/net/oauth2/XmlOAuth2Consumer;->xml:Landroid/content/SharedPreferences;

    const-string v1, "user_id"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public setRefreshToken(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lnatalya/net/oauth2/XmlOAuth2Consumer;->xml:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "refresh_token"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lnatalya/net/oauth2/XmlOAuth2Consumer;->xml:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "token"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setTokenExpiresIn(I)V
    .locals 2

    iget-object v0, p0, Lnatalya/net/oauth2/XmlOAuth2Consumer;->xml:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "token_expires_in"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setUserId(I)V
    .locals 2

    iget-object v0, p0, Lnatalya/net/oauth2/XmlOAuth2Consumer;->xml:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "user_id"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
