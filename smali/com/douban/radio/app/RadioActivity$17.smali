.class Lcom/douban/radio/app/RadioActivity$17;
.super Landroid/content/BroadcastReceiver;
.source "RadioActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/douban/radio/app/RadioActivity;->makeReceiver()V
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
    .line 775
    iput-object p1, p0, Lcom/douban/radio/app/RadioActivity$17;->this$0:Lcom/douban/radio/app/RadioActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 778
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 779
    .local v0, action:Ljava/lang/String;
    sget-object v3, Lfm/douban/Consts;->INTENT_RADIO_STATE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 780
    const-string v3, "state"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lfm/douban/service/RadioState;

    .line 781
    .local v2, state:Lfm/douban/service/RadioState;
    iget-boolean v3, v2, Lfm/douban/service/RadioState;->isStoped:Z

    if-eqz v3, :cond_1

    .line 782
    iget-object v3, p0, Lcom/douban/radio/app/RadioActivity$17;->this$0:Lcom/douban/radio/app/RadioActivity;

    invoke-virtual {v3}, Lcom/douban/radio/app/RadioActivity;->finish()V

    .line 790
    .end local v2           #state:Lfm/douban/service/RadioState;
    :cond_0
    :goto_0
    return-void

    .line 785
    .restart local v2       #state:Lfm/douban/service/RadioState;
    :cond_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 786
    .local v1, msg:Landroid/os/Message;
    const/16 v3, 0xfa5

    iput v3, v1, Landroid/os/Message;->what:I

    .line 787
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 788
    iget-object v3, p0, Lcom/douban/radio/app/RadioActivity$17;->this$0:Lcom/douban/radio/app/RadioActivity;

    #getter for: Lcom/douban/radio/app/RadioActivity;->handler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/douban/radio/app/RadioActivity;->access$300(Lcom/douban/radio/app/RadioActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
