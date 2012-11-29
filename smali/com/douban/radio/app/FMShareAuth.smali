.class public Lcom/douban/radio/app/FMShareAuth;
.super Lcom/douban/radio/app/FMActivity;
.source "FMShareAuth.java"


# static fields
.field protected static final GET_RENREN_ACCESS_TOKEN:I = 0x190

.field protected static final GET_SINA_ACCESS_TOKEN:I = 0x12c

.field protected static final GET_SINA_NAME:I = 0x12d

.field protected static final GET_TENCENT_ACCESS_TOKEN:I = 0x1f4

.field public static final KEY_AUTH_SOURCE:Ljava/lang/String; = "key_auth_source"

.field private static final TAG:Ljava/lang/String; = "FMShareAuth"


# instance fields
.field private api:Lfm/douban/api/Api;

.field private callbackUrl:Ljava/lang/String;

.field private loading:Landroid/view/View;

.field private shareAuthHandler:Landroid/os/Handler;

.field private source:I

.field private webView:Landroid/webkit/WebView;

.field private webViewClient:Landroid/webkit/WebViewClient;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/douban/radio/app/FMActivity;-><init>()V

    .line 62
    new-instance v0, Lcom/douban/radio/app/FMShareAuth$1;

    invoke-direct {v0, p0}, Lcom/douban/radio/app/FMShareAuth$1;-><init>(Lcom/douban/radio/app/FMShareAuth;)V

    iput-object v0, p0, Lcom/douban/radio/app/FMShareAuth;->shareAuthHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/douban/radio/app/FMShareAuth;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/douban/radio/app/FMShareAuth;->loading:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/douban/radio/app/FMShareAuth;)Lfm/douban/api/Api;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/douban/radio/app/FMShareAuth;->api:Lfm/douban/api/Api;

    return-object v0
.end method

.method static synthetic access$200(Lcom/douban/radio/app/FMShareAuth;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/douban/radio/app/FMShareAuth;->callbackUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/douban/radio/app/FMShareAuth;)Landroid/webkit/WebView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/douban/radio/app/FMShareAuth;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/douban/radio/app/FMShareAuth;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/douban/radio/app/FMShareAuth;->source:I

    return v0
.end method

