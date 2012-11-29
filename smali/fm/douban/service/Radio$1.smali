.class Lfm/douban/service/Radio$1;
.super Landroid/os/Handler;
.source "Radio.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfm/douban/service/Radio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lfm/douban/service/Radio;


# direct methods
.method constructor <init>(Lfm/douban/service/Radio;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lfm/douban/service/Radio$1;->this$0:Lfm/douban/service/Radio;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 95
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 101
    :goto_0
    return-void

    .line 97
    :pswitch_0
    iget-object v0, p0, Lfm/douban/service/Radio$1;->this$0:Lfm/douban/service/Radio;

    iget v1, p1, Landroid/os/Message;->arg1:I

    #calls: Lfm/douban/service/Radio;->updateShareState(I)V
    invoke-static {v0, v1}, Lfm/douban/service/Radio;->access$000(Lfm/douban/service/Radio;I)V

    goto :goto_0

    .line 95
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method
