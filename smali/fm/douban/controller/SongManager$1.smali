.class Lfm/douban/controller/SongManager$1;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "SongManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfm/douban/controller/SongManager;->syncOfflineRecords()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lfm/douban/controller/SongManager;


# direct methods
.method constructor <init>(Lfm/douban/controller/SongManager;)V
    .locals 0
    .parameter

    .prologue
    .line 565
    iput-object p1, p0, Lfm/douban/controller/SongManager$1;->this$0:Lfm/douban/controller/SongManager;

    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Ljava/lang/String;)V
    .locals 3
    .parameter "content"

    .prologue
    .line 567
    const-string v0, "SongManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syncOfflineRecords success: clear records"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    iget-object v0, p0, Lfm/douban/controller/SongManager$1;->this$0:Lfm/douban/controller/SongManager;

    invoke-virtual {v0}, Lfm/douban/controller/SongManager;->clearOfflineRecords()V

    .line 569
    return-void
.end method
