.class Lcom/douban/radio/app/SettingActivity$1;
.super Lcom/loopj/android/http/JsonHttpResponseHandler;
.source "SettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/douban/radio/app/SettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/douban/radio/app/SettingActivity;


# direct methods
.method constructor <init>(Lcom/douban/radio/app/SettingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/douban/radio/app/SettingActivity$1;->this$0:Lcom/douban/radio/app/SettingActivity;

    invoke-direct {p0}, Lcom/loopj/android/http/JsonHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0
    .parameter "error"
    .parameter "content"

    .prologue
    .line 140
    invoke-super {p0, p1, p2}, Lcom/loopj/android/http/JsonHttpResponseHandler;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method public onFinish()V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/douban/radio/app/SettingActivity$1;->this$0:Lcom/douban/radio/app/SettingActivity;

    #getter for: Lcom/douban/radio/app/SettingActivity;->checkBoxes:[Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/douban/radio/app/SettingActivity;->access$000(Lcom/douban/radio/app/SettingActivity;)[Landroid/widget/CheckBox;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 135
    invoke-super {p0}, Lcom/loopj/android/http/JsonHttpResponseHandler;->onFinish()V

    .line 136
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 128
    iget-object v0, p0, Lcom/douban/radio/app/SettingActivity$1;->this$0:Lcom/douban/radio/app/SettingActivity;

    #getter for: Lcom/douban/radio/app/SettingActivity;->checkBoxes:[Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/douban/radio/app/SettingActivity;->access$000(Lcom/douban/radio/app/SettingActivity;)[Landroid/widget/CheckBox;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 129
    invoke-super {p0}, Lcom/loopj/android/http/JsonHttpResponseHandler;->onStart()V

    .line 130
    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 9
    .parameter "response"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 105
    iget-object v5, p0, Lcom/douban/radio/app/SettingActivity$1;->this$0:Lcom/douban/radio/app/SettingActivity;

    #getter for: Lcom/douban/radio/app/SettingActivity;->checkBoxes:[Landroid/widget/CheckBox;
    invoke-static {v5}, Lcom/douban/radio/app/SettingActivity;->access$000(Lcom/douban/radio/app/SettingActivity;)[Landroid/widget/CheckBox;

    move-result-object v5

    aget-object v5, v5, v4

    invoke-virtual {v5, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 106
    const-string v5, "share"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "check:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :try_start_0
    iget-object v5, p0, Lcom/douban/radio/app/SettingActivity$1;->this$0:Lcom/douban/radio/app/SettingActivity;

    #getter for: Lcom/douban/radio/app/SettingActivity;->rm:Lfm/douban/controller/RadioManager;
    invoke-static {v5}, Lcom/douban/radio/app/SettingActivity;->access$100(Lcom/douban/radio/app/SettingActivity;)Lfm/douban/controller/RadioManager;

    move-result-object v5

    invoke-static {v5}, Lfm/douban/model/Token;->get(Lfm/douban/controller/RadioManager;)Lfm/douban/model/Token;

    move-result-object v0

    .line 109
    .local v0, doubanToken:Lfm/douban/model/Token;
    if-nez v0, :cond_0

    .line 110
    .local v2, name:Ljava/lang/String;
    :goto_0
    const-string v5, "r"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v3, :cond_2

    .line 112
    iget-object v5, p0, Lcom/douban/radio/app/SettingActivity$1;->this$0:Lcom/douban/radio/app/SettingActivity;

    #getter for: Lcom/douban/radio/app/SettingActivity;->rm:Lfm/douban/controller/RadioManager;
    invoke-static {v5}, Lcom/douban/radio/app/SettingActivity;->access$100(Lcom/douban/radio/app/SettingActivity;)Lfm/douban/controller/RadioManager;

    move-result-object v5

    invoke-virtual {v5}, Lfm/douban/controller/RadioManager;->getSharedPreferences()Lfm/douban/model/FMSharedPreferences;

    move-result-object v5

    const-string v6, "can_share_to_douban"

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lfm/douban/model/FMSharedPreferences;->putBoolean(Ljava/lang/String;Z)Z

    .line 113
    iget-object v5, p0, Lcom/douban/radio/app/SettingActivity$1;->this$0:Lcom/douban/radio/app/SettingActivity;

    const/4 v6, 0x0

    if-eqz v0, :cond_1

    :goto_1
    #calls: Lcom/douban/radio/app/SettingActivity;->applyCheck(IZLjava/lang/String;)V
    invoke-static {v5, v6, v3, v2}, Lcom/douban/radio/app/SettingActivity;->access$200(Lcom/douban/radio/app/SettingActivity;IZLjava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    .end local v0           #doubanToken:Lfm/douban/model/Token;
    .end local v2           #name:Ljava/lang/String;
    :goto_2
    iget-object v3, p0, Lcom/douban/radio/app/SettingActivity$1;->this$0:Lcom/douban/radio/app/SettingActivity;

    #getter for: Lcom/douban/radio/app/SettingActivity;->checkBoxes:[Landroid/widget/CheckBox;
    invoke-static {v3}, Lcom/douban/radio/app/SettingActivity;->access$000(Lcom/douban/radio/app/SettingActivity;)[Landroid/widget/CheckBox;

    move-result-object v3

    aget-object v3, v3, v4

    iget-object v5, p0, Lcom/douban/radio/app/SettingActivity$1;->this$0:Lcom/douban/radio/app/SettingActivity;

    #getter for: Lcom/douban/radio/app/SettingActivity;->checkListeners:[Landroid/widget/CompoundButton$OnCheckedChangeListener;
    invoke-static {v5}, Lcom/douban/radio/app/SettingActivity;->access$300(Lcom/douban/radio/app/SettingActivity;)[Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-result-object v5

    aget-object v4, v5, v4

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 123
    invoke-super {p0, p1}, Lcom/loopj/android/http/JsonHttpResponseHandler;->onSuccess(Lorg/json/JSONObject;)V

    .line 124
    return-void

    .line 109
    .restart local v0       #doubanToken:Lfm/douban/model/Token;
    :cond_0
    :try_start_1
    iget-object v2, v0, Lfm/douban/model/Token;->name:Ljava/lang/String;

    goto :goto_0

    .restart local v2       #name:Ljava/lang/String;
    :cond_1
    move v3, v4

    .line 113
    goto :goto_1

    .line 116
    :cond_2
    iget-object v3, p0, Lcom/douban/radio/app/SettingActivity$1;->this$0:Lcom/douban/radio/app/SettingActivity;

    #getter for: Lcom/douban/radio/app/SettingActivity;->rm:Lfm/douban/controller/RadioManager;
    invoke-static {v3}, Lcom/douban/radio/app/SettingActivity;->access$100(Lcom/douban/radio/app/SettingActivity;)Lfm/douban/controller/RadioManager;

    move-result-object v3

    invoke-virtual {v3}, Lfm/douban/controller/RadioManager;->getSharedPreferences()Lfm/douban/model/FMSharedPreferences;

    move-result-object v3

    const-string v5, "can_share_to_douban"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Lfm/douban/model/FMSharedPreferences;->putBoolean(Ljava/lang/String;Z)Z

    .line 117
    iget-object v3, p0, Lcom/douban/radio/app/SettingActivity$1;->this$0:Lcom/douban/radio/app/SettingActivity;

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/douban/radio/app/SettingActivity$1;->this$0:Lcom/douban/radio/app/SettingActivity;

    invoke-virtual {v7}, Lcom/douban/radio/app/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0900e4

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    #calls: Lcom/douban/radio/app/SettingActivity;->applyCheck(IZLjava/lang/String;)V
    invoke-static {v3, v5, v6, v7}, Lcom/douban/radio/app/SettingActivity;->access$200(Lcom/douban/radio/app/SettingActivity;IZLjava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 119
    .end local v0           #doubanToken:Lfm/douban/model/Token;
    .end local v2           #name:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 120
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2
.end method
