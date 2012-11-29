.class Lcom/douban/radio/app/LoginActivity$6;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/douban/radio/app/LoginActivity;->makeHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/douban/radio/app/LoginActivity;


# direct methods
.method constructor <init>(Lcom/douban/radio/app/LoginActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 290
    iput-object p1, p0, Lcom/douban/radio/app/LoginActivity$6;->this$0:Lcom/douban/radio/app/LoginActivity;

    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2
    .parameter "error"
    .parameter "content"

    .prologue
    .line 338
    iget-object v0, p0, Lcom/douban/radio/app/LoginActivity$6;->this$0:Lcom/douban/radio/app/LoginActivity;

    const v1, 0x7f0900a1

    invoke-static {v0, v1}, Lfm/douban/util/Utils;->showToast(Landroid/content/Context;I)V

    .line 339
    invoke-super {p0, p1, p2}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 340
    return-void
.end method

.method public onFinish()V
    .locals 3

    .prologue
    .line 300
    :try_start_0
    iget-object v1, p0, Lcom/douban/radio/app/LoginActivity$6;->this$0:Lcom/douban/radio/app/LoginActivity;

    #calls: Lcom/douban/radio/app/LoginActivity;->dismissLoading()V
    invoke-static {v1}, Lcom/douban/radio/app/LoginActivity;->access$700(Lcom/douban/radio/app/LoginActivity;)V

    .line 302
    iget-object v1, p0, Lcom/douban/radio/app/LoginActivity$6;->this$0:Lcom/douban/radio/app/LoginActivity;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/douban/radio/app/LoginActivity;->setRequestedOrientation(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    :goto_0
    invoke-super {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onFinish()V

    .line 307
    return-void

    .line 303
    :catch_0
    move-exception v0

    .line 304
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 294
    invoke-super {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onStart()V

    .line 295
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 7
    .parameter "content"

    .prologue
    .line 312
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 313
    .local v1, json:Lorg/json/JSONObject;
    const-string v4, "r"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 314
    .local v2, r:I
    if-nez v2, :cond_0

    .line 316
    new-instance v3, Lfm/douban/model/Token;

    invoke-direct {v3, v1}, Lfm/douban/model/Token;-><init>(Lorg/json/JSONObject;)V

    .line 317
    .local v3, token:Lfm/douban/model/Token;
    iget-object v4, p0, Lcom/douban/radio/app/LoginActivity$6;->this$0:Lcom/douban/radio/app/LoginActivity;

    #getter for: Lcom/douban/radio/app/LoginActivity;->radioManager:Lfm/douban/controller/RadioManager;
    invoke-static {v4}, Lcom/douban/radio/app/LoginActivity;->access$800(Lcom/douban/radio/app/LoginActivity;)Lfm/douban/controller/RadioManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Lfm/douban/model/Token;->save(Lfm/douban/controller/RadioManager;)V

    .line 318
    iget-object v4, p0, Lcom/douban/radio/app/LoginActivity$6;->this$0:Lcom/douban/radio/app/LoginActivity;

    invoke-virtual {v4, v3}, Lcom/douban/radio/app/LoginActivity;->checkCurrentUser(Lfm/douban/model/Token;)V

    .line 319
    iget-object v4, p0, Lcom/douban/radio/app/LoginActivity$6;->this$0:Lcom/douban/radio/app/LoginActivity;

    #getter for: Lcom/douban/radio/app/LoginActivity;->db:Lfm/douban/model/RadioDB;
    invoke-static {v4}, Lcom/douban/radio/app/LoginActivity;->access$1000(Lcom/douban/radio/app/LoginActivity;)Lfm/douban/model/RadioDB;

    move-result-object v4

    iget-object v5, p0, Lcom/douban/radio/app/LoginActivity$6;->this$0:Lcom/douban/radio/app/LoginActivity;

    #getter for: Lcom/douban/radio/app/LoginActivity;->name:Ljava/lang/String;
    invoke-static {v5}, Lcom/douban/radio/app/LoginActivity;->access$900(Lcom/douban/radio/app/LoginActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lfm/douban/model/RadioDB;->saveEmail(Ljava/lang/String;)V

    .line 321
    iget-object v4, p0, Lcom/douban/radio/app/LoginActivity$6;->this$0:Lcom/douban/radio/app/LoginActivity;

    #getter for: Lcom/douban/radio/app/LoginActivity;->fmsp:Lfm/douban/model/FMSharedPreferences;
    invoke-static {v4}, Lcom/douban/radio/app/LoginActivity;->access$1100(Lcom/douban/radio/app/LoginActivity;)Lfm/douban/model/FMSharedPreferences;

    move-result-object v4

    const-string v5, "is_logined"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lfm/douban/model/FMSharedPreferences;->putBoolean(Ljava/lang/String;Z)Z

    .line 322
    iget-object v4, p0, Lcom/douban/radio/app/LoginActivity$6;->this$0:Lcom/douban/radio/app/LoginActivity;

    const-string v5, "Login"

    const-string v6, "Douban"

    invoke-static {v4, v5, v6}, Lcom/mobclick/android/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    iget-object v4, p0, Lcom/douban/radio/app/LoginActivity$6;->this$0:Lcom/douban/radio/app/LoginActivity;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Lcom/douban/radio/app/LoginActivity;->setResult(I)V

    .line 324
    iget-object v4, p0, Lcom/douban/radio/app/LoginActivity$6;->this$0:Lcom/douban/radio/app/LoginActivity;

    invoke-virtual {v4}, Lcom/douban/radio/app/LoginActivity;->finish()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    .end local v1           #json:Lorg/json/JSONObject;
    .end local v2           #r:I
    .end local v3           #token:Lfm/douban/model/Token;
    :goto_0
    invoke-super {p0, p1}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onSuccess(Ljava/lang/String;)V

    .line 334
    return-void

    .line 327
    .restart local v1       #json:Lorg/json/JSONObject;
    .restart local v2       #r:I
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/douban/radio/app/LoginActivity$6;->this$0:Lcom/douban/radio/app/LoginActivity;

    #getter for: Lcom/douban/radio/app/LoginActivity;->pwdView:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/douban/radio/app/LoginActivity;->access$200(Lcom/douban/radio/app/LoginActivity;)Landroid/widget/EditText;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 328
    iget-object v4, p0, Lcom/douban/radio/app/LoginActivity$6;->this$0:Lcom/douban/radio/app/LoginActivity;

    const v5, 0x7f090040

    invoke-static {v4, v5}, Lfm/douban/util/Utils;->showToast(Landroid/content/Context;I)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 330
    .end local v1           #json:Lorg/json/JSONObject;
    .end local v2           #r:I
    :catch_0
    move-exception v0

    .line 331
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
