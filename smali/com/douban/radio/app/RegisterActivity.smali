.class public Lcom/douban/radio/app/RegisterActivity;
.super Lcom/douban/radio/app/FMActivity;
.source "RegisterActivity.java"


# static fields
.field private static final SEPARATER:Ljava/lang/String; = "_"

.field private static final TAG:Ljava/lang/String; = "register"

.field protected static final URL_ACTIVITY_CALLBACK:Ljava/lang/String; = "doubanradio://douban.fm/"


# instance fields
.field private loading:Landroid/view/View;

.field private registerHandler:Landroid/os/Handler;

.field private registerUrl:Ljava/lang/String;

.field private webView:Landroid/webkit/WebView;

.field private webViewClient:Landroid/webkit/WebViewClient;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/douban/radio/app/FMActivity;-><init>()V

    .line 38
    new-instance v0, Lcom/douban/radio/app/RegisterActivity$1;

    invoke-direct {v0, p0}, Lcom/douban/radio/app/RegisterActivity$1;-><init>(Lcom/douban/radio/app/RegisterActivity;)V

    iput-object v0, p0, Lcom/douban/radio/app/RegisterActivity;->registerHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/douban/radio/app/RegisterActivity;)Landroid/webkit/WebView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/douban/radio/app/RegisterActivity;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/douban/radio/app/RegisterActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/douban/radio/app/RegisterActivity;->loading:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/douban/radio/app/RegisterActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/douban/radio/app/RegisterActivity;->registerHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/douban/radio/app/FMActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://www.douban.com/j/app/register"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lfm/douban/Consts;->REGISTER_ARGS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/douban/radio/app/RegisterActivity;->registerUrl:Ljava/lang/String;

    .line 56
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/douban/radio/app/RegisterActivity;->setContentView(I)V

    .line 57
    const v0, 0x7f08001d

    invoke-virtual {p0, v0}, Lcom/douban/radio/app/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/douban/radio/app/RegisterActivity;->webView:Landroid/webkit/WebView;

    .line 58
    const v0, 0x7f08001e

    invoke-virtual {p0, v0}, Lcom/douban/radio/app/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/douban/radio/app/RegisterActivity;->loading:Landroid/view/View;

    .line 59
    iget-object v0, p0, Lcom/douban/radio/app/RegisterActivity;->loading:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 60
    invoke-virtual {p0}, Lcom/douban/radio/app/RegisterActivity;->showWeb()V

    .line 61
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 79
    :try_start_0
    iget-object v1, p0, Lcom/douban/radio/app/RegisterActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_0
    invoke-super {p0}, Lcom/douban/radio/app/FMActivity;->onDestroy()V

    .line 84
    return-void

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 73
    invoke-super {p0}, Lcom/douban/radio/app/FMActivity;->onPause()V

    .line 74
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 67
    invoke-super {p0}, Lcom/douban/radio/app/FMActivity;->onResume()V

    .line 68
    return-void
.end method

.method protected register(Ljava/lang/String;)V
    .locals 9
    .parameter "path"

    .prologue
    const/4 v8, 0x3

    .line 137
    if-eqz p1, :cond_0

    const-string v5, "_"

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 138
    const-string v5, "register"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "URI path:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const-string v5, "doubanradio://douban.fm/"

    const-string v6, ""

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, args:[Ljava/lang/String;
    array-length v5, v0

    const/4 v6, 0x4

    if-ne v5, v6, :cond_0

    .line 143
    const/4 v5, 0x3

    :try_start_0
    aget-object v5, v0, v5

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 147
    .local v3, name:Ljava/lang/String;
    :goto_0
    const-string v5, "register"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "origin = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v0, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " NAME = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    new-instance v4, Lfm/douban/model/Token;

    const/4 v5, 0x0

    aget-object v5, v0, v5

    const/4 v6, 0x2

    aget-object v6, v0, v6

    const/4 v7, 0x1

    aget-object v7, v0, v7

    invoke-direct {v4, v5, v3, v6, v7}, Lfm/douban/model/Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .local v4, token:Lfm/douban/model/Token;
    const-string v5, "register"

    invoke-virtual {v4}, Lfm/douban/model/Token;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-static {p0}, Lfm/douban/FmApp;->getRadioManager(Landroid/content/Context;)Lfm/douban/controller/RadioManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Lfm/douban/model/Token;->save(Lfm/douban/controller/RadioManager;)V

    .line 151
    const-string v5, "Register"

    invoke-static {p0, v5}, Lcom/mobclick/android/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 152
    const v5, 0x7f030010

    invoke-virtual {p0, v5}, Lcom/douban/radio/app/RegisterActivity;->setContentView(I)V

    .line 153
    const v5, 0x7f0800a8

    invoke-virtual {p0, v5}, Lcom/douban/radio/app/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 154
    .local v1, continueButton:Landroid/widget/Button;
    new-instance v5, Lcom/douban/radio/app/RegisterActivity$4;

    invoke-direct {v5, p0}, Lcom/douban/radio/app/RegisterActivity$4;-><init>(Lcom/douban/radio/app/RegisterActivity;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    .end local v0           #args:[Ljava/lang/String;
    .end local v1           #continueButton:Landroid/widget/Button;
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #token:Lfm/douban/model/Token;
    :cond_0
    return-void

    .line 144
    .restart local v0       #args:[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 145
    .local v2, e:Ljava/io/UnsupportedEncodingException;
    aget-object v3, v0, v8

    .restart local v3       #name:Ljava/lang/String;
    goto :goto_0
.end method

.method protected showWeb()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 91
    iget-object v0, p0, Lcom/douban/radio/app/RegisterActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 92
    iget-object v0, p0, Lcom/douban/radio/app/RegisterActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 93
    iget-object v0, p0, Lcom/douban/radio/app/RegisterActivity;->webView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 95
    new-instance v0, Lcom/douban/radio/app/RegisterActivity$2;

    invoke-direct {v0, p0}, Lcom/douban/radio/app/RegisterActivity$2;-><init>(Lcom/douban/radio/app/RegisterActivity;)V

    iput-object v0, p0, Lcom/douban/radio/app/RegisterActivity;->webViewClient:Landroid/webkit/WebViewClient;

    .line 122
    iget-object v0, p0, Lcom/douban/radio/app/RegisterActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/douban/radio/app/RegisterActivity$3;

    invoke-direct {v1, p0}, Lcom/douban/radio/app/RegisterActivity$3;-><init>(Lcom/douban/radio/app/RegisterActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 130
    iget-object v0, p0, Lcom/douban/radio/app/RegisterActivity;->webView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/douban/radio/app/RegisterActivity;->webViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 131
    iget-object v0, p0, Lcom/douban/radio/app/RegisterActivity;->webView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/douban/radio/app/RegisterActivity;->registerUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 133
    return-void
.end method
