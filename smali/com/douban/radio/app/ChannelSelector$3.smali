.class Lcom/douban/radio/app/ChannelSelector$3;
.super Ljava/lang/Object;
.source "ChannelSelector.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/douban/radio/app/ChannelSelector;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/douban/radio/app/ChannelSelector;


# direct methods
.method constructor <init>(Lcom/douban/radio/app/ChannelSelector;)V
    .locals 0
    .parameter

    .prologue
    .line 185
    iput-object p1, p0, Lcom/douban/radio/app/ChannelSelector$3;->this$0:Lcom/douban/radio/app/ChannelSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/douban/radio/app/ChannelSelector$3;->this$0:Lcom/douban/radio/app/ChannelSelector;

    #getter for: Lcom/douban/radio/app/ChannelSelector;->isLogin:Z
    invoke-static {v0}, Lcom/douban/radio/app/ChannelSelector;->access$300(Lcom/douban/radio/app/ChannelSelector;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/douban/radio/app/ChannelSelector$3;->this$0:Lcom/douban/radio/app/ChannelSelector;

    const-string v1, "-3"

    #calls: Lcom/douban/radio/app/ChannelSelector;->select(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/douban/radio/app/ChannelSelector;->access$100(Lcom/douban/radio/app/ChannelSelector;Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/douban/radio/app/ChannelSelector$3;->this$0:Lcom/douban/radio/app/ChannelSelector;

    #calls: Lcom/douban/radio/app/ChannelSelector;->back()V
    invoke-static {v0}, Lcom/douban/radio/app/ChannelSelector;->access$200(Lcom/douban/radio/app/ChannelSelector;)V

    .line 196
    :goto_0
    return-void

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/douban/radio/app/ChannelSelector$3;->this$0:Lcom/douban/radio/app/ChannelSelector;

    const-string v1, "-3"

    #setter for: Lcom/douban/radio/app/ChannelSelector;->selectedIdForResult:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/douban/radio/app/ChannelSelector;->access$402(Lcom/douban/radio/app/ChannelSelector;Ljava/lang/String;)Ljava/lang/String;

    .line 194
    iget-object v0, p0, Lcom/douban/radio/app/ChannelSelector$3;->this$0:Lcom/douban/radio/app/ChannelSelector;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/douban/radio/app/ChannelSelector$3;->this$0:Lcom/douban/radio/app/ChannelSelector;

    const-class v3, Lcom/douban/radio/app/LoginActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v2, 0x3e9

    invoke-virtual {v0, v1, v2}, Lcom/douban/radio/app/ChannelSelector;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
