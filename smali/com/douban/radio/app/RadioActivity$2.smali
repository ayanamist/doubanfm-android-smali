.class Lcom/douban/radio/app/RadioActivity$2;
.super Landroid/os/Handler;
.source "RadioActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/douban/radio/app/RadioActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/douban/radio/app/RadioActivity;


# direct methods
.method constructor <init>(Lcom/douban/radio/app/RadioActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 194
    iput-object p1, p0, Lcom/douban/radio/app/RadioActivity$2;->this$0:Lcom/douban/radio/app/RadioActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 198
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x8ae

    if-ne v1, v2, :cond_1

    .line 199
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lfm/douban/model/Channel;

    .line 200
    .local v0, toChannel:Lfm/douban/model/Channel;
    iget-object v1, p0, Lcom/douban/radio/app/RadioActivity$2;->this$0:Lcom/douban/radio/app/RadioActivity;

    invoke-virtual {v1, v0}, Lcom/douban/radio/app/RadioActivity;->switchChannel(Lfm/douban/model/Channel;)V

    .line 209
    .end local v0           #toChannel:Lfm/douban/model/Channel;
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 210
    return-void

    .line 201
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0xd05

    if-ne v1, v2, :cond_0

    .line 202
    iget-object v1, p0, Lcom/douban/radio/app/RadioActivity$2;->this$0:Lcom/douban/radio/app/RadioActivity;

    #getter for: Lcom/douban/radio/app/RadioActivity;->lastRadioState:Lfm/douban/service/RadioState;
    invoke-static {v1}, Lcom/douban/radio/app/RadioActivity;->access$700(Lcom/douban/radio/app/RadioActivity;)Lfm/douban/service/RadioState;

    move-result-object v1

    iget-boolean v1, v1, Lfm/douban/service/RadioState;->canOp:Z

    if-eqz v1, :cond_0

    .line 203
    iget-object v1, p0, Lcom/douban/radio/app/RadioActivity$2;->this$0:Lcom/douban/radio/app/RadioActivity;

    #getter for: Lcom/douban/radio/app/RadioActivity;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/douban/radio/app/RadioActivity;->access$300(Lcom/douban/radio/app/RadioActivity;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xfa3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 204
    iget-object v1, p0, Lcom/douban/radio/app/RadioActivity$2;->this$0:Lcom/douban/radio/app/RadioActivity;

    const/4 v2, 0x1

    #setter for: Lcom/douban/radio/app/RadioActivity;->picLoading:Z
    invoke-static {v1, v2}, Lcom/douban/radio/app/RadioActivity;->access$802(Lcom/douban/radio/app/RadioActivity;Z)Z

    .line 205
    iget-object v1, p0, Lcom/douban/radio/app/RadioActivity$2;->this$0:Lcom/douban/radio/app/RadioActivity;

    #getter for: Lcom/douban/radio/app/RadioActivity;->pictureProgress:Landroid/widget/ProgressBar;
    invoke-static {v1}, Lcom/douban/radio/app/RadioActivity;->access$900(Lcom/douban/radio/app/RadioActivity;)Landroid/widget/ProgressBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 206
    iget-object v1, p0, Lcom/douban/radio/app/RadioActivity$2;->this$0:Lcom/douban/radio/app/RadioActivity;

    const/4 v2, 0x6

    invoke-static {v1, v2}, Lfm/douban/service/RadioService;->sendCommand(Landroid/content/Context;I)V

    goto :goto_0
.end method
