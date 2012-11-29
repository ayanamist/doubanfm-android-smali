.class Lcom/douban/radio/app/SettingActivity$2;
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
    .line 182
    iput-object p1, p0, Lcom/douban/radio/app/SettingActivity$2;->this$0:Lcom/douban/radio/app/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 186
    new-instance v0, Lcom/douban/radio/app/SettingActivity$2$1;

    invoke-direct {v0, p0}, Lcom/douban/radio/app/SettingActivity$2$1;-><init>(Lcom/douban/radio/app/SettingActivity$2;)V

    .line 205
    .local v0, atask:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    iget-object v1, p0, Lcom/douban/radio/app/SettingActivity$2;->this$0:Lcom/douban/radio/app/SettingActivity;

    invoke-static {v1, v0}, Lcom/douban/radio/app/Warning;->showClearConfirm(Landroid/content/Context;Landroid/os/AsyncTask;)V

    .line 206
    return-void
.end method
