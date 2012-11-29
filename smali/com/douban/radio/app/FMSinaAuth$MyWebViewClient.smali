.class Lcom/douban/radio/app/FMSinaAuth$MyWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "FMSinaAuth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/douban/radio/app/FMSinaAuth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/douban/radio/app/FMSinaAuth;

.field toBeFinished:Z


# direct methods
.method private constructor <init>(Lcom/douban/radio/app/FMSinaAuth;)V
    .locals 1
    .parameter

    .prologue
    .line 226
    iput-object p1, p0, Lcom/douban/radio/app/FMSinaAuth$MyWebViewClient;->this$0:Lcom/douban/radio/app/FMSinaAuth;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 228
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/douban/radio/app/FMSinaAuth$MyWebViewClient;->toBeFinished:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/douban/radio/app/FMSinaAuth;Lcom/douban/radio/app/FMSinaAuth$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 226
    invoke-direct {p0, p1}, Lcom/douban/radio/app/FMSinaAuth$MyWebViewClient;-><init>(Lcom/douban/radio/app/FMSinaAuth;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "url"

    .prologue
    .line 265
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 266
    iget-boolean v0, p0, Lcom/douban/radio/app/FMSinaAuth$MyWebViewClient;->toBeFinished:Z

    if-eqz v0, :cond_0

    .line 270
    :goto_0
    return-void

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/douban/radio/app/FMSinaAuth$MyWebViewClient;->this$0:Lcom/douban/radio/app/FMSinaAuth;

    #getter for: Lcom/douban/radio/app/FMSinaAuth;->loading:Landroid/view/View;
    invoke-static {v0}, Lcom/douban/radio/app/FMSinaAuth;->access$200(Lcom/douban/radio/app/FMSinaAuth;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "view"
    .parameter "url"
    .parameter "favicon"

    .prologue
    .line 245
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 246
    iget-object v1, p0, Lcom/douban/radio/app/FMSinaAuth$MyWebViewClient;->this$0:Lcom/douban/radio/app/FMSinaAuth;

    #calls: Lcom/douban/radio/app/FMSinaAuth;->checkUrl(Ljava/lang/String;)Z
    invoke-static {v1, p2}, Lcom/douban/radio/app/FMSinaAuth;->access$400(Lcom/douban/radio/app/FMSinaAuth;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/douban/radio/app/FMSinaAuth$MyWebViewClient;->toBeFinished:Z

    .line 247
    iget-boolean v1, p0, Lcom/douban/radio/app/FMSinaAuth$MyWebViewClient;->toBeFinished:Z

    if-eqz v1, :cond_0

    .line 249
    :try_start_0
    iget-object v1, p0, Lcom/douban/radio/app/FMSinaAuth$MyWebViewClient;->this$0:Lcom/douban/radio/app/FMSinaAuth;

    #getter for: Lcom/douban/radio/app/FMSinaAuth;->webView:Landroid/webkit/WebView;
    invoke-static {v1}, Lcom/douban/radio/app/FMSinaAuth;->access$500(Lcom/douban/radio/app/FMSinaAuth;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->stopLoading()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    :goto_0
    iget-object v1, p0, Lcom/douban/radio/app/FMSinaAuth$MyWebViewClient;->this$0:Lcom/douban/radio/app/FMSinaAuth;

    #calls: Lcom/douban/radio/app/FMSinaAuth;->loginSina(Ljava/lang/String;)V
    invoke-static {v1, p2}, Lcom/douban/radio/app/FMSinaAuth;->access$600(Lcom/douban/radio/app/FMSinaAuth;Ljava/lang/String;)V

    .line 262
    :goto_1
    return-void

    .line 250
    :catch_0
    move-exception v0

    .line 251
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 257
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    iget-object v1, p0, Lcom/douban/radio/app/FMSinaAuth$MyWebViewClient;->this$0:Lcom/douban/radio/app/FMSinaAuth;

    #getter for: Lcom/douban/radio/app/FMSinaAuth;->loading:Landroid/view/View;
    invoke-static {v1}, Lcom/douban/radio/app/FMSinaAuth;->access$200(Lcom/douban/radio/app/FMSinaAuth;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 258
    iget-object v1, p0, Lcom/douban/radio/app/FMSinaAuth$MyWebViewClient;->this$0:Lcom/douban/radio/app/FMSinaAuth;

    invoke-static {v1}, Lcom/douban/radio/app/FMSinaAuth;->access$108(Lcom/douban/radio/app/FMSinaAuth;)I

    .line 259
    iget-object v1, p0, Lcom/douban/radio/app/FMSinaAuth$MyWebViewClient;->this$0:Lcom/douban/radio/app/FMSinaAuth;

    #calls: Lcom/douban/radio/app/FMSinaAuth;->checkCookie()V
    invoke-static {v1}, Lcom/douban/radio/app/FMSinaAuth;->access$700(Lcom/douban/radio/app/FMSinaAuth;)V

    goto :goto_1
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "errorCode"
    .parameter "description"
    .parameter "failingUrl"

    .prologue
    .line 238
    iget-object v0, p0, Lcom/douban/radio/app/FMSinaAuth$MyWebViewClient;->this$0:Lcom/douban/radio/app/FMSinaAuth;

    invoke-static {v0, p3}, Lfm/douban/util/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/douban/radio/app/FMSinaAuth$MyWebViewClient;->this$0:Lcom/douban/radio/app/FMSinaAuth;

    const/4 v1, 0x0

    #setter for: Lcom/douban/radio/app/FMSinaAuth;->step:I
    invoke-static {v0, v1}, Lcom/douban/radio/app/FMSinaAuth;->access$102(Lcom/douban/radio/app/FMSinaAuth;I)I

    .line 240
    iget-object v0, p0, Lcom/douban/radio/app/FMSinaAuth$MyWebViewClient;->this$0:Lcom/douban/radio/app/FMSinaAuth;

    #getter for: Lcom/douban/radio/app/FMSinaAuth;->loading:Landroid/view/View;
    invoke-static {v0}, Lcom/douban/radio/app/FMSinaAuth;->access$200(Lcom/douban/radio/app/FMSinaAuth;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 241
    iget-object v0, p0, Lcom/douban/radio/app/FMSinaAuth$MyWebViewClient;->this$0:Lcom/douban/radio/app/FMSinaAuth;

    #getter for: Lcom/douban/radio/app/FMSinaAuth;->login_url:Ljava/lang/String;
    invoke-static {v0}, Lcom/douban/radio/app/FMSinaAuth;->access$300(Lcom/douban/radio/app/FMSinaAuth;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 242
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .parameter "view"
    .parameter "url"

    .prologue
    .line 231
    iget-boolean v0, p0, Lcom/douban/radio/app/FMSinaAuth$MyWebViewClient;->toBeFinished:Z

    if-eqz v0, :cond_0

    .line 232
    const/4 v0, 0x1

    .line 234
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
