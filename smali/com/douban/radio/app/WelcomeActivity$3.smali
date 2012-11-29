.class Lcom/douban/radio/app/WelcomeActivity$3;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "WelcomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/douban/radio/app/WelcomeActivity;->updateChannelList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/douban/radio/app/WelcomeActivity;


# direct methods
.method constructor <init>(Lcom/douban/radio/app/WelcomeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 215
    iput-object p1, p0, Lcom/douban/radio/app/WelcomeActivity$3;->this$0:Lcom/douban/radio/app/WelcomeActivity;

    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0
    .parameter "error"
    .parameter "content"

    .prologue
    .line 232
    invoke-super {p0, p1, p2}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 233
    return-void
.end method

.method public onFinish()V
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/douban/radio/app/WelcomeActivity$3;->this$0:Lcom/douban/radio/app/WelcomeActivity;

    const v1, 0xa8cb

    #calls: Lcom/douban/radio/app/WelcomeActivity;->sendMsg(I)V
    invoke-static {v0, v1}, Lcom/douban/radio/app/WelcomeActivity;->access$100(Lcom/douban/radio/app/WelcomeActivity;I)V

    .line 224
    invoke-super {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onFinish()V

    .line 225
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 218
    const-string v0, "WelcomeActivity"

    const-string v1, "check channel"

    invoke-static {v0, v1}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-super {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onStart()V

    .line 220
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 1
    .parameter "content"

    .prologue
    .line 228
    iget-object v0, p0, Lcom/douban/radio/app/WelcomeActivity$3;->this$0:Lcom/douban/radio/app/WelcomeActivity;

    #getter for: Lcom/douban/radio/app/WelcomeActivity;->cm:Lfm/douban/controller/ChannelManager;
    invoke-static {v0}, Lcom/douban/radio/app/WelcomeActivity;->access$500(Lcom/douban/radio/app/WelcomeActivity;)Lfm/douban/controller/ChannelManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lfm/douban/controller/ChannelManager;->saveChannels(Ljava/lang/String;)V

    .line 229
    return-void
.end method
