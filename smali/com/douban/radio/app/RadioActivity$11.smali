.class Lcom/douban/radio/app/RadioActivity$11;
.super Ljava/lang/Object;
.source "RadioActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/douban/radio/app/RadioActivity;->initPlayer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/douban/radio/app/RadioActivity;


# direct methods
.method constructor <init>(Lcom/douban/radio/app/RadioActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 495
    iput-object p1, p0, Lcom/douban/radio/app/RadioActivity$11;->this$0:Lcom/douban/radio/app/RadioActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 499
    const-string v1, "RadioActivity"

    const-string v2, "SETTING"

    invoke-static {v1, v2}, Lfm/douban/util/DBLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/douban/radio/app/RadioActivity$11;->this$0:Lcom/douban/radio/app/RadioActivity;

    const-class v2, Lcom/douban/radio/app/SettingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 501
    .local v0, in:Landroid/content/Intent;
    sget-object v1, Lfm/douban/Consts;->INTENT_RADIO_STATE:Ljava/lang/String;

    iget-object v2, p0, Lcom/douban/radio/app/RadioActivity$11;->this$0:Lcom/douban/radio/app/RadioActivity;

    #getter for: Lcom/douban/radio/app/RadioActivity;->lastRadioState:Lfm/douban/service/RadioState;
    invoke-static {v2}, Lcom/douban/radio/app/RadioActivity;->access$700(Lcom/douban/radio/app/RadioActivity;)Lfm/douban/service/RadioState;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 502
    iget-object v1, p0, Lcom/douban/radio/app/RadioActivity$11;->this$0:Lcom/douban/radio/app/RadioActivity;

    invoke-virtual {v1, v0}, Lcom/douban/radio/app/RadioActivity;->startActivity(Landroid/content/Intent;)V

    .line 504
    return-void
.end method
