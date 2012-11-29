.class public Lcom/loopj/android/http/AsyncHttpResponseHandler;
.super Ljava/lang/Object;
.source "AsyncHttpResponseHandler.java"


# static fields
.field private static final FAILURE_MESSAGE:I = 0x1

.field private static final FINISH_MESSAGE:I = 0x3

.field private static final START_MESSAGE:I = 0x2

.field private static final SUCCESS_MESSAGE:I


# instance fields
.field private handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    new-instance v0, Lcom/loopj/android/http/AsyncHttpResponseHandler$1;

    invoke-direct {v0, p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler$1;-><init>(Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    iput-object v0, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->handler:Landroid/os/Handler;

    .line 89
    :cond_0
    return-void
.end method


# virtual methods
.method protected handleFailureMessage(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0
    .parameter "e"
    .parameter "responseBody"

    .prologue
    .line 160
    invoke-virtual {p0, p1, p2}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 161
    return-void
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 167
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 182
    :goto_0
    return-void

    .line 169
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->handleSuccessMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 172
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 173
    .local v0, repsonse:[Ljava/lang/Object;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Throwable;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->handleFailureMessage(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    .line 176
    .end local v0           #repsonse:[Ljava/lang/Object;
    :pswitch_2
    invoke-virtual {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onStart()V

    goto :goto_0

    .line 179
    :pswitch_3
    invoke-virtual {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onFinish()V

    goto :goto_0

    .line 167
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected handleSuccessMessage(Ljava/lang/String;)V
    .locals 0
    .parameter "responseBody"

    .prologue
    .line 156
    invoke-virtual {p0, p1}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onSuccess(Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method protected obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
    .locals 2
    .parameter "responseMessage"
    .parameter "response"

    .prologue
    .line 193
    const/4 v0, 0x0

    .line 194
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->handler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 195
    iget-object v1, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->handler:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 201
    :goto_0
    return-object v0

    .line 197
    :cond_0
    new-instance v0, Landroid/os/Message;

    .end local v0           #msg:Landroid/os/Message;
    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 198
    .restart local v0       #msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 199
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_0
.end method

.method public onFailure(Ljava/lang/Throwable;)V
    .locals 0
    .parameter "error"

    .prologue
    .line 117
    return-void
.end method

.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0
    .parameter "error"
    .parameter "content"

    .prologue
    .line 126
    invoke-virtual {p0, p1}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onFailure(Ljava/lang/Throwable;)V

    .line 127
    return-void
.end method

.method public onFinish()V
    .locals 0

    .prologue
    .line 104
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 99
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 0
    .parameter "content"

    .prologue
    .line 110
    return-void
.end method

.method protected sendFailureMessage(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3
    .parameter "e"
    .parameter "responseBody"

    .prologue
    const/4 v2, 0x1

    .line 139
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    aput-object p2, v0, v2

    invoke-virtual {p0, v2, v0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    .line 140
    return-void
.end method

.method protected sendFinishMessage()V
    .locals 2

    .prologue
    .line 147
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    .line 148
    return-void
.end method

.method protected sendMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 190
    :goto_0
    return-void

    .line 188
    :cond_0
    invoke-virtual {p0, p1}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method sendResponseMessage(Lorg/apache/http/HttpResponse;)V
    .locals 9
    .parameter "response"

    .prologue
    .line 207
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    .line 208
    .local v4, status:Lorg/apache/http/StatusLine;
    const/4 v3, 0x0

    .line 210
    .local v3, responseBody:Ljava/lang/String;
    const/4 v1, 0x0

    .line 211
    .local v1, entity:Lorg/apache/http/HttpEntity;
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    .line 212
    .local v5, temp:Lorg/apache/http/HttpEntity;
    if-eqz v5, :cond_0

    .line 213
    new-instance v2, Lorg/apache/http/entity/BufferedHttpEntity;

    invoke-direct {v2, v5}, Lorg/apache/http/entity/BufferedHttpEntity;-><init>(Lorg/apache/http/HttpEntity;)V

    .end local v1           #entity:Lorg/apache/http/HttpEntity;
    .local v2, entity:Lorg/apache/http/HttpEntity;
    move-object v1, v2

    .line 215
    .end local v2           #entity:Lorg/apache/http/HttpEntity;
    .restart local v1       #entity:Lorg/apache/http/HttpEntity;
    :cond_0
    invoke-static {v1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 220
    .end local v5           #temp:Lorg/apache/http/HttpEntity;
    :goto_0
    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    const/16 v7, 0x12c

    if-lt v6, v7, :cond_1

    .line 221
    new-instance v6, Lorg/apache/http/client/HttpResponseException;

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v6, v3}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->sendFailureMessage(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 225
    :goto_1
    return-void

    .line 216
    :catch_0
    move-exception v0

    .line 217
    .local v0, e:Ljava/io/IOException;
    const/4 v6, 0x0

    invoke-virtual {p0, v0, v6}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->sendFailureMessage(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    .line 223
    .end local v0           #e:Ljava/io/IOException;
    :cond_1
    invoke-virtual {p0, v3}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->sendSuccessMessage(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected sendStartMessage()V
    .locals 2

    .prologue
    .line 143
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    .line 144
    return-void
.end method

.method protected sendSuccessMessage(Ljava/lang/String;)V
    .locals 1
    .parameter "responseBody"

    .prologue
    .line 135
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    .line 136
    return-void
.end method
