.class Lcom/douban/radio/app/FMSinaAuth$2$1;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "FMSinaAuth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/douban/radio/app/FMSinaAuth$2;->onSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/douban/radio/app/FMSinaAuth$2;

.field final synthetic val$nam:Ljava/lang/String;

.field final synthetic val$stm:Lcom/douban/share/SinaTokenManager;


# direct methods
.method constructor <init>(Lcom/douban/radio/app/FMSinaAuth$2;Lcom/douban/share/SinaTokenManager;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 325
    iput-object p1, p0, Lcom/douban/radio/app/FMSinaAuth$2$1;->this$1:Lcom/douban/radio/app/FMSinaAuth$2;

    iput-object p2, p0, Lcom/douban/radio/app/FMSinaAuth$2$1;->val$stm:Lcom/douban/share/SinaTokenManager;

    iput-object p3, p0, Lcom/douban/radio/app/FMSinaAuth$2$1;->val$nam:Ljava/lang/String;

    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3
    .parameter "error"
    .parameter "content"

    .prologue
    .line 348
    const-string v0, "FMSinaAuth"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail exchange:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    invoke-super {p0, p1, p2}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 350
    return-void
.end method

.method public onFinish()V
    .locals 2

    .prologue
    .line 354
    iget-object v0, p0, Lcom/douban/radio/app/FMSinaAuth$2$1;->this$1:Lcom/douban/radio/app/FMSinaAuth$2;

    iget-object v0, v0, Lcom/douban/radio/app/FMSinaAuth$2;->this$0:Lcom/douban/radio/app/FMSinaAuth;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/douban/radio/app/FMSinaAuth;->setResult(I)V

    .line 355
    iget-object v0, p0, Lcom/douban/radio/app/FMSinaAuth$2$1;->this$1:Lcom/douban/radio/app/FMSinaAuth$2;

    iget-object v0, v0, Lcom/douban/radio/app/FMSinaAuth$2;->this$0:Lcom/douban/radio/app/FMSinaAuth;

    invoke-virtual {v0}, Lcom/douban/radio/app/FMSinaAuth;->finish()V

    .line 356
    invoke-super {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onFinish()V

    .line 357
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 328
    const-string v0, "FMSinaAuth"

    const-string v1, "start exchange"

    invoke-static {v0, v1}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    invoke-super {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onStart()V

    .line 330
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 7
    .parameter "content"

    .prologue
    .line 334
    const-string v4, "FMSinaAuth"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "success exchange:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 337
    .local v3, jo:Lorg/json/JSONObject;
    const-string v4, "access_token"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 338
    .local v0, accesstoken:Ljava/lang/String;
    const-string v4, "expires_in"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 339
    .local v2, expires:Ljava/lang/String;
    iget-object v4, p0, Lcom/douban/radio/app/FMSinaAuth$2$1;->val$stm:Lcom/douban/share/SinaTokenManager;

    iget-object v5, p0, Lcom/douban/radio/app/FMSinaAuth$2$1;->val$nam:Ljava/lang/String;

    invoke-virtual {v4, v0, v2, v5}, Lcom/douban/share/SinaTokenManager;->updateTokens(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 343
    .end local v0           #accesstoken:Ljava/lang/String;
    .end local v2           #expires:Ljava/lang/String;
    .end local v3           #jo:Lorg/json/JSONObject;
    :goto_0
    invoke-super {p0, p1}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onSuccess(Ljava/lang/String;)V

    .line 344
    return-void

    .line 340
    :catch_0
    move-exception v1

    .line 341
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
