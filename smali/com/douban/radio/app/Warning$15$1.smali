.class Lcom/douban/radio/app/Warning$15$1;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "Warning.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/douban/radio/app/Warning$15;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/douban/radio/app/Warning$15;

.field final synthetic val$email:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/douban/radio/app/Warning$15;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 379
    iput-object p1, p0, Lcom/douban/radio/app/Warning$15$1;->this$0:Lcom/douban/radio/app/Warning$15;

    iput-object p2, p0, Lcom/douban/radio/app/Warning$15$1;->val$email:Ljava/lang/String;

    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3
    .parameter "error"
    .parameter "errmsg"

    .prologue
    .line 420
    const-string v0, "verify"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "verifyEmail:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 422
    iget-object v0, p0, Lcom/douban/radio/app/Warning$15$1;->this$0:Lcom/douban/radio/app/Warning$15;

    iget-object v0, v0, Lcom/douban/radio/app/Warning$15;->val$ctx:Landroid/content/Context;

    const v1, 0x7f0900f1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 423
    invoke-super {p0, p1, p2}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 424
    return-void
.end method

.method public onFinish()V
    .locals 0

    .prologue
    .line 388
    invoke-super {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onFinish()V

    .line 389
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 383
    invoke-super {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onStart()V

    .line 384
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 9
    .parameter "content"

    .prologue
    const/4 v8, 0x0

    .line 393
    const-string v4, "verify"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "verifyEmail:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 396
    .local v2, jo:Lorg/json/JSONObject;
    const-string v4, "r"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1

    .line 397
    iget-object v4, p0, Lcom/douban/radio/app/Warning$15$1;->this$0:Lcom/douban/radio/app/Warning$15;

    iget-object v4, v4, Lcom/douban/radio/app/Warning$15;->val$ctx:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0900f2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/douban/radio/app/Warning$15$1;->val$email:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 398
    .local v3, msg:Ljava/lang/String;
    iget-object v4, p0, Lcom/douban/radio/app/Warning$15$1;->this$0:Lcom/douban/radio/app/Warning$15;

    iget-object v4, v4, Lcom/douban/radio/app/Warning$15;->val$ctx:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-static {v4, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 399
    invoke-static {}, Lcom/douban/radio/app/Warning;->access$800()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 415
    .end local v2           #jo:Lorg/json/JSONObject;
    .end local v3           #msg:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onSuccess(Ljava/lang/String;)V

    .line 416
    return-void

    .line 401
    .restart local v2       #jo:Lorg/json/JSONObject;
    :cond_1
    :try_start_1
    const-string v4, "err"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 402
    .local v1, err:Ljava/lang/String;
    const-string v4, "not_supported_email_suffix"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 403
    iget-object v4, p0, Lcom/douban/radio/app/Warning$15$1;->this$0:Lcom/douban/radio/app/Warning$15;

    iget-object v4, v4, Lcom/douban/radio/app/Warning$15;->val$ctx:Landroid/content/Context;

    const v5, 0x7f0900ef

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 411
    .end local v1           #err:Ljava/lang/String;
    .end local v2           #jo:Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 412
    .local v0, e:Lorg/json/JSONException;
    iget-object v4, p0, Lcom/douban/radio/app/Warning$15$1;->this$0:Lcom/douban/radio/app/Warning$15;

    iget-object v4, v4, Lcom/douban/radio/app/Warning$15;->val$ctx:Landroid/content/Context;

    const v5, 0x7f0900f1

    invoke-static {v4, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 413
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 404
    .end local v0           #e:Lorg/json/JSONException;
    .restart local v1       #err:Ljava/lang/String;
    .restart local v2       #jo:Lorg/json/JSONObject;
    :cond_2
    :try_start_2
    const-string v4, "email_used"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 405
    iget-object v4, p0, Lcom/douban/radio/app/Warning$15$1;->this$0:Lcom/douban/radio/app/Warning$15;

    iget-object v4, v4, Lcom/douban/radio/app/Warning$15;->val$ctx:Landroid/content/Context;

    const v5, 0x7f0900f0

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 406
    :cond_3
    const-string v4, "wrong_pwd"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 407
    iget-object v4, p0, Lcom/douban/radio/app/Warning$15$1;->this$0:Lcom/douban/radio/app/Warning$15;

    iget-object v4, v4, Lcom/douban/radio/app/Warning$15;->val$ctx:Landroid/content/Context;

    const v5, 0x7f0900ed

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method
