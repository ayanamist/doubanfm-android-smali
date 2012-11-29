.class Lcom/douban/radio/app/RegisterActivity$1;
.super Landroid/os/Handler;
.source "RegisterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/douban/radio/app/RegisterActivity;
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
    .line 38
    iput-object p1, p0, Lcom/douban/radio/app/RegisterActivity$1;->this$0:Lcom/douban/radio/app/RegisterActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 41
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x1388

    if-ne v1, v2, :cond_0

    .line 43
    :try_start_0
    iget-object v1, p0, Lcom/douban/radio/app/RegisterActivity$1;->this$0:Lcom/douban/radio/app/RegisterActivity;

    #getter for: Lcom/douban/radio/app/RegisterActivity;->webView:Landroid/webkit/WebView;
    invoke-static {v1}, Lcom/douban/radio/app/RegisterActivity;->access$000(Lcom/douban/radio/app/RegisterActivity;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->stopLoading()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :goto_0
    iget-object v2, p0, Lcom/douban/radio/app/RegisterActivity$1;->this$0:Lcom/douban/radio/app/RegisterActivity;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/douban/radio/app/RegisterActivity;->register(Ljava/lang/String;)V

    .line 49
    :cond_0
    return-void

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
