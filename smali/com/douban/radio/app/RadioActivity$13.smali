.class Lcom/douban/radio/app/RadioActivity$13;
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
    .line 516
    iput-object p1, p0, Lcom/douban/radio/app/RadioActivity$13;->this$0:Lcom/douban/radio/app/RadioActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 521
    iget-object v1, p0, Lcom/douban/radio/app/RadioActivity$13;->this$0:Lcom/douban/radio/app/RadioActivity;

    #getter for: Lcom/douban/radio/app/RadioActivity;->lastRadioState:Lfm/douban/service/RadioState;
    invoke-static {v1}, Lcom/douban/radio/app/RadioActivity;->access$700(Lcom/douban/radio/app/RadioActivity;)Lfm/douban/service/RadioState;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/douban/radio/app/RadioActivity$13;->this$0:Lcom/douban/radio/app/RadioActivity;

    #getter for: Lcom/douban/radio/app/RadioActivity;->lastRadioState:Lfm/douban/service/RadioState;
    invoke-static {v1}, Lcom/douban/radio/app/RadioActivity;->access$700(Lcom/douban/radio/app/RadioActivity;)Lfm/douban/service/RadioState;

    move-result-object v1

    iget-object v1, v1, Lfm/douban/service/RadioState;->song:Lfm/douban/model/Song;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/douban/radio/app/RadioActivity$13;->this$0:Lcom/douban/radio/app/RadioActivity;

    #getter for: Lcom/douban/radio/app/RadioActivity;->lastRadioState:Lfm/douban/service/RadioState;
    invoke-static {v1}, Lcom/douban/radio/app/RadioActivity;->access$700(Lcom/douban/radio/app/RadioActivity;)Lfm/douban/service/RadioState;

    move-result-object v1

    iget-object v1, v1, Lfm/douban/service/RadioState;->song:Lfm/douban/model/Song;

    iget-object v1, v1, Lfm/douban/model/Song;->song_id:Ljava/lang/String;

    const-string v2, "d"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 524
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/douban/radio/app/RadioActivity$13;->this$0:Lcom/douban/radio/app/RadioActivity;

    const-class v2, Lcom/douban/radio/app/ShareActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 525
    .local v0, it:Landroid/content/Intent;
    const-string v1, "state"

    iget-object v2, p0, Lcom/douban/radio/app/RadioActivity$13;->this$0:Lcom/douban/radio/app/RadioActivity;

    #getter for: Lcom/douban/radio/app/RadioActivity;->lastRadioState:Lfm/douban/service/RadioState;
    invoke-static {v2}, Lcom/douban/radio/app/RadioActivity;->access$700(Lcom/douban/radio/app/RadioActivity;)Lfm/douban/service/RadioState;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 526
    iget-object v1, p0, Lcom/douban/radio/app/RadioActivity$13;->this$0:Lcom/douban/radio/app/RadioActivity;

    invoke-virtual {v1, v0}, Lcom/douban/radio/app/RadioActivity;->startActivity(Landroid/content/Intent;)V

    .line 528
    .end local v0           #it:Landroid/content/Intent;
    :cond_0
    return-void
.end method
