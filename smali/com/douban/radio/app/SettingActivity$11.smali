.class Lcom/douban/radio/app/SettingActivity$11;
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
    .line 401
    iput-object p1, p0, Lcom/douban/radio/app/SettingActivity$11;->this$0:Lcom/douban/radio/app/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 403
    iget-object v0, p0, Lcom/douban/radio/app/SettingActivity$11;->this$0:Lcom/douban/radio/app/SettingActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/douban/radio/app/SettingActivity$11;->this$0:Lcom/douban/radio/app/SettingActivity;

    const-class v3, Lcom/douban/radio/app/LoginActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/douban/radio/app/SettingActivity;->startActivity(Landroid/content/Intent;)V

    .line 404
    return-void
.end method
