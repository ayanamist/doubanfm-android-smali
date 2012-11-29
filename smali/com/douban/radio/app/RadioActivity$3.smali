.class Lcom/douban/radio/app/RadioActivity$3;
.super Ljava/lang/Object;
.source "RadioActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


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
    .line 286
    iput-object p1, p0, Lcom/douban/radio/app/RadioActivity$3;->this$0:Lcom/douban/radio/app/RadioActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 299
    iget-object v0, p0, Lcom/douban/radio/app/RadioActivity$3;->this$0:Lcom/douban/radio/app/RadioActivity;

    #getter for: Lcom/douban/radio/app/RadioActivity;->coverItem:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/douban/radio/app/RadioActivity;->access$1100(Lcom/douban/radio/app/RadioActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 300
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 295
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 290
    iget-object v0, p0, Lcom/douban/radio/app/RadioActivity$3;->this$0:Lcom/douban/radio/app/RadioActivity;

    #getter for: Lcom/douban/radio/app/RadioActivity;->coverItem:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/douban/radio/app/RadioActivity;->access$1100(Lcom/douban/radio/app/RadioActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 291
    return-void
.end method
