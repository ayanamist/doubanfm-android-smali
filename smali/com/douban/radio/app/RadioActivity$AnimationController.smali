.class Lcom/douban/radio/app/RadioActivity$AnimationController;
.super Ljava/lang/Object;
.source "RadioActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/douban/radio/app/RadioActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimationController"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/douban/radio/app/RadioActivity;


# direct methods
.method private constructor <init>(Lcom/douban/radio/app/RadioActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1002
    iput-object p1, p0, Lcom/douban/radio/app/RadioActivity$AnimationController;->this$0:Lcom/douban/radio/app/RadioActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/douban/radio/app/RadioActivity;Lcom/douban/radio/app/RadioActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1002
    invoke-direct {p0, p1}, Lcom/douban/radio/app/RadioActivity$AnimationController;-><init>(Lcom/douban/radio/app/RadioActivity;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 1006
    const-string v0, "Anim"

    const-string v1, "end"

    invoke-static {v0, v1}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    iget-object v0, p0, Lcom/douban/radio/app/RadioActivity$AnimationController;->this$0:Lcom/douban/radio/app/RadioActivity;

    #getter for: Lcom/douban/radio/app/RadioActivity;->coverItem:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/douban/radio/app/RadioActivity;->access$1100(Lcom/douban/radio/app/RadioActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 1008
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1012
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 1016
    const-string v0, "Anim"

    const-string v1, "start"

    invoke-static {v0, v1}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    iget-object v0, p0, Lcom/douban/radio/app/RadioActivity$AnimationController;->this$0:Lcom/douban/radio/app/RadioActivity;

    #getter for: Lcom/douban/radio/app/RadioActivity;->coverItem:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/douban/radio/app/RadioActivity;->access$1100(Lcom/douban/radio/app/RadioActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 1018
    return-void
.end method
