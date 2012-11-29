.class Lfm/douban/service/Radio$3;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "Radio.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfm/douban/service/Radio;->makeShareHandler(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lfm/douban/service/Radio;

.field final synthetic val$source:I


# direct methods
.method constructor <init>(Lfm/douban/service/Radio;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 860
    iput-object p1, p0, Lfm/douban/service/Radio$3;->this$0:Lfm/douban/service/Radio;

    iput p2, p0, Lfm/douban/service/Radio$3;->val$source:I

    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3
    .parameter "error"
    .parameter "content"

    .prologue
    .line 897
    const-string v0, "share"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failure:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    iget-object v0, p0, Lfm/douban/service/Radio$3;->this$0:Lfm/douban/service/Radio;

    sget-object v1, Lcom/douban/radio/app/ShareActivity;->SHARE_FAIL_CODES:[I

    iget v2, p0, Lfm/douban/service/Radio$3;->val$source:I

    aget v1, v1, v2

    invoke-static {v0, v1}, Lfm/douban/service/Radio;->access$212(Lfm/douban/service/Radio;I)I

    .line 899
    iget-object v0, p0, Lfm/douban/service/Radio$3;->this$0:Lfm/douban/service/Radio;

    iget-object v1, p0, Lfm/douban/service/Radio$3;->this$0:Lfm/douban/service/Radio;

    #getter for: Lfm/douban/service/Radio;->success:I
    invoke-static {v1}, Lfm/douban/service/Radio;->access$200(Lfm/douban/service/Radio;)I

    move-result v1

    #calls: Lfm/douban/service/Radio;->sendUpdateShare(I)V
    invoke-static {v0, v1}, Lfm/douban/service/Radio;->access$500(Lfm/douban/service/Radio;I)V

    .line 900
    invoke-super {p0, p1, p2}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 901
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 5
    .parameter "content"

    .prologue
    .line 863
    const-string v2, "share"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "success:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 867
    .local v1, result:Lorg/json/JSONObject;
    iget v2, p0, Lfm/douban/service/Radio$3;->val$source:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch v2, :pswitch_data_0

    .line 891
    .end local v1           #result:Lorg/json/JSONObject;
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v2, p0, Lfm/douban/service/Radio$3;->this$0:Lfm/douban/service/Radio;

    iget-object v3, p0, Lfm/douban/service/Radio$3;->this$0:Lfm/douban/service/Radio;

    #getter for: Lfm/douban/service/Radio;->success:I
    invoke-static {v3}, Lfm/douban/service/Radio;->access$200(Lfm/douban/service/Radio;)I

    move-result v3

    #calls: Lfm/douban/service/Radio;->sendUpdateShare(I)V
    invoke-static {v2, v3}, Lfm/douban/service/Radio;->access$500(Lfm/douban/service/Radio;I)V

    .line 892
    invoke-super {p0, p1}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onSuccess(Ljava/lang/String;)V

    .line 893
    return-void

    .line 869
    .restart local v1       #result:Lorg/json/JSONObject;
    :pswitch_1
    :try_start_1
    const-string v2, "r"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 870
    iget-object v2, p0, Lfm/douban/service/Radio$3;->this$0:Lfm/douban/service/Radio;

    sget-object v3, Lcom/douban/radio/app/ShareActivity;->SHARE_FAIL_CODES:[I

    iget v4, p0, Lfm/douban/service/Radio$3;->val$source:I

    aget v3, v3, v4

    invoke-static {v2, v3}, Lfm/douban/service/Radio;->access$212(Lfm/douban/service/Radio;I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 887
    .end local v1           #result:Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 888
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Lfm/douban/service/Radio$3;->this$0:Lfm/douban/service/Radio;

    sget-object v3, Lcom/douban/radio/app/ShareActivity;->SHARE_FAIL_CODES:[I

    iget v4, p0, Lfm/douban/service/Radio$3;->val$source:I

    aget v3, v3, v4

    invoke-static {v2, v3}, Lfm/douban/service/Radio;->access$212(Lfm/douban/service/Radio;I)I

    goto :goto_0

    .line 874
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #result:Lorg/json/JSONObject;
    :pswitch_2
    :try_start_2
    const-string v2, "error_code"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "21315"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 875
    iget-object v2, p0, Lfm/douban/service/Radio$3;->this$0:Lfm/douban/service/Radio;

    const v3, 0x7f0900e7

    #setter for: Lfm/douban/service/Radio;->resId:I
    invoke-static {v2, v3}, Lfm/douban/service/Radio;->access$302(Lfm/douban/service/Radio;I)I

    .line 876
    iget-object v2, p0, Lfm/douban/service/Radio$3;->this$0:Lfm/douban/service/Radio;

    #getter for: Lfm/douban/service/Radio;->context:Landroid/content/Context;
    invoke-static {v2}, Lfm/douban/service/Radio;->access$400(Lfm/douban/service/Radio;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/douban/share/ShareMgr;->getInstance(Landroid/content/Context;)Lcom/douban/share/ShareMgr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/douban/share/ShareMgr;->removeSinaAccessToken()V

    .line 877
    iget-object v2, p0, Lfm/douban/service/Radio$3;->this$0:Lfm/douban/service/Radio;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lfm/douban/service/Radio;->access$212(Lfm/douban/service/Radio;I)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 867
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
