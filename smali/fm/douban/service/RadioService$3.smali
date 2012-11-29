.class Lfm/douban/service/RadioService$3;
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
    .line 272
    iput-object p1, p0, Lfm/douban/service/RadioService$3;->this$0:Lfm/douban/service/RadioService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    .line 276
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 277
    iget-object v0, p0, Lfm/douban/service/RadioService$3;->this$0:Lfm/douban/service/RadioService;

    #getter for: Lfm/douban/service/RadioService;->radio:Lfm/douban/service/Radio;
    invoke-static {v0}, Lfm/douban/service/RadioService;->access$200(Lfm/douban/service/RadioService;)Lfm/douban/service/Radio;

    move-result-object v0

    iget-object v0, v0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iput-boolean v2, v0, Lfm/douban/service/RadioState;->isStoped:Z

    .line 278
    iget-object v0, p0, Lfm/douban/service/RadioService$3;->this$0:Lfm/douban/service/RadioService;

    const/4 v1, 0x0

    #setter for: Lfm/douban/service/RadioService;->radio:Lfm/douban/service/Radio;
    invoke-static {v0, v1}, Lfm/douban/service/RadioService;->access$202(Lfm/douban/service/RadioService;Lfm/douban/service/Radio;)Lfm/douban/service/Radio;

    .line 279
    iget-object v0, p0, Lfm/douban/service/RadioService$3;->this$0:Lfm/douban/service/RadioService;

    #setter for: Lfm/douban/service/RadioService;->isFinishing:Z
    invoke-static {v0, v2}, Lfm/douban/service/RadioService;->access$302(Lfm/douban/service/RadioService;Z)Z

    .line 280
    iget-object v0, p0, Lfm/douban/service/RadioService$3;->this$0:Lfm/douban/service/RadioService;

    invoke-virtual {v0}, Lfm/douban/service/RadioService;->stopSelf()V

    .line 283
    :cond_0
    return-void
.end method
