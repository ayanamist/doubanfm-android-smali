.class Lfm/douban/controller/SongTaskManager$DownloadTask;
.super Landroid/os/AsyncTask;
.source "SongTaskManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfm/douban/controller/SongTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field task:Lfm/douban/model/SongTask;

.field final synthetic this$0:Lfm/douban/controller/SongTaskManager;


# direct methods
.method constructor <init>(Lfm/douban/controller/SongTaskManager;Lfm/douban/model/SongTask;)V
    .locals 0
    .parameter
    .parameter "t"

    .prologue
    .line 185
    iput-object p1, p0, Lfm/douban/controller/SongTaskManager$DownloadTask;->this$0:Lfm/douban/controller/SongTaskManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 186
    iput-object p2, p0, Lfm/douban/controller/SongTaskManager$DownloadTask;->task:Lfm/douban/model/SongTask;

    .line 187
    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 5
    .parameter "args"

    .prologue
    .line 191
    iget-object v1, p0, Lfm/douban/controller/SongTaskManager$DownloadTask;->this$0:Lfm/douban/controller/SongTaskManager;

    iget-object v2, p0, Lfm/douban/controller/SongTaskManager$DownloadTask;->task:Lfm/douban/model/SongTask;

    #calls: Lfm/douban/controller/SongTaskManager;->download(Lfm/douban/model/SongTask;)Z
    invoke-static {v1, v2}, Lfm/douban/controller/SongTaskManager;->access$1400(Lfm/douban/controller/SongTaskManager;Lfm/douban/model/SongTask;)Z

    move-result v0

    .line 193
    .local v0, r:Z
    iget-object v1, p0, Lfm/douban/controller/SongTaskManager$DownloadTask;->this$0:Lfm/douban/controller/SongTaskManager;

    #getter for: Lfm/douban/controller/SongTaskManager;->idown:Lnatalya/graphics/ImageDownloader;
    invoke-static {v1}, Lfm/douban/controller/SongTaskManager;->access$1500(Lfm/douban/controller/SongTaskManager;)Lnatalya/graphics/ImageDownloader;

    move-result-object v1

    iget-object v2, p0, Lfm/douban/controller/SongTaskManager$DownloadTask;->task:Lfm/douban/model/SongTask;

    invoke-virtual {v2}, Lfm/douban/model/SongTask;->pictureUrl()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-instance v4, Lfm/douban/controller/SongTaskManager$DownloadTask$1;

    invoke-direct {v4, p0}, Lfm/douban/controller/SongTaskManager$DownloadTask$1;-><init>(Lfm/douban/controller/SongTaskManager$DownloadTask;)V

    invoke-virtual {v1, v2, v3, v4}, Lnatalya/graphics/ImageDownloader;->download(Ljava/lang/String;ILnatalya/graphics/ImageDownloader$OnlyDownload;)V

    .line 198
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 182
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lfm/douban/controller/SongTaskManager$DownloadTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Boolean;)V
    .locals 4
    .parameter "r"

    .prologue
    const/4 v3, 0x0

    .line 203
    iget-object v0, p0, Lfm/douban/controller/SongTaskManager$DownloadTask;->this$0:Lfm/douban/controller/SongTaskManager;

    const/4 v1, 0x1

    iget-object v2, p0, Lfm/douban/controller/SongTaskManager$DownloadTask;->task:Lfm/douban/model/SongTask;

    iget-object v2, v2, Lfm/douban/model/SongTask;->song_id:Ljava/lang/String;

    #calls: Lfm/douban/controller/SongTaskManager;->updateState(ZZLjava/lang/String;)V
    invoke-static {v0, v3, v1, v2}, Lfm/douban/controller/SongTaskManager;->access$700(Lfm/douban/controller/SongTaskManager;ZZLjava/lang/String;)V

    .line 204
    iget-object v0, p0, Lfm/douban/controller/SongTaskManager$DownloadTask;->this$0:Lfm/douban/controller/SongTaskManager;

    #setter for: Lfm/douban/controller/SongTaskManager;->isDownloading:Z
    invoke-static {v0, v3}, Lfm/douban/controller/SongTaskManager;->access$1102(Lfm/douban/controller/SongTaskManager;Z)Z

    .line 205
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lfm/douban/controller/SongTaskManager$DownloadTask;->this$0:Lfm/douban/controller/SongTaskManager;

    #getter for: Lfm/douban/controller/SongTaskManager;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lfm/douban/controller/SongTaskManager;->access$100(Lfm/douban/controller/SongTaskManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lfm/douban/controller/SongTaskManager$DownloadTask;->this$0:Lfm/douban/controller/SongTaskManager;

    #getter for: Lfm/douban/controller/SongTaskManager;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lfm/douban/controller/SongTaskManager;->access$100(Lfm/douban/controller/SongTaskManager;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x66

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 209
    :cond_0
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 182
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lfm/douban/controller/SongTaskManager$DownloadTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
