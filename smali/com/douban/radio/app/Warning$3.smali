.class Lcom/douban/radio/app/Warning$3;
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
    .line 129
    iput-object p1, p0, Lcom/douban/radio/app/Warning$3;->this$0:Lcom/douban/radio/app/Warning;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 131
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 132
    const-string v0, "DB_Waring"

    const-string v1, "onKey"

    invoke-static {v0, v1}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v0, p0, Lcom/douban/radio/app/Warning$3;->this$0:Lcom/douban/radio/app/Warning;

    const/4 v1, 0x0

    #setter for: Lcom/douban/radio/app/Warning;->quit:Z
    invoke-static {v0, v1}, Lcom/douban/radio/app/Warning;->access$102(Lcom/douban/radio/app/Warning;Z)Z

    .line 134
    iget-object v0, p0, Lcom/douban/radio/app/Warning$3;->this$0:Lcom/douban/radio/app/Warning;

    #calls: Lcom/douban/radio/app/Warning;->sendQuit()V
    invoke-static {v0}, Lcom/douban/radio/app/Warning;->access$300(Lcom/douban/radio/app/Warning;)V

    .line 135
    iget-object v0, p0, Lcom/douban/radio/app/Warning$3;->this$0:Lcom/douban/radio/app/Warning;

    invoke-virtual {v0}, Lcom/douban/radio/app/Warning;->finish()V

    .line 137
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
