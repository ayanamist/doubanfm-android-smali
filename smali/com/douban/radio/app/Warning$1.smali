.class Lcom/douban/radio/app/Warning$1;
.super Ljava/lang/Object;
.source "Warning.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/douban/radio/app/Warning;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/douban/radio/app/Warning;


# direct methods
.method constructor <init>(Lcom/douban/radio/app/Warning;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/douban/radio/app/Warning$1;->this$0:Lcom/douban/radio/app/Warning;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v5, 0x3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 94
    const-string v2, "DB_Waring"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onKeyDown keyCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 96
    const-string v2, "DB_Waring"

    const-string v3, "onKeyDown KEYCODE_BACK"

    invoke-static {v2, v3}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v2, p0, Lcom/douban/radio/app/Warning$1;->this$0:Lcom/douban/radio/app/Warning;

    #getter for: Lcom/douban/radio/app/Warning;->code:I
    invoke-static {v2}, Lcom/douban/radio/app/Warning;->access$000(Lcom/douban/radio/app/Warning;)I

    move-result v2

    if-eq v2, v5, :cond_0

    iget-object v2, p0, Lcom/douban/radio/app/Warning$1;->this$0:Lcom/douban/radio/app/Warning;

    #getter for: Lcom/douban/radio/app/Warning;->code:I
    invoke-static {v2}, Lcom/douban/radio/app/Warning;->access$000(Lcom/douban/radio/app/Warning;)I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1

    .line 98
    :cond_0
    iget-object v2, p0, Lcom/douban/radio/app/Warning$1;->this$0:Lcom/douban/radio/app/Warning;

    #setter for: Lcom/douban/radio/app/Warning;->quit:Z
    invoke-static {v2, v1}, Lcom/douban/radio/app/Warning;->access$102(Lcom/douban/radio/app/Warning;Z)Z

    .line 99
    iget-object v1, p0, Lcom/douban/radio/app/Warning$1;->this$0:Lcom/douban/radio/app/Warning;

    #calls: Lcom/douban/radio/app/Warning;->sendResume()V
    invoke-static {v1}, Lcom/douban/radio/app/Warning;->access$200(Lcom/douban/radio/app/Warning;)V

    .line 101
    :cond_1
    iget-object v1, p0, Lcom/douban/radio/app/Warning$1;->this$0:Lcom/douban/radio/app/Warning;

    invoke-virtual {v1}, Lcom/douban/radio/app/Warning;->finish()V

    .line 108
    :cond_2
    :goto_0
    return v0

    .line 103
    :cond_3
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x54

    if-eq v2, v3, :cond_2

    .line 105
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    if-ne v0, v5, :cond_4

    :cond_4
    move v0, v1

    .line 108
    goto :goto_0
.end method
