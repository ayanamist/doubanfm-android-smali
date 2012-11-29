.class Lcom/douban/radio/app/SettingActivity$7;
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
    .line 333
    iput-object p1, p0, Lcom/douban/radio/app/SettingActivity$7;->this$0:Lcom/douban/radio/app/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 335
    const-string v0, "SettingActivity"

    const-string v1, "shakeItem"

    invoke-static {v0, v1}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget-object v0, p0, Lcom/douban/radio/app/SettingActivity$7;->this$0:Lcom/douban/radio/app/SettingActivity;

    #calls: Lcom/douban/radio/app/SettingActivity;->toggleShake()V
    invoke-static {v0}, Lcom/douban/radio/app/SettingActivity;->access$600(Lcom/douban/radio/app/SettingActivity;)V

    .line 337
    return-void
.end method
