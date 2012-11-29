.class public Lnatalya/net/XmlCookieStore;
.super Ljava/lang/Object;

# interfaces
.implements Lnatalya/net/CookieStore;


# instance fields
.field private xml:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "natalya_cookie"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lnatalya/net/XmlCookieStore;->xml:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public getCookieString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lnatalya/net/XmlCookieStore;->xml:Landroid/content/SharedPreferences;

    const-string v1, "cookie_string"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCookieString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lnatalya/net/XmlCookieStore;->xml:Landroid/content/SharedPreferences;

    const-string v1, "cookie_string"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public saveCookie(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lnatalya/net/XmlCookieStore;->xml:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "cookie_string"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
