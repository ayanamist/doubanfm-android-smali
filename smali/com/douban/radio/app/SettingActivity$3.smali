.class Lcom/douban/radio/app/SettingActivity$3;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/douban/radio/app/SettingActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 209
    iput-object p1, p0, Lcom/douban/radio/app/SettingActivity$3;->this$0:Lcom/douban/radio/app/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 213
    iget-object v0, p0, Lcom/douban/radio/app/SettingActivity$3;->this$0:Lcom/douban/radio/app/SettingActivity;

    #getter for: Lcom/douban/radio/app/SettingActivity;->rm:Lfm/douban/controller/RadioManager;
    invoke-static {v0}, Lcom/douban/radio/app/SettingActivity;->access$100(Lcom/douban/radio/app/SettingActivity;)Lfm/douban/controller/RadioManager;

    move-result-object v0

    invoke-static {v0}, Lfm/douban/model/Token;->isLogin(Lfm/douban/controller/RadioManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/douban/radio/app/SettingActivity$3;->this$0:Lcom/douban/radio/app/SettingActivity;

    const/4 v1, 0x0

    #calls: Lcom/douban/radio/app/SettingActivity;->showLogout(Z)V
    invoke-static {v0, v1}, Lcom/douban/radio/app/SettingActivity;->access$500(Lcom/douban/radio/app/SettingActivity;Z)V

    .line 219
    :goto_0
    return-void

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/douban/radio/app/SettingActivity$3;->this$0:Lcom/douban/radio/app/SettingActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/douban/radio/app/SettingActivity$3;->this$0:Lcom/douban/radio/app/SettingActivity;

    const-class v3, Lcom/douban/radio/app/LoginActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/douban/radio/app/SettingActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
