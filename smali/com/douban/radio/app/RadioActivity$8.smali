.class Lcom/douban/radio/app/RadioActivity$8;
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
    .line 445
    iput-object p1, p0, Lcom/douban/radio/app/RadioActivity$8;->this$0:Lcom/douban/radio/app/RadioActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 449
    iget-object v0, p0, Lcom/douban/radio/app/RadioActivity$8;->this$0:Lcom/douban/radio/app/RadioActivity;

    #getter for: Lcom/douban/radio/app/RadioActivity;->lastRadioState:Lfm/douban/service/RadioState;
    invoke-static {v0}, Lcom/douban/radio/app/RadioActivity;->access$700(Lcom/douban/radio/app/RadioActivity;)Lfm/douban/service/RadioState;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/douban/radio/app/RadioActivity$8;->this$0:Lcom/douban/radio/app/RadioActivity;

    #getter for: Lcom/douban/radio/app/RadioActivity;->lastRadioState:Lfm/douban/service/RadioState;
    invoke-static {v0}, Lcom/douban/radio/app/RadioActivity;->access$700(Lcom/douban/radio/app/RadioActivity;)Lfm/douban/service/RadioState;

    move-result-object v0

    iget-boolean v0, v0, Lfm/douban/service/RadioState;->isPaused:Z

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/douban/radio/app/RadioActivity$8;->this$0:Lcom/douban/radio/app/RadioActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lfm/douban/service/RadioService;->sendCommand(Landroid/content/Context;I)V

    .line 455
    :cond_0
    return-void
.end method
