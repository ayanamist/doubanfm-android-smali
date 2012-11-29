.class public Lcom/douban/radio/app/ShareActivity;
.super Lcom/douban/radio/app/FMActivity;
.source "ShareActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final REQUEST_CODE_LOGIN_DOUBAN:I = 0x1

.field private static final REQUEST_CODE_LOGIN_RENREN:I = 0x4

.field private static final REQUEST_CODE_LOGIN_SINA:I = 0x2

.field private static final REQUEST_CODE_LOGIN_TENCENT:I = 0x3

.field private static final SHARE_CONTENT_MAXLENGTH:I = 0x64

.field public static final SHARE_FAIL:I = 0xf

.field public static final SHARE_FAIL_CODES:[I = null

.field public static final SHARE_FAIL_DOUBAN:I = 0x1

.field public static final SHARE_FAIL_RENREN:I = 0x4

.field public static final SHARE_FAIL_SINA:I = 0x2

.field public static final SHARE_FAIL_STR_RESID:[I = null

.field public static final SHARE_FAIL_TENCENT:I = 0x8

.field public static final SHARE_IMG_ACTIVED_RESID:[I

.field public static final SHARE_IMG_RESID:[I

.field public static final SHARE_SUCCESS:I


# instance fields
.field private checkHandler:Landroid/os/Handler;

.field private closeButton:Landroid/widget/ImageView;

.field private connectTos:[Landroid/widget/ImageView;

.field private contentToShare:Ljava/lang/String;

.field private fmsp:Lfm/douban/model/FMSharedPreferences;

.field private receiver:Landroid/content/BroadcastReceiver;

.field private responseHandler:Lcom/loopj/android/http/JsonHttpResponseHandler;

.field private rm:Lfm/douban/controller/RadioManager;

.field private rs:Lfm/douban/service/RadioState;

.field private shareButton:Landroid/widget/Button;

.field private shareContent:Landroid/widget/EditText;

.field private shareMask:Landroid/view/View;

.field private shareToSet:[Z

.field private songImage:Landroid/widget/ImageView;

.field private songInfo:Landroid/widget/TextView;

.field private songName:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 56
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/douban/radio/app/ShareActivity;->SHARE_FAIL_CODES:[I

    .line 57
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/douban/radio/app/ShareActivity;->SHARE_IMG_RESID:[I

    .line 59
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/douban/radio/app/ShareActivity;->SHARE_IMG_ACTIVED_RESID:[I

    .line 61
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/douban/radio/app/ShareActivity;->SHARE_FAIL_STR_RESID:[I

    return-void

    .line 56
    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    .line 57
    :array_1
    .array-data 0x4
        0x64t 0x0t 0x2t 0x7ft
        0x68t 0x0t 0x2t 0x7ft
        0x66t 0x0t 0x2t 0x7ft
        0x6at 0x0t 0x2t 0x7ft
    .end array-data

    .line 59
    :array_2
    .array-data 0x4
        0x63t 0x0t 0x2t 0x7ft
        0x67t 0x0t 0x2t 0x7ft
        0x65t 0x0t 0x2t 0x7ft
        0x69t 0x0t 0x2t 0x7ft
    .end array-data

    .line 61
    :array_3
    .array-data 0x4
        0xdet 0x0t 0x9t 0x7ft
        0xdft 0x0t 0x9t 0x7ft
        0xe0t 0x0t 0x9t 0x7ft
        0xe1t 0x0t 0x9t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 42
    invoke-direct {p0}, Lcom/douban/radio/app/FMActivity;-><init>()V

    .line 72
    new-array v0, v1, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/douban/radio/app/ShareActivity;->connectTos:[Landroid/widget/ImageView;

    .line 83
    new-array v0, v1, [Z

    iput-object v0, p0, Lcom/douban/radio/app/ShareActivity;->shareToSet:[Z

    .line 85
    new-instance v0, Lcom/douban/radio/app/ShareActivity$1;

    invoke-direct {v0, p0}, Lcom/douban/radio/app/ShareActivity$1;-><init>(Lcom/douban/radio/app/ShareActivity;)V

    iput-object v0, p0, Lcom/douban/radio/app/ShareActivity;->responseHandler:Lcom/loopj/android/http/JsonHttpResponseHandler;

    .line 132
    new-instance v0, Lcom/douban/radio/app/ShareActivity$2;

    invoke-direct {v0, p0}, Lcom/douban/radio/app/ShareActivity$2;-><init>(Lcom/douban/radio/app/ShareActivity;)V

    iput-object v0, p0, Lcom/douban/radio/app/ShareActivity;->checkHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/douban/radio/app/ShareActivity;)Lfm/douban/model/FMSharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/douban/radio/app/ShareActivity;->fmsp:Lfm/douban/model/FMSharedPreferences;

    return-object v0
.end method

.method static synthetic access$100(Lcom/douban/radio/app/ShareActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/douban/radio/app/ShareActivity;->setShareDouban(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/douban/radio/app/ShareActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/douban/radio/app/ShareActivity;->shareButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/douban/radio/app/ShareActivity;)[Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/douban/radio/app/ShareActivity;->connectTos:[Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/douban/radio/app/ShareActivity;)Lcom/loopj/android/http/JsonHttpResponseHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/douban/radio/app/ShareActivity;->responseHandler:Lcom/loopj/android/http/JsonHttpResponseHandler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/douban/radio/app/ShareActivity;)Lfm/douban/controller/RadioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/douban/radio/app/ShareActivity;->rm:Lfm/douban/controller/RadioManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/douban/radio/app/ShareActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/douban/radio/app/ShareActivity;->shareMask:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/douban/radio/app/ShareActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/douban/radio/app/ShareActivity;->shareContent:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$800(Lcom/douban/radio/app/ShareActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/douban/radio/app/ShareActivity;->setShareButtonState()V

    return-void
.end method

.method private setShare(IZ)V
    .locals 2
    .parameter "source"
    .parameter "toShare"

    .prologue
    .line 417
    iget-object v0, p0, Lcom/douban/radio/app/ShareActivity;->shareToSet:[Z

    aput-boolean p2, v0, p1

    .line 418
    iget-object v0, p0, Lcom/douban/radio/app/ShareActivity;->fmsp:Lfm/douban/model/FMSharedPreferences;

    sget-object v1, Lfm/douban/model/FMSharedPreferences;->SHARE_TOS:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1, p2}, Lfm/douban/model/FMSharedPreferences;->putBoolean(Ljava/lang/String;Z)Z

    .line 419
    iget-object v0, p0, Lcom/douban/radio/app/ShareActivity;->connectTos:[Landroid/widget/ImageView;

    aget-object v1, v0, p1

    if-eqz p2, :cond_0

    sget-object v0, Lcom/douban/radio/app/ShareActivity;->SHARE_IMG_ACTIVED_RESID:[I

    aget v0, v0, p1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 421
    iget-object v0, p0, Lcom/douban/radio/app/ShareActivity;->connectTos:[Landroid/widget/ImageView;

    aget-object v1, v0, p1

    if-eqz p2, :cond_1

    const v0, 0x7f02005e

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 423
    return-void

    .line 419
    :cond_0
    sget-object v0, Lcom/douban/radio/app/ShareActivity;->SHARE_IMG_RESID:[I

    aget v0, v0, p1

    goto :goto_0

    .line 421
    :cond_1
    const v0, 0x7f02005d

    goto :goto_1
.end method

.method private setShareButtonState()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 374
    invoke-virtual {p0}, Lcom/douban/radio/app/ShareActivity;->getApplication()Landroid/app/Application;

    move-result-object v4

    invoke-static {v4}, Lcom/douban/share/ShareMgr;->getInstance(Landroid/content/Context;)Lcom/douban/share/ShareMgr;

    move-result-object v2

    .line 375
    .local v2, shareMgr:Lcom/douban/share/ShareMgr;
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    const/4 v4, 0x4

    if-ge v1, v4, :cond_2

    .line 376
    invoke-virtual {v2, v1}, Lcom/douban/share/ShareMgr;->getAccessToken(I)Lcom/douban/share/ShareToken;

    move-result-object v3

    .line 377
    .local v3, st:Lcom/douban/share/ShareToken;
    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/douban/radio/app/ShareActivity;->fmsp:Lfm/douban/model/FMSharedPreferences;

    sget-object v5, Lfm/douban/model/FMSharedPreferences;->SHARE_TOS:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5, v7}, Lfm/douban/model/FMSharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_1

    .line 378
    :cond_0
    invoke-direct {p0, v1, v6}, Lcom/douban/radio/app/ShareActivity;->setShare(IZ)V

    .line 375
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 380
    :cond_1
    invoke-direct {p0, v1, v7}, Lcom/douban/radio/app/ShareActivity;->setShare(IZ)V

    goto :goto_1

    .line 384
    .end local v3           #st:Lcom/douban/share/ShareToken;
    :cond_2
    iget-object v4, p0, Lcom/douban/radio/app/ShareActivity;->rm:Lfm/douban/controller/RadioManager;

    invoke-static {v4}, Lfm/douban/model/Token;->get(Lfm/douban/controller/RadioManager;)Lfm/douban/model/Token;

    move-result-object v0

    .line 385
    .local v0, doubanToken:Lfm/douban/model/Token;
    if-eqz v0, :cond_3

    iget-object v4, p0, Lcom/douban/radio/app/ShareActivity;->fmsp:Lfm/douban/model/FMSharedPreferences;

    const-string v5, "can_share_to_douban"

    invoke-virtual {v4, v5, v6}, Lfm/douban/model/FMSharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/douban/radio/app/ShareActivity;->fmsp:Lfm/douban/model/FMSharedPreferences;

    sget-object v5, Lfm/douban/model/FMSharedPreferences;->SHARE_TOS:[Ljava/lang/String;

    aget-object v5, v5, v6

    invoke-virtual {v4, v5, v7}, Lfm/douban/model/FMSharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_5

    .line 387
    :cond_3
    invoke-direct {p0, v6}, Lcom/douban/radio/app/ShareActivity;->setShareDouban(Z)V

    .line 392
    :goto_2
    if-eqz v0, :cond_4

    iget-object v4, p0, Lcom/douban/radio/app/ShareActivity;->fmsp:Lfm/douban/model/FMSharedPreferences;

    const-string v5, "can_share_to_douban"

    invoke-virtual {v4, v5, v6}, Lfm/douban/model/FMSharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_4

    .line 393
    iget-object v4, p0, Lcom/douban/radio/app/ShareActivity;->checkHandler:Landroid/os/Handler;

    const/16 v5, 0x7d0

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 396
    :cond_4
    iget-object v4, p0, Lcom/douban/radio/app/ShareActivity;->shareButton:Landroid/widget/Button;

    const v5, 0x7f0900d0

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    .line 398
    return-void

    .line 389
    :cond_5
    invoke-direct {p0, v7}, Lcom/douban/radio/app/ShareActivity;->setShareDouban(Z)V

    goto :goto_2
.end method

.method private setShareDouban(Z)V
    .locals 1
    .parameter "toShare"

    .prologue
    .line 405
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/douban/radio/app/ShareActivity;->setShare(IZ)V

    .line 406
    return-void
.end method

.method private setShareRenren(Z)V
    .locals 1
    .parameter "toShare"

    .prologue
    .line 409
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/douban/radio/app/ShareActivity;->setShare(IZ)V

    .line 410
    return-void
.end method

.method private setShareSina(Z)V
    .locals 1
    .parameter "toShare"

    .prologue
    .line 401
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/douban/radio/app/ShareActivity;->setShare(IZ)V

    .line 402
    return-void
.end method

.method private setShareTencent(Z)V
    .locals 1
    .parameter "toShare"

    .prologue
    .line 413
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lcom/douban/radio/app/ShareActivity;->setShare(IZ)V

    .line 414
    return-void
.end method

.method private shareSong(I)V
    .locals 3
    .parameter "shareSource"

    .prologue
    .line 428
    const/16 v0, 0xe

    iget-object v1, p0, Lcom/douban/radio/app/ShareActivity;->contentToShare:Ljava/lang/String;

    iget-object v2, p0, Lcom/douban/radio/app/ShareActivity;->rs:Lfm/douban/service/RadioState;

    invoke-static {p0, v0, p1, v1, v2}, Lfm/douban/service/RadioService;->sendShareCommand(Landroid/content/Context;IILjava/lang/String;Lfm/douban/service/RadioState;)V

    .line 430
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v2, 0x1

    .line 353
    const-string v0, "share"

    const-string v1, "onactivityresult****"

    invoke-static {v0, v1}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 355
    const-string v0, "share"

    const-string v1, "onactivityresult****ok"

    invoke-static {v0, v1}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    if-ne p1, v2, :cond_1

    .line 357
    const-string v0, "share"

    const-string v1, "onactivityresult****douban"

    invoke-static {v0, v1}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    invoke-direct {p0, v2}, Lcom/douban/radio/app/ShareActivity;->setShareDouban(Z)V

    .line 368
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/douban/radio/app/FMActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 369
    return-void

    .line 359
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 360
    const-string v0, "share"

    const-string v1, "onactivityresult****sina"

    invoke-static {v0, v1}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    invoke-direct {p0, v2}, Lcom/douban/radio/app/ShareActivity;->setShareSina(Z)V

    goto :goto_0

    .line 362
    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 363
    invoke-direct {p0, v2}, Lcom/douban/radio/app/ShareActivity;->setShareRenren(Z)V

    goto :goto_0

    .line 364
    :cond_3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 365
    invoke-direct {p0, v2}, Lcom/douban/radio/app/ShareActivity;->setShareTencent(Z)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter "v"

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 270
    iget-object v6, p0, Lcom/douban/radio/app/ShareActivity;->shareButton:Landroid/widget/Button;

    if-ne p1, v6, :cond_4

    .line 271
    iget-object v6, p0, Lcom/douban/radio/app/ShareActivity;->shareToSet:[Z

    aget-boolean v4, v6, v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/douban/radio/app/ShareActivity;->shareToSet:[Z

    aget-boolean v4, v4, v5

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/douban/radio/app/ShareActivity;->shareToSet:[Z

    aget-boolean v4, v4, v7

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/douban/radio/app/ShareActivity;->shareToSet:[Z

    aget-boolean v4, v4, v8

    if-nez v4, :cond_1

    .line 273
    const v4, 0x7f0900e8

    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 349
    :cond_0
    :goto_0
    return-void

    .line 276
    :cond_1
    iget-object v4, p0, Lcom/douban/radio/app/ShareActivity;->shareButton:Landroid/widget/Button;

    const v6, 0x7f0900d1

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setText(I)V

    .line 277
    iget-object v4, p0, Lcom/douban/radio/app/ShareActivity;->shareButton:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 278
    iget-object v4, p0, Lcom/douban/radio/app/ShareActivity;->shareMask:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 279
    iget-object v4, p0, Lcom/douban/radio/app/ShareActivity;->shareContent:Landroid/widget/EditText;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 280
    iget-object v4, p0, Lcom/douban/radio/app/ShareActivity;->shareContent:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/douban/radio/app/ShareActivity;->contentToShare:Ljava/lang/String;

    .line 282
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 283
    .local v2, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v9, :cond_3

    .line 284
    iget-object v4, p0, Lcom/douban/radio/app/ShareActivity;->shareToSet:[Z

    aget-boolean v4, v4, v0

    if-eqz v4, :cond_2

    .line 285
    invoke-direct {p0, v0}, Lcom/douban/radio/app/ShareActivity;->shareSong(I)V

    .line 286
    sget-object v4, Lcom/douban/share/ShareMgr;->SHARE_STR:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    :cond_2
    iget-object v4, p0, Lcom/douban/radio/app/ShareActivity;->fmsp:Lfm/douban/model/FMSharedPreferences;

    sget-object v5, Lfm/douban/model/FMSharedPreferences;->SHARE_TOS:[Ljava/lang/String;

    aget-object v5, v5, v0

    iget-object v6, p0, Lcom/douban/radio/app/ShareActivity;->shareToSet:[Z

    aget-boolean v6, v6, v0

    invoke-virtual {v4, v5, v6}, Lfm/douban/model/FMSharedPreferences;->putBoolean(Ljava/lang/String;Z)Z

    .line 283
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 291
    :cond_3
    const-string v4, "Share"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v4, v5}, Lcom/mobclick/android/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 292
    .end local v0           #i:I
    .end local v2           #sb:Ljava/lang/StringBuilder;
    :cond_4
    iget-object v6, p0, Lcom/douban/radio/app/ShareActivity;->connectTos:[Landroid/widget/ImageView;

    aget-object v6, v6, v5

    if-ne p1, v6, :cond_8

    .line 293
    iget-object v6, p0, Lcom/douban/radio/app/ShareActivity;->rm:Lfm/douban/controller/RadioManager;

    invoke-static {v6}, Lfm/douban/model/Token;->get(Lfm/douban/controller/RadioManager;)Lfm/douban/model/Token;

    move-result-object v3

    .line 294
    .local v3, t:Lfm/douban/model/Token;
    if-nez v3, :cond_5

    .line 296
    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/douban/radio/app/LoginActivity;

    invoke-direct {v5, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v5, v4}, Lcom/douban/radio/app/ShareActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 300
    :cond_5
    iget-object v6, p0, Lcom/douban/radio/app/ShareActivity;->fmsp:Lfm/douban/model/FMSharedPreferences;

    const-string v7, "can_share_to_douban"

    invoke-virtual {v6, v7, v5}, Lfm/douban/model/FMSharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_6

    .line 302
    const v5, 0x7f0900e4

    invoke-static {p0, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 306
    invoke-static {p0}, Lcom/douban/radio/app/Warning;->showBindEmail(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 309
    :cond_6
    iget-object v6, p0, Lcom/douban/radio/app/ShareActivity;->shareToSet:[Z

    aget-boolean v6, v6, v5

    if-nez v6, :cond_7

    :goto_2
    invoke-direct {p0, v4}, Lcom/douban/radio/app/ShareActivity;->setShareDouban(Z)V

    goto/16 :goto_0

    :cond_7
    move v4, v5

    goto :goto_2

    .line 313
    .end local v3           #t:Lfm/douban/model/Token;
    :cond_8
    iget-object v6, p0, Lcom/douban/radio/app/ShareActivity;->connectTos:[Landroid/widget/ImageView;

    aget-object v6, v6, v4

    if-ne p1, v6, :cond_b

    .line 314
    invoke-virtual {p0}, Lcom/douban/radio/app/ShareActivity;->getApplication()Landroid/app/Application;

    move-result-object v6

    invoke-static {v6}, Lcom/douban/share/ShareMgr;->getInstance(Landroid/content/Context;)Lcom/douban/share/ShareMgr;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/douban/share/ShareMgr;->getAccessToken(I)Lcom/douban/share/ShareToken;

    move-result-object v6

    if-nez v6, :cond_9

    .line 316
    new-instance v1, Landroid/content/Intent;

    const-class v5, Lcom/douban/radio/app/FMShareAuth;

    invoke-direct {v1, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 317
    .local v1, intent:Landroid/content/Intent;
    const-string v5, "key_auth_source"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 318
    invoke-virtual {p0, v1, v7}, Lcom/douban/radio/app/ShareActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 321
    .end local v1           #intent:Landroid/content/Intent;
    :cond_9
    iget-object v6, p0, Lcom/douban/radio/app/ShareActivity;->shareToSet:[Z

    aget-boolean v6, v6, v4

    if-nez v6, :cond_a

    :goto_3
    invoke-direct {p0, v4}, Lcom/douban/radio/app/ShareActivity;->setShareSina(Z)V

    goto/16 :goto_0

    :cond_a
    move v4, v5

    goto :goto_3

    .line 324
    :cond_b
    iget-object v6, p0, Lcom/douban/radio/app/ShareActivity;->connectTos:[Landroid/widget/ImageView;

    aget-object v6, v6, v7

    if-ne p1, v6, :cond_e

    .line 325
    invoke-static {p0}, Lcom/douban/share/ShareMgr;->getInstance(Landroid/content/Context;)Lcom/douban/share/ShareMgr;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/douban/share/ShareMgr;->getAccessToken(I)Lcom/douban/share/ShareToken;

    move-result-object v6

    if-nez v6, :cond_c

    .line 327
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/douban/radio/app/FMShareAuth;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 328
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v4, "key_auth_source"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 329
    invoke-virtual {p0, v1, v9}, Lcom/douban/radio/app/ShareActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 332
    .end local v1           #intent:Landroid/content/Intent;
    :cond_c
    iget-object v6, p0, Lcom/douban/radio/app/ShareActivity;->shareToSet:[Z

    aget-boolean v6, v6, v7

    if-nez v6, :cond_d

    :goto_4
    invoke-direct {p0, v4}, Lcom/douban/radio/app/ShareActivity;->setShareRenren(Z)V

    goto/16 :goto_0

    :cond_d
    move v4, v5

    goto :goto_4

    .line 335
    :cond_e
    iget-object v6, p0, Lcom/douban/radio/app/ShareActivity;->connectTos:[Landroid/widget/ImageView;

    aget-object v6, v6, v8

    if-ne p1, v6, :cond_11

    .line 336
    invoke-static {p0}, Lcom/douban/share/ShareMgr;->getInstance(Landroid/content/Context;)Lcom/douban/share/ShareMgr;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/douban/share/ShareMgr;->getAccessToken(I)Lcom/douban/share/ShareToken;

    move-result-object v6

    if-nez v6, :cond_f

    .line 338
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/douban/radio/app/FMShareAuth;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 339
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v4, "key_auth_source"

    invoke-virtual {v1, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 340
    invoke-virtual {p0, v1, v8}, Lcom/douban/radio/app/ShareActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 343
    .end local v1           #intent:Landroid/content/Intent;
    :cond_f
    iget-object v6, p0, Lcom/douban/radio/app/ShareActivity;->shareToSet:[Z

    aget-boolean v6, v6, v8

    if-nez v6, :cond_10

    :goto_5
    invoke-direct {p0, v4}, Lcom/douban/radio/app/ShareActivity;->setShareTencent(Z)V

    goto/16 :goto_0

    :cond_10
    move v4, v5

    goto :goto_5

    .line 346
    :cond_11
    iget-object v4, p0, Lcom/douban/radio/app/ShareActivity;->closeButton:Landroid/widget/ImageView;

    if-ne p1, v4, :cond_0

    .line 347
    invoke-virtual {p0}, Lcom/douban/radio/app/ShareActivity;->finish()V

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    .line 144
    invoke-super {p0, p1}, Lcom/douban/radio/app/FMActivity;->onCreate(Landroid/os/Bundle;)V

    .line 145
    const v2, 0x7f030009

    invoke-virtual {p0, v2}, Lcom/douban/radio/app/ShareActivity;->setContentView(I)V

    .line 146
    const v2, 0x7f08003c

    invoke-virtual {p0, v2}, Lcom/douban/radio/app/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/douban/radio/app/ShareActivity;->shareButton:Landroid/widget/Button;

    .line 147
    const v2, 0x7f08008f

    invoke-virtual {p0, v2}, Lcom/douban/radio/app/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/douban/radio/app/ShareActivity;->songImage:Landroid/widget/ImageView;

    .line 148
    const v2, 0x7f080090

    invoke-virtual {p0, v2}, Lcom/douban/radio/app/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/douban/radio/app/ShareActivity;->songName:Landroid/widget/TextView;

    .line 149
    const v2, 0x7f080091

    invoke-virtual {p0, v2}, Lcom/douban/radio/app/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/douban/radio/app/ShareActivity;->songInfo:Landroid/widget/TextView;

    .line 150
    iget-object v3, p0, Lcom/douban/radio/app/ShareActivity;->connectTos:[Landroid/widget/ImageView;

    const/4 v4, 0x0

    const v2, 0x7f080097

    invoke-virtual {p0, v2}, Lcom/douban/radio/app/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    aput-object v2, v3, v4

    .line 151
    iget-object v3, p0, Lcom/douban/radio/app/ShareActivity;->connectTos:[Landroid/widget/ImageView;

    const/4 v4, 0x1

    const v2, 0x7f080098

    invoke-virtual {p0, v2}, Lcom/douban/radio/app/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    aput-object v2, v3, v4

    .line 152
    iget-object v3, p0, Lcom/douban/radio/app/ShareActivity;->connectTos:[Landroid/widget/ImageView;

    const/4 v4, 0x2

    const v2, 0x7f080099

    invoke-virtual {p0, v2}, Lcom/douban/radio/app/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    aput-object v2, v3, v4

    .line 153
    iget-object v3, p0, Lcom/douban/radio/app/ShareActivity;->connectTos:[Landroid/widget/ImageView;

    const/4 v4, 0x3

    const v2, 0x7f08009a

    invoke-virtual {p0, v2}, Lcom/douban/radio/app/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    aput-object v2, v3, v4

    .line 155
    const v2, 0x7f080092

    invoke-virtual {p0, v2}, Lcom/douban/radio/app/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/douban/radio/app/ShareActivity;->shareContent:Landroid/widget/EditText;

    .line 156
    const v2, 0x7f08009b

    invoke-virtual {p0, v2}, Lcom/douban/radio/app/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/douban/radio/app/ShareActivity;->closeButton:Landroid/widget/ImageView;

    .line 157
    const v2, 0x7f080093

    invoke-virtual {p0, v2}, Lcom/douban/radio/app/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/douban/radio/app/ShareActivity;->shareMask:Landroid/view/View;

    .line 159
    iget-object v2, p0, Lcom/douban/radio/app/ShareActivity;->shareMask:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 161
    iget-object v2, p0, Lcom/douban/radio/app/ShareActivity;->shareButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    iget-object v6, p0, Lcom/douban/radio/app/ShareActivity;->connectTos:[Landroid/widget/ImageView;

    .local v6, arr$:[Landroid/widget/ImageView;
    array-length v9, v6

    .local v9, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_0
    if-ge v7, v9, :cond_0

    aget-object v12, v6, v7

    .line 163
    .local v12, v:Landroid/widget/ImageView;
    invoke-virtual {v12, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 166
    .end local v12           #v:Landroid/widget/ImageView;
    :cond_0
    iget-object v2, p0, Lcom/douban/radio/app/ShareActivity;->closeButton:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iget-object v2, p0, Lcom/douban/radio/app/ShareActivity;->shareContent:Landroid/widget/EditText;

    new-instance v3, Lcom/douban/radio/app/ShareActivity$3;

    invoke-direct {v3, p0}, Lcom/douban/radio/app/ShareActivity$3;-><init>(Lcom/douban/radio/app/ShareActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 187
    invoke-virtual {p0}, Lcom/douban/radio/app/ShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "state"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfm/douban/service/RadioState;

    iput-object v2, p0, Lcom/douban/radio/app/ShareActivity;->rs:Lfm/douban/service/RadioState;

    .line 188
    invoke-static {p0}, Lfm/douban/FmApp;->getImageDownloader(Landroid/content/Context;)Lnatalya/graphics/ImageDownloader;

    move-result-object v0

    .line 189
    .local v0, idown:Lnatalya/graphics/ImageDownloader;
    iget-object v2, p0, Lcom/douban/radio/app/ShareActivity;->rs:Lfm/douban/service/RadioState;

    iget-object v2, v2, Lfm/douban/service/RadioState;->song:Lfm/douban/model/Song;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lfm/douban/model/Song;->pictureUrl(I)Ljava/lang/String;

    move-result-object v1

    .line 190
    .local v1, url:Ljava/lang/String;
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/douban/radio/app/ShareActivity;->songImage:Landroid/widget/ImageView;

    const/4 v4, 0x0

    const v5, 0x7f020012

    invoke-virtual/range {v0 .. v5}, Lnatalya/graphics/ImageDownloader;->download(Ljava/lang/String;ILandroid/widget/ImageView;ZI)V

    .line 192
    iget-object v2, p0, Lcom/douban/radio/app/ShareActivity;->songName:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/douban/radio/app/ShareActivity;->rs:Lfm/douban/service/RadioState;

    iget-object v3, v3, Lfm/douban/service/RadioState;->song:Lfm/douban/model/Song;

    iget-object v3, v3, Lfm/douban/model/Song;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    iget-object v2, p0, Lcom/douban/radio/app/ShareActivity;->rs:Lfm/douban/service/RadioState;

    iget-object v2, v2, Lfm/douban/service/RadioState;->channel:Lfm/douban/model/Channel;

    iget-object v10, v2, Lfm/douban/model/Channel;->name:Ljava/lang/String;

    .line 194
    .local v10, name:Ljava/lang/String;
    if-nez v10, :cond_1

    .line 195
    const-string v10, ""

    .line 197
    :cond_1
    iget-object v2, p0, Lcom/douban/radio/app/ShareActivity;->rs:Lfm/douban/service/RadioState;

    iget-object v2, v2, Lfm/douban/service/RadioState;->channelId:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const v11, 0x7f0900d9

    .line 199
    .local v11, shareInfoResource:I
    :goto_1
    invoke-virtual {p0}, Lcom/douban/radio/app/ShareActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v10, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 200
    .local v8, info:Ljava/lang/String;
    iget-object v2, p0, Lcom/douban/radio/app/ShareActivity;->songInfo:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    invoke-static {p0}, Lfm/douban/FmApp;->getRadioManager(Landroid/content/Context;)Lfm/douban/controller/RadioManager;

    move-result-object v2

    iput-object v2, p0, Lcom/douban/radio/app/ShareActivity;->rm:Lfm/douban/controller/RadioManager;

    .line 203
    iget-object v2, p0, Lcom/douban/radio/app/ShareActivity;->rm:Lfm/douban/controller/RadioManager;

    invoke-virtual {v2}, Lfm/douban/controller/RadioManager;->getSharedPreferences()Lfm/douban/model/FMSharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/douban/radio/app/ShareActivity;->fmsp:Lfm/douban/model/FMSharedPreferences;

    .line 205
    return-void

    .line 197
    .end local v8           #info:Ljava/lang/String;
    .end local v11           #shareInfoResource:I
    :cond_2
    const v11, 0x7f0900d8

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 265
    const/4 v0, 0x0

    return v0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/douban/radio/app/ShareActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/douban/radio/app/ShareActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 260
    invoke-super {p0}, Lcom/douban/radio/app/FMActivity;->onPause()V

    .line 261
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 210
    invoke-direct {p0}, Lcom/douban/radio/app/ShareActivity;->setShareButtonState()V

    .line 212
    iget-object v1, p0, Lcom/douban/radio/app/ShareActivity;->receiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 213
    new-instance v1, Lcom/douban/radio/app/ShareActivity$4;

    invoke-direct {v1, p0}, Lcom/douban/radio/app/ShareActivity$4;-><init>(Lcom/douban/radio/app/ShareActivity;)V

    iput-object v1, p0, Lcom/douban/radio/app/ShareActivity;->receiver:Landroid/content/BroadcastReceiver;

    .line 250
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 251
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "fm.douban.action_share_done"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 252
    iget-object v1, p0, Lcom/douban/radio/app/ShareActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/douban/radio/app/ShareActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 254
    invoke-super {p0}, Lcom/douban/radio/app/FMActivity;->onResume()V

    .line 255
    return-void
.end method
