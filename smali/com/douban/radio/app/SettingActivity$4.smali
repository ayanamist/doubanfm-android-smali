.class Lcom/douban/radio/app/SettingActivity$4;
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
    .line 299
    iput-object p1, p0, Lcom/douban/radio/app/SettingActivity$4;->this$0:Lcom/douban/radio/app/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 303
    const-string v1, "SettingActivity"

    const-string v2, "appGalleryItem"

    invoke-static {v1, v2}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/douban/radio/app/SettingActivity$4;->this$0:Lcom/douban/radio/app/SettingActivity;

    const-class v2, Lcom/douban/radio/app/AboutActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 305
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/douban/radio/app/SettingActivity$4;->this$0:Lcom/douban/radio/app/SettingActivity;

    invoke-virtual {v1, v0}, Lcom/douban/radio/app/SettingActivity;->startActivity(Landroid/content/Intent;)V

    .line 307
    return-void
.end method
