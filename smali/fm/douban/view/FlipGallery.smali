.class public Lfm/douban/view/FlipGallery;
.super Landroid/widget/Gallery;
.source "FlipGallery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfm/douban/view/FlipGallery$MyCallBack;
    }
.end annotation


# static fields
.field public static final SCROLL_CENTER:I = 0x1

.field public static final SCROLL_LEFT:I = 0x0

.field public static final SCROLL_RIGHT:I = 0x2

.field private static final SHOW_NEXT:I = 0x4d2

.field private static final SHOW_NOW:I = 0x4d3


# instance fields
.field private backView:Landroid/widget/ImageView;

.field private disableFlip:Z

.field private handler:Landroid/os/Handler;

.field private hook:Lfm/douban/view/FlipGallery$MyCallBack;

.field private loading:Z

.field private mCamera:Landroid/graphics/Camera;

.field private mCoveflowCenter:I

.field private mMaxRotationAngle:I

.field private mMaxZoom:I

.field private showFadeCover:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0, p1}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;)V

    .line 29
    new-instance v0, Lfm/douban/view/FlipGallery$1;

    invoke-direct {v0, p0}, Lfm/douban/view/FlipGallery$1;-><init>(Lfm/douban/view/FlipGallery;)V

    iput-object v0, p0, Lfm/douban/view/FlipGallery;->handler:Landroid/os/Handler;

    .line 45
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lfm/douban/view/FlipGallery;->mCamera:Landroid/graphics/Camera;

    .line 46
    const/16 v0, 0x3c

    iput v0, p0, Lfm/douban/view/FlipGallery;->mMaxRotationAngle:I

    .line 47
    const/16 v0, -0x78

    iput v0, p0, Lfm/douban/view/FlipGallery;->mMaxZoom:I

    .line 50
    iput-boolean v1, p0, Lfm/douban/view/FlipGallery;->loading:Z

    .line 52
    iput-boolean v1, p0, Lfm/douban/view/FlipGallery;->showFadeCover:Z

    .line 58
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lfm/douban/view/FlipGallery;->setStaticTransformationsEnabled(Z)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-direct {p0, p1, p2}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    new-instance v0, Lfm/douban/view/FlipGallery$1;

    invoke-direct {v0, p0}, Lfm/douban/view/FlipGallery$1;-><init>(Lfm/douban/view/FlipGallery;)V

    iput-object v0, p0, Lfm/douban/view/FlipGallery;->handler:Landroid/os/Handler;

    .line 45
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lfm/douban/view/FlipGallery;->mCamera:Landroid/graphics/Camera;

    .line 46
    const/16 v0, 0x3c

    iput v0, p0, Lfm/douban/view/FlipGallery;->mMaxRotationAngle:I

    .line 47
    const/16 v0, -0x78

    iput v0, p0, Lfm/douban/view/FlipGallery;->mMaxZoom:I

    .line 50
    iput-boolean v1, p0, Lfm/douban/view/FlipGallery;->loading:Z

    .line 52
    iput-boolean v1, p0, Lfm/douban/view/FlipGallery;->showFadeCover:Z

    .line 63
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lfm/douban/view/FlipGallery;->setStaticTransformationsEnabled(Z)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    new-instance v0, Lfm/douban/view/FlipGallery$1;

    invoke-direct {v0, p0}, Lfm/douban/view/FlipGallery$1;-><init>(Lfm/douban/view/FlipGallery;)V

    iput-object v0, p0, Lfm/douban/view/FlipGallery;->handler:Landroid/os/Handler;

    .line 45
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lfm/douban/view/FlipGallery;->mCamera:Landroid/graphics/Camera;

    .line 46
    const/16 v0, 0x3c

    iput v0, p0, Lfm/douban/view/FlipGallery;->mMaxRotationAngle:I

    .line 47
    const/16 v0, -0x78

    iput v0, p0, Lfm/douban/view/FlipGallery;->mMaxZoom:I

    .line 50
    iput-boolean v1, p0, Lfm/douban/view/FlipGallery;->loading:Z

    .line 52
    iput-boolean v1, p0, Lfm/douban/view/FlipGallery;->showFadeCover:Z

    .line 68
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lfm/douban/view/FlipGallery;->setStaticTransformationsEnabled(Z)V

    .line 70
    return-void
