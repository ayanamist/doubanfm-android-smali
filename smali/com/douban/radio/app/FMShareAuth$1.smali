.class Lcom/douban/radio/app/FMShareAuth$1;
.super Landroid/os/Handler;
.source "FMShareAuth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/douban/radio/app/FMShareAuth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/douban/radio/app/FMShareAuth;


# direct methods
.method constructor <init>(Lcom/douban/radio/app/FMShareAuth;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/douban/radio/app/FMShareAuth$1;->this$0:Lcom/douban/radio/app/FMShareAuth;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .parameter "msg"

    .prologue
    const/4 v12, 0x0

    .line 65
    iget-object v9, p0, Lcom/douban/radio/app/FMShareAuth$1;->this$0:Lcom/douban/radio/app/FMShareAuth;

    #getter for: Lcom/douban/radio/app/FMShareAuth;->loading:Landroid/view/View;
    invoke-static {v9}, Lcom/douban/radio/app/FMShareAuth;->access$000(Lcom/douban/radio/app/FMShareAuth;)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, v12}, Landroid/view/View;->setVisibility(I)V

    .line 66
    const-string v8, ""

    .line 67
    .local v8, url:Ljava/lang/String;
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v9, :cond_0

    .line 68
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v8           #url:Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .line 70
    .restart local v8       #url:Ljava/lang/String;
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "http://douban.fm/?"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 71
    iget v9, p1, Landroid/os/Message;->what:I

    const/16 v10, 0x12c

    if-ne v9, v10, :cond_2

    .line 73
    iget-object v9, p0, Lcom/douban/radio/app/FMShareAuth$1;->this$0:Lcom/douban/radio/app/FMShareAuth;

    invoke-static {v9}, Lcom/douban/share/ShareMgr;->getInstance(Landroid/content/Context;)Lcom/douban/share/ShareMgr;

    move-result-object v9

    iget-object v6, v9, Lcom/douban/share/ShareMgr;->stm:Lcom/douban/share/SinaTokenManager;

    .line 75
    .local v6, st:Lcom/douban/share/SinaTokenManager;
    :try_start_0
    invoke-virtual {v6, v8}, Lcom/douban/share/SinaTokenManager;->updateTokens(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    new-instance v4, Lfm/douban/net/ParamBundle;

    invoke-direct {v4}, Lfm/douban/net/ParamBundle;-><init>()V

    .line 83
    .local v4, rp:Lfm/douban/net/ParamBundle;
    const-string v9, "access_token"

    invoke-virtual {v6}, Lcom/douban/share/SinaTokenManager;->getAccessToken()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Lfm/douban/net/ParamBundle;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v9, "source"

    sget-object v10, Lcom/douban/share/SinaTokenManager;->APP_KEY:Ljava/lang/String;

    invoke-virtual {v4, v9, v10}, Lfm/douban/net/ParamBundle;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v9, "uid"

    iget-object v10, v6, Lcom/douban/share/SinaTokenManager;->uid:Ljava/lang/String;

    invoke-virtual {v4, v9, v10}, Lfm/douban/net/ParamBundle;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v9, p0, Lcom/douban/radio/app/FMShareAuth$1;->this$0:Lcom/douban/radio/app/FMShareAuth;

    #getter for: Lcom/douban/radio/app/FMShareAuth;->api:Lfm/douban/api/Api;
    invoke-static {v9}, Lcom/douban/radio/app/FMShareAuth;->access$100(Lcom/douban/radio/app/FMShareAuth;)Lfm/douban/api/Api;

    move-result-object v9

    const-string v10, "https://api.weibo.com/2/users/show.json"

    new-instance v11, Lcom/douban/radio/app/FMShareAuth$1$1;

    invoke-direct {v11, p0, v6}, Lcom/douban/radio/app/FMShareAuth$1$1;-><init>(Lcom/douban/radio/app/FMShareAuth$1;Lcom/douban/share/SinaTokenManager;)V

    invoke-virtual {v9, v10, v4, v11}, Lfm/douban/api/Api;->getSinaInfo(Ljava/lang/String;Lfm/douban/net/ParamBundle;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 208
    .end local v4           #rp:Lfm/douban/net/ParamBundle;
    .end local v6           #st:Lcom/douban/share/SinaTokenManager;
    :cond_1
    :goto_0
    return-void

    .line 76
    .restart local v6       #st:Lcom/douban/share/SinaTokenManager;
    :catch_0
    move-exception v2

    .line 77
    .local v2, e:Ljava/lang/Exception;
    iget-object v9, p0, Lcom/douban/radio/app/FMShareAuth$1;->this$0:Lcom/douban/radio/app/FMShareAuth;

    invoke-virtual {v9, v12}, Lcom/douban/radio/app/FMShareAuth;->setResult(I)V

    .line 78
    iget-object v9, p0, Lcom/douban/radio/app/FMShareAuth$1;->this$0:Lcom/douban/radio/app/FMShareAuth;

    invoke-virtual {v9}, Lcom/douban/radio/app/FMShareAuth;->finish()V

    goto :goto_0

    .line 113
    .end local v2           #e:Ljava/lang/Exception;
    .end local v6           #st:Lcom/douban/share/SinaTokenManager;
    :cond_2
    iget v9, p1, Landroid/os/Message;->what:I

    const/16 v10, 0x190

    if-ne v9, v10, :cond_3

    .line 114
    const-string v9, "FMShareAuth"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "the str*********"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v9, p0, Lcom/douban/radio/app/FMShareAuth$1;->this$0:Lcom/douban/radio/app/FMShareAuth;

    invoke-static {v9}, Lcom/douban/share/ShareMgr;->getInstance(Landroid/content/Context;)Lcom/douban/share/ShareMgr;

    move-result-object v9

    iget-object v5, v9, Lcom/douban/share/ShareMgr;->rtm:Lcom/douban/share/RenrenTokenManager;

    .line 117
    .local v5, rtm:Lcom/douban/share/RenrenTokenManager;
    :try_start_1
    invoke-virtual {v5, v8}, Lcom/douban/share/RenrenTokenManager;->updateTokens(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 123
    new-instance v4, Lfm/douban/net/ParamBundle;

    invoke-direct {v4}, Lfm/douban/net/ParamBundle;-><init>()V

    .line 124
    .restart local v4       #rp:Lfm/douban/net/ParamBundle;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, callId:Ljava/lang/String;
    invoke-virtual {v5}, Lcom/douban/share/RenrenTokenManager;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, a:Ljava/lang/String;
    const-string v9, "FMShareAuth"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "renren accesstoken:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const-string v9, "access_token"

    invoke-virtual {v4, v9, v0}, Lfm/douban/net/ParamBundle;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v9, "method"

    const-string v10, "users.getInfo"

    invoke-virtual {v4, v9, v10}, Lfm/douban/net/ParamBundle;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string v9, "v"

    const-string v10, "1.0"

    invoke-virtual {v4, v9, v10}, Lfm/douban/net/ParamBundle;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string v9, "format"

    const-string v10, "json"

    invoke-virtual {v4, v9, v10}, Lfm/douban/net/ParamBundle;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v9, "call_id"

    invoke-virtual {v4, v9, v1}, Lfm/douban/net/ParamBundle;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v9, p0, Lcom/douban/radio/app/FMShareAuth$1;->this$0:Lcom/douban/radio/app/FMShareAuth;

    #getter for: Lcom/douban/radio/app/FMShareAuth;->api:Lfm/douban/api/Api;
    invoke-static {v9}, Lcom/douban/radio/app/FMShareAuth;->access$100(Lcom/douban/radio/app/FMShareAuth;)Lfm/douban/api/Api;

    move-result-object v9

    new-instance v10, Lcom/douban/radio/app/FMShareAuth$1$2;

    invoke-direct {v10, p0, v5}, Lcom/douban/radio/app/FMShareAuth$1$2;-><init>(Lcom/douban/radio/app/FMShareAuth$1;Lcom/douban/share/RenrenTokenManager;)V

    invoke-virtual {v9, v4, v10}, Lfm/douban/api/Api;->getRenrenName(Lfm/douban/net/ParamBundle;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    goto/16 :goto_0

    .line 118
    .end local v0           #a:Ljava/lang/String;
    .end local v1           #callId:Ljava/lang/String;
    .end local v4           #rp:Lfm/douban/net/ParamBundle;
    :catch_1
    move-exception v3

    .line 119
    .local v3, e1:Ljava/lang/Exception;
    iget-object v9, p0, Lcom/douban/radio/app/FMShareAuth$1;->this$0:Lcom/douban/radio/app/FMShareAuth;

    invoke-virtual {v9, v12}, Lcom/douban/radio/app/FMShareAuth;->setResult(I)V

    .line 120
    iget-object v9, p0, Lcom/douban/radio/app/FMShareAuth$1;->this$0:Lcom/douban/radio/app/FMShareAuth;

    invoke-virtual {v9}, Lcom/douban/radio/app/FMShareAuth;->finish()V

    goto/16 :goto_0

    .line 161
    .end local v3           #e1:Ljava/lang/Exception;
    .end local v5           #rtm:Lcom/douban/share/RenrenTokenManager;
    :cond_3
    iget v9, p1, Landroid/os/Message;->what:I

    const/16 v10, 0x1f4

    if-ne v9, v10, :cond_1

    .line 162
    const-string v9, "FMShareAuth"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "**********"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v9, p0, Lcom/douban/radio/app/FMShareAuth$1;->this$0:Lcom/douban/radio/app/FMShareAuth;

    invoke-virtual {v9}, Lcom/douban/radio/app/FMShareAuth;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/douban/share/ShareMgr;->getInstance(Landroid/content/Context;)Lcom/douban/share/ShareMgr;

    move-result-object v9

    iget-object v7, v9, Lcom/douban/share/ShareMgr;->ttm:Lcom/douban/share/TencentTokenManager;

    .line 165
    .local v7, tencentMgr:Lcom/douban/share/TencentTokenManager;
    :try_start_2
    invoke-virtual {v7, v8}, Lcom/douban/share/TencentTokenManager;->updateTokens(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 172
    new-instance v4, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v4}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 173
    .local v4, rp:Lcom/loopj/android/http/RequestParams;
    const-string v9, "oauth_consumer_key"

    const-string v10, "801145839"

    invoke-virtual {v4, v9, v10}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string v9, "access_token"

    invoke-virtual {v7}, Lcom/douban/share/TencentTokenManager;->getAccessToken()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string v9, "openid"

    invoke-virtual {v7}, Lcom/douban/share/TencentTokenManager;->getOpenid()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v9, "oauth_version"

    const-string v10, "2.a"

    invoke-virtual {v4, v9, v10}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string v9, "format"

    const-string v10, "json"

    invoke-virtual {v4, v9, v10}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iget-object v9, p0, Lcom/douban/radio/app/FMShareAuth$1;->this$0:Lcom/douban/radio/app/FMShareAuth;

    #getter for: Lcom/douban/radio/app/FMShareAuth;->api:Lfm/douban/api/Api;
    invoke-static {v9}, Lcom/douban/radio/app/FMShareAuth;->access$100(Lcom/douban/radio/app/FMShareAuth;)Lfm/douban/api/Api;

    move-result-object v9

    new-instance v10, Lcom/douban/radio/app/FMShareAuth$1$3;

    invoke-direct {v10, p0, v7}, Lcom/douban/radio/app/FMShareAuth$1$3;-><init>(Lcom/douban/radio/app/FMShareAuth$1;Lcom/douban/share/TencentTokenManager;)V

    invoke-virtual {v9, v4, v10}, Lfm/douban/api/Api;->getTencentInfo(Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    goto/16 :goto_0

    .line 166
    .end local v4           #rp:Lcom/loopj/android/http/RequestParams;
    :catch_2
    move-exception v3

    .line 167
    .restart local v3       #e1:Ljava/lang/Exception;
    iget-object v9, p0, Lcom/douban/radio/app/FMShareAuth$1;->this$0:Lcom/douban/radio/app/FMShareAuth;

    invoke-virtual {v9, v12}, Lcom/douban/radio/app/FMShareAuth;->setResult(I)V

    .line 168
    iget-object v9, p0, Lcom/douban/radio/app/FMShareAuth$1;->this$0:Lcom/douban/radio/app/FMShareAuth;

    invoke-virtual {v9}, Lcom/douban/radio/app/FMShareAuth;->finish()V

    goto/16 :goto_0
.end method
