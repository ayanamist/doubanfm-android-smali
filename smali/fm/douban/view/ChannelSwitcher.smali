.class public Lfm/douban/view/ChannelSwitcher;
.super Landroid/widget/HorizontalScrollView;
.source "ChannelSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfm/douban/view/ChannelSwitcher$SwitcherListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DB_ChannelSwitcher"

#the value of this static final field might be set in the static constructor
.field private static final UNIQUE:I = 0x0

.field private static final paddingRate:F = 0.6f


# instance fields
.field private MAX_SIZE:I

.field private MIN_SIZE:I

.field private centerL:I

.field private centerLL:I

.field private centerR:I

.field private centerRR:I

.field private centerX:I

.field private channelNum:I

.field private channels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lfm/douban/model/Channel;",
            ">;"
        }
    .end annotation
.end field

.field private container:Landroid/widget/LinearLayout;

.field private containerParams:Landroid/widget/LinearLayout$LayoutParams;

.field private context:Landroid/content/Context;

.field private displayWidth:I

.field private edgePadding:I

.field private enabled:Z

.field private english:Z

.field private index:I

.field private indexLeft:I

.field private indexRight:I

.field private inited:Z

.field private itemHeight:I

.field private itemParams:Landroid/widget/LinearLayout$LayoutParams;

.field private itemWidth:I

