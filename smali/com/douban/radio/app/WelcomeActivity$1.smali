.class Lcom/douban/radio/app/WelcomeActivity$1;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "WelcomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/douban/radio/app/WelcomeActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/douban/radio/app/WelcomeActivity;


# direct methods
.method constructor <init>(Lcom/douban/radio/app/WelcomeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/douban/radio/app/WelcomeActivity$1;->this$0:Lcom/douban/radio/app/WelcomeActivity;

    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3
    .parameter "error"
    .parameter "content"

    .prologue
    .line 88
    const-string v0, "WelcomeActivity"

    const-string v1, "error"

    invoke-static {v0, v1}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v0, p0, Lcom/douban/radio/app/WelcomeActivity$1;->this$0:Lcom/douban/radio/app/WelcomeActivity;

    const v1, 0x7f0900aa

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 90
    iget-object v0, p0, Lcom/douban/radio/app/WelcomeActivity$1;->this$0:Lcom/douban/radio/app/WelcomeActivity;

    invoke-virtual {v0}, Lcom/douban/radio/app/WelcomeActivity;->finish()V

    .line 91
    invoke-super {p0, p1, p2}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 6
    .parameter "content"

    .prologue
    const/4 v5, 0x0

    .line 66
    const-string v3, "WelcomeActivity"

    invoke-static {v3, p1}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 70
    .local v1, jo:Lorg/json/JSONArray;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    const-string v4, "url_long"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 76
    .end local v1           #jo:Lorg/json/JSONArray;
    .local v2, startUrl:Ljava/lang/String;
    :goto_0
    const-string v3, "douban.fm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 77
    iget-object v3, p0, Lcom/douban/radio/app/WelcomeActivity$1;->this$0:Lcom/douban/radio/app/WelcomeActivity;

    #calls: Lcom/douban/radio/app/WelcomeActivity;->startPlayer(Ljava/lang/String;)V
    invoke-static {v3, v2}, Lcom/douban/radio/app/WelcomeActivity;->access$000(Lcom/douban/radio/app/WelcomeActivity;Ljava/lang/String;)V

    .line 83
    :goto_1
    invoke-super {p0, p1}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onSuccess(Ljava/lang/String;)V

    .line 84
    return-void

    .line 72
    .end local v2           #startUrl:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 73
    .local v0, e:Lorg/json/JSONException;
    const/4 v2, 0x0

    .line 74
    .restart local v2       #startUrl:Ljava/lang/String;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 79
    .end local v0           #e:Lorg/json/JSONException;
    :cond_0
    iget-object v3, p0, Lcom/douban/radio/app/WelcomeActivity$1;->this$0:Lcom/douban/radio/app/WelcomeActivity;

    const v4, 0x7f0900ab

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 80
    iget-object v3, p0, Lcom/douban/radio/app/WelcomeActivity$1;->this$0:Lcom/douban/radio/app/WelcomeActivity;

    invoke-virtual {v3}, Lcom/douban/radio/app/WelcomeActivity;->finish()V

    goto :goto_1
.end method
