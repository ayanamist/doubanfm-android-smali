.class Lcom/douban/radio/app/ShareActivity$1;
.super Lcom/loopj/android/http/JsonHttpResponseHandler;
.source "ShareActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/douban/radio/app/ShareActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/douban/radio/app/ShareActivity;


# direct methods
.method constructor <init>(Lcom/douban/radio/app/ShareActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/douban/radio/app/ShareActivity$1;->this$0:Lcom/douban/radio/app/ShareActivity;

    invoke-direct {p0}, Lcom/loopj/android/http/JsonHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 4
    .parameter "error"
    .parameter "errmsg"

    .prologue
    const/4 v3, 0x0

    .line 124
    const-string v0, "share"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "check:fail"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v0, p0, Lcom/douban/radio/app/ShareActivity$1;->this$0:Lcom/douban/radio/app/ShareActivity;

    #getter for: Lcom/douban/radio/app/ShareActivity;->fmsp:Lfm/douban/model/FMSharedPreferences;
    invoke-static {v0}, Lcom/douban/radio/app/ShareActivity;->access$000(Lcom/douban/radio/app/ShareActivity;)Lfm/douban/model/FMSharedPreferences;

    move-result-object v0

    const-string v1, "can_share_to_douban"

    invoke-virtual {v0, v1, v3}, Lfm/douban/model/FMSharedPreferences;->putBoolean(Ljava/lang/String;Z)Z

    .line 126
    iget-object v0, p0, Lcom/douban/radio/app/ShareActivity$1;->this$0:Lcom/douban/radio/app/ShareActivity;

    #calls: Lcom/douban/radio/app/ShareActivity;->setShareDouban(Z)V
    invoke-static {v0, v3}, Lcom/douban/radio/app/ShareActivity;->access$100(Lcom/douban/radio/app/ShareActivity;Z)V

    .line 127
    invoke-super {p0, p1, p2}, Lcom/loopj/android/http/JsonHttpResponseHandler;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public onFinish()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/douban/radio/app/ShareActivity$1;->this$0:Lcom/douban/radio/app/ShareActivity;

    #getter for: Lcom/douban/radio/app/ShareActivity;->connectTos:[Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/douban/radio/app/ShareActivity;->access$300(Lcom/douban/radio/app/ShareActivity;)[Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 119
    invoke-super {p0}, Lcom/loopj/android/http/JsonHttpResponseHandler;->onFinish()V

    .line 120
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 111
    const-string v0, "share"

    const-string v1, "check:start"

    invoke-static {v0, v1}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v0, p0, Lcom/douban/radio/app/ShareActivity$1;->this$0:Lcom/douban/radio/app/ShareActivity;

    #getter for: Lcom/douban/radio/app/ShareActivity;->connectTos:[Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/douban/radio/app/ShareActivity;->access$300(Lcom/douban/radio/app/ShareActivity;)[Landroid/widget/ImageView;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 113
    invoke-super {p0}, Lcom/loopj/android/http/JsonHttpResponseHandler;->onStart()V

    .line 114
    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 5
    .parameter "response"

    .prologue
    const/4 v4, 0x1

    .line 89
    const-string v1, "share"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "check:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :try_start_0
    const-string v1, "r"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 93
    iget-object v1, p0, Lcom/douban/radio/app/ShareActivity$1;->this$0:Lcom/douban/radio/app/ShareActivity;

    #getter for: Lcom/douban/radio/app/ShareActivity;->fmsp:Lfm/douban/model/FMSharedPreferences;
    invoke-static {v1}, Lcom/douban/radio/app/ShareActivity;->access$000(Lcom/douban/radio/app/ShareActivity;)Lfm/douban/model/FMSharedPreferences;

    move-result-object v1

    const-string v2, "can_share_to_douban"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lfm/douban/model/FMSharedPreferences;->putBoolean(Ljava/lang/String;Z)Z

    .line 94
    iget-object v1, p0, Lcom/douban/radio/app/ShareActivity$1;->this$0:Lcom/douban/radio/app/ShareActivity;

    const/4 v2, 0x1

    #calls: Lcom/douban/radio/app/ShareActivity;->setShareDouban(Z)V
    invoke-static {v1, v2}, Lcom/douban/radio/app/ShareActivity;->access$100(Lcom/douban/radio/app/ShareActivity;Z)V

    .line 100
    :goto_0
    iget-object v1, p0, Lcom/douban/radio/app/ShareActivity$1;->this$0:Lcom/douban/radio/app/ShareActivity;

    #getter for: Lcom/douban/radio/app/ShareActivity;->shareButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/douban/radio/app/ShareActivity;->access$200(Lcom/douban/radio/app/ShareActivity;)Landroid/widget/Button;

    move-result-object v1

    const v2, 0x7f0900d0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :goto_1
    invoke-super {p0, p1}, Lcom/loopj/android/http/JsonHttpResponseHandler;->onSuccess(Lorg/json/JSONObject;)V

    .line 107
    return-void

    .line 97
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/douban/radio/app/ShareActivity$1;->this$0:Lcom/douban/radio/app/ShareActivity;

    #getter for: Lcom/douban/radio/app/ShareActivity;->fmsp:Lfm/douban/model/FMSharedPreferences;
    invoke-static {v1}, Lcom/douban/radio/app/ShareActivity;->access$000(Lcom/douban/radio/app/ShareActivity;)Lfm/douban/model/FMSharedPreferences;

    move-result-object v1

    const-string v2, "can_share_to_douban"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lfm/douban/model/FMSharedPreferences;->putBoolean(Ljava/lang/String;Z)Z

    .line 98
    iget-object v1, p0, Lcom/douban/radio/app/ShareActivity$1;->this$0:Lcom/douban/radio/app/ShareActivity;

    const/4 v2, 0x0

    #calls: Lcom/douban/radio/app/ShareActivity;->setShareDouban(Z)V
    invoke-static {v1, v2}, Lcom/douban/radio/app/ShareActivity;->access$100(Lcom/douban/radio/app/ShareActivity;Z)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method
