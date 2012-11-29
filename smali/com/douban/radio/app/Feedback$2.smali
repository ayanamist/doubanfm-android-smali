.class Lcom/douban/radio/app/Feedback$2;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "Feedback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/douban/radio/app/Feedback;->makeResponseHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/douban/radio/app/Feedback;


# direct methods
.method constructor <init>(Lcom/douban/radio/app/Feedback;)V
    .locals 0
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lcom/douban/radio/app/Feedback$2;->this$0:Lcom/douban/radio/app/Feedback;

    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3
    .parameter "error"
    .parameter "content"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/douban/radio/app/Feedback$2;->this$0:Lcom/douban/radio/app/Feedback;

    const v1, 0x7f090043

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 158
    invoke-super {p0, p1, p2}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method public onFinish()V
    .locals 3

    .prologue
    .line 129
    :try_start_0
    iget-object v1, p0, Lcom/douban/radio/app/Feedback$2;->this$0:Lcom/douban/radio/app/Feedback;

    #calls: Lcom/douban/radio/app/Feedback;->dismissLoading()V
    invoke-static {v1}, Lcom/douban/radio/app/Feedback;->access$500(Lcom/douban/radio/app/Feedback;)V

    .line 130
    iget-object v1, p0, Lcom/douban/radio/app/Feedback$2;->this$0:Lcom/douban/radio/app/Feedback;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/douban/radio/app/Feedback;->setRequestedOrientation(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :goto_0
    invoke-super {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onFinish()V

    .line 135
    return-void

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 123
    invoke-super {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onStart()V

    .line 124
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 7
    .parameter "content"

    .prologue
    const v6, 0x7f090043

    const/4 v5, 0x0

    .line 140
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 141
    .local v1, jo:Lorg/json/JSONObject;
    const-string v2, "r"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 142
    const-string v2, "DOUBAN_Feedback"

    invoke-static {v2, p1}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v2, p0, Lcom/douban/radio/app/Feedback$2;->this$0:Lcom/douban/radio/app/Feedback;

    const v3, 0x7f09008c

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 144
    iget-object v2, p0, Lcom/douban/radio/app/Feedback$2;->this$0:Lcom/douban/radio/app/Feedback;

    invoke-virtual {v2}, Lcom/douban/radio/app/Feedback;->finish()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    .end local v1           #jo:Lorg/json/JSONObject;
    :goto_0
    invoke-super {p0, p1}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onSuccess(Ljava/lang/String;)V

    .line 153
    return-void

    .line 146
    .restart local v1       #jo:Lorg/json/JSONObject;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/douban/radio/app/Feedback$2;->this$0:Lcom/douban/radio/app/Feedback;

    const v3, 0x7f090043

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 148
    .end local v1           #jo:Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 149
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 150
    iget-object v2, p0, Lcom/douban/radio/app/Feedback$2;->this$0:Lcom/douban/radio/app/Feedback;

    invoke-static {v2, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
