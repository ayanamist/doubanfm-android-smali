.class Lcom/douban/radio/app/RadioActivity$1;
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
    .line 161
    iput-object p1, p0, Lcom/douban/radio/app/RadioActivity$1;->this$0:Lcom/douban/radio/app/RadioActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    const/16 v3, 0xfa1

    .line 165
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 191
    :goto_0
    return-void

    .line 167
    :pswitch_0
    iget-object v0, p0, Lcom/douban/radio/app/RadioActivity$1;->this$0:Lcom/douban/radio/app/RadioActivity;

    iget-object v1, p0, Lcom/douban/radio/app/RadioActivity$1;->this$0:Lcom/douban/radio/app/RadioActivity;

    #getter for: Lcom/douban/radio/app/RadioActivity;->app:Lcom/douban/radio/RadioApp;
    invoke-static {v1}, Lcom/douban/radio/app/RadioActivity;->access$100(Lcom/douban/radio/app/RadioActivity;)Lcom/douban/radio/RadioApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/douban/radio/RadioApp;->getSongTime()I

    move-result v1

    #setter for: Lcom/douban/radio/app/RadioActivity;->playPosition:I
    invoke-static {v0, v1}, Lcom/douban/radio/app/RadioActivity;->access$002(Lcom/douban/radio/app/RadioActivity;I)I

    .line 168
    iget-object v0, p0, Lcom/douban/radio/app/RadioActivity$1;->this$0:Lcom/douban/radio/app/RadioActivity;

    #getter for: Lcom/douban/radio/app/RadioActivity;->curTime:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/douban/radio/app/RadioActivity;->access$200(Lcom/douban/radio/app/RadioActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/douban/radio/app/RadioActivity$1;->this$0:Lcom/douban/radio/app/RadioActivity;

    #getter for: Lcom/douban/radio/app/RadioActivity;->playPosition:I
    invoke-static {v1}, Lcom/douban/radio/app/RadioActivity;->access$000(Lcom/douban/radio/app/RadioActivity;)I

    move-result v1

    invoke-static {v1}, Lfm/douban/util/Utils;->makeTimeString(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    iget-object v0, p0, Lcom/douban/radio/app/RadioActivity$1;->this$0:Lcom/douban/radio/app/RadioActivity;

    #getter for: Lcom/douban/radio/app/RadioActivity;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/douban/radio/app/RadioActivity;->access$300(Lcom/douban/radio/app/RadioActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 170
    iget-object v0, p0, Lcom/douban/radio/app/RadioActivity$1;->this$0:Lcom/douban/radio/app/RadioActivity;

    #getter for: Lcom/douban/radio/app/RadioActivity;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/douban/radio/app/RadioActivity;->access$300(Lcom/douban/radio/app/RadioActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 173
    :pswitch_1
    const-string v0, "RadioActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updatae song time started, time is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/douban/radio/app/RadioActivity$1;->this$0:Lcom/douban/radio/app/RadioActivity;

    #getter for: Lcom/douban/radio/app/RadioActivity;->playPosition:I
    invoke-static {v2}, Lcom/douban/radio/app/RadioActivity;->access$000(Lcom/douban/radio/app/RadioActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v0, p0, Lcom/douban/radio/app/RadioActivity$1;->this$0:Lcom/douban/radio/app/RadioActivity;

    #getter for: Lcom/douban/radio/app/RadioActivity;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/douban/radio/app/RadioActivity;->access$300(Lcom/douban/radio/app/RadioActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 175
    iget-object v0, p0, Lcom/douban/radio/app/RadioActivity$1;->this$0:Lcom/douban/radio/app/RadioActivity;

    const/4 v1, 0x1

    #setter for: Lcom/douban/radio/app/RadioActivity;->updateCurtimeStarted:Z
    invoke-static {v0, v1}, Lcom/douban/radio/app/RadioActivity;->access$402(Lcom/douban/radio/app/RadioActivity;Z)Z

    goto :goto_0

    .line 178
    :pswitch_2
    iget-object v0, p0, Lcom/douban/radio/app/RadioActivity$1;->this$0:Lcom/douban/radio/app/RadioActivity;

    #getter for: Lcom/douban/radio/app/RadioActivity;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/douban/radio/app/RadioActivity;->access$300(Lcom/douban/radio/app/RadioActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 179
    iget-object v0, p0, Lcom/douban/radio/app/RadioActivity$1;->this$0:Lcom/douban/radio/app/RadioActivity;

    #setter for: Lcom/douban/radio/app/RadioActivity;->playPosition:I
    invoke-static {v0, v2}, Lcom/douban/radio/app/RadioActivity;->access$002(Lcom/douban/radio/app/RadioActivity;I)I

    .line 180
    iget-object v0, p0, Lcom/douban/radio/app/RadioActivity$1;->this$0:Lcom/douban/radio/app/RadioActivity;

    #getter for: Lcom/douban/radio/app/RadioActivity;->curTime:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/douban/radio/app/RadioActivity;->access$200(Lcom/douban/radio/app/RadioActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/douban/radio/app/RadioActivity$1;->this$0:Lcom/douban/radio/app/RadioActivity;

    #getter for: Lcom/douban/radio/app/RadioActivity;->playPosition:I
    invoke-static {v1}, Lcom/douban/radio/app/RadioActivity;->access$000(Lcom/douban/radio/app/RadioActivity;)I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    invoke-static {v1}, Lfm/douban/util/Utils;->makeTimeString(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v0, p0, Lcom/douban/radio/app/RadioActivity$1;->this$0:Lcom/douban/radio/app/RadioActivity;

    #setter for: Lcom/douban/radio/app/RadioActivity;->updateCurtimeStarted:Z
    invoke-static {v0, v2}, Lcom/douban/radio/app/RadioActivity;->access$402(Lcom/douban/radio/app/RadioActivity;Z)Z

    goto/16 :goto_0

    .line 184
    :pswitch_3
    iget-object v0, p0, Lcom/douban/radio/app/RadioActivity$1;->this$0:Lcom/douban/radio/app/RadioActivity;

    #getter for: Lcom/douban/radio/app/RadioActivity;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/douban/radio/app/RadioActivity;->access$300(Lcom/douban/radio/app/RadioActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xfa4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 185
    iget-object v0, p0, Lcom/douban/radio/app/RadioActivity$1;->this$0:Lcom/douban/radio/app/RadioActivity;

    #calls: Lcom/douban/radio/app/RadioActivity;->hideTopMenu()V
    invoke-static {v0}, Lcom/douban/radio/app/RadioActivity;->access$500(Lcom/douban/radio/app/RadioActivity;)V

    goto/16 :goto_0

    .line 188
    :pswitch_4
    iget-object v1, p0, Lcom/douban/radio/app/RadioActivity$1;->this$0:Lcom/douban/radio/app/RadioActivity;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lfm/douban/service/RadioState;

    #calls: Lcom/douban/radio/app/RadioActivity;->updateUI(Lfm/douban/service/RadioState;)V
    invoke-static {v1, v0}, Lcom/douban/radio/app/RadioActivity;->access$600(Lcom/douban/radio/app/RadioActivity;Lfm/douban/service/RadioState;)V

    goto/16 :goto_0

    .line 165
    nop

    :pswitch_data_0
    .packed-switch 0xfa1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
