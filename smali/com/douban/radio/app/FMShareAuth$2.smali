.class Lcom/douban/radio/app/FMShareAuth$2;
.super Landroid/webkit/WebViewClient;
.source "FMShareAuth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/douban/radio/app/FMShareAuth;->initWeb()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/douban/radio/app/FMShareAuth;


# direct methods
.method constructor <init>(Lcom/douban/radio/app/FMShareAuth;)V
    .locals 0
    .parameter

    .prologue
    .line 304
    iput-object p1, p0, Lcom/douban/radio/app/FMShareAuth$2;->this$0:Lcom/douban/radio/app/FMShareAuth;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .parameter "view"
    .parameter "url"

    .prologue
    .line 308
    const-string v0, "Auth web"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finished:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object v0, p0, Lcom/douban/radio/app/FMShareAuth$2;->this$0:Lcom/douban/radio/app/FMShareAuth;

    #getter for: Lcom/douban/radio/app/FMShareAuth;->loading:Landroid/view/View;
    invoke-static {v0}, Lcom/douban/radio/app/FMShareAuth;->access$000(Lcom/douban/radio/app/FMShareAuth;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 310
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 311
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 6
    .parameter "view"
    .parameter "url"
    .parameter "favicon"

    .prologue
    .line 315
    const-string v3, "Auth web"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "started:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget-object v3, p0, Lcom/douban/radio/app/FMShareAuth$2;->this$0:Lcom/douban/radio/app/FMShareAuth;

    #getter for: Lcom/douban/radio/app/FMShareAuth;->loading:Landroid/view/View;
    invoke-static {v3}, Lcom/douban/radio/app/FMShareAuth;->access$000(Lcom/douban/radio/app/FMShareAuth;)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 317
    iget-object v3, p0, Lcom/douban/radio/app/FMShareAuth$2;->this$0:Lcom/douban/radio/app/FMShareAuth;

    #getter for: Lcom/douban/radio/app/FMShareAuth;->callbackUrl:Ljava/lang/String;
    invoke-static {v3}, Lcom/douban/radio/app/FMShareAuth;->access$200(Lcom/douban/radio/app/FMShareAuth;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 318
    const-string v3, "Auth web"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "started with callback:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :try_start_0
    iget-object v3, p0, Lcom/douban/radio/app/FMShareAuth$2;->this$0:Lcom/douban/radio/app/FMShareAuth;

    #getter for: Lcom/douban/radio/app/FMShareAuth;->webView:Landroid/webkit/WebView;
    invoke-static {v3}, Lcom/douban/radio/app/FMShareAuth;->access$300(Lcom/douban/radio/app/FMShareAuth;)Landroid/webkit/WebView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebView;->stopLoading()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    :goto_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 325
    .local v2, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/douban/radio/app/FMShareAuth$2;->this$0:Lcom/douban/radio/app/FMShareAuth;

    #getter for: Lcom/douban/radio/app/FMShareAuth;->source:I
    invoke-static {v3}, Lcom/douban/radio/app/FMShareAuth;->access$400(Lcom/douban/radio/app/FMShareAuth;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 338
    :goto_1
    :pswitch_0
    iget-object v3, p0, Lcom/douban/radio/app/FMShareAuth$2;->this$0:Lcom/douban/radio/app/FMShareAuth;

    #getter for: Lcom/douban/radio/app/FMShareAuth;->callbackUrl:Ljava/lang/String;
    invoke-static {v3}, Lcom/douban/radio/app/FMShareAuth;->access$200(Lcom/douban/radio/app/FMShareAuth;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 339
    .local v0, curl:Ljava/lang/String;
    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 340
    const-string v3, "/"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 342
    :cond_0
    const-string v3, "%"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 343
    const-string v3, "%23"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 348
    :cond_1
    :goto_2
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 349
    iget-object v3, p0, Lcom/douban/radio/app/FMShareAuth$2;->this$0:Lcom/douban/radio/app/FMShareAuth;

    #getter for: Lcom/douban/radio/app/FMShareAuth;->shareAuthHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/douban/radio/app/FMShareAuth;->access$500(Lcom/douban/radio/app/FMShareAuth;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 355
    .end local v0           #curl:Ljava/lang/String;
    .end local v2           #msg:Landroid/os/Message;
    :goto_3
    return-void

    .line 321
    :catch_0
    move-exception v1

    .line 322
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 329
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #msg:Landroid/os/Message;
    :pswitch_1
    const/16 v3, 0x12c

    iput v3, v2, Landroid/os/Message;->what:I

    goto :goto_1

    .line 332
    :pswitch_2
    const/16 v3, 0x190

    iput v3, v2, Landroid/os/Message;->what:I

    goto :goto_1

    .line 335
    :pswitch_3
    const/16 v3, 0x1f4

    iput v3, v2, Landroid/os/Message;->what:I

    goto :goto_1

    .line 344
    .restart local v0       #curl:Ljava/lang/String;
    :cond_2
    const-string v3, "#"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 345
    const-string v3, "#"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 352
    .end local v0           #curl:Ljava/lang/String;
    .end local v2           #msg:Landroid/os/Message;
    :cond_3
    const-string v3, "Auth web"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "started without callback:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_3

    .line 325
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "view"
    .parameter "errorCode"
    .parameter "description"
    .parameter "failingUrl"

    .prologue
    .line 359
    const-string v0, "FMShareAuth"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 361
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0
    .parameter "view"
    .parameter "handler"
    .parameter "error"

    .prologue
    .line 364
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 365
    return-void
.end method
