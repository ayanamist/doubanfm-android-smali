.class Lcom/douban/radio/app/RadioActivity$6;
.super Ljava/lang/Object;
.source "RadioActivity.java"

# interfaces
.implements Lfm/douban/view/FlipGallery$MyCallBack;


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
    .line 384
    iput-object p1, p0, Lcom/douban/radio/app/RadioActivity$6;->this$0:Lcom/douban/radio/app/RadioActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public endPicLoading()V
    .locals 0

    .prologue
    .line 402
    return-void
.end method

.method public loadNextImg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 397
    const/4 v0, 0x0

    return-object v0
.end method

.method public loadPreImg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 392
    const/4 v0, 0x0

    return-object v0
.end method

.method public setPicLoading()V
    .locals 2

    .prologue
    .line 387
    iget-object v0, p0, Lcom/douban/radio/app/RadioActivity$6;->this$0:Lcom/douban/radio/app/RadioActivity;

    #getter for: Lcom/douban/radio/app/RadioActivity;->switchHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/douban/radio/app/RadioActivity;->access$1200(Lcom/douban/radio/app/RadioActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xd05

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 388
    return-void
.end method
