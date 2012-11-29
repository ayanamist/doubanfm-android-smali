.class Lcom/douban/radio/app/Warning$12;
.super Ljava/lang/Object;
.source "Warning.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 229
    iput-object p1, p0, Lcom/douban/radio/app/Warning$12;->this$0:Lcom/douban/radio/app/Warning;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 231
    iget-object v0, p0, Lcom/douban/radio/app/Warning$12;->this$0:Lcom/douban/radio/app/Warning;

    const/4 v1, 0x1

    #setter for: Lcom/douban/radio/app/Warning;->quit:Z
    invoke-static {v0, v1}, Lcom/douban/radio/app/Warning;->access$102(Lcom/douban/radio/app/Warning;Z)Z

    .line 232
    iget-object v0, p0, Lcom/douban/radio/app/Warning$12;->this$0:Lcom/douban/radio/app/Warning;

    #calls: Lcom/douban/radio/app/Warning;->sendQuit()V
    invoke-static {v0}, Lcom/douban/radio/app/Warning;->access$300(Lcom/douban/radio/app/Warning;)V

    .line 233
    iget-object v0, p0, Lcom/douban/radio/app/Warning$12;->this$0:Lcom/douban/radio/app/Warning;

    invoke-virtual {v0}, Lcom/douban/radio/app/Warning;->finish()V

    .line 234
    return-void
.end method
