.class Lfm/douban/service/RadioService$2;
.super Landroid/content/BroadcastReceiver;
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
    .line 119
    iput-object p1, p0, Lfm/douban/service/RadioService$2;->this$0:Lfm/douban/service/RadioService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v8, 0x457

    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 121
    const-string v3, "RadioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive, action: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, a:Ljava/lang/String;
    iget-object v3, p0, Lfm/douban/service/RadioService$2;->this$0:Lfm/douban/service/RadioService;

    #getter for: Lfm/douban/service/RadioService;->isFinishing:Z
    invoke-static {v3}, Lfm/douban/service/RadioService;->access$300(Lfm/douban/service/RadioService;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lfm/douban/service/RadioService$2;->this$0:Lfm/douban/service/RadioService;

    #getter for: Lfm/douban/service/RadioService;->radio:Lfm/douban/service/Radio;
    invoke-static {v3}, Lfm/douban/service/RadioService;->access$200(Lfm/douban/service/RadioService;)Lfm/douban/service/Radio;

    move-result-object v3

    if-nez v3, :cond_1

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    sget-object v3, Lfm/douban/Consts;->INTENT_RADIO_COMMAND:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 128
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 129
    .local v1, msg:Landroid/os/Message;
    const/16 v3, 0x8ae

    iput v3, v1, Landroid/os/Message;->what:I

    .line 130
    iput-object p2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 131
    iget-object v3, p0, Lfm/douban/service/RadioService$2;->this$0:Lfm/douban/service/RadioService;

    #getter for: Lfm/douban/service/RadioService;->broadReceiverHandler:Landroid/os/Handler;
    invoke-static {v3}, Lfm/douban/service/RadioService;->access$400(Lfm/douban/service/RadioService;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 132
    .end local v1           #msg:Landroid/os/Message;
    :cond_2
    sget-object v3, Lfm/douban/Consts;->INTENT_RADIO_ERROR:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 134
    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "android.net.conn.BACKGROUND_DATA_SETTING_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 137
    :cond_3
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 138
    .restart local v1       #msg:Landroid/os/Message;
    iput v8, v1, Landroid/os/Message;->what:I

    .line 139
    iput-object p2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 140
    iget-object v3, p0, Lfm/douban/service/RadioService$2;->this$0:Lfm/douban/service/RadioService;

    #getter for: Lfm/douban/service/RadioService;->broadReceiverHandler:Landroid/os/Handler;
    invoke-static {v3}, Lfm/douban/service/RadioService;->access$400(Lfm/douban/service/RadioService;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 141
    iget-object v3, p0, Lfm/douban/service/RadioService$2;->this$0:Lfm/douban/service/RadioService;

    #getter for: Lfm/douban/service/RadioService;->broadReceiverHandler:Landroid/os/Handler;
    invoke-static {v3}, Lfm/douban/service/RadioService;->access$400(Lfm/douban/service/RadioService;)Landroid/os/Handler;

    move-result-object v3

    const-wide/16 v4, 0x3e8

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 142
    .end local v1           #msg:Landroid/os/Message;
    :cond_4
    const-string v3, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 143
    const-string v3, "RadioService"

    const-string v4, "New outgoing call performed."

    invoke-static {v3, v4}, Lfm/douban/util/DBLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v3, p0, Lfm/douban/service/RadioService$2;->this$0:Lfm/douban/service/RadioService;

    #getter for: Lfm/douban/service/RadioService;->radio:Lfm/douban/service/Radio;
    invoke-static {v3}, Lfm/douban/service/RadioService;->access$200(Lfm/douban/service/RadioService;)Lfm/douban/service/Radio;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lfm/douban/service/Radio;->pause(I)V

    .line 145
    const-string v3, "Pause"

    const-string v4, "CallOutgoing"

    invoke-static {p1, v3, v4}, Lcom/mobclick/android/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 146
    :cond_5
    const-string v3, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 147
    const-string v3, "RadioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Headset plugged. Type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "name"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lfm/douban/util/DBLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v3, p0, Lfm/douban/service/RadioService$2;->this$0:Lfm/douban/service/RadioService;

    #getter for: Lfm/douban/service/RadioService;->startPlugFlag:Z
    invoke-static {v3}, Lfm/douban/service/RadioService;->access$500(Lfm/douban/service/RadioService;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 149
    const-string v3, "RadioService"

    const-string v4, "start plug"

    invoke-static {v3, v4}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v3, p0, Lfm/douban/service/RadioService$2;->this$0:Lfm/douban/service/RadioService;

    #setter for: Lfm/douban/service/RadioService;->startPlugFlag:Z
    invoke-static {v3, v6}, Lfm/douban/service/RadioService;->access$502(Lfm/douban/service/RadioService;Z)Z

    goto/16 :goto_0

    .line 153
    :cond_6
    const-string v3, "state"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 154
    .local v2, st:I
    const-string v3, "RadioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "headset state:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    if-nez v2, :cond_7

    .line 157
    iget-object v3, p0, Lfm/douban/service/RadioService$2;->this$0:Lfm/douban/service/RadioService;

    #getter for: Lfm/douban/service/RadioService;->radio:Lfm/douban/service/Radio;
    invoke-static {v3}, Lfm/douban/service/RadioService;->access$200(Lfm/douban/service/RadioService;)Lfm/douban/service/Radio;

    move-result-object v3

    invoke-virtual {v3, v7}, Lfm/douban/service/Radio;->pause(I)V

    .line 158
    const-string v3, "Pause"

    const-string v4, "Headset"

    invoke-static {p1, v3, v4}, Lcom/mobclick/android/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    :goto_1
    iget-object v3, p0, Lfm/douban/service/RadioService$2;->this$0:Lfm/douban/service/RadioService;

    #getter for: Lfm/douban/service/RadioService;->radio:Lfm/douban/service/Radio;
    invoke-static {v3}, Lfm/douban/service/RadioService;->access$200(Lfm/douban/service/RadioService;)Lfm/douban/service/Radio;

    move-result-object v3

    invoke-virtual {v3}, Lfm/douban/service/Radio;->updateState()V

    goto/16 :goto_0

    .line 160
    :cond_7
    iget-object v3, p0, Lfm/douban/service/RadioService$2;->this$0:Lfm/douban/service/RadioService;

    #getter for: Lfm/douban/service/RadioService;->radio:Lfm/douban/service/Radio;
    invoke-static {v3}, Lfm/douban/service/RadioService;->access$200(Lfm/douban/service/RadioService;)Lfm/douban/service/Radio;

    move-result-object v3

    invoke-virtual {v3, v7}, Lfm/douban/service/Radio;->resume(I)V

    .line 161
    const-string v3, "Resume"

    const-string v4, "Headset"

    invoke-static {p1, v3, v4}, Lcom/mobclick/android/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
