.class public Lcom/douban/radio/app/FMSinaAuth;
.super Lcom/douban/radio/app/FMActivity;
.source "FMSinaAuth.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/douban/radio/app/FMSinaAuth$MyWebViewClient;
    }
.end annotation


# static fields
.field private static final SINA_COOKIE_NAME:Ljava/lang/String; = "SinaReqTkKey"

.field private static final TAG:Ljava/lang/String; = "FMSinaAuth"


# instance fields
.field private cookie:Ljava/lang/String;

.field private fmsp:Lfm/douban/model/FMSharedPreferences;

.field private handler:Lcom/loopj/android/http/AsyncHttpResponseHandler;

.field private loading:Landroid/view/View;

.field private login_url:Ljava/lang/String;

.field private mgr:Landroid/webkit/CookieManager;

.field private rm:Lfm/douban/controller/RadioManager;

.field private step:I

.field private web:Lfm/douban/api/Api;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/douban/radio/app/FMActivity;-><init>()V

    .line 226
    return-void
.end method

.method static synthetic access$102(Lcom/douban/radio/app/FMSinaAuth;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput p1, p0, Lcom/douban/radio/app/FMSinaAuth;->step:I

    return p1
.end method

.method static synthetic access$108(Lcom/douban/radio/app/FMSinaAuth;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/douban/radio/app/FMSinaAuth;->step:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/douban/radio/app/FMSinaAuth;->step:I

    return v0
.end method

.method static synthetic access$200(Lcom/douban/radio/app/FMSinaAuth;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/douban/radio/app/FMSinaAuth;->loading:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/douban/radio/app/FMSinaAuth;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/douban/radio/app/FMSinaAuth;->login_url:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/douban/radio/app/FMSinaAuth;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/douban/radio/app/FMSinaAuth;->checkUrl(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/douban/radio/app/FMSinaAuth;)Landroid/webkit/WebView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/douban/radio/app/FMSinaAuth;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/douban/radio/app/FMSinaAuth;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/douban/radio/app/FMSinaAuth;->loginSina(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/douban/radio/app/FMSinaAuth;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/douban/radio/app/FMSinaAuth;->checkCookie()V

    return-void
.end method

.method static synthetic access$800(Lcom/douban/radio/app/FMSinaAuth;)Lfm/douban/controller/RadioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/douban/radio/app/FMSinaAuth;->rm:Lfm/douban/controller/RadioManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/douban/radio/app/FMSinaAuth;)Lfm/douban/api/Api;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/douban/radio/app/FMSinaAuth;->web:Lfm/douban/api/Api;

    return-object v0
.end method

.method private checkCookie()V
    .locals 4

    .prologue
    .line 180
    const-string v1, "FMSinaAuth"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasCookies = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/douban/radio/app/FMSinaAuth;->mgr:Landroid/webkit/CookieManager;

    invoke-virtual {v3}, Landroid/webkit/CookieManager;->hasCookies()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const-string v0, "douban.com"

    .line 182
    .local v0, cookie_domain:Ljava/lang/String;
    iget-object v1, p0, Lcom/douban/radio/app/FMSinaAuth;->mgr:Landroid/webkit/CookieManager;

    invoke-virtual {v1, v0}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/douban/radio/app/FMSinaAuth;->cookie:Ljava/lang/String;

    .line 183
    iget-object v1, p0, Lcom/douban/radio/app/FMSinaAuth;->cookie:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 184
    const-string v1, "FMSinaAuth"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cookie "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/douban/radio/app/FMSinaAuth;->cookie:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_0
    return-void
.end method

.method private checkUrl(Ljava/lang/String;)Z
    .locals 3
    .parameter "url"

    .prologue
    .line 172
    const-string v0, "FMSinaAuth"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "url "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget v0, p0, Lcom/douban/radio/app/FMSinaAuth;->step:I

    if-lez v0, :cond_0

    const-string v0, "http://www.douban.com/j/app/radio/partner/sina/callback"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loginSina(Ljava/lang/String;)V
    .locals 17
    .parameter "callback"

    .prologue
    .line 189
    move-object/from16 v10, p1

    .line 192
    .local v10, url:Ljava/lang/String;
    const-string v5, "douban.com"

    .line 193
    .local v5, cookie_domain:Ljava/lang/String;
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v14

    invoke-virtual {v14}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 194
    const-string v9, ""

    .line 195
    .local v9, thevalue:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/douban/radio/app/FMSinaAuth;->cookie:Ljava/lang/String;

    const-string v15, ";"

    invoke-virtual {v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 196
    .local v13, values:[Ljava/lang/String;
    move-object v1, v13

    .local v1, arr$:[Ljava/lang/String;
    array-length v8, v1

    .local v8, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_0
    if-ge v7, v8, :cond_1

    aget-object v12, v1, v7

    .line 197
    .local v12, value:Ljava/lang/String;
    const-string v14, "="

    invoke-virtual {v12, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 198
    .local v11, v:[Ljava/lang/String;
    const/4 v14, 0x0

    aget-object v14, v11, v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    const-string v15, "SinaReqTkKey"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 199
    const/4 v14, 0x1

    aget-object v14, v11, v14

    const/4 v15, 0x1

    const/16 v16, 0x1

    aget-object v16, v11, v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 196
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 202
    .end local v11           #v:[Ljava/lang/String;
    .end local v12           #value:Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/douban/radio/app/FMSinaAuth;->rm:Lfm/douban/controller/RadioManager;

    invoke-virtual {v14}, Lfm/douban/controller/RadioManager;->getBlacklistCookieStore()Lfm/douban/net/BlacklistCookieStore;

    move-result-object v14

    invoke-virtual {v14}, Lfm/douban/net/BlacklistCookieStore;->getCookies()Ljava/util/List;

    move-result-object v6

    .line 203
    .local v6, cookies:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    const/4 v2, 0x0

    .line 204
    .local v2, bidCookie:Lorg/apache/http/cookie/Cookie;
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/http/cookie/Cookie;

    .line 205
    .local v4, co:Lorg/apache/http/cookie/Cookie;
    invoke-interface {v4}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "bid"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 206
    move-object v2, v4

    goto :goto_1

    .line 209
    .end local v4           #co:Lorg/apache/http/cookie/Cookie;
    :cond_3
    new-instance v3, Lorg/apache/http/impl/cookie/BasicClientCookie;

    const-string v14, "SinaReqTkKey"

    invoke-direct {v3, v14, v9}, Lorg/apache/http/impl/cookie/BasicClientCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    .local v3, c:Lorg/apache/http/impl/cookie/BasicClientCookie;
    invoke-virtual {v3, v5}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setDomain(Ljava/lang/String;)V

    .line 211
    if-eqz v2, :cond_4

    .line 212
    invoke-interface {v2}, Lorg/apache/http/cookie/Cookie;->getPath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setPath(Ljava/lang/String;)V

    .line 213
    invoke-interface {v2}, Lorg/apache/http/cookie/Cookie;->getExpiryDate()Ljava/util/Date;

    move-result-object v14

    invoke-virtual {v3, v14}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setExpiryDate(Ljava/util/Date;)V

    .line 217
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/douban/radio/app/FMSinaAuth;->rm:Lfm/douban/controller/RadioManager;

    invoke-virtual {v14}, Lfm/douban/controller/RadioManager;->getBlacklistCookieStore()Lfm/douban/net/BlacklistCookieStore;

    move-result-object v14

    invoke-virtual {v14, v3}, Lfm/douban/net/BlacklistCookieStore;->addCookie(Lorg/apache/http/cookie/Cookie;)V

    .line 220
    const-string v14, "FMSinaAuth"

    const-string v15, "added sina cookie"

    invoke-static {v14, v15}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/douban/radio/app/FMSinaAuth;->rm:Lfm/douban/controller/RadioManager;

    invoke-virtual {v14}, Lfm/douban/controller/RadioManager;->listCookies()V

    .line 222
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/douban/radio/app/FMSinaAuth;->web:Lfm/douban/api/Api;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/douban/radio/app/FMSinaAuth;->handler:Lcom/loopj/android/http/AsyncHttpResponseHandler;

    invoke-virtual {v14, v10, v15}, Lfm/douban/api/Api;->loginSina(Ljava/lang/String;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 223
    return-void

    .line 215
    :cond_4
    const-string v14, "/"

    invoke-virtual {v3, v14}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setPath(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private makeHandler()V
    .locals 1

    .prologue
    .line 274
    new-instance v0, Lcom/douban/radio/app/FMSinaAuth$2;

    invoke-direct {v0, p0}, Lcom/douban/radio/app/FMSinaAuth$2;-><init>(Lcom/douban/radio/app/FMSinaAuth;)V

    iput-object v0, p0, Lcom/douban/radio/app/FMSinaAuth;->handler:Lcom/loopj/android/http/AsyncHttpResponseHandler;

    .line 381
    return-void
.end method


# virtual methods
.method protected checkCurrentUser(Lfm/douban/model/Token;)V
    .locals 5
    .parameter "t"

    .prologue
    .line 389
    iget-object v1, p1, Lfm/douban/model/Token;->user_id:Ljava/lang/String;

    .line 391
    .local v1, uid:Ljava/lang/String;
    iget-object v2, p0, Lcom/douban/radio/app/FMSinaAuth;->fmsp:Lfm/douban/model/FMSharedPreferences;

    const-string v3, "last_user"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lfm/douban/model/FMSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 392
    .local v0, lastUid:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 393
    iget-object v2, p0, Lcom/douban/radio/app/FMSinaAuth;->rm:Lfm/douban/controller/RadioManager;

    invoke-virtual {v2}, Lfm/douban/controller/RadioManager;->getSongManager()Lfm/douban/controller/SongManager;

    move-result-object v2

    invoke-virtual {v2}, Lfm/douban/controller/SongManager;->clearup()V

    .line 395
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "config"

    .prologue
    .line 151
    invoke-super {p0, p1}, Lcom/douban/radio/app/FMActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 152
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 62
    invoke-super {p0, p1}, Lcom/douban/radio/app/FMActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-static {p0}, Lfm/douban/FmApp;->getRadioManager(Landroid/content/Context;)Lfm/douban/controller/RadioManager;

    move-result-object v1

    iput-object v1, p0, Lcom/douban/radio/app/FMSinaAuth;->rm:Lfm/douban/controller/RadioManager;

    .line 65
    iget-object v1, p0, Lcom/douban/radio/app/FMSinaAuth;->rm:Lfm/douban/controller/RadioManager;

    invoke-virtual {v1}, Lfm/douban/controller/RadioManager;->getApi()Lfm/douban/api/Api;

    move-result-object v1

    iput-object v1, p0, Lcom/douban/radio/app/FMSinaAuth;->web:Lfm/douban/api/Api;

    .line 66
    iget-object v1, p0, Lcom/douban/radio/app/FMSinaAuth;->rm:Lfm/douban/controller/RadioManager;

    invoke-virtual {v1}, Lfm/douban/controller/RadioManager;->getSharedPreferences()Lfm/douban/model/FMSharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/douban/radio/app/FMSinaAuth;->fmsp:Lfm/douban/model/FMSharedPreferences;

    .line 68
    invoke-direct {p0}, Lcom/douban/radio/app/FMSinaAuth;->makeHandler()V

    .line 70
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 71
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/CookieSyncManager;->startSync()V

    .line 73
    const v1, 0x7f030002

    invoke-virtual {p0, v1}, Lcom/douban/radio/app/FMSinaAuth;->setContentView(I)V

    .line 74
    const v1, 0x7f08001d

    invoke-virtual {p0, v1}, Lcom/douban/radio/app/FMSinaAuth;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/douban/radio/app/FMSinaAuth;->webView:Landroid/webkit/WebView;

    .line 75
    const v1, 0x7f08001e

    invoke-virtual {p0, v1}, Lcom/douban/radio/app/FMSinaAuth;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/douban/radio/app/FMSinaAuth;->loading:Landroid/view/View;

    .line 76
    iget-object v1, p0, Lcom/douban/radio/app/FMSinaAuth;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 77
    .local v0, setting:Landroid/webkit/WebSettings;
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 78
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 79
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 80
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 81
    iget-object v1, p0, Lcom/douban/radio/app/FMSinaAuth;->webView:Landroid/webkit/WebView;

    new-instance v2, Lcom/douban/radio/app/FMSinaAuth$1;

    invoke-direct {v2, p0}, Lcom/douban/radio/app/FMSinaAuth$1;-><init>(Lcom/douban/radio/app/FMSinaAuth;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 88
    iget-object v1, p0, Lcom/douban/radio/app/FMSinaAuth;->webView:Landroid/webkit/WebView;

    new-instance v2, Lcom/douban/radio/app/FMSinaAuth$MyWebViewClient;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/douban/radio/app/FMSinaAuth$MyWebViewClient;-><init>(Lcom/douban/radio/app/FMSinaAuth;Lcom/douban/radio/app/FMSinaAuth$1;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 89
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    iput-object v1, p0, Lcom/douban/radio/app/FMSinaAuth;->mgr:Landroid/webkit/CookieManager;

    .line 90
    iget-object v1, p0, Lcom/douban/radio/app/FMSinaAuth;->mgr:Landroid/webkit/CookieManager;

    invoke-virtual {v1, v4}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 91
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 133
    :try_start_0
    iget-object v1, p0, Lcom/douban/radio/app/FMSinaAuth;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :goto_0
    invoke-super {p0}, Lcom/douban/radio/app/FMActivity;->onDestroy()V

    .line 138
    return-void

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 142
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/douban/radio/app/FMSinaAuth;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/douban/radio/app/FMSinaAuth;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 144
    const/4 v0, 0x1

    .line 146
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/douban/radio/app/FMActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 119
    invoke-super {p0}, Lcom/douban/radio/app/FMActivity;->onPause()V

    .line 120
    invoke-static {p0}, Lcom/mobclick/android/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 121
    const-string v1, "FMSinaAuth"

    const-string v2, "onPause"

    invoke-static {v1, v2}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :try_start_0
    const-class v1, Landroid/webkit/WebView;

    const-string v2, "freeMemory"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 124
    .local v0, method:Ljava/lang/reflect/Method;
    iget-object v1, p0, Lcom/douban/radio/app/FMSinaAuth;->webView:Landroid/webkit/WebView;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/CookieSyncManager;->startSync()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    .end local v0           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 126
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "state"

    .prologue
    .line 162
    invoke-super {p0, p1}, Lcom/douban/radio/app/FMActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 163
    iget-object v0, p0, Lcom/douban/radio/app/FMSinaAuth;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 164
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 100
    invoke-super {p0}, Lcom/douban/radio/app/FMActivity;->onResume()V

    .line 101
    invoke-static {p0}, Lcom/mobclick/android/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 103
    invoke-virtual {p0}, Lcom/douban/radio/app/FMSinaAuth;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 104
    .local v0, data:Landroid/content/Intent;
    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/douban/radio/app/FMSinaAuth;->login_url:Ljava/lang/String;

    .line 105
    iget-object v1, p0, Lcom/douban/radio/app/FMSinaAuth;->login_url:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/douban/radio/app/FMSinaAuth;->finish()V

    .line 115
    :goto_0
    return-void

    .line 108
    :cond_0
    const-string v1, "FMSinaAuth"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "url "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/douban/radio/app/FMSinaAuth;->login_url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-direct {p0}, Lcom/douban/radio/app/FMSinaAuth;->checkCookie()V

    .line 111
    iget-object v1, p0, Lcom/douban/radio/app/FMSinaAuth;->mgr:Landroid/webkit/CookieManager;

    invoke-virtual {v1}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 112
    const/4 v1, 0x0

    iput v1, p0, Lcom/douban/radio/app/FMSinaAuth;->step:I

    .line 113
    iget-object v1, p0, Lcom/douban/radio/app/FMSinaAuth;->webView:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/douban/radio/app/FMSinaAuth;->login_url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "outState"

    .prologue
    .line 156
    invoke-super {p0, p1}, Lcom/douban/radio/app/FMActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 157
    iget-object v0, p0, Lcom/douban/radio/app/FMSinaAuth;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 158
    return-void
.end method
