.class Lfm/douban/view/FlipGallery$1;
.super Landroid/os/Handler;
.source "FlipGallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfm/douban/view/FlipGallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lfm/douban/view/FlipGallery;


# direct methods
.method constructor <init>(Lfm/douban/view/FlipGallery;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lfm/douban/view/FlipGallery$1;->this$0:Lfm/douban/view/FlipGallery;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 32
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x4d2

    if-ne v2, v3, :cond_1

    .line 33
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 34
    .local v0, rotation:I
    mul-int/lit16 v2, v0, 0xff

    div-int/lit8 v1, v2, 0x3c

    .line 35
    .local v1, x:I
    iget-object v2, p0, Lfm/douban/view/FlipGallery$1;->this$0:Lfm/douban/view/FlipGallery;

    #calls: Lfm/douban/view/FlipGallery;->showNextView(I)V
    invoke-static {v2, v1}, Lfm/douban/view/FlipGallery;->access$000(Lfm/douban/view/FlipGallery;I)V

    .line 39
    .end local v0           #rotation:I
    .end local v1           #x:I
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 40
    return-void

    .line 36
    :cond_1
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x4d3

    if-ne v2, v3, :cond_0

    .line 37
    iget-object v2, p0, Lfm/douban/view/FlipGallery$1;->this$0:Lfm/douban/view/FlipGallery;

    const/4 v3, 0x0

    #calls: Lfm/douban/view/FlipGallery;->showNextView(I)V
    invoke-static {v2, v3}, Lfm/douban/view/FlipGallery;->access$000(Lfm/douban/view/FlipGallery;I)V

    goto :goto_0
.end method
