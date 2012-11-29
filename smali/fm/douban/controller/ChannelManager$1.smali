.class Lfm/douban/controller/ChannelManager$1;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "ChannelManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfm/douban/controller/ChannelManager;->checkChannels(Lcom/loopj/android/http/AsyncHttpResponseHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lfm/douban/controller/ChannelManager;


# direct methods
.method constructor <init>(Lfm/douban/controller/ChannelManager;)V
    .locals 0
    .parameter

    .prologue
    .line 190
    iput-object p1, p0, Lfm/douban/controller/ChannelManager$1;->this$0:Lfm/douban/controller/ChannelManager;

    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0
    .parameter "error"
    .parameter "content"

    .prologue
    .line 206
    invoke-super {p0, p1, p2}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 207
    return-void
.end method

.method public onFinish()V
    .locals 0

    .prologue
    .line 198
    invoke-super {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onFinish()V

    .line 199
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 193
    const-string v0, "ChannelController"

    const-string v1, "check channel"

    invoke-static {v0, v1}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-super {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onStart()V

    .line 195
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 1
    .parameter "content"

    .prologue
    .line 202
    iget-object v0, p0, Lfm/douban/controller/ChannelManager$1;->this$0:Lfm/douban/controller/ChannelManager;

    invoke-virtual {v0, p1}, Lfm/douban/controller/ChannelManager;->saveChannels(Ljava/lang/String;)V

    .line 203
    return-void
.end method
