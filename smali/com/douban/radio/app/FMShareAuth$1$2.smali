.class Lcom/douban/radio/app/FMShareAuth$1$2;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "FMShareAuth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/douban/radio/app/FMShareAuth$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/douban/radio/app/FMShareAuth$1;

.field final synthetic val$rtm:Lcom/douban/share/RenrenTokenManager;


# direct methods
.method constructor <init>(Lcom/douban/radio/app/FMShareAuth$1;Lcom/douban/share/RenrenTokenManager;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Lcom/douban/radio/app/FMShareAuth$1$2;->this$1:Lcom/douban/radio/app/FMShareAuth$1;

    iput-object p2, p0, Lcom/douban/radio/app/FMShareAuth$1$2;->val$rtm:Lcom/douban/share/RenrenTokenManager;

    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3
    .parameter "error"
    .parameter "content"

    .prologue
    .line 156
    const-string v0, "FMShareAuth"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFailure:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 158
    invoke-super {p0, p1, p2}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 136
    const-string v0, "FMShareAuth"

    const-string v1, "start getting renren name"

    invoke-static {v0, v1}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-super {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onStart()V

    .line 138
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 6
    .parameter "content"

    .prologue
    .line 142
    const-string v3, "FMShareAuth"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSuccess:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 145
    .local v1, jo:Lorg/json/JSONArray;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 146
    .local v2, name:Ljava/lang/String;
    iget-object v3, p0, Lcom/douban/radio/app/FMShareAuth$1$2;->val$rtm:Lcom/douban/share/RenrenTokenManager;

    invoke-virtual {v3, v2}, Lcom/douban/share/RenrenTokenManager;->setName(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    .end local v1           #jo:Lorg/json/JSONArray;
    .end local v2           #name:Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/douban/radio/app/FMShareAuth$1$2;->this$1:Lcom/douban/radio/app/FMShareAuth$1;

    iget-object v3, v3, Lcom/douban/radio/app/FMShareAuth$1;->this$0:Lcom/douban/radio/app/FMShareAuth;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcom/douban/radio/app/FMShareAuth;->setResult(I)V

    .line 151
    iget-object v3, p0, Lcom/douban/radio/app/FMShareAuth$1$2;->this$1:Lcom/douban/radio/app/FMShareAuth$1;

    iget-object v3, v3, Lcom/douban/radio/app/FMShareAuth$1;->this$0:Lcom/douban/radio/app/FMShareAuth;

    invoke-virtual {v3}, Lcom/douban/radio/app/FMShareAuth;->finish()V

    .line 152
    return-void

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