.method static synthetic access$500(Lcom/douban/radio/app/FMShareAuth;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/douban/radio/app/FMShareAuth;->shareAuthHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private loadRenren()V
    .locals 6

    .prologue
    .line 393
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 394
    .local v0, params:Landroid/os/Bundle;
    const-string v4, "client_id"

    const-string v5, "4fc99789076e4651a363cb18de0a4709"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    const-string v4, "redirect_uri"

    const-string v5, "http://douban.fm"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    const-string v4, "response_type"

    const-string v5, "token"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    const-string v4, "display"

    const-string v5, "touch"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    sget-object v1, Lcom/douban/share/RenrenTokenManager;->DEFAULT_PERMISSIONS:[Ljava/lang/String;

    .line 401
    .local v1, permissions:[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v4, v1

    if-lez v4, :cond_0

    .line 402
    const-string v4, " "

    invoke-static {v4, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 403
    .local v2, scope:Ljava/lang/String;
    const-string v4, "scope"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    .end local v2           #scope:Ljava/lang/String;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "https://graph.renren.com/oauth/authorize?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Lfm/douban/util/Utils;->encodeUrl(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 408
    .local v3, url:Ljava/lang/String;
    iget-object v4, p0, Lcom/douban/radio/app/FMShareAuth;->webView:Landroid/webkit/WebView;

    invoke-virtual {v4, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 409
    return-void
.end method

.method private loadSina()V
    .locals 4

    .prologue
    .line 381
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 382
    .local v0, params:Landroid/os/Bundle;
    const-string v2, "client_id"

    sget-object v3, Lcom/douban/share/SinaTokenManager;->APP_KEY:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    const-string v2, "redirect_uri"

    const-string v3, "http://douban.fm/"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    const-string v2, "response_type"

    const-string v3, "token"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    const-string v2, "display"

    const-string v3, "mobile"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://api.weibo.com/oauth2/authorize?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lfm/douban/util/Utils;->encodeUrl(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 389
    .local v1, url:Ljava/lang/String;
    iget-object v2, p0, Lcom/douban/radio/app/FMShareAuth;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 390
    return-void
.end method

.method private loadTencent()V
    .locals 4

    .prologue
    .line 412
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 413
    .local v0, params:Landroid/os/Bundle;
    const-string v2, "client_id"

    const-string v3, "801145839"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    const-string v2, "redirect_uri"

    const-string v3, "http://douban.fm/app#android_radio"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    const-string v2, "response_type"

    const-string v3, "token"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://open.t.qq.com/cgi-bin/oauth2/authorize?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lfm/douban/util/Utils;->encodeUrl(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 418
    .local v1, url:Ljava/lang/String;
    iget-object v2, p0, Lcom/douban/radio/app/FMShareAuth;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 419
    return-void
.end method


# virtual methods
.method protected initWeb()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 299
    iget-object v0, p0, Lcom/douban/radio/app/FMShareAuth;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 300
    iget-object v0, p0, Lcom/douban/radio/app/FMShareAuth;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 301
    iget-object v0, p0, Lcom/douban/radio/app/FMShareAuth;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 302
    iget-object v0, p0, Lcom/douban/radio/app/FMShareAuth;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 303
    iget-object v0, p0, Lcom/douban/radio/app/FMShareAuth;->webView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 304
    new-instance v0, Lcom/douban/radio/app/FMShareAuth$2;

    invoke-direct {v0, p0}, Lcom/douban/radio/app/FMShareAuth$2;-><init>(Lcom/douban/radio/app/FMShareAuth;)V

    iput-object v0, p0, Lcom/douban/radio/app/FMShareAuth;->webViewClient:Landroid/webkit/WebViewClient;

    .line 368
    iget-object v0, p0, Lcom/douban/radio/app/FMShareAuth;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/douban/radio/app/FMShareAuth$3;

    invoke-direct {v1, p0}, Lcom/douban/radio/app/FMShareAuth$3;-><init>(Lcom/douban/radio/app/FMShareAuth;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 376
    iget-object v0, p0, Lcom/douban/radio/app/FMShareAuth;->webView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/douban/radio/app/FMShareAuth;->webViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 378
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "config"

    .prologue
    .line 278
    invoke-super {p0, p1}, Lcom/douban/radio/app/FMActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 279
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 213
    invoke-super {p0, p1}, Lcom/douban/radio/app/FMActivity;->onCreate(Landroid/os/Bundle;)V

    .line 215
    const v1, 0x7f030002

    invoke-virtual {p0, v1}, Lcom/douban/radio/app/FMShareAuth;->setContentView(I)V

    .line 216
    const v1, 0x7f08001d

    invoke-virtual {p0, v1}, Lcom/douban/radio/app/FMShareAuth;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/douban/radio/app/FMShareAuth;->webView:Landroid/webkit/WebView;

    .line 217
    const v1, 0x7f08001e

    invoke-virtual {p0, v1}, Lcom/douban/radio/app/FMShareAuth;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/douban/radio/app/FMShareAuth;->loading:Landroid/view/View;

    .line 218
    iget-object v1, p0, Lcom/douban/radio/app/FMShareAuth;->loading:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 219
    invoke-static {p0}, Lfm/douban/FmApp;->getRadioManager(Landroid/content/Context;)Lfm/douban/controller/RadioManager;

    move-result-object v1

    invoke-virtual {v1}, Lfm/douban/controller/RadioManager;->getApi()Lfm/douban/api/Api;

    move-result-object v1

    iput-object v1, p0, Lcom/douban/radio/app/FMShareAuth;->api:Lfm/douban/api/Api;

    .line 221
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 222
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 223
    .local v0, cmr:Landroid/webkit/CookieManager;
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 225
    invoke-virtual {p0}, Lcom/douban/radio/app/FMShareAuth;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "key_auth_source"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/douban/radio/app/FMShareAuth;->source:I

    .line 226
    invoke-virtual {p0}, Lcom/douban/radio/app/FMShareAuth;->initWeb()V

    .line 227
    iget v1, p0, Lcom/douban/radio/app/FMShareAuth;->source:I

    packed-switch v1, :pswitch_data_0

    .line 244
    :goto_0
    :pswitch_0
    return-void

    .line 231
    :pswitch_1
    const-string v1, "http://douban.fm/"

    iput-object v1, p0, Lcom/douban/radio/app/FMShareAuth;->callbackUrl:Ljava/lang/String;

    .line 232
    invoke-direct {p0}, Lcom/douban/radio/app/FMShareAuth;->loadSina()V

    goto :goto_0

    .line 235
    :pswitch_2
    const-string v1, "http://douban.fm"

    iput-object v1, p0, Lcom/douban/radio/app/FMShareAuth;->callbackUrl:Ljava/lang/String;

    .line 236
    invoke-direct {p0}, Lcom/douban/radio/app/FMShareAuth;->loadRenren()V

    goto :goto_0

    .line 239
    :pswitch_3
    const-string v1, "http://douban.fm/app#android_radio"

    iput-object v1, p0, Lcom/douban/radio/app/FMShareAuth;->callbackUrl:Ljava/lang/String;

    .line 240
    invoke-direct {p0}, Lcom/douban/radio/app/FMShareAuth;->loadTencent()V

    goto :goto_0

    .line 227
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 295
    const/4 v0, 0x0

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 260
    :try_start_0
    iget-object v1, p0, Lcom/douban/radio/app/FMShareAuth;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    :goto_0
    invoke-super {p0}, Lcom/douban/radio/app/FMActivity;->onDestroy()V

    .line 265
    return-void

    .line 261
    :catch_0
    move-exception v0

    .line 262
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 269
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/douban/radio/app/FMShareAuth;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/douban/radio/app/FMShareAuth;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 271
    const/4 v0, 0x1

    .line 273
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/douban/radio/app/FMActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 253
    invoke-super {p0}, Lcom/douban/radio/app/FMActivity;->onPause()V

    .line 254
    invoke-virtual {p0}, Lcom/douban/radio/app/FMShareAuth;->finish()V

    .line 255
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "state"

    .prologue
    .line 289
    invoke-super {p0, p1}, Lcom/douban/radio/app/FMActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 290
    iget-object v0, p0, Lcom/douban/radio/app/FMShareAuth;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 291
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 248
    invoke-super {p0}, Lcom/douban/radio/app/FMActivity;->onResume()V

    .line 249
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "outState"

    .prologue
    .line 283
    invoke-super {p0, p1}, Lcom/douban/radio/app/FMActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 284
    iget-object v0, p0, Lcom/douban/radio/app/FMShareAuth;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 285
    return-void
.end method
