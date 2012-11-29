.class Lcom/douban/radio/app/SettingActivity$15;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/douban/radio/app/SettingActivity;->showLogout(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/douban/radio/app/SettingActivity;

.field final synthetic val$t:Lfm/douban/model/Token;


# direct methods
.method constructor <init>(Lcom/douban/radio/app/SettingActivity;Lfm/douban/model/Token;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 488
    iput-object p1, p0, Lcom/douban/radio/app/SettingActivity$15;->this$0:Lcom/douban/radio/app/SettingActivity;

    iput-object p2, p0, Lcom/douban/radio/app/SettingActivity$15;->val$t:Lfm/douban/model/Token;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v4, 0x0

    .line 491
    iget-object v1, p0, Lcom/douban/radio/app/SettingActivity$15;->this$0:Lcom/douban/radio/app/SettingActivity;

    #getter for: Lcom/douban/radio/app/SettingActivity;->fmsp:Lfm/douban/model/FMSharedPreferences;
    invoke-static {v1}, Lcom/douban/radio/app/SettingActivity;->access$700(Lcom/douban/radio/app/SettingActivity;)Lfm/douban/model/FMSharedPreferences;

    move-result-object v1

    const-string v2, "can_get_red"

    invoke-virtual {v1, v2, v4}, Lfm/douban/model/FMSharedPreferences;->putBoolean(Ljava/lang/String;Z)Z

    .line 492
    iget-object v1, p0, Lcom/douban/radio/app/SettingActivity$15;->this$0:Lcom/douban/radio/app/SettingActivity;

    #getter for: Lcom/douban/radio/app/SettingActivity;->fmsp:Lfm/douban/model/FMSharedPreferences;
    invoke-static {v1}, Lcom/douban/radio/app/SettingActivity;->access$700(Lcom/douban/radio/app/SettingActivity;)Lfm/douban/model/FMSharedPreferences;

    move-result-object v1

    const-string v2, "last_user"

    iget-object v3, p0, Lcom/douban/radio/app/SettingActivity$15;->val$t:Lfm/douban/model/Token;

    iget-object v3, v3, Lfm/douban/model/Token;->user_id:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lfm/douban/model/FMSharedPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 494
    iget-object v1, p0, Lcom/douban/radio/app/SettingActivity$15;->this$0:Lcom/douban/radio/app/SettingActivity;

    invoke-static {v1}, Lfm/douban/FmApp;->getRadioManager(Landroid/content/Context;)Lfm/douban/controller/RadioManager;

    move-result-object v1

    invoke-virtual {v1}, Lfm/douban/controller/RadioManager;->getSongTaskManager()Lfm/douban/controller/SongTaskManager;

    move-result-object v1

    invoke-virtual {v1}, Lfm/douban/controller/SongTaskManager;->stop()V

    .line 495
    iget-object v1, p0, Lcom/douban/radio/app/SettingActivity$15;->this$0:Lcom/douban/radio/app/SettingActivity;

    #getter for: Lcom/douban/radio/app/SettingActivity;->rm:Lfm/douban/controller/RadioManager;
    invoke-static {v1}, Lcom/douban/radio/app/SettingActivity;->access$100(Lcom/douban/radio/app/SettingActivity;)Lfm/douban/controller/RadioManager;

    move-result-object v1

    invoke-static {v1}, Lfm/douban/model/Token;->clean(Lfm/douban/controller/RadioManager;)V

    .line 496
    iget-object v1, p0, Lcom/douban/radio/app/SettingActivity$15;->this$0:Lcom/douban/radio/app/SettingActivity;

    invoke-virtual {v1}, Lcom/douban/radio/app/SettingActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/douban/share/ShareMgr;->getInstance(Landroid/content/Context;)Lcom/douban/share/ShareMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/douban/share/ShareMgr;->removeSinaAccessToken()V

    .line 497
    iget-object v1, p0, Lcom/douban/radio/app/SettingActivity$15;->this$0:Lcom/douban/radio/app/SettingActivity;

    #getter for: Lcom/douban/radio/app/SettingActivity;->fmsp:Lfm/douban/model/FMSharedPreferences;
    invoke-static {v1}, Lcom/douban/radio/app/SettingActivity;->access$700(Lcom/douban/radio/app/SettingActivity;)Lfm/douban/model/FMSharedPreferences;

    move-result-object v1

    const-string v2, "is_logined"

    invoke-virtual {v1, v2, v4}, Lfm/douban/model/FMSharedPreferences;->putBoolean(Ljava/lang/String;Z)Z

    .line 498
    iget-object v1, p0, Lcom/douban/radio/app/SettingActivity$15;->this$0:Lcom/douban/radio/app/SettingActivity;

    #getter for: Lcom/douban/radio/app/SettingActivity;->fmsp:Lfm/douban/model/FMSharedPreferences;
    invoke-static {v1}, Lcom/douban/radio/app/SettingActivity;->access$700(Lcom/douban/radio/app/SettingActivity;)Lfm/douban/model/FMSharedPreferences;

    move-result-object v1

    const-string v2, "can_share_to_douban"

    invoke-virtual {v1, v2, v4}, Lfm/douban/model/FMSharedPreferences;->putBoolean(Ljava/lang/String;Z)Z

    .line 499
    iget-object v1, p0, Lcom/douban/radio/app/SettingActivity$15;->this$0:Lcom/douban/radio/app/SettingActivity;

    const-string v2, "Logout"

    invoke-static {v1, v2}, Lcom/mobclick/android/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 501
    iget-object v1, p0, Lcom/douban/radio/app/SettingActivity$15;->this$0:Lcom/douban/radio/app/SettingActivity;

    #getter for: Lcom/douban/radio/app/SettingActivity;->state:Lfm/douban/service/RadioState;
    invoke-static {v1}, Lcom/douban/radio/app/SettingActivity;->access$1100(Lcom/douban/radio/app/SettingActivity;)Lfm/douban/service/RadioState;

    move-result-object v1

    iget-object v1, v1, Lfm/douban/service/RadioState;->channel:Lfm/douban/model/Channel;

    invoke-virtual {v1}, Lfm/douban/model/Channel;->isPublic()Z

    move-result v1

    if-nez v1, :cond_0

    .line 502
    const-string v1, "Logout"

    const-string v2, "switch channel! "

    invoke-static {v1, v2}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    iget-object v1, p0, Lcom/douban/radio/app/SettingActivity$15;->this$0:Lcom/douban/radio/app/SettingActivity;

    #getter for: Lcom/douban/radio/app/SettingActivity;->rm:Lfm/douban/controller/RadioManager;
    invoke-static {v1}, Lcom/douban/radio/app/SettingActivity;->access$100(Lcom/douban/radio/app/SettingActivity;)Lfm/douban/controller/RadioManager;

    move-result-object v1

    invoke-virtual {v1}, Lfm/douban/controller/RadioManager;->getChannelManager()Lfm/douban/controller/ChannelManager;

    move-result-object v1

    invoke-virtual {v1}, Lfm/douban/controller/ChannelManager;->getDefaultChannel()Lfm/douban/model/Channel;

    move-result-object v0

    .line 504
    .local v0, c:Lfm/douban/model/Channel;
    iget-object v1, p0, Lcom/douban/radio/app/SettingActivity$15;->this$0:Lcom/douban/radio/app/SettingActivity;

    const/4 v2, 0x7

    iget-object v3, v0, Lfm/douban/model/Channel;->channel_id:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lfm/douban/service/RadioService;->sendCommand(Landroid/content/Context;ILjava/lang/String;)V

    .line 508
    .end local v0           #c:Lfm/douban/model/Channel;
    :cond_0
    iget-object v1, p0, Lcom/douban/radio/app/SettingActivity$15;->this$0:Lcom/douban/radio/app/SettingActivity;

    #getter for: Lcom/douban/radio/app/SettingActivity;->accountButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/douban/radio/app/SettingActivity;->access$1200(Lcom/douban/radio/app/SettingActivity;)Landroid/widget/Button;

    move-result-object v1

    const v2, 0x7f0900f8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 509
    iget-object v1, p0, Lcom/douban/radio/app/SettingActivity$15;->this$0:Lcom/douban/radio/app/SettingActivity;

    #getter for: Lcom/douban/radio/app/SettingActivity;->accountTitle:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/douban/radio/app/SettingActivity;->access$1300(Lcom/douban/radio/app/SettingActivity;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0900f7

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 511
    iget-object v1, p0, Lcom/douban/radio/app/SettingActivity$15;->this$0:Lcom/douban/radio/app/SettingActivity;

    #calls: Lcom/douban/radio/app/SettingActivity;->clearAllShare()V
    invoke-static {v1}, Lcom/douban/radio/app/SettingActivity;->access$1400(Lcom/douban/radio/app/SettingActivity;)V

    .line 512
    return-void
.end method
