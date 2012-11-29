.class Lfm/douban/service/Player$1;
.super Landroid/os/Handler;
.source "Player.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfm/douban/service/Player;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lfm/douban/service/Player;


# direct methods
.method constructor <init>(Lfm/douban/service/Player;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lfm/douban/service/Player$1;->this$0:Lfm/douban/service/Player;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 54
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 69
    :goto_0
    return-void

    .line 56
    :pswitch_0
    const-string v0, "Player"

    const-string v1, "MSG_FADE_OUT"

    invoke-static {v0, v1}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lfm/douban/service/Player$1;->removeMessages(I)V

    .line 58
    iget-object v0, p0, Lfm/douban/service/Player$1;->this$0:Lfm/douban/service/Player;

    invoke-virtual {v0}, Lfm/douban/service/Player;->fadeOut()V

    goto :goto_0

    .line 61
    :pswitch_1
    const-string v0, "Player"

    const-string v1, "MSG_FADE_OUT_DONE"

    invoke-static {v0, v1}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const/16 v0, 0xc9

    invoke-virtual {p0, v0}, Lfm/douban/service/Player$1;->removeMessages(I)V

    .line 64
    const-string v0, "Player"

    const-string v1, "play next"

    invoke-static {v0, v1}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object v0, p0, Lfm/douban/service/Player$1;->this$0:Lfm/douban/service/Player;

    #getter for: Lfm/douban/service/Player;->radio:Lfm/douban/service/Radio;
    invoke-static {v0}, Lfm/douban/service/Player;->access$000(Lfm/douban/service/Player;)Lfm/douban/service/Radio;

    move-result-object v0

    invoke-virtual {v0}, Lfm/douban/service/Radio;->play()V

    .line 66
    iget-object v0, p0, Lfm/douban/service/Player$1;->this$0:Lfm/douban/service/Player;

    const/4 v1, 0x0

    #setter for: Lfm/douban/service/Player;->isFading:Z
    invoke-static {v0, v1}, Lfm/douban/service/Player;->access$102(Lfm/douban/service/Player;Z)Z

    goto :goto_0

    .line 54
    nop

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
