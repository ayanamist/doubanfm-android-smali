.class Lcom/douban/radio/app/RadioActivity$9;
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
    .line 474
    iput-object p1, p0, Lcom/douban/radio/app/RadioActivity$9;->this$0:Lcom/douban/radio/app/RadioActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 478
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/douban/radio/app/RadioActivity$9;->this$0:Lcom/douban/radio/app/RadioActivity;

    const-class v2, Lcom/douban/radio/app/ChannelSelector;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 479
    .local v0, i:Landroid/content/Intent;
    const-string v1, "channel_now"

    iget-object v2, p0, Lcom/douban/radio/app/RadioActivity$9;->this$0:Lcom/douban/radio/app/RadioActivity;

    #getter for: Lcom/douban/radio/app/RadioActivity;->lastRadioState:Lfm/douban/service/RadioState;
    invoke-static {v2}, Lcom/douban/radio/app/RadioActivity;->access$700(Lcom/douban/radio/app/RadioActivity;)Lfm/douban/service/RadioState;

    move-result-object v2

    iget-object v2, v2, Lfm/douban/service/RadioState;->channelId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 480
    iget-object v1, p0, Lcom/douban/radio/app/RadioActivity$9;->this$0:Lcom/douban/radio/app/RadioActivity;

    const/16 v2, 0x3eb

    invoke-virtual {v1, v0, v2}, Lcom/douban/radio/app/RadioActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 481
    return-void
.end method
