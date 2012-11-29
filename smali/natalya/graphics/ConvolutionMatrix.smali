.class public Lnatalya/graphics/ConvolutionMatrix;
.super Ljava/lang/Object;


# static fields
.field public static final SIZE:I = 0x3


# instance fields
.field public Factor:D

.field public Matrix:[[D

.field public Offset:D


# direct methods
.method public constructor <init>(I)V
    .locals 2

    const-wide/high16 v0, 0x3ff0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lnatalya/graphics/ConvolutionMatrix;->Factor:D

    iput-wide v0, p0, Lnatalya/graphics/ConvolutionMatrix;->Offset:D

    filled-new-array {p1, p1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    iput-object v0, p0, Lnatalya/graphics/ConvolutionMatrix;->Matrix:[[D

    return-void
.end method

.method public static computeConvolution3x3(Landroid/graphics/Bitmap;Lnatalya/graphics/ConvolutionMatrix;)Landroid/graphics/Bitmap;
    .locals 20

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-static {v9, v10, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    const/4 v1, 0x3

    const/4 v2, 0x3

    filled-new-array {v1, v2}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    const/4 v2, 0x0

    move v8, v2

    :goto_0
    add-int/lit8 v2, v10, -0x2

    if-ge v8, v2, :cond_b

    const/4 v2, 0x0

    move v7, v2

    :goto_1
    add-int/lit8 v2, v9, -0x2

    if-ge v7, v2, :cond_a

    const/4 v2, 0x0

    move v3, v2

    :goto_2
    const/4 v2, 0x3

    if-ge v3, v2, :cond_1

    const/4 v2, 0x0

    :goto_3
    const/4 v4, 0x3

    if-ge v2, v4, :cond_0

    aget-object v4, v1, v3

    add-int v5, v7, v3

    add-int v6, v8, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v5

    aput v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_0
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_2

    :cond_1
    const/4 v2, 0x1

    aget-object v2, v1, v2

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v12

    const/4 v4, 0x0

    const/4 v2, 0x0

    move v6, v2

    move v3, v4

    move v5, v4

    :goto_4
    const/4 v2, 0x3

    if-ge v6, v2, :cond_3

    const/4 v2, 0x0

    move/from16 v19, v4

    move v4, v3

    move/from16 v3, v19

    :goto_5
    const/4 v13, 0x3

    if-ge v2, v13, :cond_2

    int-to-double v13, v5

    aget-object v5, v1, v6

    aget v5, v5, v2

    invoke-static {v5}, Landroid/graphics/Color;->red(I)I

    move-result v5

    int-to-double v15, v5

    move-object/from16 v0, p1

    iget-object v5, v0, Lnatalya/graphics/ConvolutionMatrix;->Matrix:[[D

    aget-object v5, v5, v6

    aget-wide v17, v5, v2

    mul-double v15, v15, v17

    add-double/2addr v13, v15

    double-to-int v5, v13

    int-to-double v13, v4

    aget-object v4, v1, v6

    aget v4, v4, v2

    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-double v15, v4

    move-object/from16 v0, p1

    iget-object v4, v0, Lnatalya/graphics/ConvolutionMatrix;->Matrix:[[D

    aget-object v4, v4, v6

    aget-wide v17, v4, v2

    mul-double v15, v15, v17

    add-double/2addr v13, v15

    double-to-int v4, v13

    int-to-double v13, v3

    aget-object v3, v1, v6

    aget v3, v3, v2

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    int-to-double v15, v3

    move-object/from16 v0, p1

    iget-object v3, v0, Lnatalya/graphics/ConvolutionMatrix;->Matrix:[[D

    aget-object v3, v3, v6

    aget-wide v17, v3, v2

    mul-double v15, v15, v17

    add-double/2addr v13, v15

    double-to-int v3, v13

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_2
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    move/from16 v19, v3

    move v3, v4

    move/from16 v4, v19

    goto :goto_4

    :cond_3
    int-to-double v5, v5

    move-object/from16 v0, p1

    iget-wide v13, v0, Lnatalya/graphics/ConvolutionMatrix;->Factor:D

    div-double/2addr v5, v13

    move-object/from16 v0, p1

    iget-wide v13, v0, Lnatalya/graphics/ConvolutionMatrix;->Offset:D

    add-double/2addr v5, v13

    double-to-int v2, v5

    if-gez v2, :cond_7

    const/4 v2, 0x0

    :cond_4
    :goto_6
    int-to-double v5, v3

    move-object/from16 v0, p1

    iget-wide v13, v0, Lnatalya/graphics/ConvolutionMatrix;->Factor:D

    div-double/2addr v5, v13

    move-object/from16 v0, p1

    iget-wide v13, v0, Lnatalya/graphics/ConvolutionMatrix;->Offset:D

    add-double/2addr v5, v13

    double-to-int v3, v5

    if-gez v3, :cond_8

    const/4 v3, 0x0

    :cond_5
    :goto_7
    int-to-double v4, v4

    move-object/from16 v0, p1

    iget-wide v13, v0, Lnatalya/graphics/ConvolutionMatrix;->Factor:D

    div-double/2addr v4, v13

    move-object/from16 v0, p1

    iget-wide v13, v0, Lnatalya/graphics/ConvolutionMatrix;->Offset:D

    add-double/2addr v4, v13

    double-to-int v4, v4

    if-gez v4, :cond_9

    const/4 v4, 0x0

    :cond_6
    :goto_8
    add-int/lit8 v5, v7, 0x1

    add-int/lit8 v6, v8, 0x1

    invoke-static {v12, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v11, v5, v6, v2}, Landroid/graphics/Bitmap;->setPixel(III)V

    add-int/lit8 v2, v7, 0x1

    move v7, v2

    goto/16 :goto_1

    :cond_7
    const/16 v5, 0xff

    if-le v2, v5, :cond_4

    const/16 v2, 0xff

    goto :goto_6

    :cond_8
    const/16 v5, 0xff

    if-le v3, v5, :cond_5

    const/16 v3, 0xff

    goto :goto_7

    :cond_9
    const/16 v5, 0xff

    if-le v4, v5, :cond_6

    const/16 v4, 0xff

    goto :goto_8

    :cond_a
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    goto/16 :goto_0

    :cond_b
    return-object v11
.end method


# virtual methods
.method public applyConfig([[D)V
    .locals 7

    const/4 v6, 0x3

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v6, :cond_1

    move v0, v1

    :goto_1
    if-ge v0, v6, :cond_0

    iget-object v3, p0, Lnatalya/graphics/ConvolutionMatrix;->Matrix:[[D

    aget-object v3, v3, v2

    aget-object v4, p1, v2

    aget-wide v4, v4, v0

    aput-wide v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setAll(D)V
    .locals 5

    const/4 v4, 0x3

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_1

    move v0, v1

    :goto_1
    if-ge v0, v4, :cond_0

    iget-object v3, p0, Lnatalya/graphics/ConvolutionMatrix;->Matrix:[[D

    aget-object v3, v3, v2

    aput-wide p1, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    return-void
.end method
