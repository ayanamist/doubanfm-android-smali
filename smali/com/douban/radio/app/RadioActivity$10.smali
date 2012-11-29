.class Lcom/douban/radio/app/RadioActivity$10;
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
    .line 484
    iput-object p1, p0, Lcom/douban/radio/app/RadioActivity$10;->this$0:Lcom/douban/radio/app/RadioActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 488
    iget-object v0, p0, Lcom/douban/radio/app/RadioActivity$10;->this$0:Lcom/douban/radio/app/RadioActivity;

    #getter for: Lcom/douban/radio/app/RadioActivity;->menuList:Landroid/view/View;
    invoke-static {v0}, Lcom/douban/radio/app/RadioActivity;->access$1300(Lcom/douban/radio/app/RadioActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/douban/radio/app/RadioActivity$10;->this$0:Lcom/douban/radio/app/RadioActivity;

    #calls: Lcom/douban/radio/app/RadioActivity;->hideTopMenu()V
    invoke-static {v0}, Lcom/douban/radio/app/RadioActivity;->access$500(Lcom/douban/radio/app/RadioActivity;)V

    .line 493
    :goto_0
    return-void

    .line 491
    :cond_0
    iget-object v0, p0, Lcom/douban/radio/app/RadioActivity$10;->this$0:Lcom/douban/radio/app/RadioActivity;

    #calls: Lcom/douban/radio/app/RadioActivity;->showTopMenu()V
    invoke-static {v0}, Lcom/douban/radio/app/RadioActivity;->access$1400(Lcom/douban/radio/app/RadioActivity;)V

    goto :goto_0
.end method
