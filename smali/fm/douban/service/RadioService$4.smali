.class Lfm/douban/service/RadioService$4;
.super Landroid/telephony/PhoneStateListener;
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
    .line 500
    iput-object p1, p0, Lfm/douban/service/RadioService$4;->this$0:Lfm/douban/service/RadioService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    const/4 v2, 0x1

    .line 502
    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    .line 503
    iget-object v0, p0, Lfm/douban/service/RadioService$4;->this$0:Lfm/douban/service/RadioService;

    #getter for: Lfm/douban/service/RadioService;->radio:Lfm/douban/service/Radio;
    invoke-static {v0}, Lfm/douban/service/RadioService;->access$200(Lfm/douban/service/RadioService;)Lfm/douban/service/Radio;

    move-result-object v0

    if-nez v0, :cond_0

    .line 525
    :goto_0
    return-void

    .line 506
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 508
    :pswitch_0
    const-string v0, "RadioService"

    const-string v1, "CALL_STATE_IDLE"

    invoke-static {v0, v1}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    iget-object v0, p0, Lfm/douban/service/RadioService$4;->this$0:Lfm/douban/service/RadioService;

    #getter for: Lfm/douban/service/RadioService;->radio:Lfm/douban/service/Radio;
    invoke-static {v0}, Lfm/douban/service/RadioService;->access$200(Lfm/douban/service/RadioService;)Lfm/douban/service/Radio;

    move-result-object v0

    invoke-virtual {v0, v2}, Lfm/douban/service/Radio;->resume(I)V

    .line 510
    iget-object v0, p0, Lfm/douban/service/RadioService$4;->this$0:Lfm/douban/service/RadioService;

    const-string v1, "Resume"

    const-string v2, "CallIdle"

    invoke-static {v0, v1, v2}, Lcom/mobclick/android/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 513
    :pswitch_1
    const-string v0, "RadioService"

    const-string v1, "CALL_STATE_OFFHOOK"

    invoke-static {v0, v1}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    iget-object v0, p0, Lfm/douban/service/RadioService$4;->this$0:Lfm/douban/service/RadioService;

    #getter for: Lfm/douban/service/RadioService;->radio:Lfm/douban/service/Radio;
    invoke-static {v0}, Lfm/douban/service/RadioService;->access$200(Lfm/douban/service/RadioService;)Lfm/douban/service/Radio;

    move-result-object v0

    invoke-virtual {v0, v2}, Lfm/douban/service/Radio;->pause(I)V

    .line 515
    iget-object v0, p0, Lfm/douban/service/RadioService$4;->this$0:Lfm/douban/service/RadioService;

    const-string v1, "Pause"

    const-string v2, "CallOffhook"

    invoke-static {v0, v1, v2}, Lcom/mobclick/android/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 518
    :pswitch_2
    const-string v0, "RadioService"

    const-string v1, "CALL_STATE_RINGING"

    invoke-static {v0, v1}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    iget-object v0, p0, Lfm/douban/service/RadioService$4;->this$0:Lfm/douban/service/RadioService;

    #getter for: Lfm/douban/service/RadioService;->radio:Lfm/douban/service/Radio;
    invoke-static {v0}, Lfm/douban/service/RadioService;->access$200(Lfm/douban/service/RadioService;)Lfm/douban/service/Radio;

    move-result-object v0

    invoke-virtual {v0, v2}, Lfm/douban/service/Radio;->pause(I)V

    .line 520
    iget-object v0, p0, Lfm/douban/service/RadioService$4;->this$0:Lfm/douban/service/RadioService;

    const-string v1, "Pause"

    const-string v2, "CallRing"

    invoke-static {v0, v1, v2}, Lcom/mobclick/android/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 506
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