.field private items:[Landroid/widget/LinearLayout;

.field private layouted:Z

.field private leftEdge:I

.field private mhzViews:[Landroid/widget/TextView;

.field private padding_channel_num:I

.field private params:Landroid/widget/LinearLayout$LayoutParams;

.field reachLeft:Z

.field reachRight:Z

.field private rightEdge:I

.field private showNum:I

.field private switcherListener:Lfm/douban/view/ChannelSwitcher$SwitcherListener;

.field private threshold:I

.field private titleViews:[Landroid/widget/TextView;

.field private wingNum:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "#D3C4A4"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lfm/douban/view/ChannelSwitcher;->UNIQUE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 78
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lfm/douban/view/ChannelSwitcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lfm/douban/view/ChannelSwitcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "ctx"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 87
    iput-object p1, p0, Lfm/douban/view/ChannelSwitcher;->context:Landroid/content/Context;

    .line 88
    iput-boolean v1, p0, Lfm/douban/view/ChannelSwitcher;->inited:Z

    .line 89
    iput-boolean v1, p0, Lfm/douban/view/ChannelSwitcher;->layouted:Z

    .line 90
    iput-boolean v1, p0, Lfm/douban/view/ChannelSwitcher;->reachLeft:Z

    .line 91
    iput-boolean v1, p0, Lfm/douban/view/ChannelSwitcher;->reachRight:Z

    .line 92
    const/4 v0, 0x3

    iput v0, p0, Lfm/douban/view/ChannelSwitcher;->showNum:I

    .line 93
    iget v0, p0, Lfm/douban/view/ChannelSwitcher;->showNum:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lfm/douban/view/ChannelSwitcher;->wingNum:I

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfm/douban/view/ChannelSwitcher;->channels:Ljava/util/ArrayList;

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfm/douban/view/ChannelSwitcher;->enabled:Z

    .line 96
    iput-boolean v1, p0, Lfm/douban/view/ChannelSwitcher;->english:Z

    .line 97
    return-void
.end method

.method private fitToSlot()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    .line 412
    invoke-virtual {p0}, Lfm/douban/view/ChannelSwitcher;->getScrollX()I

    move-result v8

    .line 413
    .local v8, x:I
    const/4 v0, 0x0

    .line 414
    .local v0, cx:I
    const/4 v7, 0x0

    .line 415
    .local v7, to:I
    const/4 v1, 0x0

    .line 416
    .local v1, dis:I
    iget v5, p0, Lfm/douban/view/ChannelSwitcher;->indexRight:I

    .line 417
    .local v5, newIndex:I
    iget v3, p0, Lfm/douban/view/ChannelSwitcher;->index:I

    .line 418
    .local v3, id:I
    const-string v9, "DB_ChannelSwitcher"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "items len="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lfm/douban/view/ChannelSwitcher;->items:[Landroid/widget/LinearLayout;

    array-length v11, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lfm/douban/util/DBLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    const/4 v2, 0x0

    .line 420
    .local v2, i:I
    const/4 v2, 0x0

    :goto_0
    iget v9, p0, Lfm/douban/view/ChannelSwitcher;->channelNum:I

    if-ge v2, v9, :cond_0

    .line 421
    iget-object v9, p0, Lfm/douban/view/ChannelSwitcher;->items:[Landroid/widget/LinearLayout;

    iget v10, p0, Lfm/douban/view/ChannelSwitcher;->wingNum:I

    add-int/2addr v10, v2

    aget-object v4, v9, v10

    .line 422
    .local v4, l:Landroid/widget/LinearLayout;
    const-string v9, "DB_ChannelSwitcher"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "i="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " item="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lfm/douban/view/ChannelSwitcher;->wingNum:I

    add-int/2addr v11, v2

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lfm/douban/util/DBLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v9

    iget v10, p0, Lfm/douban/view/ChannelSwitcher;->itemWidth:I

    div-int/lit8 v10, v10, 0x2

    add-int v0, v9, v10

    .line 424
    const-string v9, "DB_ChannelSwitcher"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "cx = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "l="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "+"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lfm/douban/util/DBLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 426
    .local v6, temp:Ljava/lang/Integer;
    if-eqz v6, :cond_1

    .line 427
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 428
    const-string v9, "DB_ChannelSwitcher"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "tag="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", old index="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lfm/douban/view/ChannelSwitcher;->index:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lfm/douban/util/DBLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    :goto_1
    sub-int v9, v0, v8

    iget v10, p0, Lfm/douban/view/ChannelSwitcher;->centerX:I

    if-le v9, v10, :cond_3

    .line 434
    sub-int v9, v0, v8

    iget v10, p0, Lfm/douban/view/ChannelSwitcher;->centerX:I

    sub-int v1, v9, v10

    .line 435
    iget v9, p0, Lfm/douban/view/ChannelSwitcher;->threshold:I

    if-ge v1, v9, :cond_2

    .line 436
    add-int v7, v8, v1

    .line 437
    move v5, v3

    .line 438
    const-string v9, "DB_ChannelSwitcher"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "left new index="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lfm/douban/util/DBLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    :goto_2
    const-string v9, "DB_ChannelSwitcher"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "to="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lfm/douban/util/DBLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    const-string v9, "DB_ChannelSwitcher"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "after cx="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int v11, v0, v7

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", center="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lfm/douban/view/ChannelSwitcher;->centerX:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lfm/douban/util/DBLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    .end local v4           #l:Landroid/widget/LinearLayout;
    .end local v6           #temp:Ljava/lang/Integer;
    :cond_0
    const-string v9, "DB_ChannelSwitcher"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "fit to slot newIndex="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "i = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lfm/douban/util/DBLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    invoke-direct {p0, v5, v12, v12}, Lfm/douban/view/ChannelSwitcher;->setTextView(IZZ)V

    .line 452
    return-void

    .line 430
    .restart local v4       #l:Landroid/widget/LinearLayout;
    .restart local v6       #temp:Ljava/lang/Integer;
    :cond_1
    const-string v9, "DB_ChannelSwitcher"

    const-string v10, "tag=null"

    invoke-static {v9, v10}, Lfm/douban/util/DBLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 440
    :cond_2
    iget v9, p0, Lfm/douban/view/ChannelSwitcher;->centerR:I

    iget v10, p0, Lfm/douban/view/ChannelSwitcher;->centerX:I

    sub-int/2addr v9, v10

    sub-int/2addr v9, v1

    sub-int v7, v8, v9

    .line 441
    add-int/lit8 v5, v3, -0x1

    .line 442
    const-string v9, "DB_ChannelSwitcher"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "right new index="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lfm/douban/util/DBLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 420
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0
.end method

.method private getChannelIndex(Lfm/douban/model/Channel;)I
    .locals 4
    .parameter "c"

    .prologue
    .line 375
    const/4 v0, -0x1

    .line 376
    .local v0, i:I
    iget-boolean v1, p0, Lfm/douban/view/ChannelSwitcher;->inited:Z

    if-eqz v1, :cond_0

    .line 377
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lfm/douban/view/ChannelSwitcher;->channelNum:I

    if-ge v0, v1, :cond_0

    .line 378
    iget-object v1, p0, Lfm/douban/view/ChannelSwitcher;->channels:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfm/douban/model/Channel;

    invoke-virtual {v1, p1}, Lfm/douban/model/Channel;->equals(Lfm/douban/model/Channel;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 382
    :cond_0
    const-string v1, "DB_ChannelSwitcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get Channel "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lfm/douban/model/Channel;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lfm/douban/model/Channel;->channel_id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lfm/douban/util/DBLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    return v0

    .line 377
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private scrollToIndex(IZ)V
    .locals 6
    .parameter "i"
    .parameter "smooth"

    .prologue
    const/4 v5, 0x0

    .line 309
    iget v1, p0, Lfm/douban/view/ChannelSwitcher;->leftEdge:I

    iget v2, p0, Lfm/douban/view/ChannelSwitcher;->itemWidth:I

    iget v3, p0, Lfm/douban/view/ChannelSwitcher;->index:I

    iget v4, p0, Lfm/douban/view/ChannelSwitcher;->wingNum:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    mul-int/2addr v2, v3

    add-int v0, v1, v2

    .line 310
    .local v0, to:I
    if-eqz p2, :cond_0

    .line 311
    invoke-virtual {p0, v0, v5}, Lfm/douban/view/ChannelSwitcher;->smoothScrollTo(II)V

    .line 315
    :goto_0
    return-void

    .line 313
    :cond_0
    invoke-virtual {p0, v0, v5}, Lfm/douban/view/ChannelSwitcher;->scrollTo(II)V

    goto :goto_0
.end method

.method private setTextView(IZZ)V
    .locals 9
    .parameter "newIndex"
    .parameter "playerSwitch"
    .parameter "setTitleColor"

    .prologue
    .line 318
    const-string v5, "DB_ChannelSwitcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setTextView newIndex="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lfm/douban/util/DBLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iget v5, p0, Lfm/douban/view/ChannelSwitcher;->indexLeft:I

    if-lt p1, v5, :cond_8

    iget v5, p0, Lfm/douban/view/ChannelSwitcher;->indexRight:I

    if-gt p1, v5, :cond_8

    .line 321
    if-eqz p2, :cond_0

    iget v5, p0, Lfm/douban/view/ChannelSwitcher;->index:I

    if-eq v5, p1, :cond_0

    .line 322
    iget-object v6, p0, Lfm/douban/view/ChannelSwitcher;->switcherListener:Lfm/douban/view/ChannelSwitcher$SwitcherListener;

    iget-object v5, p0, Lfm/douban/view/ChannelSwitcher;->channels:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lfm/douban/model/Channel;

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v6, v5, v7}, Lfm/douban/view/ChannelSwitcher$SwitcherListener;->onChangeChannle(Lfm/douban/model/Channel;Ljava/lang/Boolean;)V

    .line 324
    :cond_0
    iput p1, p0, Lfm/douban/view/ChannelSwitcher;->index:I

    .line 325
    iget-boolean v5, p0, Lfm/douban/view/ChannelSwitcher;->layouted:Z

    if-eqz v5, :cond_1

    .line 326
    iget v5, p0, Lfm/douban/view/ChannelSwitcher;->index:I

    const/4 v6, 0x1

    invoke-direct {p0, v5, v6}, Lfm/douban/view/ChannelSwitcher;->scrollToIndex(IZ)V

    .line 331
    :cond_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget v5, p0, Lfm/douban/view/ChannelSwitcher;->channelNum:I

    if-ge v2, v5, :cond_5

    .line 332
    iget-object v5, p0, Lfm/douban/view/ChannelSwitcher;->titleViews:[Landroid/widget/TextView;

    aget-object v4, v5, v2

    .line 333
    .local v4, tv:Landroid/widget/TextView;
    if-eqz p3, :cond_2

    iget v5, p0, Lfm/douban/view/ChannelSwitcher;->index:I

    if-ne v5, v2, :cond_2

    .line 334
    sget v5, Lfm/douban/view/ChannelSwitcher;->UNIQUE:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 338
    :goto_1
    iget v5, p0, Lfm/douban/view/ChannelSwitcher;->index:I

    sub-int/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 339
    .local v0, dis:I
    const/4 v1, 0x0

    .line 340
    .local v1, font_size:I
    iget v5, p0, Lfm/douban/view/ChannelSwitcher;->wingNum:I

    if-ge v0, v5, :cond_3

    .line 341
    iget v5, p0, Lfm/douban/view/ChannelSwitcher;->MIN_SIZE:I

    iget v6, p0, Lfm/douban/view/ChannelSwitcher;->MAX_SIZE:I

    iget v7, p0, Lfm/douban/view/ChannelSwitcher;->MIN_SIZE:I

    sub-int/2addr v6, v7

    iget v7, p0, Lfm/douban/view/ChannelSwitcher;->wingNum:I

    sub-int/2addr v7, v0

    mul-int/2addr v6, v7

    int-to-float v6, v6

    const/high16 v7, 0x3f80

    mul-float/2addr v6, v7

    iget v7, p0, Lfm/douban/view/ChannelSwitcher;->wingNum:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    float-to-int v6, v6

    add-int v1, v5, v6

    .line 345
    :goto_2
    const/4 v5, 0x2

    int-to-float v6, v1

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 346
    iget-object v5, p0, Lfm/douban/view/ChannelSwitcher;->mhzViews:[Landroid/widget/TextView;

    aget-object v3, v5, v2

    .line 347
    .local v3, m:Landroid/widget/TextView;
    iget v5, p0, Lfm/douban/view/ChannelSwitcher;->index:I

    if-ne v5, v2, :cond_4

    sget v5, Lfm/douban/view/ChannelSwitcher;->UNIQUE:I

    :goto_3
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 348
    const/4 v5, 0x2

    iget v6, p0, Lfm/douban/view/ChannelSwitcher;->MIN_SIZE:I

    int-to-float v6, v6

    invoke-virtual {v3, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 349
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 350
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 331
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 336
    .end local v0           #dis:I
    .end local v1           #font_size:I
    .end local v3           #m:Landroid/widget/TextView;
    :cond_2
    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 343
    .restart local v0       #dis:I
    .restart local v1       #font_size:I
    :cond_3
    iget v1, p0, Lfm/douban/view/ChannelSwitcher;->MIN_SIZE:I

    goto :goto_2

    .line 347
    .restart local v3       #m:Landroid/widget/TextView;
    :cond_4
    const/4 v5, -0x1

    goto :goto_3

    .line 353
    .end local v0           #dis:I
    .end local v1           #font_size:I
    .end local v3           #m:Landroid/widget/TextView;
    .end local v4           #tv:Landroid/widget/TextView;
    :cond_5
    iget-object v5, p0, Lfm/douban/view/ChannelSwitcher;->titleViews:[Landroid/widget/TextView;

    array-length v5, v5

    const/4 v6, 0x2

    if-le v5, v6, :cond_9

    .line 354
    iget v5, p0, Lfm/douban/view/ChannelSwitcher;->index:I

    iget v6, p0, Lfm/douban/view/ChannelSwitcher;->indexLeft:I

    iget v7, p0, Lfm/douban/view/ChannelSwitcher;->padding_channel_num:I

    add-int/2addr v6, v7

    if-le v5, v6, :cond_6

    .line 355
    iget-object v5, p0, Lfm/douban/view/ChannelSwitcher;->titleViews:[Landroid/widget/TextView;

    iget v6, p0, Lfm/douban/view/ChannelSwitcher;->index:I

    iget v7, p0, Lfm/douban/view/ChannelSwitcher;->wingNum:I

    sub-int/2addr v6, v7

    aget-object v5, v5, v6

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 356
    const-string v5, "HIDE"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setTitle hide "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lfm/douban/view/ChannelSwitcher;->index:I

    iget v8, p0, Lfm/douban/view/ChannelSwitcher;->wingNum:I

    sub-int/2addr v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lfm/douban/util/DBLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :cond_6
    iget v5, p0, Lfm/douban/view/ChannelSwitcher;->index:I

    iget v6, p0, Lfm/douban/view/ChannelSwitcher;->indexRight:I

    iget v7, p0, Lfm/douban/view/ChannelSwitcher;->padding_channel_num:I

    sub-int/2addr v6, v7

    if-ge v5, v6, :cond_7

    .line 359
    iget-object v5, p0, Lfm/douban/view/ChannelSwitcher;->mhzViews:[Landroid/widget/TextView;

    iget v6, p0, Lfm/douban/view/ChannelSwitcher;->index:I

    iget v7, p0, Lfm/douban/view/ChannelSwitcher;->wingNum:I

    add-int/2addr v6, v7

    aget-object v5, v5, v6

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 360
    :cond_7
    const-string v5, "DB_ChannelSwitcher"

    const-string v6, "setTextView done"

    invoke-static {v5, v6}, Lfm/douban/util/DBLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    .end local v2           #i:I
    :cond_8
    :goto_4
    return-void

    .line 361
    .restart local v2       #i:I
    :cond_9
    iget-object v5, p0, Lfm/douban/view/ChannelSwitcher;->titleViews:[Landroid/widget/TextView;

    array-length v5, v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_8

    .line 362
    iget v5, p0, Lfm/douban/view/ChannelSwitcher;->index:I

    if-lez v5, :cond_a

    .line 363
    iget-object v5, p0, Lfm/douban/view/ChannelSwitcher;->titleViews:[Landroid/widget/TextView;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 366
    :cond_a
    iget v5, p0, Lfm/douban/view/ChannelSwitcher;->index:I

    if-nez v5, :cond_8

    .line 367
    iget-object v5, p0, Lfm/douban/view/ChannelSwitcher;->mhzViews:[Landroid/widget/TextView;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4
.end method

.method private zoomTextView(I)V
    .locals 13
    .parameter "x"

    .prologue
    const/4 v12, 0x0

    const/4 v11, -0x1

    .line 456
    const/4 v0, 0x0

    .line 457
    .local v0, cx:I
    const/4 v1, 0x0

    .line 458
    .local v1, fontSize:F
    iget v4, p0, Lfm/douban/view/ChannelSwitcher;->MAX_SIZE:I

    .line 459
    .local v4, max:I
    iget v5, p0, Lfm/douban/view/ChannelSwitcher;->MIN_SIZE:I

    .line 460
    .local v5, min:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget v6, p0, Lfm/douban/view/ChannelSwitcher;->channelNum:I

    if-ge v2, v6, :cond_1

    .line 461
    iget-object v6, p0, Lfm/douban/view/ChannelSwitcher;->items:[Landroid/widget/LinearLayout;

    iget v7, p0, Lfm/douban/view/ChannelSwitcher;->wingNum:I

    add-int/2addr v7, v2

    aget-object v3, v6, v7

    .line 462
    .local v3, l:Landroid/widget/LinearLayout;
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v6

    iget v7, p0, Lfm/douban/view/ChannelSwitcher;->itemWidth:I

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    sub-int v0, v6, p1

    .line 464
    iget-object v6, p0, Lfm/douban/view/ChannelSwitcher;->titleViews:[Landroid/widget/TextView;

    aget-object v6, v6, v2

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 465
    iget-object v6, p0, Lfm/douban/view/ChannelSwitcher;->mhzViews:[Landroid/widget/TextView;

    aget-object v6, v6, v2

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 466
    iget v6, p0, Lfm/douban/view/ChannelSwitcher;->centerLL:I

    if-lt v0, v6, :cond_0

    iget v6, p0, Lfm/douban/view/ChannelSwitcher;->centerRR:I

    if-gt v0, v6, :cond_0

    .line 467
    int-to-float v6, v4

    sub-int v7, v4, v5

    int-to-float v7, v7

    iget v8, p0, Lfm/douban/view/ChannelSwitcher;->centerX:I

    sub-int/2addr v8, v0

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x3f80

    mul-float/2addr v8, v9

    iget v9, p0, Lfm/douban/view/ChannelSwitcher;->centerRR:I

    iget v10, p0, Lfm/douban/view/ChannelSwitcher;->centerX:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    div-float/2addr v8, v9

    mul-float/2addr v7, v8

    sub-float v1, v6, v7

    .line 468
    iget-object v6, p0, Lfm/douban/view/ChannelSwitcher;->titleViews:[Landroid/widget/TextView;

    aget-object v6, v6, v2

    const/4 v7, 0x2

    invoke-virtual {v6, v7, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 469
    iget-object v6, p0, Lfm/douban/view/ChannelSwitcher;->titleViews:[Landroid/widget/TextView;

    aget-object v6, v6, v2

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 470
    iget-object v6, p0, Lfm/douban/view/ChannelSwitcher;->mhzViews:[Landroid/widget/TextView;

    aget-object v6, v6, v2

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 460
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 473
    .end local v3           #l:Landroid/widget/LinearLayout;
    :cond_1
    return-void
.end method


# virtual methods
.method public enable(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 290
    iput-boolean p1, p0, Lfm/douban/view/ChannelSwitcher;->enabled:Z

    .line 291
    return-void
.end method

.method public init(Lfm/douban/model/Channel;I[Lfm/douban/model/Channel;Lfm/douban/view/ChannelSwitcher$SwitcherListener;)V
    .locals 6
    .parameter "c"
    .parameter "n"
    .parameter "chs"
    .parameter "sl"

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x2

    .line 108
    iget-boolean v1, p0, Lfm/douban/view/ChannelSwitcher;->inited:Z

    if-eqz v1, :cond_0

    .line 150
    :goto_0
    return-void

    .line 111
    :cond_0
    invoke-virtual {p0, p4}, Lfm/douban/view/ChannelSwitcher;->setSwitcherListener(Lfm/douban/view/ChannelSwitcher$SwitcherListener;)V

    .line 113
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lfm/douban/view/ChannelSwitcher;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lfm/douban/view/ChannelSwitcher;->container:Landroid/widget/LinearLayout;

    .line 114
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v1, p0, Lfm/douban/view/ChannelSwitcher;->containerParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 117
    invoke-virtual {p0, v5}, Lfm/douban/view/ChannelSwitcher;->setLongClickable(Z)V

    .line 119
    iput p2, p0, Lfm/douban/view/ChannelSwitcher;->showNum:I

    .line 120
    iget v1, p0, Lfm/douban/view/ChannelSwitcher;->showNum:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lfm/douban/view/ChannelSwitcher;->wingNum:I

    .line 121
    iget v1, p0, Lfm/douban/view/ChannelSwitcher;->wingNum:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lfm/douban/view/ChannelSwitcher;->index:I

    .line 123
    iget-object v1, p0, Lfm/douban/view/ChannelSwitcher;->context:Landroid/content/Context;

    const v2, 0x7f090012

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lfm/douban/view/ChannelSwitcher;->MAX_SIZE:I

    .line 124
    iget-object v1, p0, Lfm/douban/view/ChannelSwitcher;->context:Landroid/content/Context;

    const v2, 0x7f090014

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lfm/douban/view/ChannelSwitcher;->MIN_SIZE:I

    .line 128
    iget-object v1, p0, Lfm/douban/view/ChannelSwitcher;->context:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 129
    .local v0, wm:Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    iput v1, p0, Lfm/douban/view/ChannelSwitcher;->displayWidth:I

    .line 133
    iget v1, p0, Lfm/douban/view/ChannelSwitcher;->displayWidth:I

    int-to-float v1, v1

    const/high16 v2, 0x3f80

    mul-float/2addr v1, v2

    iget v2, p0, Lfm/douban/view/ChannelSwitcher;->showNum:I

    int-to-float v2, v2

    const v3, 0x3f99999a

    sub-float/2addr v2, v3

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lfm/douban/view/ChannelSwitcher;->itemWidth:I

    .line 134
    const v1, 0x3f19999a

    iget v2, p0, Lfm/douban/view/ChannelSwitcher;->itemWidth:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lfm/douban/view/ChannelSwitcher;->edgePadding:I

    .line 136
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lfm/douban/view/ChannelSwitcher;->itemWidth:I

    invoke-direct {v1, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v1, p0, Lfm/douban/view/ChannelSwitcher;->params:Landroid/widget/LinearLayout$LayoutParams;

    .line 137
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v1, p0, Lfm/douban/view/ChannelSwitcher;->itemParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 140
    iget v1, p0, Lfm/douban/view/ChannelSwitcher;->showNum:I

    const/4 v2, 0x3

    if-le v1, v2, :cond_1

    iget v1, p0, Lfm/douban/view/ChannelSwitcher;->showNum:I

    add-int/lit8 v1, v1, -0x3

    div-int/lit8 v1, v1, 0x2

    :goto_1
    iput v1, p0, Lfm/douban/view/ChannelSwitcher;->padding_channel_num:I

    .line 142
    invoke-virtual {p0, p3}, Lfm/douban/view/ChannelSwitcher;->setChannelData([Lfm/douban/model/Channel;)V

    .line 144
    iget-object v1, p0, Lfm/douban/view/ChannelSwitcher;->container:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lfm/douban/view/ChannelSwitcher;->containerParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v1, v2}, Lfm/douban/view/ChannelSwitcher;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 146
    const-string v1, "DB_ChannelSwitcher"

    const-string v2, "init channels done "

    invoke-static {v1, v2}, Lfm/douban/util/DBLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iput-boolean v5, p0, Lfm/douban/view/ChannelSwitcher;->inited:Z

    .line 149
    invoke-virtual {p0, p1}, Lfm/douban/view/ChannelSwitcher;->setChannel(Lfm/douban/model/Channel;)V

    goto/16 :goto_0

    .line 140
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public isLayouted()Z
    .locals 1

    .prologue
    .line 286
    iget-boolean v0, p0, Lfm/douban/view/ChannelSwitcher;->layouted:Z

    return v0
.end method

.method public layout()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x4

    .line 224
    const-string v1, "DB_ChannelSwitcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switcher width="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lfm/douban/view/ChannelSwitcher;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", dis_w="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lfm/douban/view/ChannelSwitcher;->displayWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lfm/douban/util/DBLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    const-string v1, "DB_ChannelSwitcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switcher padding="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lfm/douban/view/ChannelSwitcher;->getPaddingLeft()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lfm/douban/view/ChannelSwitcher;->getPaddingRight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lfm/douban/util/DBLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    const-string v1, "DB_ChannelSwitcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switcher index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lfm/douban/view/ChannelSwitcher;->index:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " indexLeft="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lfm/douban/view/ChannelSwitcher;->indexLeft:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " indexRight="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lfm/douban/view/ChannelSwitcher;->indexRight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lfm/douban/util/DBLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget v1, p0, Lfm/douban/view/ChannelSwitcher;->padding_channel_num:I

    iget v2, p0, Lfm/douban/view/ChannelSwitcher;->itemWidth:I

    mul-int/2addr v1, v2

    iget v2, p0, Lfm/douban/view/ChannelSwitcher;->edgePadding:I

    add-int/2addr v1, v2

    iput v1, p0, Lfm/douban/view/ChannelSwitcher;->leftEdge:I

    .line 229
    iget-object v1, p0, Lfm/douban/view/ChannelSwitcher;->items:[Landroid/widget/LinearLayout;

    iget v2, p0, Lfm/douban/view/ChannelSwitcher;->channelNum:I

    add-int/lit8 v2, v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getRight()I

    move-result v1

    iget v2, p0, Lfm/douban/view/ChannelSwitcher;->edgePadding:I

    sub-int/2addr v1, v2

    iput v1, p0, Lfm/douban/view/ChannelSwitcher;->rightEdge:I

    .line 230
    const-string v1, "DB_ChannelSwitcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "edge l="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lfm/douban/view/ChannelSwitcher;->leftEdge:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", r="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lfm/douban/view/ChannelSwitcher;->rightEdge:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lfm/douban/util/DBLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget v1, p0, Lfm/douban/view/ChannelSwitcher;->displayWidth:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lfm/douban/view/ChannelSwitcher;->centerX:I

    .line 233
    iget v1, p0, Lfm/douban/view/ChannelSwitcher;->centerX:I

    iget v2, p0, Lfm/douban/view/ChannelSwitcher;->itemWidth:I

    sub-int/2addr v1, v2

    iput v1, p0, Lfm/douban/view/ChannelSwitcher;->centerL:I

    .line 234
    iget v1, p0, Lfm/douban/view/ChannelSwitcher;->centerX:I

    iget v2, p0, Lfm/douban/view/ChannelSwitcher;->wingNum:I

    iget v3, p0, Lfm/douban/view/ChannelSwitcher;->itemWidth:I

    mul-int/2addr v2, v3

    sub-int/2addr v1, v2

    iput v1, p0, Lfm/douban/view/ChannelSwitcher;->centerLL:I

    .line 235
    iget v1, p0, Lfm/douban/view/ChannelSwitcher;->centerX:I

    iget v2, p0, Lfm/douban/view/ChannelSwitcher;->itemWidth:I

    add-int/2addr v1, v2

    iput v1, p0, Lfm/douban/view/ChannelSwitcher;->centerR:I

    .line 236
    iget v1, p0, Lfm/douban/view/ChannelSwitcher;->centerX:I

    iget v2, p0, Lfm/douban/view/ChannelSwitcher;->wingNum:I

    iget v3, p0, Lfm/douban/view/ChannelSwitcher;->itemWidth:I

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, p0, Lfm/douban/view/ChannelSwitcher;->centerRR:I

    .line 237
    iget v1, p0, Lfm/douban/view/ChannelSwitcher;->centerR:I

    iget v2, p0, Lfm/douban/view/ChannelSwitcher;->centerX:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lfm/douban/view/ChannelSwitcher;->threshold:I

    .line 238
    const-string v1, "DB_ChannelSwitcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "center l="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lfm/douban/view/ChannelSwitcher;->centerL:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", c="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lfm/douban/view/ChannelSwitcher;->centerX:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", r="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lfm/douban/view/ChannelSwitcher;->centerR:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lfm/douban/util/DBLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v1, p0, Lfm/douban/view/ChannelSwitcher;->titleViews:[Landroid/widget/TextView;

    iget v2, p0, Lfm/douban/view/ChannelSwitcher;->index:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    iput v1, p0, Lfm/douban/view/ChannelSwitcher;->itemHeight:I

    .line 241
    const-string v1, "DB_ChannelSwitcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "itemHeight!! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lfm/douban/view/ChannelSwitcher;->itemHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lfm/douban/util/DBLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lfm/douban/view/ChannelSwitcher;->channelNum:I

    if-ge v0, v1, :cond_0

    .line 244
    iget-object v1, p0, Lfm/douban/view/ChannelSwitcher;->items:[Landroid/widget/LinearLayout;

    aget-object v1, v1, v0

    iget v2, p0, Lfm/douban/view/ChannelSwitcher;->itemHeight:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 243
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 247
    :cond_0
    const-string v1, "DB_ChannelSwitcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "titles "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lfm/douban/view/ChannelSwitcher;->titleViews:[Landroid/widget/TextView;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lfm/douban/view/ChannelSwitcher;->index:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " wingNum "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lfm/douban/view/ChannelSwitcher;->wingNum:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lfm/douban/util/DBLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v1, p0, Lfm/douban/view/ChannelSwitcher;->titleViews:[Landroid/widget/TextView;

    array-length v1, v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_3

    .line 249
    iget v1, p0, Lfm/douban/view/ChannelSwitcher;->index:I

    iget v2, p0, Lfm/douban/view/ChannelSwitcher;->indexLeft:I

    iget v3, p0, Lfm/douban/view/ChannelSwitcher;->padding_channel_num:I

    add-int/2addr v2, v3

    if-le v1, v2, :cond_1

    .line 250
    iget-object v1, p0, Lfm/douban/view/ChannelSwitcher;->titleViews:[Landroid/widget/TextView;

    iget v2, p0, Lfm/douban/view/ChannelSwitcher;->index:I

    iget v3, p0, Lfm/douban/view/ChannelSwitcher;->wingNum:I

    sub-int/2addr v2, v3

    aget-object v1, v1, v2

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 251
    const-string v1, "HIDE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lauyout setTitle hide "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lfm/douban/view/ChannelSwitcher;->index:I

    iget v4, p0, Lfm/douban/view/ChannelSwitcher;->wingNum:I

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lfm/douban/util/DBLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_1
    iget v1, p0, Lfm/douban/view/ChannelSwitcher;->index:I

    iget v2, p0, Lfm/douban/view/ChannelSwitcher;->indexRight:I

    iget v3, p0, Lfm/douban/view/ChannelSwitcher;->padding_channel_num:I

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_2

    .line 254
    iget-object v1, p0, Lfm/douban/view/ChannelSwitcher;->mhzViews:[Landroid/widget/TextView;

    iget v2, p0, Lfm/douban/view/ChannelSwitcher;->index:I

    iget v3, p0, Lfm/douban/view/ChannelSwitcher;->wingNum:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lfm/douban/view/ChannelSwitcher;->mhzViews:[Landroid/widget/TextView;

    array-length v3, v3

    rem-int/2addr v2, v3

    aget-object v1, v1, v2

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 265
    :cond_2
    :goto_1
    iget v1, p0, Lfm/douban/view/ChannelSwitcher;->index:I

    invoke-direct {p0, v1, v7}, Lfm/douban/view/ChannelSwitcher;->scrollToIndex(IZ)V

    .line 266
    iget-object v1, p0, Lfm/douban/view/ChannelSwitcher;->container:Landroid/widget/LinearLayout;

    const/16 v2, 0x50

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 268
    iput-boolean v6, p0, Lfm/douban/view/ChannelSwitcher;->layouted:Z

    .line 269
    return-void

    .line 255
    :cond_3
    iget-object v1, p0, Lfm/douban/view/ChannelSwitcher;->titleViews:[Landroid/widget/TextView;

    array-length v1, v1

    if-le v1, v6, :cond_2

    .line 256
    iget v1, p0, Lfm/douban/view/ChannelSwitcher;->index:I

    if-lez v1, :cond_4

    .line 257
    iget-object v1, p0, Lfm/douban/view/ChannelSwitcher;->titleViews:[Landroid/widget/TextView;

    aget-object v1, v1, v7

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 260
    :cond_4
    iget v1, p0, Lfm/douban/view/ChannelSwitcher;->index:I

    if-nez v1, :cond_2

    .line 261
    iget-object v1, p0, Lfm/douban/view/ChannelSwitcher;->mhzViews:[Landroid/widget/TextView;

    aget-object v1, v1, v6

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "e"

    .prologue
    .line 391
    iget-boolean v3, p0, Lfm/douban/view/ChannelSwitcher;->enabled:Z

    if-nez v3, :cond_0

    .line 392
    const/4 v1, 0x1

    .line 407
    :goto_0
    :pswitch_0
    return v1

    .line 393
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 394
    .local v1, ret:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 395
    .local v0, action:I
    invoke-virtual {p0}, Lfm/douban/view/ChannelSwitcher;->getScrollX()I

    move-result v2

    .line 396
    .local v2, scrollX:I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 403
    :pswitch_1
    const-string v3, "DB_ChannelSwitcher"

    const-string v4, "fit to slot"

    invoke-static {v3, v4}, Lfm/douban/util/DBLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    invoke-direct {p0}, Lfm/douban/view/ChannelSwitcher;->fitToSlot()V

    goto :goto_0

    .line 398
    :pswitch_2
    invoke-direct {p0, v2}, Lfm/douban/view/ChannelSwitcher;->zoomTextView(I)V

    goto :goto_0

    .line 396
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setChannel(Lfm/douban/model/Channel;)V
    .locals 4
    .parameter "c"

    .prologue
    .line 277
    const-string v1, "SWITHER"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set Channel  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lfm/douban/model/Channel;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lfm/douban/model/Channel;->channel_id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lfm/douban/util/DBLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    invoke-direct {p0, p1}, Lfm/douban/view/ChannelSwitcher;->getChannelIndex(Lfm/douban/model/Channel;)I

    move-result v0

    .line 279
    .local v0, i:I
    iget v1, p0, Lfm/douban/view/ChannelSwitcher;->channelNum:I

    if-ge v0, v1, :cond_0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 280
    const-string v1, "DB_ChannelSwitcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lfm/douban/util/DBLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lfm/douban/view/ChannelSwitcher;->setTextView(IZZ)V

    .line 283
    :cond_0
    return-void
.end method

.method public setChannelData([Lfm/douban/model/Channel;)V
    .locals 13
    .parameter "chs"

    .prologue
    const v12, 0x7f09000f

    const/16 v11, 0x51

    const/4 v10, 0x0

    .line 160
    array-length v5, p1

    iput v5, p0, Lfm/douban/view/ChannelSwitcher;->channelNum:I

    .line 161
    iput v10, p0, Lfm/douban/view/ChannelSwitcher;->indexLeft:I

    .line 162
    iget v5, p0, Lfm/douban/view/ChannelSwitcher;->channelNum:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lfm/douban/view/ChannelSwitcher;->indexRight:I

    .line 164
    iget-object v5, p0, Lfm/douban/view/ChannelSwitcher;->channels:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 165
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v5, p0, Lfm/douban/view/ChannelSwitcher;->padding_channel_num:I

    if-ge v1, v5, :cond_0

    .line 166
    iget-object v5, p0, Lfm/douban/view/ChannelSwitcher;->channels:Ljava/util/ArrayList;

    array-length v6, p1

    sub-int/2addr v6, v1

    add-int/lit8 v6, v6, -0x1

    aget-object v6, p1, v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 168
    :cond_0
    const/4 v1, 0x0

    :goto_1
    array-length v5, p1

    iget v6, p0, Lfm/douban/view/ChannelSwitcher;->padding_channel_num:I

    sub-int/2addr v5, v6

    if-ge v1, v5, :cond_1

    .line 169
    iget-object v5, p0, Lfm/douban/view/ChannelSwitcher;->channels:Ljava/util/ArrayList;

    aget-object v6, p1, v1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 172
    :cond_1
    iget-object v5, p0, Lfm/douban/view/ChannelSwitcher;->container:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 174
    iget v5, p0, Lfm/douban/view/ChannelSwitcher;->channelNum:I

    iget v6, p0, Lfm/douban/view/ChannelSwitcher;->wingNum:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    new-array v5, v5, [Landroid/widget/LinearLayout;

    iput-object v5, p0, Lfm/douban/view/ChannelSwitcher;->items:[Landroid/widget/LinearLayout;

    .line 175
    const-string v5, "DB_ChannelSwitcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "wingNum= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lfm/douban/view/ChannelSwitcher;->wingNum:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", items length = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lfm/douban/view/ChannelSwitcher;->items:[Landroid/widget/LinearLayout;

    array-length v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lfm/douban/util/DBLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const/4 v1, 0x0

    :goto_2
    iget v5, p0, Lfm/douban/view/ChannelSwitcher;->wingNum:I

    if-ge v1, v5, :cond_2

    .line 177
    iget-object v5, p0, Lfm/douban/view/ChannelSwitcher;->items:[Landroid/widget/LinearLayout;

    new-instance v6, Landroid/widget/LinearLayout;

    iget-object v7, p0, Lfm/douban/view/ChannelSwitcher;->context:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    aput-object v6, v5, v1

    .line 178
    iget-object v5, p0, Lfm/douban/view/ChannelSwitcher;->container:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lfm/douban/view/ChannelSwitcher;->items:[Landroid/widget/LinearLayout;

    aget-object v6, v6, v1

    iget-object v7, p0, Lfm/douban/view/ChannelSwitcher;->params:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v5, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 176
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 181
    :cond_2
    iget v5, p0, Lfm/douban/view/ChannelSwitcher;->channelNum:I

    new-array v5, v5, [Landroid/widget/TextView;

    iput-object v5, p0, Lfm/douban/view/ChannelSwitcher;->titleViews:[Landroid/widget/TextView;

    .line 182
    iget v5, p0, Lfm/douban/view/ChannelSwitcher;->channelNum:I

    new-array v5, v5, [Landroid/widget/TextView;

    iput-object v5, p0, Lfm/douban/view/ChannelSwitcher;->mhzViews:[Landroid/widget/TextView;

    .line 188
    const/4 v1, 0x0

    :goto_3
    iget v5, p0, Lfm/douban/view/ChannelSwitcher;->channelNum:I

    if-ge v1, v5, :cond_4

    .line 189
    iget-object v5, p0, Lfm/douban/view/ChannelSwitcher;->items:[Landroid/widget/LinearLayout;

    iget v6, p0, Lfm/douban/view/ChannelSwitcher;->wingNum:I

    add-int/2addr v6, v1

    new-instance v7, Landroid/widget/LinearLayout;

    iget-object v8, p0, Lfm/douban/view/ChannelSwitcher;->context:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    aput-object v7, v5, v6

    .line 190
    iget-object v5, p0, Lfm/douban/view/ChannelSwitcher;->items:[Landroid/widget/LinearLayout;

    iget v6, p0, Lfm/douban/view/ChannelSwitcher;->wingNum:I

    add-int/2addr v6, v1

    aget-object v2, v5, v6

    .line 191
    .local v2, l:Landroid/widget/LinearLayout;
    iget-object v5, p0, Lfm/douban/view/ChannelSwitcher;->channels:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfm/douban/model/Channel;

    .line 192
    .local v0, cc:Lfm/douban/model/Channel;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 194
    invoke-virtual {v2, v11}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 196
    iget-object v5, p0, Lfm/douban/view/ChannelSwitcher;->titleViews:[Landroid/widget/TextView;

    new-instance v6, Landroid/widget/TextView;

    iget-object v7, p0, Lfm/douban/view/ChannelSwitcher;->context:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    aput-object v6, v5, v1

    .line 197
    iget-object v5, p0, Lfm/douban/view/ChannelSwitcher;->titleViews:[Landroid/widget/TextView;

    aget-object v4, v5, v1

    .line 198
    .local v4, tv:Landroid/widget/TextView;
    const-string v5, "DB_ChannelSwitcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v0, Lfm/douban/model/Channel;->abbr_en:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lfm/douban/model/Channel;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lfm/douban/model/Channel;->name:Ljava/lang/String;

    iget-object v8, p0, Lfm/douban/view/ChannelSwitcher;->context:Landroid/content/Context;

    invoke-virtual {v8, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-boolean v5, p0, Lfm/douban/view/ChannelSwitcher;->english:Z

    if-eqz v5, :cond_3

    iget-object v5, v0, Lfm/douban/model/Channel;->abbr_en:Ljava/lang/String;

    :goto_4
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 202
    iget-object v5, p0, Lfm/douban/view/ChannelSwitcher;->mhzViews:[Landroid/widget/TextView;

    new-instance v6, Landroid/widget/TextView;

    iget-object v7, p0, Lfm/douban/view/ChannelSwitcher;->context:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    aput-object v6, v5, v1

    .line 203
    iget-object v5, p0, Lfm/douban/view/ChannelSwitcher;->mhzViews:[Landroid/widget/TextView;

    aget-object v3, v5, v1

    .line 204
    .local v3, m:Landroid/widget/TextView;
    const v5, 0x7f090010

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 206
    iget-object v5, p0, Lfm/douban/view/ChannelSwitcher;->itemParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 207
    iget-object v5, p0, Lfm/douban/view/ChannelSwitcher;->itemParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 209
    iget-object v5, p0, Lfm/douban/view/ChannelSwitcher;->container:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lfm/douban/view/ChannelSwitcher;->params:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v5, v2, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 188
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    .line 199
    .end local v3           #m:Landroid/widget/TextView;
    :cond_3
    iget-object v5, v0, Lfm/douban/model/Channel;->name:Ljava/lang/String;

    iget-object v6, p0, Lfm/douban/view/ChannelSwitcher;->context:Landroid/content/Context;

    invoke-virtual {v6, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    .line 212
    .end local v0           #cc:Lfm/douban/model/Channel;
    .end local v2           #l:Landroid/widget/LinearLayout;
    .end local v4           #tv:Landroid/widget/TextView;
    :cond_4
    const/4 v1, 0x0

    :goto_5
    iget v5, p0, Lfm/douban/view/ChannelSwitcher;->wingNum:I

    if-ge v1, v5, :cond_5

    .line 213
    iget-object v5, p0, Lfm/douban/view/ChannelSwitcher;->items:[Landroid/widget/LinearLayout;

    iget v6, p0, Lfm/douban/view/ChannelSwitcher;->channelNum:I

    add-int/2addr v6, v1

    iget v7, p0, Lfm/douban/view/ChannelSwitcher;->wingNum:I

    add-int/2addr v6, v7

    new-instance v7, Landroid/widget/LinearLayout;

    iget-object v8, p0, Lfm/douban/view/ChannelSwitcher;->context:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    aput-object v7, v5, v6

    .line 214
    iget-object v5, p0, Lfm/douban/view/ChannelSwitcher;->container:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lfm/douban/view/ChannelSwitcher;->items:[Landroid/widget/LinearLayout;

    iget v7, p0, Lfm/douban/view/ChannelSwitcher;->channelNum:I

    add-int/2addr v7, v1

    iget v8, p0, Lfm/douban/view/ChannelSwitcher;->wingNum:I

    add-int/2addr v7, v8

    aget-object v6, v6, v7

    iget-object v7, p0, Lfm/douban/view/ChannelSwitcher;->params:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v5, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 212
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 216
    :cond_5
    iget-object v5, p0, Lfm/douban/view/ChannelSwitcher;->container:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v10}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 217
    return-void
.end method

.method public setSwitcherListener(Lfm/douban/view/ChannelSwitcher$SwitcherListener;)V
    .locals 0
    .parameter "sl"

    .prologue
    .line 299
    iput-object p1, p0, Lfm/douban/view/ChannelSwitcher;->switcherListener:Lfm/douban/view/ChannelSwitcher$SwitcherListener;

    .line 300
    return-void
.end method
