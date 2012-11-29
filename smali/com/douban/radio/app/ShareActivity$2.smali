.class Lcom/douban/radio/app/ShareActivity$2;
.super Landroid/os/Handler;
.source "ShareActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/douban/radio/app/ShareActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/douban/radio/app/ShareActivity;


# direct methods
.method constructor <init>(Lcom/douban/radio/app/ShareActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/douban/radio/app/ShareActivity$2;->this$0:Lcom/douban/radio/app/ShareActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 135
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x7d0

    if-ne v0, v1, :cond_0

    .line 136
    iget-object v0, p0, Lcom/douban/radio/app/ShareActivity$2;->this$0:Lcom/douban/radio/app/ShareActivity;

    #getter for: Lcom/douban/radio/app/ShareActivity;->rm:Lfm/douban/controller/RadioManager;
    invoke-static {v0}, Lcom/douban/radio/app/ShareActivity;->access$500(Lcom/douban/radio/app/ShareActivity;)Lfm/douban/controller/RadioManager;

    move-result-object v0

    invoke-virtual {v0}, Lfm/douban/controller/RadioManager;->getApi()Lfm/douban/api/Api;

    move-result-object v0

    iget-object v1, p0, Lcom/douban/radio/app/ShareActivity$2;->this$0:Lcom/douban/radio/app/ShareActivity;

    #getter for: Lcom/douban/radio/app/ShareActivity;->responseHandler:Lcom/loopj/android/http/JsonHttpResponseHandler;
    invoke-static {v1}, Lcom/douban/radio/app/ShareActivity;->access$400(Lcom/douban/radio/app/ShareActivity;)Lcom/loopj/android/http/JsonHttpResponseHandler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfm/douban/api/Api;->checkShare(Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 138
    :cond_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 139
    return-void
.end method
