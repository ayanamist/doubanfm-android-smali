.class public Lfm/douban/view/GalleryAdapter;
.super Landroid/widget/BaseAdapter;
.source "GalleryAdapter.java"


# static fields
.field public static IMG_PADDING:I

.field public static IMG_PADDING_SIDE:I


# instance fields
.field private imgHeight:I

.field private imgWidth:I

.field private isNeedPadding:Z

.field private mContext:Landroid/content/Context;

.field mGalleryItemBackground:I

.field private mImageIds:[Ljava/lang/Integer;

.field private mImages:[Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/16 v0, 0x28

    sput v0, Lfm/douban/view/GalleryAdapter;->IMG_PADDING:I

    .line 21
    const/16 v0, 0x14

    sput v0, Lfm/douban/view/GalleryAdapter;->IMG_PADDING_SIDE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 5
    .parameter "c"
    .parameter "isNeedPadding"

    .prologue
    const v4, 0x7f020012

    const/4 v3, 0x1

    .line 31
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 22
    iput-boolean v3, p0, Lfm/douban/view/GalleryAdapter;->isNeedPadding:Z

    .line 32
    iput-object p1, p0, Lfm/douban/view/GalleryAdapter;->mContext:Landroid/content/Context;

    .line 33
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    iput-object v0, p0, Lfm/douban/view/GalleryAdapter;->mImageIds:[Ljava/lang/Integer;

    .line 34
    iget-object v0, p0, Lfm/douban/view/GalleryAdapter;->mImageIds:[Ljava/lang/Integer;

    array-length v0, v0

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lfm/douban/view/GalleryAdapter;->mImages:[Landroid/widget/ImageView;

    .line 35
    iput-boolean p2, p0, Lfm/douban/view/GalleryAdapter;->isNeedPadding:Z

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Ljava/lang/Integer;Z)V
    .locals 1
    .parameter "c"
    .parameter "ImageIds"
    .parameter "isNeedPadding"

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfm/douban/view/GalleryAdapter;->isNeedPadding:Z

    .line 25
    iput-object p1, p0, Lfm/douban/view/GalleryAdapter;->mContext:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lfm/douban/view/GalleryAdapter;->mImageIds:[Ljava/lang/Integer;

    .line 27
    iget-object v0, p0, Lfm/douban/view/GalleryAdapter;->mImageIds:[Ljava/lang/Integer;

    array-length v0, v0

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lfm/douban/view/GalleryAdapter;->mImages:[Landroid/widget/ImageView;

    .line 28
    iput-boolean p3, p0, Lfm/douban/view/GalleryAdapter;->isNeedPadding:Z

    .line 29
    return-void
.end method


# virtual methods
.method public SetImages([Ljava/lang/Integer;)V
    .locals 1
    .parameter "ImageIds"

    .prologue
    .line 39
    iput-object p1, p0, Lfm/douban/view/GalleryAdapter;->mImageIds:[Ljava/lang/Integer;

    .line 40
    iget-object v0, p0, Lfm/douban/view/GalleryAdapter;->mImageIds:[Ljava/lang/Integer;

    array-length v0, v0

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lfm/douban/view/GalleryAdapter;->mImages:[Landroid/widget/ImageView;

    .line 41
    return-void
.end method

.method public createImages(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 12
    .parameter "lp"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 49
    const-string v7, "GalleryAdapter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "width:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ";height:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget v7, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v7, p0, Lfm/douban/view/GalleryAdapter;->imgWidth:I

    .line 51
    iget v7, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v7, p0, Lfm/douban/view/GalleryAdapter;->imgHeight:I

    .line 52
    iget v7, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v8, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    sget v9, Lfm/douban/view/GalleryAdapter;->IMG_PADDING:I

    sub-int/2addr v8, v9

    mul-int/lit8 v8, v8, 0x4

    div-int/lit8 v8, v8, 0x5

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    sput v7, Lfm/douban/view/GalleryAdapter;->IMG_PADDING_SIDE:I

    .line 53
    const-string v7, "GalleryAdapter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "img width:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lfm/douban/view/GalleryAdapter;->imgWidth:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ";img height:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lfm/douban/view/GalleryAdapter;->imgHeight:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const/4 v4, 0x0

    .line 56
    .local v4, index:I
    iget-object v0, p0, Lfm/douban/view/GalleryAdapter;->mImageIds:[Ljava/lang/Integer;

    .local v0, arr$:[Ljava/lang/Integer;
    array-length v6, v0

    .local v6, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    move v5, v4

    .end local v4           #index:I
    .local v5, index:I
    :goto_0
    if-ge v1, v6, :cond_1

    aget-object v7, v0, v1

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 58
    .local v2, imageId:I
    new-instance v3, Landroid/widget/ImageView;

    iget-object v7, p0, Lfm/douban/view/GalleryAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 59
    .local v3, imageView:Landroid/widget/ImageView;
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 60
    sget-object v7, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 62
    new-instance v7, Landroid/widget/Gallery$LayoutParams;

    iget v8, p0, Lfm/douban/view/GalleryAdapter;->imgWidth:I

    iget v9, p0, Lfm/douban/view/GalleryAdapter;->imgHeight:I

    invoke-direct {v7, v8, v9}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    iget-boolean v7, p0, Lfm/douban/view/GalleryAdapter;->isNeedPadding:Z

    if-eqz v7, :cond_0

    .line 64
    sget v7, Lfm/douban/view/GalleryAdapter;->IMG_PADDING_SIDE:I

    sget v8, Lfm/douban/view/GalleryAdapter;->IMG_PADDING:I

    sget v9, Lfm/douban/view/GalleryAdapter;->IMG_PADDING_SIDE:I

    invoke-virtual {v3, v7, v8, v9, v10}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 67
    :cond_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 68
    iget-object v7, p0, Lfm/douban/view/GalleryAdapter;->mImages:[Landroid/widget/ImageView;

    add-int/lit8 v4, v5, 0x1

    .end local v5           #index:I
    .restart local v4       #index:I
    aput-object v3, v7, v5

    .line 56
    add-int/lit8 v1, v1, 0x1

    move v5, v4

    .end local v4           #index:I
    .restart local v5       #index:I
    goto :goto_0

    .line 71
    .end local v2           #imageId:I
    .end local v3           #imageView:Landroid/widget/ImageView;
    :cond_1
    iget-object v7, p0, Lfm/douban/view/GalleryAdapter;->mImages:[Landroid/widget/ImageView;

    aget-object v7, v7, v11

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 72
    return v11
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lfm/douban/view/GalleryAdapter;->mImageIds:[Ljava/lang/Integer;

    array-length v0, v0

    return v0
.end method

.method public getImgHeight()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lfm/douban/view/GalleryAdapter;->imgHeight:I

    return v0
.end method

.method public getImgWidth()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lfm/douban/view/GalleryAdapter;->imgWidth:I

    return v0
.end method

.method public getItem(I)Landroid/widget/ImageView;
    .locals 1
    .parameter "position"

    .prologue
    .line 97
    iget-object v0, p0, Lfm/douban/view/GalleryAdapter;->mImages:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lfm/douban/view/GalleryAdapter;->getItem(I)Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 102
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 107
    const-string v0, "getView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "position:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v0, p0, Lfm/douban/view/GalleryAdapter;->mImages:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    return-object v0
.end method
