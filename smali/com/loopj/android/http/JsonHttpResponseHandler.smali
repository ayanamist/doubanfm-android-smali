.class public Lcom/loopj/android/http/JsonHttpResponseHandler;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "JsonHttpResponseHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method protected handleSuccessMessage(Ljava/lang/String;)V
    .locals 3
    .parameter "responseBody"

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->handleSuccessMessage(Ljava/lang/String;)V

    .line 67
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/loopj/android/http/JsonHttpResponseHandler;->parseResponse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 68
    .local v1, jsonResponse:Ljava/lang/Object;
    instance-of v2, v1, Lorg/json/JSONObject;

    if-eqz v2, :cond_1

    .line 69
    check-cast v1, Lorg/json/JSONObject;

    .end local v1           #jsonResponse:Ljava/lang/Object;
    invoke-virtual {p0, v1}, Lcom/loopj/android/http/JsonHttpResponseHandler;->onSuccess(Lorg/json/JSONObject;)V

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 70
    .restart local v1       #jsonResponse:Ljava/lang/Object;
    :cond_1
    instance-of v2, v1, Lorg/json/JSONArray;

    if-eqz v2, :cond_0

    .line 71
    check-cast v1, Lorg/json/JSONArray;

    .end local v1           #jsonResponse:Ljava/lang/Object;
    invoke-virtual {p0, v1}, Lcom/loopj/android/http/JsonHttpResponseHandler;->onSuccess(Lorg/json/JSONArray;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {p0, v0, p1}, Lcom/loopj/android/http/JsonHttpResponseHandler;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSuccess(Lorg/json/JSONArray;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 58
    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 49
    return-void
.end method

.method protected parseResponse(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "responseBody"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 79
    new-instance v0, Lorg/json/JSONTokener;

    invoke-direct {v0, p1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
