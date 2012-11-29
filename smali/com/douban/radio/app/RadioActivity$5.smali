.class Lcom/douban/radio/app/RadioActivity$5;
.super Ljava/lang/Object;
.source "RadioActivity.java"

# interfaces
.implements Lfm/douban/view/ChannelSwitcher$SwitcherListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/douban/radio/app/RadioActivity;->initPlayer()V
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
    .line 326
    iput-object p1, p0, Lcom/douban/radio/app/RadioActivity$5;->this$0:Lcom/douban/radio/app/RadioActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeChannle(Lfm/douban/model/Channel;Ljava/lang/Boolean;)V
    .locals 4
    .parameter "toChannel"
    .parameter "delay"

    .prologue
    const/16 v2, 0x8ae

    .line 329
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 330
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 331
    iput v2, v0, Landroid/os/Message;->what:I

    .line 332
    iget-object v1, p0, Lcom/douban/radio/app/RadioActivity$5;->this$0:Lcom/douban/radio/app/RadioActivity;

    #getter for: Lcom/douban/radio/app/RadioActivity;->switchHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/douban/radio/app/RadioActivity;->access$1200(Lcom/douban/radio/app/RadioActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 333
    iget-object v1, p0, Lcom/douban/radio/app/RadioActivity$5;->this$0:Lcom/douban/radio/app/RadioActivity;

    #getter for: Lcom/douban/radio/app/RadioActivity;->switchHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/douban/radio/app/RadioActivity;->access$1200(Lcom/douban/radio/app/RadioActivity;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 335
    return-void
.end method