.end method

.method static synthetic access$000(Lfm/douban/view/FlipGallery;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lfm/douban/view/FlipGallery;->showNextView(I)V

    return-void
.end method

.method private getCenterOfCoverflow()I
    .locals 2

    .prologue
    .line 89
    invoke-virtual {p0}, Lfm/douban/view/FlipGallery;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lfm/douban/view/FlipGallery;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lfm/douban/view/FlipGallery;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lfm/douban/view/FlipGallery;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private static getCenterOfView(Landroid/view/View;)I
    .locals 2
    .parameter "view"

    .prologue
    .line 93
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method private showNextView(I)V
    .locals 1
    .parameter "x"

    .prologue
    .line 107
    iget-object v0, p0, Lfm/douban/view/FlipGallery;->backView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfm/douban/view/FlipGallery;->backView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 108
    :cond_0
    return-void
.end method

.method private showProgress()V
    .locals 1

    .prologue
    .line 215
    iget-boolean v0, p0, Lfm/douban/view/FlipGallery;->loading:Z

    if-eqz v0, :cond_0

    .line 218
    :goto_0
    return-void

    .line 216
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfm/douban/view/FlipGallery;->loading:Z

    .line 217
    iget-object v0, p0, Lfm/douban/view/FlipGallery;->hook:Lfm/douban/view/FlipGallery$MyCallBack;

    invoke-interface {v0}, Lfm/douban/view/FlipGallery$MyCallBack;->setPicLoading()V

    goto :goto_0
.end method

.method private transformImageBitmap(Landroid/widget/ImageView;Landroid/view/animation/Transformation;I)V
    .locals 12
    .parameter "child"
    .parameter "t"
    .parameter "rotationAngle"

    .prologue
    const/4 v11, 0x0

    .line 157
    iget-object v5, p0, Lfm/douban/view/FlipGallery;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v5}, Landroid/graphics/Camera;->save()V

    .line 158
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    .line 159
    .local v1, imageMatrix:Landroid/graphics/Matrix;
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v0, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 160
    .local v0, imageHeight:I
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v2, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 161
    .local v2, imageWidth:I
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 165
    .local v3, rotation:I
    iget-object v5, p0, Lfm/douban/view/FlipGallery;->mCamera:Landroid/graphics/Camera;

    const/high16 v6, 0x42f0

    invoke-virtual {v5, v11, v11, v6}, Landroid/graphics/Camera;->translate(FFF)V

    .line 168
    iget v5, p0, Lfm/douban/view/FlipGallery;->mMaxRotationAngle:I

    if-ge v3, v5, :cond_0

    .line 169
    iget v5, p0, Lfm/douban/view/FlipGallery;->mMaxZoom:I

    int-to-double v5, v5

    int-to-double v7, v3

    const-wide/high16 v9, 0x3ff8

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    double-to-float v4, v5

    .line 170
    .local v4, zoomAmount:F
    iget-object v5, p0, Lfm/douban/view/FlipGallery;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v5, v11, v11, v4}, Landroid/graphics/Camera;->translate(FFF)V

    .line 174
    .end local v4           #zoomAmount:F
    :cond_0
    iget-object v5, p0, Lfm/douban/view/FlipGallery;->mCamera:Landroid/graphics/Camera;

    rsub-int/lit8 v6, p3, 0x0

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Camera;->rotateY(F)V

    .line 175
    iget-object v5, p0, Lfm/douban/view/FlipGallery;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v5, v1}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 176
    div-int/lit8 v5, v2, 0x2

    neg-int v5, v5

    int-to-float v5, v5

    div-int/lit8 v6, v0, 0x2

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 177
    div-int/lit8 v5, v2, 0x2

    int-to-float v5, v5

    div-int/lit8 v6, v0, 0x2

    int-to-float v6, v6

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 178
    iget-object v5, p0, Lfm/douban/view/FlipGallery;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v5}, Landroid/graphics/Camera;->restore()V

    .line 179
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    const/4 v1, 0x1

    .line 183
    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 184
    invoke-super {p0, p1}, Landroid/widget/Gallery;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 185
    return-void
