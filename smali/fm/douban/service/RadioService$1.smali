.class Lfm/douban/service/RadioService$1;
.super Landroid/os/Handler;
.source "RadioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfm/douban/service/RadioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lfm/douban/service/RadioService;


# direct methods
.method constructor <init>(Lfm/douban/service/RadioService;)V
    .locals 0
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lfm/douban/service/RadioService$1;->this$0:Lfm/douban/service/RadioService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 106
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x457

    if-ne v1, v2, :cond_1

    .line 107
    iget-object v1, p0, Lfm/douban/service/RadioService$1;->this$0:Lfm/douban/service/RadioService;

    #calls: Lfm/douban/service/RadioService;->handleNetworkChanged()V
    invoke-static {v1}, Lfm/douban/service/RadioService;->access$000(Lfm/douban/service/RadioService;)V

    .line 114
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 115
    return-void

    .line 108
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x8ae

    if-ne v1, v2, :cond_2

    .line 109
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    .line 110
    .local v0, in:Landroid/content/Intent;
    iget-object v1, p0, Lfm/douban/service/RadioService$1;->this$0:Lfm/douban/service/RadioService;

    #calls: Lfm/douban/service/RadioService;->command(Landroid/content/Intent;)V
    invoke-static {v1, v0}, Lfm/douban/service/RadioService;->access$100(Lfm/douban/service/RadioService;Landroid/content/Intent;)V

    goto :goto_0

    .line 111
    .end local v0           #in:Landroid/content/Intent;
    :cond_2
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0xd05

    if-ne v1, v2, :cond_0

    .line 112
    iget-object v1, p0, Lfm/douban/service/RadioService$1;->this$0:Lfm/douban/service/RadioService;

    #getter for: Lfm/douban/service/RadioService;->radio:Lfm/douban/service/Radio;
    invoke-static {v1}, Lfm/douban/service/RadioService;->access$200(Lfm/douban/service/RadioService;)Lfm/douban/service/Radio;

    move-result-object v1

    invoke-virtual {v1}, Lfm/douban/service/Radio;->tryPlayOffline()V

    goto :goto_0
.end method
