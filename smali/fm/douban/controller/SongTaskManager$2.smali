.class Lfm/douban/controller/SongTaskManager$2;
.super Landroid/os/Handler;
.source "SongTaskManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfm/douban/controller/SongTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lfm/douban/controller/SongTaskManager;


# direct methods
.method constructor <init>(Lfm/douban/controller/SongTaskManager;)V
    .locals 0
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lfm/douban/controller/SongTaskManager$2;->this$0:Lfm/douban/controller/SongTaskManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0x66

    const/16 v5, 0x65

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 115
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 117
    :pswitch_0
    const-string v3, "SongTaskManager"

    const-string v4, "MSG_START"

    invoke-static {v3, v4}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v3, p0, Lfm/douban/controller/SongTaskManager$2;->this$0:Lfm/douban/controller/SongTaskManager;

    #setter for: Lfm/douban/controller/SongTaskManager;->startSyncFlag:Z
    invoke-static {v3, v7}, Lfm/douban/controller/SongTaskManager;->access$202(Lfm/douban/controller/SongTaskManager;Z)Z

    .line 120
    iget-object v3, p0, Lfm/douban/controller/SongTaskManager$2;->this$0:Lfm/douban/controller/SongTaskManager;

    #getter for: Lfm/douban/controller/SongTaskManager;->handler:Landroid/os/Handler;
    invoke-static {v3}, Lfm/douban/controller/SongTaskManager;->access$100(Lfm/douban/controller/SongTaskManager;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lfm/douban/controller/SongTaskManager$2;->this$0:Lfm/douban/controller/SongTaskManager;

    #getter for: Lfm/douban/controller/SongTaskManager;->handler:Landroid/os/Handler;
    invoke-static {v4}, Lfm/douban/controller/SongTaskManager;->access$100(Lfm/douban/controller/SongTaskManager;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 123
    :pswitch_1
    const-string v3, "SongTaskManager"

    const-string v4, "MSG_GET_TASK_LIST"

    invoke-static {v3, v4}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v3, p0, Lfm/douban/controller/SongTaskManager$2;->this$0:Lfm/douban/controller/SongTaskManager;

    #getter for: Lfm/douban/controller/SongTaskManager;->manager:Lfm/douban/controller/SongManager;
    invoke-static {v3}, Lfm/douban/controller/SongTaskManager;->access$000(Lfm/douban/controller/SongTaskManager;)Lfm/douban/controller/SongManager;

    move-result-object v3

    invoke-virtual {v3}, Lfm/douban/controller/SongManager;->getSongIds()Ljava/util/ArrayList;

    move-result-object v1

    .line 126
    .local v1, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lfm/douban/controller/SongTaskManager$2;->this$0:Lfm/douban/controller/SongTaskManager;

    #getter for: Lfm/douban/controller/SongTaskManager;->rm:Lfm/douban/controller/RadioManager;
    invoke-static {v3}, Lfm/douban/controller/SongTaskManager;->access$300(Lfm/douban/controller/SongTaskManager;)Lfm/douban/controller/RadioManager;

    move-result-object v3

    invoke-virtual {v3}, Lfm/douban/controller/RadioManager;->getSharedPreferences()Lfm/douban/model/FMSharedPreferences;

    move-result-object v3

    const-string v4, "audio_format"

    const-string v5, "aac"

    invoke-virtual {v3, v4, v5}, Lfm/douban/model/FMSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, format:Ljava/lang/String;
    iget-object v3, p0, Lfm/douban/controller/SongTaskManager$2;->this$0:Lfm/douban/controller/SongTaskManager;

    #getter for: Lfm/douban/controller/SongTaskManager;->api:Lfm/douban/api/Api;
    invoke-static {v3}, Lfm/douban/controller/SongTaskManager;->access$500(Lfm/douban/controller/SongTaskManager;)Lfm/douban/api/Api;

    move-result-object v3

    iget-object v4, p0, Lfm/douban/controller/SongTaskManager$2;->this$0:Lfm/douban/controller/SongTaskManager;

    #getter for: Lfm/douban/controller/SongTaskManager;->listHandler:Lcom/loopj/android/http/AsyncHttpResponseHandler;
    invoke-static {v4}, Lfm/douban/controller/SongTaskManager;->access$400(Lfm/douban/controller/SongTaskManager;)Lcom/loopj/android/http/AsyncHttpResponseHandler;

    move-result-object v4

    invoke-virtual {v3, v1, v0, v4}, Lfm/douban/api/Api;->getHearts(Ljava/util/ArrayList;Ljava/lang/String;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 128
    iget-object v3, p0, Lfm/douban/controller/SongTaskManager$2;->this$0:Lfm/douban/controller/SongTaskManager;

    iget-object v4, p0, Lfm/douban/controller/SongTaskManager$2;->this$0:Lfm/douban/controller/SongTaskManager;

    #getter for: Lfm/douban/controller/SongTaskManager;->syncing:Z
    invoke-static {v4}, Lfm/douban/controller/SongTaskManager;->access$600(Lfm/douban/controller/SongTaskManager;)Z

    move-result v4

    #calls: Lfm/douban/controller/SongTaskManager;->updateState(ZZLjava/lang/String;)V
    invoke-static {v3, v7, v4, v9}, Lfm/douban/controller/SongTaskManager;->access$700(Lfm/douban/controller/SongTaskManager;ZZLjava/lang/String;)V

    goto :goto_0

    .line 131
    .end local v0           #format:Ljava/lang/String;
    .end local v1           #ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_2
    const-string v3, "SongTaskManager"

    iget-object v4, p0, Lfm/douban/controller/SongTaskManager$2;->this$0:Lfm/douban/controller/SongTaskManager;

    #getter for: Lfm/douban/controller/SongTaskManager;->manager:Lfm/douban/controller/SongManager;
    invoke-static {v4}, Lfm/douban/controller/SongTaskManager;->access$000(Lfm/douban/controller/SongTaskManager;)Lfm/douban/controller/SongManager;

    move-result-object v4

    invoke-virtual {v4}, Lfm/douban/controller/SongManager;->info()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v3, p0, Lfm/douban/controller/SongTaskManager$2;->this$0:Lfm/douban/controller/SongTaskManager;

    #getter for: Lfm/douban/controller/SongTaskManager;->manager:Lfm/douban/controller/SongManager;
    invoke-static {v3}, Lfm/douban/controller/SongTaskManager;->access$000(Lfm/douban/controller/SongTaskManager;)Lfm/douban/controller/SongManager;

    move-result-object v3

    invoke-virtual {v3}, Lfm/douban/controller/SongManager;->checkTasks()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 134
    iget-object v3, p0, Lfm/douban/controller/SongTaskManager$2;->this$0:Lfm/douban/controller/SongTaskManager;

    #getter for: Lfm/douban/controller/SongTaskManager;->errCount:I
    invoke-static {v3}, Lfm/douban/controller/SongTaskManager;->access$800(Lfm/douban/controller/SongTaskManager;)I

    move-result v3

    const/4 v4, 0x5

    if-le v3, v4, :cond_1

    .line 135
    iget-object v3, p0, Lfm/douban/controller/SongTaskManager$2;->this$0:Lfm/douban/controller/SongTaskManager;

    #setter for: Lfm/douban/controller/SongTaskManager;->errCount:I
    invoke-static {v3, v6}, Lfm/douban/controller/SongTaskManager;->access$802(Lfm/douban/controller/SongTaskManager;I)I

    .line 136
    iget-object v3, p0, Lfm/douban/controller/SongTaskManager$2;->this$0:Lfm/douban/controller/SongTaskManager;

    invoke-virtual {v3}, Lfm/douban/controller/SongTaskManager;->stop()V

    goto/16 :goto_0

    .line 139
    :cond_1
    iget-object v3, p0, Lfm/douban/controller/SongTaskManager$2;->this$0:Lfm/douban/controller/SongTaskManager;

    invoke-static {v3}, Lfm/douban/controller/SongTaskManager;->access$808(Lfm/douban/controller/SongTaskManager;)I

    .line 142
    :cond_2
    iget-object v3, p0, Lfm/douban/controller/SongTaskManager$2;->this$0:Lfm/douban/controller/SongTaskManager;

    #calls: Lfm/douban/controller/SongTaskManager;->canStart()Z
    invoke-static {v3}, Lfm/douban/controller/SongTaskManager;->access$900(Lfm/douban/controller/SongTaskManager;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 143
    iget-object v3, p0, Lfm/douban/controller/SongTaskManager$2;->this$0:Lfm/douban/controller/SongTaskManager;

    #calls: Lfm/douban/controller/SongTaskManager;->getNextTask()Lfm/douban/model/SongTask;
    invoke-static {v3}, Lfm/douban/controller/SongTaskManager;->access$1000(Lfm/douban/controller/SongTaskManager;)Lfm/douban/model/SongTask;

    move-result-object v2

    .line 144
    .local v2, task:Lfm/douban/model/SongTask;
    if-nez v2, :cond_3

    .line 145
    const-string v3, "SongTaskManager"

    const-string v4, "MSG_GET_TASK_LIST"

    invoke-static {v3, v4}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v3, p0, Lfm/douban/controller/SongTaskManager$2;->this$0:Lfm/douban/controller/SongTaskManager;

    #getter for: Lfm/douban/controller/SongTaskManager;->handler:Landroid/os/Handler;
    invoke-static {v3}, Lfm/douban/controller/SongTaskManager;->access$100(Lfm/douban/controller/SongTaskManager;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lfm/douban/controller/SongTaskManager$2;->this$0:Lfm/douban/controller/SongTaskManager;

    #getter for: Lfm/douban/controller/SongTaskManager;->handler:Landroid/os/Handler;
    invoke-static {v4}, Lfm/douban/controller/SongTaskManager;->access$100(Lfm/douban/controller/SongTaskManager;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 147
    :cond_3
    iget-object v3, p0, Lfm/douban/controller/SongTaskManager$2;->this$0:Lfm/douban/controller/SongTaskManager;

    #getter for: Lfm/douban/controller/SongTaskManager;->isDownloading:Z
    invoke-static {v3}, Lfm/douban/controller/SongTaskManager;->access$1100(Lfm/douban/controller/SongTaskManager;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 148
    iget-object v3, p0, Lfm/douban/controller/SongTaskManager$2;->this$0:Lfm/douban/controller/SongTaskManager;

    #setter for: Lfm/douban/controller/SongTaskManager;->isDownloading:Z
    invoke-static {v3, v7}, Lfm/douban/controller/SongTaskManager;->access$1102(Lfm/douban/controller/SongTaskManager;Z)Z

    .line 149
    const-string v3, "SongTaskManager"

    const-string v4, "MSG_DOWNLOAD_TASK"

    invoke-static {v3, v4}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v3, p0, Lfm/douban/controller/SongTaskManager$2;->this$0:Lfm/douban/controller/SongTaskManager;

    #getter for: Lfm/douban/controller/SongTaskManager;->startSyncFlag:Z
    invoke-static {v3}, Lfm/douban/controller/SongTaskManager;->access$200(Lfm/douban/controller/SongTaskManager;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 151
    iget-object v3, p0, Lfm/douban/controller/SongTaskManager$2;->this$0:Lfm/douban/controller/SongTaskManager;

    #getter for: Lfm/douban/controller/SongTaskManager;->context:Landroid/content/Context;
    invoke-static {v3}, Lfm/douban/controller/SongTaskManager;->access$1200(Lfm/douban/controller/SongTaskManager;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0900c3

    invoke-static {v3, v4}, Lfm/douban/util/Utils;->showToast(Landroid/content/Context;I)V

    .line 152
    iget-object v3, p0, Lfm/douban/controller/SongTaskManager$2;->this$0:Lfm/douban/controller/SongTaskManager;

    #setter for: Lfm/douban/controller/SongTaskManager;->startSyncFlag:Z
    invoke-static {v3, v6}, Lfm/douban/controller/SongTaskManager;->access$202(Lfm/douban/controller/SongTaskManager;Z)Z

    .line 154
    :cond_4
    iget-object v3, p0, Lfm/douban/controller/SongTaskManager$2;->this$0:Lfm/douban/controller/SongTaskManager;

    iget-object v4, p0, Lfm/douban/controller/SongTaskManager$2;->this$0:Lfm/douban/controller/SongTaskManager;

    #getter for: Lfm/douban/controller/SongTaskManager;->syncing:Z
    invoke-static {v4}, Lfm/douban/controller/SongTaskManager;->access$600(Lfm/douban/controller/SongTaskManager;)Z

    move-result v4

    iget-object v5, v2, Lfm/douban/model/SongTask;->song_id:Ljava/lang/String;

    #calls: Lfm/douban/controller/SongTaskManager;->updateState(ZZLjava/lang/String;)V
    invoke-static {v3, v6, v4, v5}, Lfm/douban/controller/SongTaskManager;->access$700(Lfm/douban/controller/SongTaskManager;ZZLjava/lang/String;)V

    .line 155
    iget-object v3, p0, Lfm/douban/controller/SongTaskManager$2;->this$0:Lfm/douban/controller/SongTaskManager;

    new-instance v4, Lfm/douban/controller/SongTaskManager$DownloadTask;

    iget-object v5, p0, Lfm/douban/controller/SongTaskManager$2;->this$0:Lfm/douban/controller/SongTaskManager;

    invoke-direct {v4, v5, v2}, Lfm/douban/controller/SongTaskManager$DownloadTask;-><init>(Lfm/douban/controller/SongTaskManager;Lfm/douban/model/SongTask;)V

    #setter for: Lfm/douban/controller/SongTaskManager;->down:Lfm/douban/controller/SongTaskManager$DownloadTask;
    invoke-static {v3, v4}, Lfm/douban/controller/SongTaskManager;->access$1302(Lfm/douban/controller/SongTaskManager;Lfm/douban/controller/SongTaskManager$DownloadTask;)Lfm/douban/controller/SongTaskManager$DownloadTask;

    .line 156
    iget-object v3, p0, Lfm/douban/controller/SongTaskManager$2;->this$0:Lfm/douban/controller/SongTaskManager;

    #getter for: Lfm/douban/controller/SongTaskManager;->down:Lfm/douban/controller/SongTaskManager$DownloadTask;
    invoke-static {v3}, Lfm/douban/controller/SongTaskManager;->access$1300(Lfm/douban/controller/SongTaskManager;)Lfm/douban/controller/SongTaskManager$DownloadTask;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lfm/douban/controller/SongTaskManager$DownloadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 157
    const-string v3, "SongTaskManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "start download SongTask "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lfm/douban/model/SongTask;->song_id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 160
    .end local v2           #task:Lfm/douban/model/SongTask;
    :cond_5
    iget-object v3, p0, Lfm/douban/controller/SongTaskManager$2;->this$0:Lfm/douban/controller/SongTaskManager;

    invoke-virtual {v3}, Lfm/douban/controller/SongTaskManager;->stop()V

    goto/16 :goto_0

    .line 164
    :pswitch_3
    const-string v3, "SongTaskManager"

    const-string v4, "MSG_STOP"

    invoke-static {v3, v4}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v3, p0, Lfm/douban/controller/SongTaskManager$2;->this$0:Lfm/douban/controller/SongTaskManager;

    #getter for: Lfm/douban/controller/SongTaskManager;->handler:Landroid/os/Handler;
    invoke-static {v3}, Lfm/douban/controller/SongTaskManager;->access$100(Lfm/douban/controller/SongTaskManager;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 167
    iget-object v3, p0, Lfm/douban/controller/SongTaskManager$2;->this$0:Lfm/douban/controller/SongTaskManager;

    #getter for: Lfm/douban/controller/SongTaskManager;->handler:Landroid/os/Handler;
    invoke-static {v3}, Lfm/douban/controller/SongTaskManager;->access$100(Lfm/douban/controller/SongTaskManager;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 168
    iget-object v3, p0, Lfm/douban/controller/SongTaskManager$2;->this$0:Lfm/douban/controller/SongTaskManager;

    #getter for: Lfm/douban/controller/SongTaskManager;->handler:Landroid/os/Handler;
    invoke-static {v3}, Lfm/douban/controller/SongTaskManager;->access$100(Lfm/douban/controller/SongTaskManager;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 170
    iget-object v3, p0, Lfm/douban/controller/SongTaskManager$2;->this$0:Lfm/douban/controller/SongTaskManager;

    #getter for: Lfm/douban/controller/SongTaskManager;->down:Lfm/douban/controller/SongTaskManager$DownloadTask;
    invoke-static {v3}, Lfm/douban/controller/SongTaskManager;->access$1300(Lfm/douban/controller/SongTaskManager;)Lfm/douban/controller/SongTaskManager$DownloadTask;

    move-result-object v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lfm/douban/controller/SongTaskManager$2;->this$0:Lfm/douban/controller/SongTaskManager;

    #getter for: Lfm/douban/controller/SongTaskManager;->syncing:Z
    invoke-static {v3}, Lfm/douban/controller/SongTaskManager;->access$600(Lfm/douban/controller/SongTaskManager;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 172
    iget-object v3, p0, Lfm/douban/controller/SongTaskManager$2;->this$0:Lfm/douban/controller/SongTaskManager;

    #getter for: Lfm/douban/controller/SongTaskManager;->down:Lfm/douban/controller/SongTaskManager$DownloadTask;
    invoke-static {v3}, Lfm/douban/controller/SongTaskManager;->access$1300(Lfm/douban/controller/SongTaskManager;)Lfm/douban/controller/SongTaskManager$DownloadTask;

    move-result-object v3

    invoke-virtual {v3, v7}, Lfm/douban/controller/SongTaskManager$DownloadTask;->cancel(Z)Z

    .line 174
    :cond_6
    iget-object v3, p0, Lfm/douban/controller/SongTaskManager$2;->this$0:Lfm/douban/controller/SongTaskManager;

    #setter for: Lfm/douban/controller/SongTaskManager;->syncing:Z
    invoke-static {v3, v6}, Lfm/douban/controller/SongTaskManager;->access$602(Lfm/douban/controller/SongTaskManager;Z)Z

    .line 175
    iget-object v3, p0, Lfm/douban/controller/SongTaskManager$2;->this$0:Lfm/douban/controller/SongTaskManager;

    #setter for: Lfm/douban/controller/SongTaskManager;->isDownloading:Z
    invoke-static {v3, v6}, Lfm/douban/controller/SongTaskManager;->access$1102(Lfm/douban/controller/SongTaskManager;Z)Z

    .line 176
    iget-object v3, p0, Lfm/douban/controller/SongTaskManager$2;->this$0:Lfm/douban/controller/SongTaskManager;

    iget-object v4, p0, Lfm/douban/controller/SongTaskManager$2;->this$0:Lfm/douban/controller/SongTaskManager;

    #getter for: Lfm/douban/controller/SongTaskManager;->syncing:Z
    invoke-static {v4}, Lfm/douban/controller/SongTaskManager;->access$600(Lfm/douban/controller/SongTaskManager;)Z

    move-result v4

    #calls: Lfm/douban/controller/SongTaskManager;->updateState(ZZLjava/lang/String;)V
    invoke-static {v3, v6, v4, v9}, Lfm/douban/controller/SongTaskManager;->access$700(Lfm/douban/controller/SongTaskManager;ZZLjava/lang/String;)V

    goto/16 :goto_0

    .line 115
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
