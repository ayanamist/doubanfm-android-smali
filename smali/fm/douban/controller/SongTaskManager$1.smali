.class Lfm/douban/controller/SongTaskManager$1;
.super Lcom/loopj/android/http/JsonHttpResponseHandler;
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
    .line 77
    iput-object p1, p0, Lfm/douban/controller/SongTaskManager$1;->this$0:Lfm/douban/controller/SongTaskManager;

    invoke-direct {p0}, Lcom/loopj/android/http/JsonHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 2
    .parameter "e"

    .prologue
    .line 104
    const-string v0, "SongTaskManager"

    const-string v1, "onFailure"

    invoke-static {v0, v1}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 106
    iget-object v0, p0, Lfm/douban/controller/SongTaskManager$1;->this$0:Lfm/douban/controller/SongTaskManager;

    invoke-virtual {v0}, Lfm/douban/controller/SongTaskManager;->stop()V

    .line 107
    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 6
    .parameter "json"

    .prologue
    .line 80
    const-string v3, "SongTaskManager"

    const-string v4, "onSuccess"

    invoke-static {v3, v4}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const-string v3, "SongTaskManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "********list json:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    if-eqz p1, :cond_0

    .line 84
    :try_start_0
    const-string v3, "r"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 85
    .local v1, r:I
    if-nez v1, :cond_2

    .line 86
    const-string v3, "songs"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 87
    .local v2, songs:Lorg/json/JSONArray;
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 88
    iget-object v3, p0, Lfm/douban/controller/SongTaskManager$1;->this$0:Lfm/douban/controller/SongTaskManager;

    invoke-virtual {v3}, Lfm/douban/controller/SongTaskManager;->stop()V

    .line 101
    .end local v1           #r:I
    .end local v2           #songs:Lorg/json/JSONArray;
    :cond_0
    :goto_0
    return-void

    .line 90
    .restart local v1       #r:I
    .restart local v2       #songs:Lorg/json/JSONArray;
    :cond_1
    iget-object v3, p0, Lfm/douban/controller/SongTaskManager$1;->this$0:Lfm/douban/controller/SongTaskManager;

    #getter for: Lfm/douban/controller/SongTaskManager;->manager:Lfm/douban/controller/SongManager;
    invoke-static {v3}, Lfm/douban/controller/SongTaskManager;->access$000(Lfm/douban/controller/SongTaskManager;)Lfm/douban/controller/SongManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lfm/douban/controller/SongManager;->saveSongs(Lorg/json/JSONArray;)V

    .line 91
    iget-object v3, p0, Lfm/douban/controller/SongTaskManager$1;->this$0:Lfm/douban/controller/SongTaskManager;

    #getter for: Lfm/douban/controller/SongTaskManager;->handler:Landroid/os/Handler;
    invoke-static {v3}, Lfm/douban/controller/SongTaskManager;->access$100(Lfm/douban/controller/SongTaskManager;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x66

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 97
    .end local v1           #r:I
    .end local v2           #songs:Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    .line 98
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 94
    .end local v0           #e:Lorg/json/JSONException;
    .restart local v1       #r:I
    :cond_2
    :try_start_1
    const-string v3, "SongTaskManager"

    const-string v4, "err"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v3, p0, Lfm/douban/controller/SongTaskManager$1;->this$0:Lfm/douban/controller/SongTaskManager;

    invoke-virtual {v3}, Lfm/douban/controller/SongTaskManager;->stop()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
