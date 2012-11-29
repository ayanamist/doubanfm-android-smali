.class Lcom/douban/radio/app/RadioActivity$12;
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
    .line 506
    iput-object p1, p0, Lcom/douban/radio/app/RadioActivity$12;->this$0:Lcom/douban/radio/app/RadioActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 510
    const-string v0, "RadioActivity"

    const-string v1, "QUIT"

    invoke-static {v0, v1}, Lfm/douban/util/DBLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    iget-object v0, p0, Lcom/douban/radio/app/RadioActivity$12;->this$0:Lcom/douban/radio/app/RadioActivity;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lfm/douban/service/RadioService;->sendCommand(Landroid/content/Context;I)V

    .line 512
    iget-object v0, p0, Lcom/douban/radio/app/RadioActivity$12;->this$0:Lcom/douban/radio/app/RadioActivity;

    invoke-virtual {v0}, Lcom/douban/radio/app/RadioActivity;->finish()V

    .line 513
    return-void
.end method
