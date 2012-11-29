.class Lcom/douban/radio/app/RegisterActivity$2;
.super Landroid/webkit/WebViewClient;
.source "RegisterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/douban/radio/app/RegisterActivity;->showWeb()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/douban/radio/app/RegisterActivity;


# direct methods
.method constructor <init>(Lcom/douban/radio/app/RegisterActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/douban/radio/app/RegisterActivity$2;->this$0:Lcom/douban/radio/app/RegisterActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .parameter "view"
    .parameter "url"

    .prologue
    .line 99
    const-string v0, "auth web"

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

    .line 100
    iget-object v0, p0, Lcom/douban/radio/app/RegisterActivity$2;->this$0:Lcom/douban/radio/app/RegisterActivity;

    #getter for: Lcom/douban/radio/app/RegisterActivity;->loading:Landroid/view/View;
    invoke-static {v0}, Lcom/douban/radio/app/RegisterActivity;->access$100(Lcom/douban/radio/app/RegisterActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 101
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter "view"
    .parameter "url"
    .parameter "favicon"

    .prologue
    .line 106
    const-string v1, "auth web"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "started:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v1, p0, Lcom/douban/radio/app/RegisterActivity$2;->this$0:Lcom/douban/radio/app/RegisterActivity;

    #getter for: Lcom/douban/radio/app/RegisterActivity;->loading:Landroid/view/View;
    invoke-static {v1}, Lcom/douban/radio/app/RegisterActivity;->access$100(Lcom/douban/radio/app/RegisterActivity;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 108
    const-string v1, "doubanradio://douban.fm/"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/douban/radio/app/RegisterActivity$2;->this$0:Lcom/douban/radio/app/RegisterActivity;

    #getter for: Lcom/douban/radio/app/RegisterActivity;->webView:Landroid/webkit/WebView;
    invoke-static {v1}, Lcom/douban/radio/app/RegisterActivity;->access$000(Lcom/douban/radio/app/RegisterActivity;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->stopLoading()V

    .line 110
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 111
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x1388

    iput v1, v0, Landroid/os/Message;->what:I

    .line 112
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 113
    iget-object v1, p0, Lcom/douban/radio/app/RegisterActivity$2;->this$0:Lcom/douban/radio/app/RegisterActivity;

    #getter for: Lcom/douban/radio/app/RegisterActivity;->registerHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/douban/radio/app/RegisterActivity;->access$200(Lcom/douban/radio/app/RegisterActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 119
    .end local v0           #msg:Landroid/os/Message;
    :goto_0
    return-void

    .line 117
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
