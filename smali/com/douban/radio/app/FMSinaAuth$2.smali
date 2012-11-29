.class Lcom/douban/radio/app/FMSinaAuth$2;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "FMSinaAuth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/douban/radio/app/FMSinaAuth;->makeHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/douban/radio/app/FMSinaAuth;


# direct methods
.method constructor <init>(Lcom/douban/radio/app/FMSinaAuth;)V
    .locals 0
    .parameter

    .prologue
    .line 274
    iput-object p1, p0, Lcom/douban/radio/app/FMSinaAuth$2;->this$0:Lcom/douban/radio/app/FMSinaAuth;

    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3
    .parameter "error"
    .parameter "content"

    .prologue
    .line 375
    const-string v0, "FMSinaAuth"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "login sina onFailure:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 377
    invoke-super {p0, p1, p2}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 378
    return-void
.end method

.method public onFinish()V
    .locals 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/douban/radio/app/FMSinaAuth$2;->this$0:Lcom/douban/radio/app/FMSinaAuth;

    #getter for: Lcom/douban/radio/app/FMSinaAuth;->loading:Landroid/view/View;
    invoke-static {v0}, Lcom/douban/radio/app/FMSinaAuth;->access$200(Lcom/douban/radio/app/FMSinaAuth;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 285
    invoke-super {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onFinish()V

    .line 286
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 278
    iget-object v0, p0, Lcom/douban/radio/app/FMSinaAuth$2;->this$0:Lcom/douban/radio/app/FMSinaAuth;

    #getter for: Lcom/douban/radio/app/FMSinaAuth;->loading:Landroid/view/View;
    invoke-static {v0}, Lcom/douban/radio/app/FMSinaAuth;->access$200(Lcom/douban/radio/app/FMSinaAuth;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 279
    invoke-super {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onStart()V

    .line 280
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 21
    .parameter "content"

    .prologue
    .line 291
    :try_start_0
    const-string v18, "FMSinaAuth"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "login sina onSuccess:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    new-instance v6, Lorg/json/JSONObject;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 293
    .local v6, json:Lorg/json/JSONObject;
    const-string v18, "r"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 294
    .local v12, r:I
    if-nez v12, :cond_5

    .line 295
    const-string v18, "sina_token"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 296
    .local v14, sinatoken:Ljava/lang/String;
    const-string v18, "FMSinaAuth"

    const-string v19, "saveToken done"

    invoke-static/range {v18 .. v19}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    new-instance v17, Lfm/douban/model/Token;

    move-object/from16 v0, v17

    invoke-direct {v0, v6}, Lfm/douban/model/Token;-><init>(Lorg/json/JSONObject;)V

    .line 298
    .local v17, t:Lfm/douban/model/Token;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/douban/radio/app/FMSinaAuth$2;->this$0:Lcom/douban/radio/app/FMSinaAuth;

    move-object/from16 v18, v0

    #getter for: Lcom/douban/radio/app/FMSinaAuth;->rm:Lfm/douban/controller/RadioManager;
    invoke-static/range {v18 .. v18}, Lcom/douban/radio/app/FMSinaAuth;->access$800(Lcom/douban/radio/app/FMSinaAuth;)Lfm/douban/controller/RadioManager;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lfm/douban/model/Token;->save(Lfm/douban/controller/RadioManager;)V

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/douban/radio/app/FMSinaAuth$2;->this$0:Lcom/douban/radio/app/FMSinaAuth;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/douban/radio/app/FMSinaAuth;->checkCurrentUser(Lfm/douban/model/Token;)V

    .line 301
    const/4 v9, 0x0

    .line 302
    .local v9, name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/douban/radio/app/FMSinaAuth$2;->this$0:Lcom/douban/radio/app/FMSinaAuth;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/douban/radio/app/FMSinaAuth;->getApplication()Landroid/app/Application;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/douban/share/ShareMgr;->getInstance(Landroid/content/Context;)Lcom/douban/share/ShareMgr;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v15, v0, Lcom/douban/share/ShareMgr;->stm:Lcom/douban/share/SinaTokenManager;

    .line 303
    .local v15, stm:Lcom/douban/share/SinaTokenManager;
    invoke-virtual {v15}, Lcom/douban/share/SinaTokenManager;->isAvailable()Z

    move-result v18

    if-eqz v18, :cond_1

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/douban/radio/app/FMSinaAuth$2;->this$0:Lcom/douban/radio/app/FMSinaAuth;

    move-object/from16 v18, v0

    const/16 v19, -0x1

    invoke-virtual/range {v18 .. v19}, Lcom/douban/radio/app/FMSinaAuth;->setResult(I)V

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/douban/radio/app/FMSinaAuth$2;->this$0:Lcom/douban/radio/app/FMSinaAuth;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/douban/radio/app/FMSinaAuth;->finish()V

    .line 324
    :goto_0
    move-object v8, v9

    .line 325
    .local v8, nam:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/douban/radio/app/FMSinaAuth$2;->this$0:Lcom/douban/radio/app/FMSinaAuth;

    move-object/from16 v18, v0

    #getter for: Lcom/douban/radio/app/FMSinaAuth;->web:Lfm/douban/api/Api;
    invoke-static/range {v18 .. v18}, Lcom/douban/radio/app/FMSinaAuth;->access$900(Lcom/douban/radio/app/FMSinaAuth;)Lfm/douban/api/Api;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/douban/radio/app/FMSinaAuth$2;->this$0:Lcom/douban/radio/app/FMSinaAuth;

    move-object/from16 v19, v0

    new-instance v20, Lcom/douban/radio/app/FMSinaAuth$2$1;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v15, v8}, Lcom/douban/radio/app/FMSinaAuth$2$1;-><init>(Lcom/douban/radio/app/FMSinaAuth$2;Lcom/douban/share/SinaTokenManager;Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v20}, Lfm/douban/api/Api;->exchangeSinaToken(Landroid/content/Context;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 371
    .end local v6           #json:Lorg/json/JSONObject;
    .end local v8           #nam:Ljava/lang/String;
    .end local v9           #name:Ljava/lang/String;
    .end local v12           #r:I
    .end local v14           #sinatoken:Ljava/lang/String;
    .end local v15           #stm:Lcom/douban/share/SinaTokenManager;
    .end local v17           #t:Lfm/douban/model/Token;
    :cond_0
    :goto_1
    return-void

    .line 307
    .restart local v6       #json:Lorg/json/JSONObject;
    .restart local v9       #name:Ljava/lang/String;
    .restart local v12       #r:I
    .restart local v14       #sinatoken:Ljava/lang/String;
    .restart local v15       #stm:Lcom/douban/share/SinaTokenManager;
    .restart local v17       #t:Lfm/douban/model/Token;
    :cond_1
    const-string v18, "user_name"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 308
    const-string v18, "&"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 309
    .local v16, strs:[Ljava/lang/String;
    const/4 v10, 0x0

    .line 310
    .local v10, oldSecret:Ljava/lang/String;
    const/4 v11, 0x0

    .line 311
    .local v11, oldToken:Ljava/lang/String;
    move-object/from16 v2, v16

    .local v2, arr$:[Ljava/lang/String;
    array-length v7, v2

    .local v7, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_2
    if-ge v5, v7, :cond_4

    aget-object v13, v2, v5

    .line 312
    .local v13, s:Ljava/lang/String;
    const-string v18, "oauth_token="

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 313
    const-string v18, "="

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    aget-object v18, v18, v19

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 311
    :cond_2
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 314
    :cond_3
    const-string v18, "oauth_token_secret="

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 315
    const-string v18, "="

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    aget-object v18, v18, v19

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    goto :goto_3

    .line 318
    .end local v13           #s:Ljava/lang/String;
    :cond_4
    const-string v18, "FMSinaAuth"

    const-string v19, "save old tokens"

    invoke-static/range {v18 .. v19}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    const-string v18, "FMSinaAuth"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ";;;"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    invoke-virtual {v15, v11, v10}, Lcom/douban/share/SinaTokenManager;->setOldToken(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 368
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v5           #i$:I
    .end local v6           #json:Lorg/json/JSONObject;
    .end local v7           #len$:I
    .end local v9           #name:Ljava/lang/String;
    .end local v10           #oldSecret:Ljava/lang/String;
    .end local v11           #oldToken:Ljava/lang/String;
    .end local v12           #r:I
    .end local v14           #sinatoken:Ljava/lang/String;
    .end local v15           #stm:Lcom/douban/share/SinaTokenManager;
    .end local v16           #strs:[Ljava/lang/String;
    .end local v17           #t:Lfm/douban/model/Token;
    :catch_0
    move-exception v3

    .line 369
    .local v3, e:Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_1

    .line 361
    .end local v3           #e:Lorg/json/JSONException;
    .restart local v6       #json:Lorg/json/JSONObject;
    .restart local v12       #r:I
    :cond_5
    :try_start_1
    const-string v18, "err"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 362
    .local v4, err:Ljava/lang/String;
    const-string v18, "wrong_password"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_0

    .line 364
    const-string v18, "version_low"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v18

    if-eqz v18, :cond_0

    goto/16 :goto_1
.end method
