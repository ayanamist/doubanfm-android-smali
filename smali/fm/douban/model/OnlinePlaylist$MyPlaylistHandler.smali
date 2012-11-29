.class Lfm/douban/model/OnlinePlaylist$MyPlaylistHandler;
.super Lcom/loopj/android/http/JsonHttpResponseHandler;
.source "OnlinePlaylist.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfm/douban/model/OnlinePlaylist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyPlaylistHandler"
.end annotation


# instance fields
.field channelStr:Ljava/lang/String;

.field final synthetic this$0:Lfm/douban/model/OnlinePlaylist;


# direct methods
.method constructor <init>(Lfm/douban/model/OnlinePlaylist;)V
    .locals 1
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lfm/douban/model/OnlinePlaylist$MyPlaylistHandler;->this$0:Lfm/douban/model/OnlinePlaylist;

    invoke-direct {p0}, Lcom/loopj/android/http/JsonHttpResponseHandler;-><init>()V

    .line 149
    const-string v0, ""

    iput-object v0, p0, Lfm/douban/model/OnlinePlaylist$MyPlaylistHandler;->channelStr:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 4
    .parameter "error"

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 233
    const-string v0, "OnlinePlaylist"

    const-string v1, "error throwed to playlist handler"

    invoke-static {v0, v1}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 238
    iget-object v0, p0, Lfm/douban/model/OnlinePlaylist$MyPlaylistHandler;->this$0:Lfm/douban/model/OnlinePlaylist;

    #getter for: Lfm/douban/model/OnlinePlaylist;->radio:Lfm/douban/service/Radio;
    invoke-static {v0}, Lfm/douban/model/OnlinePlaylist;->access$300(Lfm/douban/model/OnlinePlaylist;)Lfm/douban/service/Radio;

    move-result-object v0

    iget-object v0, v0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lfm/douban/service/RadioState;->canOp:Z

    .line 239
    iget-object v0, p0, Lfm/douban/model/OnlinePlaylist$MyPlaylistHandler;->this$0:Lfm/douban/model/OnlinePlaylist;

    #setter for: Lfm/douban/model/OnlinePlaylist;->requiring:Z
    invoke-static {v0, v2}, Lfm/douban/model/OnlinePlaylist;->access$002(Lfm/douban/model/OnlinePlaylist;Z)Z

    .line 240
    iget-object v0, p0, Lfm/douban/model/OnlinePlaylist$MyPlaylistHandler;->this$0:Lfm/douban/model/OnlinePlaylist;

    #getter for: Lfm/douban/model/OnlinePlaylist;->isStopping:Z
    invoke-static {v0}, Lfm/douban/model/OnlinePlaylist;->access$100(Lfm/douban/model/OnlinePlaylist;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lfm/douban/model/OnlinePlaylist$MyPlaylistHandler;->this$0:Lfm/douban/model/OnlinePlaylist;

    #setter for: Lfm/douban/model/OnlinePlaylist;->isStopping:Z
    invoke-static {v0, v2}, Lfm/douban/model/OnlinePlaylist;->access$102(Lfm/douban/model/OnlinePlaylist;Z)Z

    .line 261
    :goto_0
    return-void

    .line 244
    :cond_0
    iget-object v0, p0, Lfm/douban/model/OnlinePlaylist$MyPlaylistHandler;->this$0:Lfm/douban/model/OnlinePlaylist;

    #getter for: Lfm/douban/model/OnlinePlaylist;->context:Landroid/content/Context;
    invoke-static {v0}, Lfm/douban/model/OnlinePlaylist;->access$200(Lfm/douban/model/OnlinePlaylist;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lfm/douban/FmApp;->getRadioManager(Landroid/content/Context;)Lfm/douban/controller/RadioManager;

    move-result-object v0

    invoke-static {v0}, Lfm/douban/model/Token;->isLogin(Lfm/douban/controller/RadioManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 245
    const-string v0, "OnlinePlaylist"

    const-string v1, "not login"

    invoke-static {v0, v1}, Lfm/douban/util/DBLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v0, p0, Lfm/douban/model/OnlinePlaylist$MyPlaylistHandler;->this$0:Lfm/douban/model/OnlinePlaylist;

    #getter for: Lfm/douban/model/OnlinePlaylist;->radio:Lfm/douban/service/Radio;
    invoke-static {v0}, Lfm/douban/model/OnlinePlaylist;->access$300(Lfm/douban/model/OnlinePlaylist;)Lfm/douban/service/Radio;

    move-result-object v0

    invoke-virtual {v0, v3}, Lfm/douban/service/Radio;->pause(I)V

    .line 248
    iget-object v0, p0, Lfm/douban/model/OnlinePlaylist$MyPlaylistHandler;->this$0:Lfm/douban/model/OnlinePlaylist;

    #getter for: Lfm/douban/model/OnlinePlaylist;->radio:Lfm/douban/service/Radio;
    invoke-static {v0}, Lfm/douban/model/OnlinePlaylist;->access$300(Lfm/douban/model/OnlinePlaylist;)Lfm/douban/service/Radio;

    move-result-object v0

    invoke-virtual {v0}, Lfm/douban/service/Radio;->updateState()V

    goto :goto_0

    .line 251
    :cond_1
    iget-object v0, p0, Lfm/douban/model/OnlinePlaylist$MyPlaylistHandler;->this$0:Lfm/douban/model/OnlinePlaylist;

    #getter for: Lfm/douban/model/OnlinePlaylist;->radio:Lfm/douban/service/Radio;
    invoke-static {v0}, Lfm/douban/model/OnlinePlaylist;->access$300(Lfm/douban/model/OnlinePlaylist;)Lfm/douban/service/Radio;

    move-result-object v0

    invoke-virtual {v0}, Lfm/douban/service/Radio;->switchOffline()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 252
    const-string v0, "OnlinePlaylist"

    const-string v1, "switch radio offline successful"

    invoke-static {v0, v1}, Lfm/douban/util/DBLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 255
    :cond_2
    const-string v0, "OnlinePlaylist"

    const-string v1, "cannot switch offline"

    invoke-static {v0, v1}, Lfm/douban/util/DBLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v0, p0, Lfm/douban/model/OnlinePlaylist$MyPlaylistHandler;->this$0:Lfm/douban/model/OnlinePlaylist;

    #getter for: Lfm/douban/model/OnlinePlaylist;->radio:Lfm/douban/service/Radio;
    invoke-static {v0}, Lfm/douban/model/OnlinePlaylist;->access$300(Lfm/douban/model/OnlinePlaylist;)Lfm/douban/service/Radio;

    move-result-object v0

    invoke-virtual {v0, v3}, Lfm/douban/service/Radio;->pause(I)V

    .line 258
    iget-object v0, p0, Lfm/douban/model/OnlinePlaylist$MyPlaylistHandler;->this$0:Lfm/douban/model/OnlinePlaylist;

    #getter for: Lfm/douban/model/OnlinePlaylist;->radio:Lfm/douban/service/Radio;
    invoke-static {v0}, Lfm/douban/model/OnlinePlaylist;->access$300(Lfm/douban/model/OnlinePlaylist;)Lfm/douban/service/Radio;

    move-result-object v0

    invoke-virtual {v0}, Lfm/douban/service/Radio;->updateState()V

    goto :goto_0
.end method

.method public onFinish()V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lfm/douban/model/OnlinePlaylist$MyPlaylistHandler;->this$0:Lfm/douban/model/OnlinePlaylist;

    const/4 v1, 0x0

    #setter for: Lfm/douban/model/OnlinePlaylist;->requiring:Z
    invoke-static {v0, v1}, Lfm/douban/model/OnlinePlaylist;->access$002(Lfm/douban/model/OnlinePlaylist;Z)Z

    .line 163
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lfm/douban/model/OnlinePlaylist$MyPlaylistHandler;->this$0:Lfm/douban/model/OnlinePlaylist;

    const/4 v1, 0x1

    #setter for: Lfm/douban/model/OnlinePlaylist;->requiring:Z
    invoke-static {v0, v1}, Lfm/douban/model/OnlinePlaylist;->access$002(Lfm/douban/model/OnlinePlaylist;Z)Z

    .line 158
    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 10
    .parameter "json"

    .prologue
    const/4 v6, 0x0

    const/4 v9, 0x1

    .line 167
    iget-object v5, p0, Lfm/douban/model/OnlinePlaylist$MyPlaylistHandler;->this$0:Lfm/douban/model/OnlinePlaylist;

    #setter for: Lfm/douban/model/OnlinePlaylist;->requiring:Z
    invoke-static {v5, v6}, Lfm/douban/model/OnlinePlaylist;->access$002(Lfm/douban/model/OnlinePlaylist;Z)Z

    .line 168
    iget-object v5, p0, Lfm/douban/model/OnlinePlaylist$MyPlaylistHandler;->this$0:Lfm/douban/model/OnlinePlaylist;

    #getter for: Lfm/douban/model/OnlinePlaylist;->isStopping:Z
    invoke-static {v5}, Lfm/douban/model/OnlinePlaylist;->access$100(Lfm/douban/model/OnlinePlaylist;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 169
    iget-object v5, p0, Lfm/douban/model/OnlinePlaylist$MyPlaylistHandler;->this$0:Lfm/douban/model/OnlinePlaylist;

    #setter for: Lfm/douban/model/OnlinePlaylist;->isStopping:Z
    invoke-static {v5, v6}, Lfm/douban/model/OnlinePlaylist;->access$102(Lfm/douban/model/OnlinePlaylist;Z)Z

    .line 229
    :goto_0
    return-void

    .line 172
    :cond_0
    const-string v5, "OnlinePlaylist"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onSuccess:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :try_start_0
    const-string v5, "r"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 175
    .local v2, r:I
    if-nez v2, :cond_9

    .line 176
    const-string v5, "song"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONArray;

    .line 177
    .local v4, songArray:Lorg/json/JSONArray;
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-nez v5, :cond_5

    .line 178
    iget-object v5, p0, Lfm/douban/model/OnlinePlaylist$MyPlaylistHandler;->channelStr:Ljava/lang/String;

    const-string v6, "-3"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 180
    const-string v5, "OnlinePlaylist"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "no song in channel:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lfm/douban/model/OnlinePlaylist$MyPlaylistHandler;->channelStr:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v5, p0, Lfm/douban/model/OnlinePlaylist$MyPlaylistHandler;->this$0:Lfm/douban/model/OnlinePlaylist;

    #getter for: Lfm/douban/model/OnlinePlaylist;->context:Landroid/content/Context;
    invoke-static {v5}, Lfm/douban/model/OnlinePlaylist;->access$200(Lfm/douban/model/OnlinePlaylist;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09004f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "1"

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 184
    .local v3, s:Ljava/lang/String;
    iget-object v5, p0, Lfm/douban/model/OnlinePlaylist$MyPlaylistHandler;->this$0:Lfm/douban/model/OnlinePlaylist;

    #getter for: Lfm/douban/model/OnlinePlaylist;->context:Landroid/content/Context;
    invoke-static {v5}, Lfm/douban/model/OnlinePlaylist;->access$200(Lfm/douban/model/OnlinePlaylist;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v3}, Lfm/douban/util/Utils;->showToastLonger(Landroid/content/Context;Ljava/lang/String;)V

    .line 185
    iget-object v5, p0, Lfm/douban/model/OnlinePlaylist$MyPlaylistHandler;->this$0:Lfm/douban/model/OnlinePlaylist;

    #getter for: Lfm/douban/model/OnlinePlaylist;->radio:Lfm/douban/service/Radio;
    invoke-static {v5}, Lfm/douban/model/OnlinePlaylist;->access$300(Lfm/douban/model/OnlinePlaylist;)Lfm/douban/service/Radio;

    move-result-object v5

    iget-object v5, v5, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lfm/douban/service/RadioState;->canOp:Z

    .line 186
    iget-object v5, p0, Lfm/douban/model/OnlinePlaylist$MyPlaylistHandler;->this$0:Lfm/douban/model/OnlinePlaylist;

    #getter for: Lfm/douban/model/OnlinePlaylist;->radio:Lfm/douban/service/Radio;
    invoke-static {v5}, Lfm/douban/model/OnlinePlaylist;->access$300(Lfm/douban/model/OnlinePlaylist;)Lfm/douban/service/Radio;

    move-result-object v5

    iget-object v5, v5, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iget-object v5, v5, Lfm/douban/service/RadioState;->channelId:Ljava/lang/String;

    const-string v6, "-3"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 187
    iget-object v5, p0, Lfm/douban/model/OnlinePlaylist$MyPlaylistHandler;->this$0:Lfm/douban/model/OnlinePlaylist;

    #getter for: Lfm/douban/model/OnlinePlaylist;->radio:Lfm/douban/service/Radio;
    invoke-static {v5}, Lfm/douban/model/OnlinePlaylist;->access$300(Lfm/douban/model/OnlinePlaylist;)Lfm/douban/service/Radio;

    move-result-object v5

    const-string v6, "0"

    invoke-virtual {v5, v6}, Lfm/douban/service/Radio;->switchChannel(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    .end local v3           #s:Ljava/lang/String;
    .end local v4           #songArray:Lorg/json/JSONArray;
    :cond_1
    :goto_1
    iget-object v5, p0, Lfm/douban/model/OnlinePlaylist$MyPlaylistHandler;->this$0:Lfm/douban/model/OnlinePlaylist;

    #getter for: Lfm/douban/model/OnlinePlaylist;->autoplay:Z
    invoke-static {v5}, Lfm/douban/model/OnlinePlaylist;->access$700(Lfm/douban/model/OnlinePlaylist;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lfm/douban/model/OnlinePlaylist$MyPlaylistHandler;->this$0:Lfm/douban/model/OnlinePlaylist;

    #getter for: Lfm/douban/model/OnlinePlaylist;->radio:Lfm/douban/service/Radio;
    invoke-static {v5}, Lfm/douban/model/OnlinePlaylist;->access$300(Lfm/douban/model/OnlinePlaylist;)Lfm/douban/service/Radio;

    move-result-object v5

    iget-object v5, v5, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iget-boolean v5, v5, Lfm/douban/service/RadioState;->isPaused:Z

    if-nez v5, :cond_2

    .line 225
    iget-object v5, p0, Lfm/douban/model/OnlinePlaylist$MyPlaylistHandler;->this$0:Lfm/douban/model/OnlinePlaylist;

    #getter for: Lfm/douban/model/OnlinePlaylist;->radio:Lfm/douban/service/Radio;
    invoke-static {v5}, Lfm/douban/model/OnlinePlaylist;->access$300(Lfm/douban/model/OnlinePlaylist;)Lfm/douban/service/Radio;

    move-result-object v5

    iget-object v5, v5, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iput-boolean v9, v5, Lfm/douban/service/RadioState;->canOp:Z

    .line 227
    :cond_2
    iget-object v5, p0, Lfm/douban/model/OnlinePlaylist$MyPlaylistHandler;->this$0:Lfm/douban/model/OnlinePlaylist;

    #getter for: Lfm/douban/model/OnlinePlaylist;->radio:Lfm/douban/service/Radio;
    invoke-static {v5}, Lfm/douban/model/OnlinePlaylist;->access$300(Lfm/douban/model/OnlinePlaylist;)Lfm/douban/service/Radio;

    move-result-object v5

    invoke-virtual {v5}, Lfm/douban/service/Radio;->updateState()V

    goto/16 :goto_0

    .line 190
    .restart local v4       #songArray:Lorg/json/JSONArray;
    :cond_3
    :try_start_1
    iget-object v5, p0, Lfm/douban/model/OnlinePlaylist$MyPlaylistHandler;->this$0:Lfm/douban/model/OnlinePlaylist;

    #getter for: Lfm/douban/model/OnlinePlaylist;->radio:Lfm/douban/service/Radio;
    invoke-static {v5}, Lfm/douban/model/OnlinePlaylist;->access$300(Lfm/douban/model/OnlinePlaylist;)Lfm/douban/service/Radio;

    move-result-object v5

    iget-object v5, v5, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lfm/douban/service/RadioState;->canOp:Z

    .line 191
    new-instance v5, Lorg/json/JSONException;

    const-string v6, "emptylist"

    invoke-direct {v5, v6}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 220
    .end local v2           #r:I
    .end local v4           #songArray:Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    .line 221
    .local v0, e:Lorg/json/JSONException;
    :try_start_2
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 223
    iget-object v5, p0, Lfm/douban/model/OnlinePlaylist$MyPlaylistHandler;->this$0:Lfm/douban/model/OnlinePlaylist;

    #getter for: Lfm/douban/model/OnlinePlaylist;->autoplay:Z
    invoke-static {v5}, Lfm/douban/model/OnlinePlaylist;->access$700(Lfm/douban/model/OnlinePlaylist;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lfm/douban/model/OnlinePlaylist$MyPlaylistHandler;->this$0:Lfm/douban/model/OnlinePlaylist;

    #getter for: Lfm/douban/model/OnlinePlaylist;->radio:Lfm/douban/service/Radio;
    invoke-static {v5}, Lfm/douban/model/OnlinePlaylist;->access$300(Lfm/douban/model/OnlinePlaylist;)Lfm/douban/service/Radio;

    move-result-object v5

    iget-object v5, v5, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iget-boolean v5, v5, Lfm/douban/service/RadioState;->isPaused:Z

    if-nez v5, :cond_4

    .line 225
    iget-object v5, p0, Lfm/douban/model/OnlinePlaylist$MyPlaylistHandler;->this$0:Lfm/douban/model/OnlinePlaylist;

    #getter for: Lfm/douban/model/OnlinePlaylist;->radio:Lfm/douban/service/Radio;
    invoke-static {v5}, Lfm/douban/model/OnlinePlaylist;->access$300(Lfm/douban/model/OnlinePlaylist;)Lfm/douban/service/Radio;

    move-result-object v5

    iget-object v5, v5, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iput-boolean v9, v5, Lfm/douban/service/RadioState;->canOp:Z

    .line 227
    :cond_4
    iget-object v5, p0, Lfm/douban/model/OnlinePlaylist$MyPlaylistHandler;->this$0:Lfm/douban/model/OnlinePlaylist;

    #getter for: Lfm/douban/model/OnlinePlaylist;->radio:Lfm/douban/service/Radio;
    invoke-static {v5}, Lfm/douban/model/OnlinePlaylist;->access$300(Lfm/douban/model/OnlinePlaylist;)Lfm/douban/service/Radio;

    move-result-object v5

    invoke-virtual {v5}, Lfm/douban/service/Radio;->updateState()V

    goto/16 :goto_0

    .line 195
    .end local v0           #e:Lorg/json/JSONException;
    .restart local v2       #r:I
    .restart local v4       #songArray:Lorg/json/JSONArray;
    :cond_5
    :try_start_3
    iget-object v5, p0, Lfm/douban/model/OnlinePlaylist$MyPlaylistHandler;->this$0:Lfm/douban/model/OnlinePlaylist;

    invoke-virtual {v5}, Lfm/douban/model/OnlinePlaylist;->reset()V

    .line 196
    iget-object v5, p0, Lfm/douban/model/OnlinePlaylist$MyPlaylistHandler;->this$0:Lfm/douban/model/OnlinePlaylist;

    #setter for: Lfm/douban/model/OnlinePlaylist;->list:Lorg/json/JSONArray;
    invoke-static {v5, v4}, Lfm/douban/model/OnlinePlaylist;->access$402(Lfm/douban/model/OnlinePlaylist;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    .line 197
    iget-object v5, p0, Lfm/douban/model/OnlinePlaylist$MyPlaylistHandler;->this$0:Lfm/douban/model/OnlinePlaylist;

    iget-object v6, p0, Lfm/douban/model/OnlinePlaylist$MyPlaylistHandler;->this$0:Lfm/douban/model/OnlinePlaylist;

    #getter for: Lfm/douban/model/OnlinePlaylist;->list:Lorg/json/JSONArray;
    invoke-static {v6}, Lfm/douban/model/OnlinePlaylist;->access$400(Lfm/douban/model/OnlinePlaylist;)Lorg/json/JSONArray;

    move-result-object v6

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v6

    #setter for: Lfm/douban/model/OnlinePlaylist;->total:I
    invoke-static {v5, v6}, Lfm/douban/model/OnlinePlaylist;->access$502(Lfm/douban/model/OnlinePlaylist;I)I

    .line 198
    const-string v5, "OnlinePlaylist"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "requiring channel:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lfm/douban/model/OnlinePlaylist$MyPlaylistHandler;->channelStr:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const-string v5, "OnlinePlaylist"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "new list index = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lfm/douban/model/OnlinePlaylist$MyPlaylistHandler;->this$0:Lfm/douban/model/OnlinePlaylist;

    #getter for: Lfm/douban/model/OnlinePlaylist;->index:I
    invoke-static {v7}, Lfm/douban/model/OnlinePlaylist;->access$600(Lfm/douban/model/OnlinePlaylist;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", len = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lfm/douban/model/OnlinePlaylist$MyPlaylistHandler;->this$0:Lfm/douban/model/OnlinePlaylist;

    #getter for: Lfm/douban/model/OnlinePlaylist;->total:I
    invoke-static {v7}, Lfm/douban/model/OnlinePlaylist;->access$500(Lfm/douban/model/OnlinePlaylist;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", autoplay = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lfm/douban/model/OnlinePlaylist$MyPlaylistHandler;->this$0:Lfm/douban/model/OnlinePlaylist;

    #getter for: Lfm/douban/model/OnlinePlaylist;->autoplay:Z
    invoke-static {v7}, Lfm/douban/model/OnlinePlaylist;->access$700(Lfm/douban/model/OnlinePlaylist;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const-string v5, "OnlinePlaylist"

    iget-object v6, p0, Lfm/douban/model/OnlinePlaylist$MyPlaylistHandler;->this$0:Lfm/douban/model/OnlinePlaylist;

    invoke-virtual {v6}, Lfm/douban/model/OnlinePlaylist;->info()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v5, p0, Lfm/douban/model/OnlinePlaylist$MyPlaylistHandler;->this$0:Lfm/douban/model/OnlinePlaylist;

    #getter for: Lfm/douban/model/OnlinePlaylist;->autoplay:Z
    invoke-static {v5}, Lfm/douban/model/OnlinePlaylist;->access$700(Lfm/douban/model/OnlinePlaylist;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 203
    const-string v5, "OnlinePlaylist"

    const-string v6, "autoplay new list"

    invoke-static {v5, v6}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v5, p0, Lfm/douban/model/OnlinePlaylist$MyPlaylistHandler;->this$0:Lfm/douban/model/OnlinePlaylist;

    #getter for: Lfm/douban/model/OnlinePlaylist;->radio:Lfm/douban/service/Radio;
    invoke-static {v5}, Lfm/douban/model/OnlinePlaylist;->access$300(Lfm/douban/model/OnlinePlaylist;)Lfm/douban/service/Radio;

    move-result-object v5

    iget-object v5, v5, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iget-boolean v5, v5, Lfm/douban/service/RadioState;->isPaused:Z

    if-eqz v5, :cond_6

    .line 205
    iget-object v5, p0, Lfm/douban/model/OnlinePlaylist$MyPlaylistHandler;->this$0:Lfm/douban/model/OnlinePlaylist;

    #getter for: Lfm/douban/model/OnlinePlaylist;->radio:Lfm/douban/service/Radio;
    invoke-static {v5}, Lfm/douban/model/OnlinePlaylist;->access$300(Lfm/douban/model/OnlinePlaylist;)Lfm/douban/service/Radio;

    move-result-object v5

    invoke-virtual {v5}, Lfm/douban/service/Radio;->resumeAnyway()V

    .line 206
    :cond_6
    iget-object v5, p0, Lfm/douban/model/OnlinePlaylist$MyPlaylistHandler;->this$0:Lfm/douban/model/OnlinePlaylist;

    #getter for: Lfm/douban/model/OnlinePlaylist;->radio:Lfm/douban/service/Radio;
    invoke-static {v5}, Lfm/douban/model/OnlinePlaylist;->access$300(Lfm/douban/model/OnlinePlaylist;)Lfm/douban/service/Radio;

    move-result-object v5

    iget-object v6, p0, Lfm/douban/model/OnlinePlaylist$MyPlaylistHandler;->channelStr:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lfm/douban/service/Radio;->play(Ljava/lang/String;)V

    .line 208
    :cond_7
    iget-object v5, p0, Lfm/douban/model/OnlinePlaylist$MyPlaylistHandler;->this$0:Lfm/douban/model/OnlinePlaylist;

    #getter for: Lfm/douban/model/OnlinePlaylist;->type:Ljava/lang/String;
    invoke-static {v5}, Lfm/douban/model/OnlinePlaylist;->access$800(Lfm/douban/model/OnlinePlaylist;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "n"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 209
    iget-object v5, p0, Lfm/douban/model/OnlinePlaylist$MyPlaylistHandler;->this$0:Lfm/douban/model/OnlinePlaylist;

    #getter for: Lfm/douban/model/OnlinePlaylist;->context:Landroid/content/Context;
    invoke-static {v5}, Lfm/douban/model/OnlinePlaylist;->access$200(Lfm/douban/model/OnlinePlaylist;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lfm/douban/FmApp;->getRadioManager(Landroid/content/Context;)Lfm/douban/controller/RadioManager;

    move-result-object v5

    invoke-virtual {v5}, Lfm/douban/controller/RadioManager;->getChannelManager()Lfm/douban/controller/ChannelManager;

    move-result-object v5

    iget-object v6, p0, Lfm/douban/model/OnlinePlaylist$MyPlaylistHandler;->channelStr:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lfm/douban/controller/ChannelManager;->saveLastChannelId(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .line 223
    .end local v2           #r:I
    .end local v4           #songArray:Lorg/json/JSONArray;
    :catchall_0
    move-exception v5

    iget-object v6, p0, Lfm/douban/model/OnlinePlaylist$MyPlaylistHandler;->this$0:Lfm/douban/model/OnlinePlaylist;

    #getter for: Lfm/douban/model/OnlinePlaylist;->autoplay:Z
    invoke-static {v6}, Lfm/douban/model/OnlinePlaylist;->access$700(Lfm/douban/model/OnlinePlaylist;)Z

    move-result v6

    if-nez v6, :cond_8

    iget-object v6, p0, Lfm/douban/model/OnlinePlaylist$MyPlaylistHandler;->this$0:Lfm/douban/model/OnlinePlaylist;

    #getter for: Lfm/douban/model/OnlinePlaylist;->radio:Lfm/douban/service/Radio;
    invoke-static {v6}, Lfm/douban/model/OnlinePlaylist;->access$300(Lfm/douban/model/OnlinePlaylist;)Lfm/douban/service/Radio;

    move-result-object v6

    iget-object v6, v6, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iget-boolean v6, v6, Lfm/douban/service/RadioState;->isPaused:Z

    if-nez v6, :cond_8

    .line 225
    iget-object v6, p0, Lfm/douban/model/OnlinePlaylist$MyPlaylistHandler;->this$0:Lfm/douban/model/OnlinePlaylist;

    #getter for: Lfm/douban/model/OnlinePlaylist;->radio:Lfm/douban/service/Radio;
    invoke-static {v6}, Lfm/douban/model/OnlinePlaylist;->access$300(Lfm/douban/model/OnlinePlaylist;)Lfm/douban/service/Radio;

    move-result-object v6

    iget-object v6, v6, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iput-boolean v9, v6, Lfm/douban/service/RadioState;->canOp:Z

    .line 227
    :cond_8
    iget-object v6, p0, Lfm/douban/model/OnlinePlaylist$MyPlaylistHandler;->this$0:Lfm/douban/model/OnlinePlaylist;

    #getter for: Lfm/douban/model/OnlinePlaylist;->radio:Lfm/douban/service/Radio;
    invoke-static {v6}, Lfm/douban/model/OnlinePlaylist;->access$300(Lfm/douban/model/OnlinePlaylist;)Lfm/douban/service/Radio;

    move-result-object v6

    invoke-virtual {v6}, Lfm/douban/service/Radio;->updateState()V

    throw v5

    .line 213
    .restart local v2       #r:I
    :cond_9
    :try_start_4
    const-string v5, "err"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 214
    .local v1, error:Ljava/lang/String;
    const-string v5, "OnlinePlaylist"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "requiring - error:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    const-string v5, "invalid_token"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    const-string v5, "expired"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 217
    :cond_a
    iget-object v5, p0, Lfm/douban/model/OnlinePlaylist$MyPlaylistHandler;->this$0:Lfm/douban/model/OnlinePlaylist;

    #getter for: Lfm/douban/model/OnlinePlaylist;->radio:Lfm/douban/service/Radio;
    invoke-static {v5}, Lfm/douban/model/OnlinePlaylist;->access$300(Lfm/douban/model/OnlinePlaylist;)Lfm/douban/service/Radio;

    move-result-object v5

    invoke-virtual {v5}, Lfm/douban/service/Radio;->logout()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_1
.end method

.method public setChannel(Ljava/lang/String;)V
    .locals 0
    .parameter "str"

    .prologue
    .line 152
    iput-object p1, p0, Lfm/douban/model/OnlinePlaylist$MyPlaylistHandler;->channelStr:Ljava/lang/String;

    .line 153
    return-void
.end method
