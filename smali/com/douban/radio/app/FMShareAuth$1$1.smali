.class Lcom/douban/radio/app/FMShareAuth$1$1;
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

.field final synthetic val$st:Lcom/douban/share/SinaTokenManager;


# direct methods
.method constructor <init>(Lcom/douban/radio/app/FMShareAuth$1;Lcom/douban/share/SinaTokenManager;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/douban/radio/app/FMShareAuth$1$1;->this$1:Lcom/douban/radio/app/FMShareAuth$1;

    iput-object p2, p0, Lcom/douban/radio/app/FMShareAuth$1$1;->val$st:Lcom/douban/share/SinaTokenManager;

    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3
    .parameter "error"
    .parameter "content"

    .prologue
    .line 108
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

    .line 109
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 110
    invoke-super {p0, p1, p2}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 89
    const-string v0, "FMShareAuth"

    const-string v1, "start getting name"

    invoke-static {v0, v1}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-super {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onStart()V

    .line 91
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 5
    .parameter "content"

    .prologue
    .line 95
    const-string v2, "FMShareAuth"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSuccess:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 98
    .local v1, jo:Lorg/json/JSONObject;
    iget-object v2, p0, Lcom/douban/radio/app/FMShareAuth$1$1;->val$st:Lcom/douban/share/SinaTokenManager;

    const-string v3, "screen_name"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/douban/share/SinaTokenManager;->setName(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .end local v1           #jo:Lorg/json/JSONObject;
    :goto_0
    iget-object v2, p0, Lcom/douban/radio/app/FMShareAuth$1$1;->this$1:Lcom/douban/radio/app/FMShareAuth$1;

    iget-object v2, v2, Lcom/douban/radio/app/FMShareAuth$1;->this$0:Lcom/douban/radio/app/FMShareAuth;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/douban/radio/app/FMShareAuth;->setResult(I)V

    .line 103
    iget-object v2, p0, Lcom/douban/radio/app/FMShareAuth$1$1;->this$1:Lcom/douban/radio/app/FMShareAuth$1;

    iget-object v2, v2, Lcom/douban/radio/app/FMShareAuth$1;->this$0:Lcom/douban/radio/app/FMShareAuth;

    invoke-virtual {v2}, Lcom/douban/radio/app/FMShareAuth;->finish()V

    .line 104
    return-void

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
