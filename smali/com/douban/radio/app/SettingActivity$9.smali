.class Lcom/douban/radio/app/SettingActivity$9;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/douban/radio/app/SettingActivity;->onResume()V
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
    .line 380
    iput-object p1, p0, Lcom/douban/radio/app/SettingActivity$9;->this$0:Lcom/douban/radio/app/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 382
    iget-object v1, p0, Lcom/douban/radio/app/SettingActivity$9;->this$0:Lcom/douban/radio/app/SettingActivity;

    #getter for: Lcom/douban/radio/app/SettingActivity;->wakeCheck:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/douban/radio/app/SettingActivity;->access$900(Lcom/douban/radio/app/SettingActivity;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 383
    .local v0, b:Z
    iget-object v1, p0, Lcom/douban/radio/app/SettingActivity$9;->this$0:Lcom/douban/radio/app/SettingActivity;

    #getter for: Lcom/douban/radio/app/SettingActivity;->wakeCheck:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/douban/radio/app/SettingActivity;->access$900(Lcom/douban/radio/app/SettingActivity;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 384
    iget-object v1, p0, Lcom/douban/radio/app/SettingActivity$9;->this$0:Lcom/douban/radio/app/SettingActivity;

    #getter for: Lcom/douban/radio/app/SettingActivity;->fmsp:Lfm/douban/model/FMSharedPreferences;
    invoke-static {v1}, Lcom/douban/radio/app/SettingActivity;->access$700(Lcom/douban/radio/app/SettingActivity;)Lfm/douban/model/FMSharedPreferences;

    move-result-object v1

    const-string v2, "wake_alarm_on"

    invoke-virtual {v1, v2, v0}, Lfm/douban/model/FMSharedPreferences;->putBoolean(Ljava/lang/String;Z)Z

    .line 385
    iget-object v1, p0, Lcom/douban/radio/app/SettingActivity$9;->this$0:Lcom/douban/radio/app/SettingActivity;

    #getter for: Lcom/douban/radio/app/SettingActivity;->wakeTime:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/douban/radio/app/SettingActivity;->access$1000(Lcom/douban/radio/app/SettingActivity;)Landroid/widget/ImageView;

    move-result-object v2

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 386
    if-eqz v0, :cond_1

    .line 387
    iget-object v1, p0, Lcom/douban/radio/app/SettingActivity$9;->this$0:Lcom/douban/radio/app/SettingActivity;

    invoke-static {v1}, Lfm/douban/util/AlarmSet;->enableAlarm(Landroid/content/Context;)V

    .line 391
    :goto_1
    return-void

    .line 385
    :cond_0
    const/4 v1, 0x4

    goto :goto_0

    .line 389
    :cond_1
    iget-object v1, p0, Lcom/douban/radio/app/SettingActivity$9;->this$0:Lcom/douban/radio/app/SettingActivity;

    invoke-static {v1}, Lfm/douban/util/AlarmSet;->disableAlarm(Landroid/content/Context;)V

    goto :goto_1
.end method
