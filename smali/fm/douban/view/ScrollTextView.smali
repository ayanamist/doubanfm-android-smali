.class public Lfm/douban/view/ScrollTextView;
.super Landroid/widget/TextView;
.source "ScrollTextView.java"


# instance fields
.field private mPaused:Z

.field private mRndDuration:I

.field private mSlr:Landroid/widget/Scroller;

.field private mXPaused:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lfm/douban/view/ScrollTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 42
    const v0, 0x1010084

    invoke-direct {p0, p1, p2, v0}, Lfm/douban/view/ScrollTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x1

    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    const/16 v0, 0xfa

    iput v0, p0, Lfm/douban/view/ScrollTextView;->mRndDuration:I

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lfm/douban/view/ScrollTextView;->mXPaused:I

    .line 29
    iput-boolean v3, p0, Lfm/douban/view/ScrollTextView;->mPaused:Z

    .line 51
    invoke-virtual {p0}, Lfm/douban/view/ScrollTextView;->setSingleLine()V

    .line 52
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lfm/douban/view/ScrollTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 53
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lfm/douban/view/ScrollTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lfm/douban/view/ScrollTextView;->mSlr:Landroid/widget/Scroller;

    .line 54
    invoke-virtual {p0, v3}, Lfm/douban/view/ScrollTextView;->setHorizontallyScrolling(Z)V

    .line 55
    iget-object v0, p0, Lfm/douban/view/ScrollTextView;->mSlr:Landroid/widget/Scroller;

    invoke-virtual {p0, v0}, Lfm/douban/view/ScrollTextView;->setScroller(Landroid/widget/Scroller;)V

    .line 57
    return-void
.end method

.method private calculateScrollingLen()I
    .locals 6

    .prologue
    .line 104
    invoke-virtual {p0}, Lfm/douban/view/ScrollTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    .line 105
    .local v3, tp:Landroid/text/TextPaint;
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 106
    .local v0, rect:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lfm/douban/view/ScrollTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 107
    .local v2, strTxt:Ljava/lang/String;
    const/4 v4, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v2, v4, v5, v0}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 108
    const/4 v1, -0x1

    .line 109
    .local v1, scrollingLen:I
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {p0}, Lfm/douban/view/ScrollTextView;->getWidth()I

    move-result v5

    add-int/lit8 v5, v5, -0xa

    if-le v4, v5, :cond_0

    .line 110
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {p0}, Lfm/douban/view/ScrollTextView;->getWidth()I

    move-result v5

    add-int v1, v4, v5

    .line 112
    :cond_0
    const/4 v0, 0x0

    .line 113
    return v1
.end method


# virtual methods
.method public computeScroll()V
    .locals 1

    .prologue
    .line 142
    invoke-super {p0}, Landroid/widget/TextView;->computeScroll()V

    .line 144
    iget-object v0, p0, Lfm/douban/view/ScrollTextView;->mSlr:Landroid/widget/Scroller;

    if-nez v0, :cond_1

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    iget-object v0, p0, Lfm/douban/view/ScrollTextView;->mSlr:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lfm/douban/view/ScrollTextView;->mPaused:Z

    if-nez v0, :cond_0

    .line 148
    invoke-virtual {p0}, Lfm/douban/view/ScrollTextView;->startScroll()V

    goto :goto_0
.end method

.method public getRndDuration()I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lfm/douban/view/ScrollTextView;->mRndDuration:I

    return v0
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 161
    iget-boolean v0, p0, Lfm/douban/view/ScrollTextView;->mPaused:Z

    return v0
.end method

.method public pauseScroll()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lfm/douban/view/ScrollTextView;->mSlr:Landroid/widget/Scroller;

    if-nez v0, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    iget-boolean v0, p0, Lfm/douban/view/ScrollTextView;->mPaused:Z

    if-nez v0, :cond_0

    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfm/douban/view/ScrollTextView;->mPaused:Z

    .line 131
    iget-object v0, p0, Lfm/douban/view/ScrollTextView;->mSlr:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iput v0, p0, Lfm/douban/view/ScrollTextView;->mXPaused:I

    .line 133
    iget-object v0, p0, Lfm/douban/view/ScrollTextView;->mSlr:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 92
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lfm/douban/view/ScrollTextView;->setGravity(I)V

    .line 93
    const/4 v0, 0x0

    iput v0, p0, Lfm/douban/view/ScrollTextView;->mXPaused:I

    .line 94
    invoke-virtual {p0}, Lfm/douban/view/ScrollTextView;->pauseScroll()V

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfm/douban/view/ScrollTextView;->mPaused:Z

    .line 96
    return-void
.end method

.method public resumeScroll()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 75
    iget-boolean v0, p0, Lfm/douban/view/ScrollTextView;->mPaused:Z

    if-nez v0, :cond_0

    .line 89
    :goto_0
    return-void

    .line 78
    :cond_0
    invoke-direct {p0}, Lfm/douban/view/ScrollTextView;->calculateScrollingLen()I

    move-result v6

    .line 79
    .local v6, scrollingLen:I
    if-lez v6, :cond_1

    .line 80
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lfm/douban/view/ScrollTextView;->setGravity(I)V

    .line 81
    invoke-virtual {p0}, Lfm/douban/view/ScrollTextView;->getWidth()I

    move-result v0

    iget v1, p0, Lfm/douban/view/ScrollTextView;->mXPaused:I

    add-int/2addr v0, v1

    sub-int v3, v6, v0

    .line 82
    .local v3, distance:I
    iget v0, p0, Lfm/douban/view/ScrollTextView;->mRndDuration:I

    mul-int/2addr v0, v3

    int-to-double v0, v0

    const-wide/high16 v7, 0x3ff0

    mul-double/2addr v0, v7

    int-to-double v7, v6

    div-double/2addr v0, v7

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v5

    .line 83
    .local v5, duration:I
    iget-object v0, p0, Lfm/douban/view/ScrollTextView;->mSlr:Landroid/widget/Scroller;

    iget v1, p0, Lfm/douban/view/ScrollTextView;->mXPaused:I

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 84
    iput-boolean v2, p0, Lfm/douban/view/ScrollTextView;->mPaused:Z

    goto :goto_0

    .line 86
    .end local v3           #distance:I
    .end local v5           #duration:I
    :cond_1
    invoke-virtual {p0}, Lfm/douban/view/ScrollTextView;->reset()V

    goto :goto_0
.end method

.method public setRndDuration(I)V
    .locals 0
    .parameter "duration"

    .prologue
    .line 157
    iput p1, p0, Lfm/douban/view/ScrollTextView;->mRndDuration:I

    .line 158
    return-void
.end method

.method public startScroll()V
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0}, Lfm/douban/view/ScrollTextView;->getWidth()I

    move-result v0

    mul-int/lit8 v0, v0, -0x1

    iput v0, p0, Lfm/douban/view/ScrollTextView;->mXPaused:I

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfm/douban/view/ScrollTextView;->mPaused:Z

    .line 67
    invoke-virtual {p0}, Lfm/douban/view/ScrollTextView;->resumeScroll()V

    .line 68
    return-void
.end method
