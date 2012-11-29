.class Lcom/douban/radio/app/RadioActivity$16;
.super Ljava/lang/Object;
.source "RadioActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/douban/radio/app/RadioActivity;
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
    .line 730
    iput-object p1, p0, Lcom/douban/radio/app/RadioActivity$16;->this$0:Lcom/douban/radio/app/RadioActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 733
    iget-object v0, p0, Lcom/douban/radio/app/RadioActivity$16;->this$0:Lcom/douban/radio/app/RadioActivity;

    #getter for: Lcom/douban/radio/app/RadioActivity;->songPicture:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/douban/radio/app/RadioActivity;->access$1600(Lcom/douban/radio/app/RadioActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/douban/radio/app/RadioActivity$16;->this$0:Lcom/douban/radio/app/RadioActivity;

    #getter for: Lcom/douban/radio/app/RadioActivity;->inAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/douban/radio/app/RadioActivity;->access$1500(Lcom/douban/radio/app/RadioActivity;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 734
    iget-object v0, p0, Lcom/douban/radio/app/RadioActivity$16;->this$0:Lcom/douban/radio/app/RadioActivity;

    #getter for: Lcom/douban/radio/app/RadioActivity;->songPicture:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/douban/radio/app/RadioActivity;->access$1600(Lcom/douban/radio/app/RadioActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 735
    return-void
.end method