.end method

.method public fitCenterAndShowPic()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 225
    invoke-virtual {p0, v0, v0}, Lfm/douban/view/FlipGallery;->setSelection(IZ)V

    .line 226
    return-void
.end method

.method public flipToNext()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 229
    invoke-virtual {p0}, Lfm/douban/view/FlipGallery;->getWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    rsub-int/lit8 v0, v0, 0x0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p0, v2, v2, v0, v1}, Lfm/douban/view/FlipGallery;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    .line 230
    return-void
.end method

.method public getBackView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lfm/douban/view/FlipGallery;->backView:Landroid/widget/ImageView;

    return-object v0
.end method

.method protected getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z
    .locals 8
    .parameter "child"
    .parameter "t"

    .prologue
    const/4 v7, 0x1

    .line 116
    invoke-static {p1}, Lfm/douban/view/FlipGallery;->getCenterOfView(Landroid/view/View;)I

    move-result v0

    .line 117
    .local v0, childCenter:I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 118
    .local v1, childWidth:I
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 119
    .local v4, tag:I
    const/4 v3, 0x0

    .line 120
    .local v3, rotationAngle:I
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->clear()V

    .line 121
    sget v5, Landroid/view/animation/Transformation;->TYPE_MATRIX:I

    invoke-virtual {p2, v5}, Landroid/view/animation/Transformation;->setTransformationType(I)V

    .line 123
    iget v5, p0, Lfm/douban/view/FlipGallery;->mCoveflowCenter:I

    if-ne v0, v5, :cond_1

    .line 124
    check-cast p1, Landroid/widget/ImageView;

    .end local p1
    const/4 v5, 0x0

    invoke-direct {p0, p1, p2, v5}, Lfm/douban/view/FlipGallery;->transformImageBitmap(Landroid/widget/ImageView;Landroid/view/animation/Transformation;I)V

    .line 125
    if-ne v4, v7, :cond_0

    .line 127
    invoke-direct {p0}, Lfm/douban/view/FlipGallery;->showProgress()V

    .line 142
    :cond_0
    :goto_0
    return v7

    .line 130
    .restart local p1
    :cond_1
    iget v5, p0, Lfm/douban/view/FlipGallery;->mCoveflowCenter:I

    sub-int/2addr v5, v0

    int-to-float v5, v5

    int-to-float v6, v1

    div-float/2addr v5, v6

    iget v6, p0, Lfm/douban/view/FlipGallery;->mMaxRotationAngle:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    float-to-int v3, v5

    .line 131
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Lfm/douban/view/FlipGallery;->mMaxRotationAngle:I

    if-le v5, v6, :cond_2

    .line 132
    if-gez v3, :cond_3

    iget v5, p0, Lfm/douban/view/FlipGallery;->mMaxRotationAngle:I

    neg-int v3, v5

    .line 134
    :cond_2
    :goto_1
    check-cast p1, Landroid/widget/ImageView;

    .end local p1
    invoke-direct {p0, p1, p2, v3}, Lfm/douban/view/FlipGallery;->transformImageBitmap(Landroid/widget/ImageView;Landroid/view/animation/Transformation;I)V

    .line 135
    iget-boolean v5, p0, Lfm/douban/view/FlipGallery;->showFadeCover:Z

    if-eqz v5, :cond_0

    if-nez v4, :cond_0

    .line 136
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 137
    .local v2, msg:Landroid/os/Message;
    const/16 v5, 0x4d2

    iput v5, v2, Landroid/os/Message;->what:I

    .line 138
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 139
    iget-object v5, p0, Lfm/douban/view/FlipGallery;->handler:Landroid/os/Handler;

    invoke-virtual {v5, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 132
    .end local v2           #msg:Landroid/os/Message;
    .restart local p1
    :cond_3
    iget v3, p0, Lfm/douban/view/FlipGallery;->mMaxRotationAngle:I

    goto :goto_1
.end method

.method public getMaxRotationAngle()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lfm/douban/view/FlipGallery;->mMaxRotationAngle:I

    return v0
.end method

.method public getMaxZoom()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lfm/douban/view/FlipGallery;->mMaxZoom:I

    return v0
.end method

.method public isLoading()Z
    .locals 1

    .prologue
    .line 221
    iget-boolean v0, p0, Lfm/douban/view/FlipGallery;->loading:Z

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 198
    iget-boolean v0, p0, Lfm/douban/view/FlipGallery;->disableFlip:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 199
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Gallery;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 147
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 204
    iget-boolean v0, p0, Lfm/douban/view/FlipGallery;->disableFlip:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 205
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Gallery;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    goto :goto_0
.end method

.method protected onScrollChanged(IIII)V
    .locals 1
    .parameter "l"
    .parameter "t"
    .parameter "oldl"
    .parameter "oldt"

    .prologue
    .line 210
    iget-boolean v0, p0, Lfm/douban/view/FlipGallery;->disableFlip:Z

    if-eqz v0, :cond_0

    .line 212
    :goto_0
    return-void

    .line 211
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Gallery;->onScrollChanged(IIII)V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 152
    invoke-direct {p0}, Lfm/douban/view/FlipGallery;->getCenterOfCoverflow()I

    move-result v0

    iput v0, p0, Lfm/douban/view/FlipGallery;->mCoveflowCenter:I

    .line 153
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Gallery;->onSizeChanged(IIII)V

    .line 154
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 189
    iget-boolean v1, p0, Lfm/douban/view/FlipGallery;->loading:Z

    if-eqz v1, :cond_0

    .line 190
    const/4 v0, 0x1

    .line 193
    :goto_0
    return v0

    .line 191
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Gallery;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 193
    .local v0, ret:Z
    goto :goto_0
.end method

.method public setBackView(Landroid/widget/ImageView;)V
    .locals 0
    .parameter "nextSongView"

    .prologue
    .line 101
    iput-object p1, p0, Lfm/douban/view/FlipGallery;->backView:Landroid/widget/ImageView;

    .line 102
    return-void
.end method

.method public setFadeInAnimate(Z)V
    .locals 0
    .parameter "showFade"

    .prologue
    .line 111
    iput-boolean p1, p0, Lfm/douban/view/FlipGallery;->showFadeCover:Z

    .line 112
    return-void
.end method

.method public setFlip(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 238
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lfm/douban/view/FlipGallery;->disableFlip:Z

    .line 239
    return-void

    .line 238
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLoading(Z)V
    .locals 0
    .parameter "load"

    .prologue
    .line 233
    iput-boolean p1, p0, Lfm/douban/view/FlipGallery;->loading:Z

    .line 234
    return-void
.end method

.method public setMaxRotationAngle(I)V
    .locals 0
    .parameter "maxRotationAngle"

    .prologue
    .line 77
    iput p1, p0, Lfm/douban/view/FlipGallery;->mMaxRotationAngle:I

    .line 78
    return-void
.end method

.method public setMaxZoom(I)V
    .locals 0
    .parameter "maxZoom"

    .prologue
    .line 85
    iput p1, p0, Lfm/douban/view/FlipGallery;->mMaxZoom:I

    .line 86
    return-void
.end method

.method public setMyCallBack(Lfm/douban/view/FlipGallery$MyCallBack;)V
    .locals 0
    .parameter "mcb"

    .prologue
    .line 97
    iput-object p1, p0, Lfm/douban/view/FlipGallery;->hook:Lfm/douban/view/FlipGallery$MyCallBack;

    .line 98
    return-void
.end method
