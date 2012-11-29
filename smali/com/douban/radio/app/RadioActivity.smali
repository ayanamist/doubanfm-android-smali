.class public Lcom/douban/radio/app/RadioActivity;
.super Lcom/douban/radio/app/FMActivity;
.source "RadioActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lnatalya/graphics/ImageDownloader$OnDownload;
.implements Lnatalya/graphics/ImageDownloader$OnPrepare;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/douban/radio/app/RadioActivity$AnimationController;
    }
.end annotation


# static fields
.field private static final DIALOG_GUIDANCE:I = 0xb

.field private static final HANDLER_MSG_SWITCH_CHANNEL:I = 0x8ae

.field protected static final HANDLER_MSG_SWITCH_SONG:I = 0xd05

.field private static final MSG_HIDE_TOP_MENU:I = 0xfa4

.field private static final MSG_UPDATE_SONG_TIME:I = 0xfa1

.field private static final MSG_UPDATE_SONG_TIME_END:I = 0xfa3

.field private static final MSG_UPDATE_SONG_TIME_START:I = 0xfa2

.field private static final MSG_UPDATE_UI:I = 0xfa5

.field public static final REQUEST_LOGIN:I = 0x3e9

.field public static final REQUEST_LOGIN_HEART:I = 0x3ea

.field public static final REQUEST_SELECT_CHANNEL:I = 0x3eb

.field public static final RESULT_CHANNEL_SWTICHED:I = 0x7d2

.field public static final RESULT_LOGIN:I = 0x7d1

.field public static final RESULT_OFFLINE_PLAY:I = 0x7d3

.field private static final SETTING_ANONYMOUS_LIKE:Ljava/lang/String; = "anonymous_like"

.field private static final SETTING_AUTO_HIDE_TOP_MENU:Ljava/lang/String; = "auto_hide_top_menu"

.field private static final SETTING_USER_HATE:Ljava/lang/String; = "user_hate"

.field private static final SETTING_USER_LIKE:Ljava/lang/String; = "user_like"

.field private static final TAG:Ljava/lang/String; = "RadioActivity"


# instance fields
.field private app:Lcom/douban/radio/RadioApp;

.field private background:Landroid/widget/ImageView;

.field private channel:Lfm/douban/model/Channel;

.field private channelButton:Landroid/widget/ImageView;

.field private channelTitle:Landroid/widget/TextView;

.field private channels:[Lfm/douban/model/Channel;

.field private cm:Lfm/douban/controller/ChannelManager;

.field private coverItem:Landroid/view/ViewGroup;

.field private curTime:Landroid/widget/TextView;

.field private dialog:Landroid/app/Dialog;

.field private firstLoadingUI:Z

.field private fmsp:Lfm/douban/model/FMSharedPreferences;

.field private handler:Landroid/os/Handler;

.field private hateButton:Landroid/widget/ImageButton;

.field private hideMenuAnimation:Landroid/view/animation/Animation;

.field private idown:Lnatalya/graphics/ImageDownloader;

.field private inAnimation:Landroid/view/animation/Animation;

.field private isHD:Z

.field private isXH:Z

.field private lastRadioState:Lfm/douban/service/RadioState;

.field private likeButton:Landroid/widget/ImageButton;

.field private maskAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private maskFadeInAnimation:Landroid/view/animation/Animation;

.field private maskPauseOverlay:Landroid/view/View;

.field private maskPauseResumeAnim:Landroid/widget/ImageView;

.field private menuButton:Landroid/view/View;

.field private menuList:Landroid/view/View;

.field private offlineStatus:Landroid/widget/TextView;

.field private picLoading:Z

.field private pictureProgress:Landroid/widget/ProgressBar;

.field private playPosition:I

.field private quitButton:Landroid/view/View;

.field private receiver:Landroid/content/BroadcastReceiver;

.field private rm:Lfm/douban/controller/RadioManager;

.field private settingButton:Landroid/view/View;

.field private shareButton:Landroid/widget/ImageView;

.field private showMenuAnimation:Landroid/view/animation/Animation;

.field private skipButton:Landroid/widget/ImageButton;

.field private songGallery:Lfm/douban/view/FlipGallery;

.field private songLoading:Z

.field private songName:Lfm/douban/view/ScrollTextView;

.field private songPicture:Landroid/widget/ImageView;

.field private startInAnimation:Ljava/lang/Runnable;

.field private switchHandler:Landroid/os/Handler;

.field private switcher:Lfm/douban/view/ChannelSwitcher;

.field private updateCurtimeStarted:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/douban/radio/app/FMActivity;-><init>()V

    .line 155
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/douban/radio/app/RadioActivity;->updateCurtimeStarted:Z

    .line 156
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/douban/radio/app/RadioActivity;->firstLoadingUI:Z

    .line 161
    new-instance v0, Lcom/douban/radio/app/RadioActivity$1;

    invoke-direct {v0, p0}, Lcom/douban/radio/app/RadioActivity$1;-><init>(Lcom/douban/radio/app/RadioActivity;)V

    iput-object v0, p0, Lcom/douban/radio/app/RadioActivity;->handler:Landroid/os/Handler;

    .line 194
    new-instance v0, Lcom/douban/radio/app/RadioActivity$2;

    invoke-direct {v0, p0}, Lcom/douban/radio/app/RadioActivity$2;-><init>(Lcom/douban/radio/app/RadioActivity;)V

    iput-object v0, p0, Lcom/douban/radio/app/RadioActivity;->switchHandler:Landroid/os/Handler;

    .line 730
    new-instance v0, Lcom/douban/radio/app/RadioActivity$16;

    invoke-direct {v0, p0}, Lcom/douban/radio/app/RadioActivity$16;-><init>(Lcom/douban/radio/app/RadioActivity;)V

    iput-object v0, p0, Lcom/douban/radio/app/RadioActivity;->startInAnimation:Ljava/lang/Runnable;

    .line 1002
    return-void
.end method

.method static synthetic access$000(Lcom/douban/radio/app/RadioActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Lcom/douban/radio/app/RadioActivity;->playPosition:I

    return v0
.end method

.method static synthetic access$002(Lcom/douban/radio/app/RadioActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput p1, p0, Lcom/douban/radio/app/RadioActivity;->playPosition:I

    return p1
.end method

.method static synthetic access$100(Lcom/douban/radio/app/RadioActivity;)Lcom/douban/radio/RadioApp;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/douban/radio/app/RadioActivity;->app:Lcom/douban/radio/RadioApp;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/douban/radio/app/RadioActivity;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/douban/radio/app/RadioActivity;->coverItem:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/douban/radio/app/RadioActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/douban/radio/app/RadioActivity;->switchHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/douban/radio/app/RadioActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/douban/radio/app/RadioActivity;->menuList:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/douban/radio/app/RadioActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/douban/radio/app/RadioActivity;->showTopMenu()V

    return-void
.end method

.method static synthetic access$1500(Lcom/douban/radio/app/RadioActivity;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/douban/radio/app/RadioActivity;->inAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/douban/radio/app/RadioActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/douban/radio/app/RadioActivity;->songPicture:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/douban/radio/app/RadioActivity;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/douban/radio/app/RadioActivity;->dialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/douban/radio/app/RadioActivity;)Lfm/douban/model/FMSharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/douban/radio/app/RadioActivity;->fmsp:Lfm/douban/model/FMSharedPreferences;

    return-object v0
.end method

.method static synthetic access$200(Lcom/douban/radio/app/RadioActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/douban/radio/app/RadioActivity;->curTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/douban/radio/app/RadioActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/douban/radio/app/RadioActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$402(Lcom/douban/radio/app/RadioActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/douban/radio/app/RadioActivity;->updateCurtimeStarted:Z

    return p1
.end method

.method static synthetic access$500(Lcom/douban/radio/app/RadioActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/douban/radio/app/RadioActivity;->hideTopMenu()V

    return-void
.end method

.method static synthetic access$600(Lcom/douban/radio/app/RadioActivity;Lfm/douban/service/RadioState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/douban/radio/app/RadioActivity;->updateUI(Lfm/douban/service/RadioState;)V

    return-void
.end method

.method static synthetic access$700(Lcom/douban/radio/app/RadioActivity;)Lfm/douban/service/RadioState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/douban/radio/app/RadioActivity;->lastRadioState:Lfm/douban/service/RadioState;

    return-object v0
.end method

.method static synthetic access$802(Lcom/douban/radio/app/RadioActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/douban/radio/app/RadioActivity;->picLoading:Z

    return p1
.end method

.method static synthetic access$900(Lcom/douban/radio/app/RadioActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/douban/radio/app/RadioActivity;->pictureProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private declared-synchronized hideProgress()V
    .locals 3

    .prologue
    .line 762
    monitor-enter p0

    :try_start_0
    const-string v0, "RadioActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "picLoading:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/douban/radio/app/RadioActivity;->picLoading:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    const-string v0, "RadioActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "songLoading:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/douban/radio/app/RadioActivity;->songLoading:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    iget-boolean v0, p0, Lcom/douban/radio/app/RadioActivity;->picLoading:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/douban/radio/app/RadioActivity;->songLoading:Z

    if-eqz v0, :cond_1

    .line 765
    :cond_0
    iget-object v0, p0, Lcom/douban/radio/app/RadioActivity;->songGallery:Lfm/douban/view/FlipGallery;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lfm/douban/view/FlipGallery;->setLoading(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 770
    :goto_0
    monitor-exit p0

    return-void

    .line 767
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/douban/radio/app/RadioActivity;->pictureProgress:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 768
    iget-object v0, p0, Lcom/douban/radio/app/RadioActivity;->songGallery:Lfm/douban/view/FlipGallery;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lfm/douban/view/FlipGallery;->setLoading(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 762
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private hideTopMenu()V
    .locals 2

    .prologue
    .line 665
    iget-object v0, p0, Lcom/douban/radio/app/RadioActivity;->menuList:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/douban/radio/app/RadioActivity;->menuList:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 666
    iget-object v0, p0, Lcom/douban/radio/app/RadioActivity;->hideMenuAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    .line 667
    const v0, 0x7f040004

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/douban/radio/app/RadioActivity;->hideMenuAnimation:Landroid/view/animation/Animation;

    .line 668
    iget-object v0, p0, Lcom/douban/radio/app/RadioActivity;->hideMenuAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/douban/radio/app/RadioActivity$15;

    invoke-direct {v1, p0}, Lcom/douban/radio/app/RadioActivity$15;-><init>(Lcom/douban/radio/app/RadioActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 684
    :cond_0
    iget-object v0, p0, Lcom/douban/radio/app/RadioActivity;->menuList:Landroid/view/View;

    iget-object v1, p0, Lcom/douban/radio/app/RadioActivity;->hideMenuAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 686
    :cond_1
    return-void
.end method

.method private initPlayer()V
    .locals 15

    .prologue
    .line 236
    iget-object v10, p0, Lcom/douban/radio/app/RadioActivity;->cm:Lfm/douban/controller/ChannelManager;

    invoke-virtual {v10}, Lfm/douban/controller/ChannelManager;->getLastChannel()Lfm/douban/model/Channel;

    move-result-object v10

    iput-object v10, p0, Lcom/douban/radio/app/RadioActivity;->channel:Lfm/douban/model/Channel;

    .line 237
    const-string v10, "Channel"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "get channel"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/douban/radio/app/RadioActivity;->channel:Lfm/douban/model/Channel;

    iget-object v12, v12, Lfm/douban/model/Channel;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lfm/douban/util/DBLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 240
    .local v1, dm:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/douban/radio/app/RadioActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v10

    invoke-interface {v10}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 241
    iget v10, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v11, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 242
    .local v5, screenHeight:I
    iget v10, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v11, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 243
    .local v6, screenWidth:I
    const-string v10, "RadioActivity"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Resolution :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "x"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lfm/douban/util/DBLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    const-string v10, "RadioActivity"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Dpi :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v1, Landroid/util/DisplayMetrics;->xdpi:F

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "x"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v1, Landroid/util/DisplayMetrics;->ydpi:F

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lfm/douban/util/DBLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/douban/radio/app/RadioActivity;->isXH:Z

    .line 246
    iget v10, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    sparse-switch v10, :sswitch_data_0

    .line 264
    :goto_0
    const/16 v10, 0x400

    if-lt v5, v10, :cond_0

    const/16 v10, 0x320

    if-lt v6, v10, :cond_0

    .line 265
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/douban/radio/app/RadioActivity;->isHD:Z

    .line 266
    const/16 v10, 0x320

    if-ne v6, v10, :cond_0

    iget v10, v1, Landroid/util/DisplayMetrics;->xdpi:F

    const/high16 v11, 0x438c

    cmpl-float v10, v10, v11

    if-lez v10, :cond_0

    .line 268
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/douban/radio/app/RadioActivity;->isHD:Z

    .line 271
    :cond_0
    iget-boolean v10, p0, Lcom/douban/radio/app/RadioActivity;->isHD:Z

    if-eqz v10, :cond_7

    .line 272
    const v10, 0x7f030007

    invoke-virtual {p0, v10}, Lcom/douban/radio/app/RadioActivity;->setContentView(I)V

    .line 277
    :goto_1
    const v10, 0x7f080039

    invoke-virtual {p0, v10}, Lcom/douban/radio/app/RadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 278
    .local v4, p:Landroid/view/View;
    invoke-virtual {v4, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 280
    new-instance v10, Lcom/douban/radio/app/RadioActivity$AnimationController;

    const/4 v11, 0x0

    invoke-direct {v10, p0, v11}, Lcom/douban/radio/app/RadioActivity$AnimationController;-><init>(Lcom/douban/radio/app/RadioActivity;Lcom/douban/radio/app/RadioActivity$1;)V

    iput-object v10, p0, Lcom/douban/radio/app/RadioActivity;->maskAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 282
    const v10, 0x7f040002

    invoke-static {p0, v10}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v10

    iput-object v10, p0, Lcom/douban/radio/app/RadioActivity;->maskFadeInAnimation:Landroid/view/animation/Animation;

    .line 283
    iget-object v10, p0, Lcom/douban/radio/app/RadioActivity;->maskFadeInAnimation:Landroid/view/animation/Animation;

    iget-object v11, p0, Lcom/douban/radio/app/RadioActivity;->maskAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v10, v11}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 285
    const v10, 0x7f040001

    invoke-static {p0, v10}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v10

    iput-object v10, p0, Lcom/douban/radio/app/RadioActivity;->inAnimation:Landroid/view/animation/Animation;

    .line 286
    iget-object v10, p0, Lcom/douban/radio/app/RadioActivity;->inAnimation:Landroid/view/animation/Animation;

    new-instance v11, Lcom/douban/radio/app/RadioActivity$3;

    invoke-direct {v11, p0}, Lcom/douban/radio/app/RadioActivity$3;-><init>(Lcom/douban/radio/app/RadioActivity;)V

    invoke-virtual {v10, v11}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 303
    const v10, 0x7f080048

    invoke-virtual {p0, v10}, Lcom/douban/radio/app/RadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ProgressBar;

    iput-object v10, p0, Lcom/douban/radio/app/RadioActivity;->pictureProgress:Landroid/widget/ProgressBar;

    .line 304
    iget v10, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v11, 0x78

    if-ne v10, v11, :cond_1

    .line 305
    iget-object v10, p0, Lcom/douban/radio/app/RadioActivity;->pictureProgress:Landroid/widget/ProgressBar;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/widget/ProgressBar;->setPadding(IIII)V

    .line 308
    :cond_1
    const v10, 0x7f08003d

    invoke-virtual {p0, v10}, Lcom/douban/radio/app/RadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/douban/radio/app/RadioActivity;->channelTitle:Landroid/widget/TextView;

    .line 309
    iget-object v10, p0, Lcom/douban/radio/app/RadioActivity;->channelTitle:Landroid/widget/TextView;

    new-instance v11, Lcom/douban/radio/app/RadioActivity$4;

    invoke-direct {v11, p0}, Lcom/douban/radio/app/RadioActivity$4;-><init>(Lcom/douban/radio/app/RadioActivity;)V

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 317
    iget-object v10, p0, Lcom/douban/radio/app/RadioActivity;->channel:Lfm/douban/model/Channel;

    invoke-virtual {v10}, Lfm/douban/model/Channel;->isPublic()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 318
    iget-object v10, p0, Lcom/douban/radio/app/RadioActivity;->cm:Lfm/douban/controller/ChannelManager;

    invoke-virtual {v10}, Lfm/douban/controller/ChannelManager;->getPublicChannels()[Lfm/douban/model/Channel;

    move-result-object v10

    iput-object v10, p0, Lcom/douban/radio/app/RadioActivity;->channels:[Lfm/douban/model/Channel;

    .line 319
    iget-object v10, p0, Lcom/douban/radio/app/RadioActivity;->channelTitle:Landroid/widget/TextView;

    const v11, 0x7f090025

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    .line 325
    :goto_2
    const v10, 0x7f080040

    invoke-virtual {p0, v10}, Lcom/douban/radio/app/RadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lfm/douban/view/ChannelSwitcher;

    iput-object v10, p0, Lcom/douban/radio/app/RadioActivity;->switcher:Lfm/douban/view/ChannelSwitcher;

    .line 326
    iget-object v11, p0, Lcom/douban/radio/app/RadioActivity;->switcher:Lfm/douban/view/ChannelSwitcher;

    iget-object v12, p0, Lcom/douban/radio/app/RadioActivity;->channel:Lfm/douban/model/Channel;

    const/16 v10, 0x320

    if-le v6, v10, :cond_9

    const/4 v10, 0x5

    :goto_3
    iget-object v13, p0, Lcom/douban/radio/app/RadioActivity;->channels:[Lfm/douban/model/Channel;

    new-instance v14, Lcom/douban/radio/app/RadioActivity$5;

    invoke-direct {v14, p0}, Lcom/douban/radio/app/RadioActivity$5;-><init>(Lcom/douban/radio/app/RadioActivity;)V

    invoke-virtual {v11, v12, v10, v13, v14}, Lfm/douban/view/ChannelSwitcher;->init(Lfm/douban/model/Channel;I[Lfm/douban/model/Channel;Lfm/douban/view/ChannelSwitcher$SwitcherListener;)V

    .line 338
    const v10, 0x7f08003e

    invoke-virtual {p0, v10}, Lcom/douban/radio/app/RadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/douban/radio/app/RadioActivity;->offlineStatus:Landroid/widget/TextView;

    .line 339
    iget-object v10, p0, Lcom/douban/radio/app/RadioActivity;->offlineStatus:Landroid/widget/TextView;

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 341
    const v10, 0x7f08004e

    invoke-virtual {p0, v10}, Lcom/douban/radio/app/RadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lfm/douban/view/ScrollTextView;

    iput-object v10, p0, Lcom/douban/radio/app/RadioActivity;->songName:Lfm/douban/view/ScrollTextView;

    .line 342
    iget-object v10, p0, Lcom/douban/radio/app/RadioActivity;->songName:Lfm/douban/view/ScrollTextView;

    const/16 v11, 0x4e20

    invoke-virtual {v10, v11}, Lfm/douban/view/ScrollTextView;->setRndDuration(I)V

    .line 344
    const v10, 0x7f08004f

    invoke-virtual {p0, v10}, Lcom/douban/radio/app/RadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/douban/radio/app/RadioActivity;->curTime:Landroid/widget/TextView;

    .line 346
    const v10, 0x7f08004c

    invoke-virtual {p0, v10}, Lcom/douban/radio/app/RadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageButton;

    iput-object v10, p0, Lcom/douban/radio/app/RadioActivity;->likeButton:Landroid/widget/ImageButton;

    .line 347
    iget-object v10, p0, Lcom/douban/radio/app/RadioActivity;->likeButton:Landroid/widget/ImageButton;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 348
    iget-object v10, p0, Lcom/douban/radio/app/RadioActivity;->likeButton:Landroid/widget/ImageButton;

    const v11, 0x7f020020

    invoke-virtual {v10, v11}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 349
    iget-object v10, p0, Lcom/douban/radio/app/RadioActivity;->likeButton:Landroid/widget/ImageButton;

    invoke-virtual {v10, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 351
    const v10, 0x7f08004b

    invoke-virtual {p0, v10}, Lcom/douban/radio/app/RadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageButton;

    iput-object v10, p0, Lcom/douban/radio/app/RadioActivity;->hateButton:Landroid/widget/ImageButton;

    .line 352
    iget-object v10, p0, Lcom/douban/radio/app/RadioActivity;->hateButton:Landroid/widget/ImageButton;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 353
    iget-object v10, p0, Lcom/douban/radio/app/RadioActivity;->hateButton:Landroid/widget/ImageButton;

    const v11, 0x7f020079

    invoke-virtual {v10, v11}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 354
    iget-object v10, p0, Lcom/douban/radio/app/RadioActivity;->hateButton:Landroid/widget/ImageButton;

    invoke-virtual {v10, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 356
    const v10, 0x7f08004d

    invoke-virtual {p0, v10}, Lcom/douban/radio/app/RadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageButton;

    iput-object v10, p0, Lcom/douban/radio/app/RadioActivity;->skipButton:Landroid/widget/ImageButton;

    .line 357
    iget-object v10, p0, Lcom/douban/radio/app/RadioActivity;->skipButton:Landroid/widget/ImageButton;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 358
    iget-object v10, p0, Lcom/douban/radio/app/RadioActivity;->skipButton:Landroid/widget/ImageButton;

    const v11, 0x7f02006c

    invoke-virtual {v10, v11}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 359
    iget-object v10, p0, Lcom/douban/radio/app/RadioActivity;->skipButton:Landroid/widget/ImageButton;

    invoke-virtual {v10, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 361
    const v10, 0x7f080046

    invoke-virtual {p0, v10}, Lcom/douban/radio/app/RadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lfm/douban/view/FlipGallery;

    iput-object v10, p0, Lcom/douban/radio/app/RadioActivity;->songGallery:Lfm/douban/view/FlipGallery;

    .line 362
    const v10, 0x7f080045

    invoke-virtual {p0, v10}, Lcom/douban/radio/app/RadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 363
    .local v3, nextSongView:Landroid/widget/ImageView;
    iget-object v10, p0, Lcom/douban/radio/app/RadioActivity;->songGallery:Lfm/douban/view/FlipGallery;

    invoke-virtual {v10, v3}, Lfm/douban/view/FlipGallery;->setBackView(Landroid/widget/ImageView;)V

    .line 364
    iget-object v10, p0, Lcom/douban/radio/app/RadioActivity;->songGallery:Lfm/douban/view/FlipGallery;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lfm/douban/view/FlipGallery;->setFadeInAnimate(Z)V

    .line 365
    iget-object v10, p0, Lcom/douban/radio/app/RadioActivity;->songGallery:Lfm/douban/view/FlipGallery;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lfm/douban/view/FlipGallery;->setFlip(Z)V

    .line 366
    iget-object v10, p0, Lcom/douban/radio/app/RadioActivity;->songGallery:Lfm/douban/view/FlipGallery;

    if-eqz v10, :cond_4

    .line 367
    iget-boolean v10, p0, Lcom/douban/radio/app/RadioActivity;->isXH:Z

    if-eqz v10, :cond_2

    const/16 v10, 0x3e8

    if-ge v5, v10, :cond_2

    .line 369
    iget-object v10, p0, Lcom/douban/radio/app/RadioActivity;->songGallery:Lfm/douban/view/FlipGallery;

    invoke-virtual {v10}, Lfm/douban/view/FlipGallery;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .line 370
    .local v8, songp:Landroid/view/ViewGroup$LayoutParams;
    const/16 v10, 0x1ea

    iput v10, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 371
    const/16 v10, 0x1ea

    iput v10, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 372
    iget-object v10, p0, Lcom/douban/radio/app/RadioActivity;->songGallery:Lfm/douban/view/FlipGallery;

    invoke-virtual {v10, v8}, Lfm/douban/view/FlipGallery;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 374
    .end local v8           #songp:Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    new-instance v0, Lfm/douban/view/GalleryAdapter;

    const/4 v10, 0x1

    invoke-direct {v0, p0, v10}, Lfm/douban/view/GalleryAdapter;-><init>(Landroid/content/Context;Z)V

    .line 375
    .local v0, adapter:Lfm/douban/view/GalleryAdapter;
    iget v10, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v11, 0x78

    if-ne v10, v11, :cond_3

    .line 376
    new-instance v0, Lfm/douban/view/GalleryAdapter;

    .end local v0           #adapter:Lfm/douban/view/GalleryAdapter;
    const/4 v10, 0x0

    invoke-direct {v0, p0, v10}, Lfm/douban/view/GalleryAdapter;-><init>(Landroid/content/Context;Z)V

    .line 378
    .restart local v0       #adapter:Lfm/douban/view/GalleryAdapter;
    :cond_3
    iget-object v10, p0, Lcom/douban/radio/app/RadioActivity;->songGallery:Lfm/douban/view/FlipGallery;

    invoke-virtual {v10}, Lfm/douban/view/FlipGallery;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    invoke-virtual {v0, v10}, Lfm/douban/view/GalleryAdapter;->createImages(Landroid/view/ViewGroup$LayoutParams;)Z

    .line 380
    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Lfm/douban/view/GalleryAdapter;->getItem(I)Landroid/widget/ImageView;

    move-result-object v10

    iput-object v10, p0, Lcom/douban/radio/app/RadioActivity;->songPicture:Landroid/widget/ImageView;

    .line 381
    iget-object v10, p0, Lcom/douban/radio/app/RadioActivity;->songPicture:Landroid/widget/ImageView;

    sget v11, Lnatalya/graphics/ImageDownloader;->TAG_KEY:I

    invoke-virtual {v10, v11, p0}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 383
    iget-object v10, p0, Lcom/douban/radio/app/RadioActivity;->songGallery:Lfm/douban/view/FlipGallery;

    invoke-virtual {v10, v0}, Lfm/douban/view/FlipGallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 384
    iget-object v10, p0, Lcom/douban/radio/app/RadioActivity;->songGallery:Lfm/douban/view/FlipGallery;

    new-instance v11, Lcom/douban/radio/app/RadioActivity$6;

    invoke-direct {v11, p0}, Lcom/douban/radio/app/RadioActivity$6;-><init>(Lcom/douban/radio/app/RadioActivity;)V

    invoke-virtual {v10, v11}, Lfm/douban/view/FlipGallery;->setMyCallBack(Lfm/douban/view/FlipGallery$MyCallBack;)V

    .line 404
    iget-object v10, p0, Lcom/douban/radio/app/RadioActivity;->songGallery:Lfm/douban/view/FlipGallery;

    new-instance v11, Lcom/douban/radio/app/RadioActivity$7;

    invoke-direct {v11, p0}, Lcom/douban/radio/app/RadioActivity$7;-><init>(Lcom/douban/radio/app/RadioActivity;)V

    invoke-virtual {v10, v11}, Lfm/douban/view/FlipGallery;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 422
    const v10, 0x7f080047

    invoke-virtual {p0, v10}, Lcom/douban/radio/app/RadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    .line 423
    .local v7, songMask:Landroid/widget/RelativeLayout;
    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 425
    .local v2, lp:Landroid/view/ViewGroup$LayoutParams;
    iget v10, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v11, 0x78

    if-ne v10, v11, :cond_a

    .line 426
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 437
    .end local v0           #adapter:Lfm/douban/view/GalleryAdapter;
    .end local v2           #lp:Landroid/view/ViewGroup$LayoutParams;
    .end local v7           #songMask:Landroid/widget/RelativeLayout;
    :cond_4
    :goto_4
    const v10, 0x7f080049

    invoke-virtual {p0, v10}, Lcom/douban/radio/app/RadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iput-object v10, p0, Lcom/douban/radio/app/RadioActivity;->maskPauseOverlay:Landroid/view/View;

    .line 438
    const v10, 0x7f08004a

    invoke-virtual {p0, v10}, Lcom/douban/radio/app/RadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, p0, Lcom/douban/radio/app/RadioActivity;->maskPauseResumeAnim:Landroid/widget/ImageView;

    .line 441
    iget v10, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v11, 0x78

    if-ne v10, v11, :cond_5

    .line 442
    iget-object v10, p0, Lcom/douban/radio/app/RadioActivity;->maskPauseResumeAnim:Landroid/widget/ImageView;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 444
    :cond_5
    iget-object v10, p0, Lcom/douban/radio/app/RadioActivity;->maskPauseResumeAnim:Landroid/widget/ImageView;

    const v11, 0x7f020056

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 445
    iget-object v10, p0, Lcom/douban/radio/app/RadioActivity;->maskPauseResumeAnim:Landroid/widget/ImageView;

    new-instance v11, Lcom/douban/radio/app/RadioActivity$8;

    invoke-direct {v11, p0}, Lcom/douban/radio/app/RadioActivity$8;-><init>(Lcom/douban/radio/app/RadioActivity;)V

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 458
    const v10, 0x7f080044

    invoke-virtual {p0, v10}, Lcom/douban/radio/app/RadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    iput-object v10, p0, Lcom/douban/radio/app/RadioActivity;->coverItem:Landroid/view/ViewGroup;

    .line 460
    const v10, 0x7f08003b

    invoke-virtual {p0, v10}, Lcom/douban/radio/app/RadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, p0, Lcom/douban/radio/app/RadioActivity;->channelButton:Landroid/widget/ImageView;

    .line 461
    const v10, 0x7f08003a

    invoke-virtual {p0, v10}, Lcom/douban/radio/app/RadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iput-object v10, p0, Lcom/douban/radio/app/RadioActivity;->menuButton:Landroid/view/View;

    .line 462
    const v10, 0x1020008

    invoke-virtual {p0, v10}, Lcom/douban/radio/app/RadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iput-object v10, p0, Lcom/douban/radio/app/RadioActivity;->menuList:Landroid/view/View;

    .line 463
    iget-object v10, p0, Lcom/douban/radio/app/RadioActivity;->fmsp:Lfm/douban/model/FMSharedPreferences;

    const-string v11, "auto_hide_top_menu"

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Lfm/douban/model/FMSharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 464
    iget-object v10, p0, Lcom/douban/radio/app/RadioActivity;->handler:Landroid/os/Handler;

    const/16 v11, 0xfa4

    const-wide/16 v12, 0x2710

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 465
    iget-object v10, p0, Lcom/douban/radio/app/RadioActivity;->fmsp:Lfm/douban/model/FMSharedPreferences;

    const-string v11, "auto_hide_top_menu"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lfm/douban/model/FMSharedPreferences;->putBoolean(Ljava/lang/String;Z)Z

    .line 469
    :goto_5
    const v10, 0x1020014

    invoke-virtual {p0, v10}, Lcom/douban/radio/app/RadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iput-object v10, p0, Lcom/douban/radio/app/RadioActivity;->settingButton:Landroid/view/View;

    .line 470
    const v10, 0x1020015

    invoke-virtual {p0, v10}, Lcom/douban/radio/app/RadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iput-object v10, p0, Lcom/douban/radio/app/RadioActivity;->quitButton:Landroid/view/View;

    .line 472
    const v10, 0x7f08003c

    invoke-virtual {p0, v10}, Lcom/douban/radio/app/RadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, p0, Lcom/douban/radio/app/RadioActivity;->shareButton:Landroid/widget/ImageView;

    .line 474
    iget-object v10, p0, Lcom/douban/radio/app/RadioActivity;->channelButton:Landroid/widget/ImageView;

    new-instance v11, Lcom/douban/radio/app/RadioActivity$9;

    invoke-direct {v11, p0}, Lcom/douban/radio/app/RadioActivity$9;-><init>(Lcom/douban/radio/app/RadioActivity;)V

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 484
    iget-object v10, p0, Lcom/douban/radio/app/RadioActivity;->menuButton:Landroid/view/View;

    new-instance v11, Lcom/douban/radio/app/RadioActivity$10;

    invoke-direct {v11, p0}, Lcom/douban/radio/app/RadioActivity$10;-><init>(Lcom/douban/radio/app/RadioActivity;)V

    invoke-virtual {v10, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 495
    iget-object v10, p0, Lcom/douban/radio/app/RadioActivity;->settingButton:Landroid/view/View;

    new-instance v11, Lcom/douban/radio/app/RadioActivity$11;

    invoke-direct {v11, p0}, Lcom/douban/radio/app/RadioActivity$11;-><init>(Lcom/douban/radio/app/RadioActivity;)V

    invoke-virtual {v10, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 506
    iget-object v10, p0, Lcom/douban/radio/app/RadioActivity;->quitButton:Landroid/view/View;

    new-instance v11, Lcom/douban/radio/app/RadioActivity$12;

    invoke-direct {v11, p0}, Lcom/douban/radio/app/RadioActivity$12;-><init>(Lcom/douban/radio/app/RadioActivity;)V

    invoke-virtual {v10, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 516
    iget-object v10, p0, Lcom/douban/radio/app/RadioActivity;->shareButton:Landroid/widget/ImageView;

    new-instance v11, Lcom/douban/radio/app/RadioActivity$13;

    invoke-direct {v11, p0}, Lcom/douban/radio/app/RadioActivity$13;-><init>(Lcom/douban/radio/app/RadioActivity;)V

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 531
    const v10, 0x7f080050

    invoke-virtual {p0, v10}, Lcom/douban/radio/app/RadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, p0, Lcom/douban/radio/app/RadioActivity;->background:Landroid/widget/ImageView;

    .line 532
    iget-object v10, p0, Lcom/douban/radio/app/RadioActivity;->background:Landroid/widget/ImageView;

    if-eqz v10, :cond_6

    .line 533
    iget-object v10, p0, Lcom/douban/radio/app/RadioActivity;->background:Landroid/widget/ImageView;

    sget v11, Lnatalya/graphics/ImageDownloader;->TAG_KEY:I

    invoke-virtual {v10, v11, p0}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 534
    const-string v9, ""

    .line 535
    .local v9, t:Ljava/lang/String;
    iget-object v10, p0, Lcom/douban/radio/app/RadioActivity;->background:Landroid/widget/ImageView;

    const v11, 0x7f090074

    invoke-virtual {v10, v11, v9}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 536
    iget-object v10, p0, Lcom/douban/radio/app/RadioActivity;->background:Landroid/widget/ImageView;

    const v11, 0x7f02003c

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 538
    .end local v9           #t:Ljava/lang/String;
    :cond_6
    return-void

    .line 248
    .end local v3           #nextSongView:Landroid/widget/ImageView;
    .end local v4           #p:Landroid/view/View;
    :sswitch_0
    const-string v10, "RadioActivity"

    const-string v11, "low"

    invoke-static {v10, v11}, Lfm/douban/util/DBLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 251
    :sswitch_1
    const-string v10, "RadioActivity"

    const-string v11, "m"

    invoke-static {v10, v11}, Lfm/douban/util/DBLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 254
    :sswitch_2
    const-string v10, "RadioActivity"

    const-string v11, "h"

    invoke-static {v10, v11}, Lfm/douban/util/DBLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 257
    :sswitch_3
    const-string v10, "RadioActivity"

    const-string v11, "xh"

    invoke-static {v10, v11}, Lfm/douban/util/DBLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/douban/radio/app/RadioActivity;->isXH:Z

    goto/16 :goto_0

    .line 261
    :sswitch_4
    const-string v10, "RadioActivity"

    const-string v11, "tv"

    invoke-static {v10, v11}, Lfm/douban/util/DBLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 274
    :cond_7
    const v10, 0x7f030006

    invoke-virtual {p0, v10}, Lcom/douban/radio/app/RadioActivity;->setContentView(I)V

    goto/16 :goto_1

    .line 321
    .restart local v4       #p:Landroid/view/View;
    :cond_8
    iget-object v10, p0, Lcom/douban/radio/app/RadioActivity;->cm:Lfm/douban/controller/ChannelManager;

    invoke-virtual {v10}, Lfm/douban/controller/ChannelManager;->getPrivateChannels()[Lfm/douban/model/Channel;

    move-result-object v10

    iput-object v10, p0, Lcom/douban/radio/app/RadioActivity;->channels:[Lfm/douban/model/Channel;

    .line 322
    iget-object v10, p0, Lcom/douban/radio/app/RadioActivity;->channelTitle:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/douban/radio/app/RadioActivity;->rm:Lfm/douban/controller/RadioManager;

    invoke-static {v11}, Lfm/douban/model/Token;->get(Lfm/douban/controller/RadioManager;)Lfm/douban/model/Token;

    move-result-object v11

    iget-object v11, v11, Lfm/douban/model/Token;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 326
    :cond_9
    const/4 v10, 0x3

    goto/16 :goto_3

    .line 428
    .restart local v0       #adapter:Lfm/douban/view/GalleryAdapter;
    .restart local v2       #lp:Landroid/view/ViewGroup$LayoutParams;
    .restart local v3       #nextSongView:Landroid/widget/ImageView;
    .restart local v7       #songMask:Landroid/widget/RelativeLayout;
    :cond_a
    invoke-virtual {v0}, Lfm/douban/view/GalleryAdapter;->getImgWidth()I

    move-result v10

    sget v11, Lfm/douban/view/GalleryAdapter;->IMG_PADDING_SIDE:I

    mul-int/lit8 v11, v11, 0x2

    sub-int/2addr v10, v11

    iput v10, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 429
    iget v10, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    sget v11, Lfm/douban/view/GalleryAdapter;->IMG_PADDING:I

    add-int/2addr v10, v11

    iput v10, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 430
    invoke-virtual {v7, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 431
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 432
    const/4 v10, 0x0

    sget v11, Lfm/douban/view/GalleryAdapter;->IMG_PADDING:I

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v7, v10, v11, v12, v13}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 433
    const/4 v10, 0x0

    sget v11, Lfm/douban/view/GalleryAdapter;->IMG_PADDING:I

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v3, v10, v11, v12, v13}, Landroid/widget/ImageView;->setPadding(IIII)V

    goto/16 :goto_4

    .line 467
    .end local v0           #adapter:Lfm/douban/view/GalleryAdapter;
    .end local v2           #lp:Landroid/view/ViewGroup$LayoutParams;
    .end local v7           #songMask:Landroid/widget/RelativeLayout;
    :cond_b
    iget-object v10, p0, Lcom/douban/radio/app/RadioActivity;->menuList:Landroid/view/View;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    .line 246
    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_0
        0xa0 -> :sswitch_1
        0xd5 -> :sswitch_4
        0xf0 -> :sswitch_2
        0x140 -> :sswitch_3
    .end sparse-switch
.end method

.method private loadPicture(Ljava/lang/String;)V
    .locals 7
    .parameter "url"

    .prologue
    .line 890
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/douban/radio/app/RadioActivity;->picLoading:Z

    .line 891
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 892
    const-string v0, "RadioActivity"

    const-string v1, "load picture"

    invoke-static {v0, v1}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    iget-object v0, p0, Lcom/douban/radio/app/RadioActivity;->idown:Lnatalya/graphics/ImageDownloader;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/douban/radio/app/RadioActivity;->songPicture:Landroid/widget/ImageView;

    const/4 v4, 0x0

    const v5, 0x7f020012

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lnatalya/graphics/ImageDownloader;->download(Ljava/lang/String;ILandroid/widget/ImageView;ZI)V

    .line 895
    iget-object v0, p0, Lcom/douban/radio/app/RadioActivity;->background:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 896
    iget-object v0, p0, Lcom/douban/radio/app/RadioActivity;->idown:Lnatalya/graphics/ImageDownloader;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/douban/radio/app/RadioActivity;->background:Landroid/widget/ImageView;

    invoke-virtual {v0, p1, v1, v2}, Lnatalya/graphics/ImageDownloader;->download(Ljava/lang/String;ILandroid/widget/ImageView;)V

    .line 905
    :cond_0
    :goto_0
    return-void

    .line 899
    :cond_1
    invoke-direct {p0}, Lcom/douban/radio/app/RadioActivity;->setDefaultCover()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 901
    :catch_0
    move-exception v6

    .line 902
    .local v6, e:Ljava/lang/Exception;
    const-string v0, "RadioActivity"

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfm/douban/util/DBLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    invoke-direct {p0}, Lcom/douban/radio/app/RadioActivity;->setDefaultCover()V

    goto :goto_0
.end method

.method private makeReceiver()V
    .locals 1

    .prologue
    .line 774
    iget-object v0, p0, Lcom/douban/radio/app/RadioActivity;->receiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 775
    new-instance v0, Lcom/douban/radio/app/RadioActivity$17;

    invoke-direct {v0, p0}, Lcom/douban/radio/app/RadioActivity$17;-><init>(Lcom/douban/radio/app/RadioActivity;)V

    iput-object v0, p0, Lcom/douban/radio/app/RadioActivity;->receiver:Landroid/content/BroadcastReceiver;

    .line 793
    :cond_0
    return-void
.end method

.method private pauseUI()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 990
    iget-object v0, p0, Lcom/douban/radio/app/RadioActivity;->maskPauseOverlay:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 992
    iget-object v0, p0, Lcom/douban/radio/app/RadioActivity;->likeButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 993
    iget-object v0, p0, Lcom/douban/radio/app/RadioActivity;->hateButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 994
    iget-object v0, p0, Lcom/douban/radio/app/RadioActivity;->skipButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 995
    iget-object v0, p0, Lcom/douban/radio/app/RadioActivity;->coverItem:Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 997
    iget-object v0, p0, Lcom/douban/radio/app/RadioActivity;->maskPauseOverlay:Landroid/view/View;

    iget-object v1, p0, Lcom/douban/radio/app/RadioActivity;->maskFadeInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 998
    iget-object v0, p0, Lcom/douban/radio/app/RadioActivity;->maskPauseResumeAnim:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1000
    return-void
.end method

.method private resumeUI(Lfm/douban/service/RadioState;)V
    .locals 6
    .parameter "state"

    .prologue
    const/16 v5, 0x8

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 974
    iget-object v3, p1, Lfm/douban/service/RadioState;->song:Lfm/douban/model/Song;

    if-eqz v3, :cond_0

    iget-object v3, p1, Lfm/douban/service/RadioState;->song:Lfm/douban/model/Song;

    iget-object v3, v3, Lfm/douban/model/Song;->song_id:Ljava/lang/String;

    const-string v4, "d"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    .line 975
    .local v0, isAd:Z
    :goto_0
    iget-object v4, p0, Lcom/douban/radio/app/RadioActivity;->likeButton:Landroid/widget/ImageButton;

    if-nez v0, :cond_1

    move v3, v1

    :goto_1
    invoke-virtual {v4, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 976
    iget-object v3, p1, Lfm/douban/service/RadioState;->channel:Lfm/douban/model/Channel;

    if-eqz v3, :cond_2

    iget-object v3, p1, Lfm/douban/service/RadioState;->channel:Lfm/douban/model/Channel;

    invoke-virtual {v3}, Lfm/douban/model/Channel;->isPublic()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/douban/radio/app/RadioActivity;->rm:Lfm/douban/controller/RadioManager;

    invoke-static {v3}, Lfm/douban/model/Token;->isLogin(Lfm/douban/controller/RadioManager;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 977
    iget-object v3, p0, Lcom/douban/radio/app/RadioActivity;->hateButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 981
    :goto_2
    iget-object v2, p0, Lcom/douban/radio/app/RadioActivity;->skipButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 982
    iget-object v2, p0, Lcom/douban/radio/app/RadioActivity;->coverItem:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 984
    iget-object v1, p0, Lcom/douban/radio/app/RadioActivity;->maskPauseOverlay:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 985
    iget-object v1, p0, Lcom/douban/radio/app/RadioActivity;->maskPauseResumeAnim:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 987
    return-void

    .end local v0           #isAd:Z
    :cond_0
    move v0, v2

    .line 974
    goto :goto_0

    .restart local v0       #isAd:Z
    :cond_1
    move v3, v2

    .line 975
    goto :goto_1

    .line 979
    :cond_2
    iget-object v3, p0, Lcom/douban/radio/app/RadioActivity;->hateButton:Landroid/widget/ImageButton;

    if-nez v0, :cond_3

    move v2, v1

    :cond_3
    invoke-virtual {v3, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_2
.end method

.method private setDefaultCover()V
    .locals 2

    .prologue
    .line 753
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/douban/radio/app/RadioActivity;->picLoading:Z

    .line 754
    iget-object v0, p0, Lcom/douban/radio/app/RadioActivity;->songPicture:Landroid/widget/ImageView;

    const v1, 0x7f020012

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 755
    invoke-direct {p0}, Lcom/douban/radio/app/RadioActivity;->hideProgress()V

    .line 756
    return-void
.end method

.method private showGuidance()V
    .locals 4

    .prologue
    .line 1022
    iget-object v1, p0, Lcom/douban/radio/app/RadioActivity;->fmsp:Lfm/douban/model/FMSharedPreferences;

    const-string v2, "new_user_guidance"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lfm/douban/model/FMSharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1024
    .local v0, flag:Z
    if-eqz v0, :cond_0

    .line 1025
    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Lcom/douban/radio/app/RadioActivity;->showDialog(I)V

    .line 1028
    :cond_0
    return-void
.end method

.method private showTopMenu()V
    .locals 2

    .prologue
    .line 641
    iget-object v0, p0, Lcom/douban/radio/app/RadioActivity;->menuList:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/douban/radio/app/RadioActivity;->menuList:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 642
    iget-object v0, p0, Lcom/douban/radio/app/RadioActivity;->showMenuAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    .line 643
    const v0, 0x7f040008

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/douban/radio/app/RadioActivity;->showMenuAnimation:Landroid/view/animation/Animation;

    .line 644
    iget-object v0, p0, Lcom/douban/radio/app/RadioActivity;->showMenuAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/douban/radio/app/RadioActivity$14;

    invoke-direct {v1, p0}, Lcom/douban/radio/app/RadioActivity$14;-><init>(Lcom/douban/radio/app/RadioActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 660
    :cond_0
    iget-object v0, p0, Lcom/douban/radio/app/RadioActivity;->menuList:Landroid/view/View;

    iget-object v1, p0, Lcom/douban/radio/app/RadioActivity;->showMenuAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 662
    :cond_1
    return-void
.end method

.method private switchToNewSong(Lfm/douban/service/RadioState;)V
    .locals 9
    .parameter "state"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 908
    iget-boolean v2, p0, Lcom/douban/radio/app/RadioActivity;->firstLoadingUI:Z

    if-eqz v2, :cond_0

    .line 909
    iget v2, p1, Lfm/douban/service/RadioState;->playPosition:I

    iput v2, p0, Lcom/douban/radio/app/RadioActivity;->playPosition:I

    .line 910
    iput-boolean v7, p0, Lcom/douban/radio/app/RadioActivity;->firstLoadingUI:Z

    .line 915
    :goto_0
    const-string v2, "RadioActivity"

    const-string v3, "Song[id:%s, offline:%b]"

    new-array v4, v8, [Ljava/lang/Object;

    iget-object v5, p1, Lfm/douban/service/RadioState;->song:Lfm/douban/model/Song;

    iget-object v5, v5, Lfm/douban/model/Song;->song_id:Ljava/lang/String;

    aput-object v5, v4, v7

    const/4 v5, 0x1

    iget-object v6, p1, Lfm/douban/service/RadioState;->song:Lfm/douban/model/Song;

    invoke-virtual {v6}, Lfm/douban/model/Song;->isOffline()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lfm/douban/service/RadioState;->song:Lfm/douban/model/Song;

    iget-object v3, v3, Lfm/douban/model/Song;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lfm/douban/service/RadioState;->song:Lfm/douban/model/Song;

    iget-object v3, v3, Lfm/douban/model/Song;->artist:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 917
    .local v0, title:Ljava/lang/String;
    iget-object v2, p0, Lcom/douban/radio/app/RadioActivity;->songName:Lfm/douban/view/ScrollTextView;

    invoke-virtual {v2, v0}, Lfm/douban/view/ScrollTextView;->setText(Ljava/lang/CharSequence;)V

    .line 918
    iget-object v2, p0, Lcom/douban/radio/app/RadioActivity;->songName:Lfm/douban/view/ScrollTextView;

    invoke-virtual {v2}, Lfm/douban/view/ScrollTextView;->reset()V

    .line 919
    iget-object v2, p0, Lcom/douban/radio/app/RadioActivity;->songName:Lfm/douban/view/ScrollTextView;

    invoke-virtual {v2}, Lfm/douban/view/ScrollTextView;->startScroll()V

    .line 921
    iget-object v2, p1, Lfm/douban/service/RadioState;->song:Lfm/douban/model/Song;

    invoke-virtual {v2, v8}, Lfm/douban/model/Song;->pictureUrl(I)Ljava/lang/String;

    move-result-object v1

    .line 922
    .local v1, url:Ljava/lang/String;
    iget-object v2, p0, Lcom/douban/radio/app/RadioActivity;->pictureProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 923
    iget-boolean v2, p1, Lfm/douban/service/RadioState;->hasPicture:Z

    if-eqz v2, :cond_1

    .line 924
    invoke-direct {p0, v1}, Lcom/douban/radio/app/RadioActivity;->loadPicture(Ljava/lang/String;)V

    .line 934
    :goto_1
    return-void

    .line 912
    .end local v0           #title:Ljava/lang/String;
    .end local v1           #url:Ljava/lang/String;
    :cond_0
    iput v7, p0, Lcom/douban/radio/app/RadioActivity;->playPosition:I

    goto :goto_0

    .line 926
    .restart local v0       #title:Ljava/lang/String;
    .restart local v1       #url:Ljava/lang/String;
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 928
    const-string v2, "RadioActivity"

    const-string v3, "send CMD_PICTURE"

    invoke-static {v2, v3}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    const/16 v2, 0xa

    invoke-static {p0, v2}, Lfm/douban/service/RadioService;->sendCommand(Landroid/content/Context;I)V

    goto :goto_1

    .line 931
    :cond_2
    invoke-direct {p0}, Lcom/douban/radio/app/RadioActivity;->setDefaultCover()V

    goto :goto_1
.end method

.method private updateButtonState(Lfm/douban/service/RadioState;)V
    .locals 5
    .parameter "state"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 937
    iget-object v3, p0, Lcom/douban/radio/app/RadioActivity;->lastRadioState:Lfm/douban/service/RadioState;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/douban/radio/app/RadioActivity;->lastRadioState:Lfm/douban/service/RadioState;

    iget-boolean v3, v3, Lfm/douban/service/RadioState;->canOp:Z

    iget-boolean v4, p1, Lfm/douban/service/RadioState;->canOp:Z

    if-eq v3, v4, :cond_1

    .line 939
    :cond_0
    iget-object v3, p1, Lfm/douban/service/RadioState;->song:Lfm/douban/model/Song;

    if-eqz v3, :cond_4

    iget-object v3, p1, Lfm/douban/service/RadioState;->song:Lfm/douban/model/Song;

    iget-object v3, v3, Lfm/douban/model/Song;->song_id:Ljava/lang/String;

    const-string v4, "d"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v0, v1

    .line 940
    .local v0, isAd:Z
    :goto_0
    iget-object v4, p0, Lcom/douban/radio/app/RadioActivity;->likeButton:Landroid/widget/ImageButton;

    if-nez v0, :cond_5

    move v3, v1

    :goto_1
    invoke-virtual {v4, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 941
    iget-object v3, p1, Lfm/douban/service/RadioState;->channel:Lfm/douban/model/Channel;

    if-eqz v3, :cond_6

    iget-object v3, p1, Lfm/douban/service/RadioState;->channel:Lfm/douban/model/Channel;

    invoke-virtual {v3}, Lfm/douban/model/Channel;->isPublic()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/douban/radio/app/RadioActivity;->rm:Lfm/douban/controller/RadioManager;

    invoke-static {v3}, Lfm/douban/model/Token;->isLogin(Lfm/douban/controller/RadioManager;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 942
    iget-object v3, p0, Lcom/douban/radio/app/RadioActivity;->hateButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 946
    :goto_2
    iget-object v2, p0, Lcom/douban/radio/app/RadioActivity;->skipButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 948
    .end local v0           #isAd:Z
    :cond_1
    iget-object v1, p0, Lcom/douban/radio/app/RadioActivity;->lastRadioState:Lfm/douban/service/RadioState;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/douban/radio/app/RadioActivity;->lastRadioState:Lfm/douban/service/RadioState;

    iget-boolean v1, v1, Lfm/douban/service/RadioState;->isLike:Z

    iget-boolean v2, p1, Lfm/douban/service/RadioState;->isLike:Z

    if-eq v1, v2, :cond_3

    .line 949
    :cond_2
    iget-object v2, p0, Lcom/douban/radio/app/RadioActivity;->likeButton:Landroid/widget/ImageButton;

    iget-boolean v1, p1, Lfm/douban/service/RadioState;->isLike:Z

    if-eqz v1, :cond_8

    const v1, 0x7f020021

    :goto_3
    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 951
    :cond_3
    return-void

    :cond_4
    move v0, v2

    .line 939
    goto :goto_0

    .restart local v0       #isAd:Z
    :cond_5
    move v3, v2

    .line 940
    goto :goto_1

    .line 944
    :cond_6
    iget-object v3, p0, Lcom/douban/radio/app/RadioActivity;->hateButton:Landroid/widget/ImageButton;

    if-nez v0, :cond_7

    move v2, v1

    :cond_7
    invoke-virtual {v3, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_2

    .line 949
    .end local v0           #isAd:Z
    :cond_8
    const v1, 0x7f020020

    goto :goto_3
.end method

.method private updatePlayerTitle(ZLfm/douban/model/Channel;)V
    .locals 3
    .parameter "offline"
    .parameter "c"

    .prologue
    .line 954
    const-string v1, "RadioActivity"

    const-string v2, "setPlayerTitle from RadtioState "

    invoke-static {v1, v2}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    iget-object v2, p0, Lcom/douban/radio/app/RadioActivity;->offlineStatus:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 957
    invoke-virtual {p2}, Lfm/douban/model/Channel;->isPublic()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/douban/radio/app/RadioActivity;->rm:Lfm/douban/controller/RadioManager;

    invoke-static {v1}, Lfm/douban/model/Token;->isLogin(Lfm/douban/controller/RadioManager;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 958
    iget-object v1, p0, Lcom/douban/radio/app/RadioActivity;->channelTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/douban/radio/app/RadioActivity;->rm:Lfm/douban/controller/RadioManager;

    invoke-static {v2}, Lfm/douban/model/Token;->get(Lfm/douban/controller/RadioManager;)Lfm/douban/model/Token;

    move-result-object v2

    iget-object v2, v2, Lfm/douban/model/Token;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 964
    :goto_1
    invoke-virtual {p2}, Lfm/douban/model/Channel;->isPublic()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 965
    iget-object v1, p0, Lcom/douban/radio/app/RadioActivity;->cm:Lfm/douban/controller/ChannelManager;

    invoke-virtual {v1}, Lfm/douban/controller/ChannelManager;->getPublicChannels()[Lfm/douban/model/Channel;

    move-result-object v0

    .line 969
    .local v0, chs:[Lfm/douban/model/Channel;
    :goto_2
    iget-object v1, p0, Lcom/douban/radio/app/RadioActivity;->switcher:Lfm/douban/view/ChannelSwitcher;

    invoke-virtual {v1, v0}, Lfm/douban/view/ChannelSwitcher;->setChannelData([Lfm/douban/model/Channel;)V

    .line 970
    iget-object v1, p0, Lcom/douban/radio/app/RadioActivity;->switcher:Lfm/douban/view/ChannelSwitcher;

    invoke-virtual {v1, p2}, Lfm/douban/view/ChannelSwitcher;->setChannel(Lfm/douban/model/Channel;)V

    .line 971
    return-void

    .line 955
    .end local v0           #chs:[Lfm/douban/model/Channel;
    :cond_0
    const/4 v1, 0x4

    goto :goto_0

    .line 960
    :cond_1
    iget-object v1, p0, Lcom/douban/radio/app/RadioActivity;->channelTitle:Landroid/widget/TextView;

    const v2, 0x7f090025

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 967
    :cond_2
    iget-object v1, p0, Lcom/douban/radio/app/RadioActivity;->cm:Lfm/douban/controller/ChannelManager;

    invoke-virtual {v1}, Lfm/douban/controller/ChannelManager;->getPrivateChannels()[Lfm/douban/model/Channel;

    move-result-object v0

    .restart local v0       #chs:[Lfm/douban/model/Channel;
    goto :goto_2
.end method

.method private declared-synchronized updateUI(Lfm/douban/service/RadioState;)V
    .locals 10
    .parameter "newState"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 838
    monitor-enter p0

    :try_start_0
    const-string v3, "RadioActivity"

    const-string v4, "Update UI. RadioState is canOp:%b, isLike:%b, isLogin:%b, isPaused:%b, channelId:%s"

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-boolean v7, p1, Lfm/douban/service/RadioState;->canOp:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-boolean v7, p1, Lfm/douban/service/RadioState;->isLike:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/douban/radio/app/RadioActivity;->fmsp:Lfm/douban/model/FMSharedPreferences;

    const-string v8, "is_logined"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lfm/douban/model/FMSharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    iget-boolean v7, p1, Lfm/douban/service/RadioState;->isPaused:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    iget-object v7, p1, Lfm/douban/service/RadioState;->channelId:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    iget-object v3, p1, Lfm/douban/service/RadioState;->channel:Lfm/douban/model/Channel;

    iput-object v3, p0, Lcom/douban/radio/app/RadioActivity;->channel:Lfm/douban/model/Channel;

    .line 843
    invoke-direct {p0, p1}, Lcom/douban/radio/app/RadioActivity;->updateButtonState(Lfm/douban/service/RadioState;)V

    .line 845
    iget-boolean v3, p1, Lfm/douban/service/RadioState;->isPaused:Z

    if-eqz v3, :cond_b

    .line 846
    invoke-direct {p0}, Lcom/douban/radio/app/RadioActivity;->pauseUI()V

    .line 851
    :goto_0
    iget-boolean v3, p1, Lfm/douban/service/RadioState;->hasSong:Z

    if-eqz v3, :cond_8

    iget-object v3, p1, Lfm/douban/service/RadioState;->song:Lfm/douban/model/Song;

    if-eqz v3, :cond_8

    .line 854
    iget-boolean v3, p1, Lfm/douban/service/RadioState;->isPaused:Z

    if-nez v3, :cond_c

    iget-boolean v3, p1, Lfm/douban/service/RadioState;->canOp:Z

    if-eqz v3, :cond_c

    .line 855
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/douban/radio/app/RadioActivity;->songLoading:Z

    .line 856
    iget v3, p1, Lfm/douban/service/RadioState;->playPosition:I

    if-lez v3, :cond_0

    .line 857
    iget-object v3, p0, Lcom/douban/radio/app/RadioActivity;->coverItem:Landroid/view/ViewGroup;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 859
    :cond_0
    iget-boolean v3, p0, Lcom/douban/radio/app/RadioActivity;->updateCurtimeStarted:Z

    if-nez v3, :cond_1

    .line 860
    iget v3, p1, Lfm/douban/service/RadioState;->playPosition:I

    iput v3, p0, Lcom/douban/radio/app/RadioActivity;->playPosition:I

    .line 861
    iget-object v3, p0, Lcom/douban/radio/app/RadioActivity;->handler:Landroid/os/Handler;

    const/16 v4, 0xfa2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 866
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/douban/radio/app/RadioActivity;->hideProgress()V

    .line 867
    iget-boolean v3, p1, Lfm/douban/service/RadioState;->isPaused:Z

    if-eqz v3, :cond_2

    .line 868
    iget-object v3, p0, Lcom/douban/radio/app/RadioActivity;->coverItem:Landroid/view/ViewGroup;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 871
    :cond_2
    iget-object v3, p0, Lcom/douban/radio/app/RadioActivity;->lastRadioState:Lfm/douban/service/RadioState;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/douban/radio/app/RadioActivity;->lastRadioState:Lfm/douban/service/RadioState;

    iget-boolean v3, v3, Lfm/douban/service/RadioState;->hasSong:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/douban/radio/app/RadioActivity;->lastRadioState:Lfm/douban/service/RadioState;

    iget-object v3, v3, Lfm/douban/service/RadioState;->song:Lfm/douban/model/Song;

    iget-object v3, v3, Lfm/douban/model/Song;->song_id:Ljava/lang/String;

    iget-object v4, p1, Lfm/douban/service/RadioState;->song:Lfm/douban/model/Song;

    iget-object v4, v4, Lfm/douban/model/Song;->song_id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 872
    :cond_3
    invoke-direct {p0, p1}, Lcom/douban/radio/app/RadioActivity;->switchToNewSong(Lfm/douban/service/RadioState;)V

    .line 875
    :cond_4
    iget-object v3, p0, Lcom/douban/radio/app/RadioActivity;->lastRadioState:Lfm/douban/service/RadioState;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/douban/radio/app/RadioActivity;->lastRadioState:Lfm/douban/service/RadioState;

    iget-boolean v3, v3, Lfm/douban/service/RadioState;->hasPicture:Z

    if-nez v3, :cond_6

    :cond_5
    iget-boolean v3, p1, Lfm/douban/service/RadioState;->hasPicture:Z

    if-eqz v3, :cond_6

    .line 876
    iget-object v3, p1, Lfm/douban/service/RadioState;->song:Lfm/douban/model/Song;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lfm/douban/model/Song;->pictureUrl(I)Ljava/lang/String;

    move-result-object v0

    .line 877
    .local v0, url:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/douban/radio/app/RadioActivity;->loadPicture(Ljava/lang/String;)V

    .line 880
    .end local v0           #url:Ljava/lang/String;
    :cond_6
    iget-boolean v3, p0, Lcom/douban/radio/app/RadioActivity;->songLoading:Z

    if-nez v3, :cond_8

    iget-boolean v3, p1, Lfm/douban/service/RadioState;->canOp:Z

    if-nez v3, :cond_7

    iget-boolean v3, p1, Lfm/douban/service/RadioState;->isPaused:Z

    if-eqz v3, :cond_8

    .line 881
    :cond_7
    iget-boolean v3, p1, Lfm/douban/service/RadioState;->isOffline:Z

    iget-object v4, p1, Lfm/douban/service/RadioState;->channel:Lfm/douban/model/Channel;

    invoke-direct {p0, v3, v4}, Lcom/douban/radio/app/RadioActivity;->updatePlayerTitle(ZLfm/douban/model/Channel;)V

    .line 884
    :cond_8
    iget-object v3, p0, Lcom/douban/radio/app/RadioActivity;->songGallery:Lfm/douban/view/FlipGallery;

    iget-boolean v4, p0, Lcom/douban/radio/app/RadioActivity;->songLoading:Z

    if-nez v4, :cond_9

    iget-boolean v4, p0, Lcom/douban/radio/app/RadioActivity;->picLoading:Z

    if-nez v4, :cond_9

    iget-boolean v4, p1, Lfm/douban/service/RadioState;->canOp:Z

    if-nez v4, :cond_a

    :cond_9
    move v1, v2

    :cond_a
    invoke-virtual {v3, v1}, Lfm/douban/view/FlipGallery;->setLoading(Z)V

    .line 885
    iput-object p1, p0, Lcom/douban/radio/app/RadioActivity;->lastRadioState:Lfm/douban/service/RadioState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 886
    monitor-exit p0

    return-void

    .line 848
    :cond_b
    :try_start_1
    invoke-direct {p0, p1}, Lcom/douban/radio/app/RadioActivity;->resumeUI(Lfm/douban/service/RadioState;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 838
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 864
    :cond_c
    const/4 v3, 0x1

    :try_start_2
    iput-boolean v3, p0, Lcom/douban/radio/app/RadioActivity;->songLoading:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 611
    const-string v3, "RadioActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onActivityResult "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    packed-switch p1, :pswitch_data_0

    .line 632
    :cond_0
    :goto_0
    return-void

    .line 614
    :pswitch_0
    const/16 v3, 0x7d2

    if-ne p2, v3, :cond_0

    .line 615
    const-string v3, "channel_now"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 616
    .local v2, id:Ljava/lang/String;
    const-string v3, "RadioActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "channel id in result:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    iget-object v3, p0, Lcom/douban/radio/app/RadioActivity;->cm:Lfm/douban/controller/ChannelManager;

    invoke-virtual {v3, v2}, Lfm/douban/controller/ChannelManager;->getChannel(Ljava/lang/String;)Lfm/douban/model/Channel;

    move-result-object v0

    .line 619
    .local v0, c:Lfm/douban/model/Channel;
    invoke-virtual {v0}, Lfm/douban/model/Channel;->isPublic()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 620
    iget-object v3, p0, Lcom/douban/radio/app/RadioActivity;->channelTitle:Landroid/widget/TextView;

    const v4, 0x7f090025

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 621
    iget-object v3, p0, Lcom/douban/radio/app/RadioActivity;->cm:Lfm/douban/controller/ChannelManager;

    invoke-virtual {v3}, Lfm/douban/controller/ChannelManager;->getPublicChannels()[Lfm/douban/model/Channel;

    move-result-object v1

    .line 626
    .local v1, chs:[Lfm/douban/model/Channel;
    :goto_1
    iget-object v3, p0, Lcom/douban/radio/app/RadioActivity;->switcher:Lfm/douban/view/ChannelSwitcher;

    invoke-virtual {v3, v1}, Lfm/douban/view/ChannelSwitcher;->setChannelData([Lfm/douban/model/Channel;)V

    .line 627
    iget-object v3, p0, Lcom/douban/radio/app/RadioActivity;->switcher:Lfm/douban/view/ChannelSwitcher;

    iget-object v4, p0, Lcom/douban/radio/app/RadioActivity;->cm:Lfm/douban/controller/ChannelManager;

    invoke-virtual {v4, v2}, Lfm/douban/controller/ChannelManager;->getChannel(Ljava/lang/String;)Lfm/douban/model/Channel;

    move-result-object v4

    invoke-virtual {v3, v4}, Lfm/douban/view/ChannelSwitcher;->setChannel(Lfm/douban/model/Channel;)V

    .line 628
    const/4 v3, 0x7

    invoke-static {p0, v3, v2}, Lfm/douban/service/RadioService;->sendCommand(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    .line 623
    .end local v1           #chs:[Lfm/douban/model/Channel;
    :cond_1
    iget-object v3, p0, Lcom/douban/radio/app/RadioActivity;->channelTitle:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/douban/radio/app/RadioActivity;->rm:Lfm/douban/controller/RadioManager;

    invoke-static {v4}, Lfm/douban/model/Token;->get(Lfm/douban/controller/RadioManager;)Lfm/douban/model/Token;

    move-result-object v4

    iget-object v4, v4, Lfm/douban/model/Token;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 624
    iget-object v3, p0, Lcom/douban/radio/app/RadioActivity;->cm:Lfm/douban/controller/ChannelManager;

    invoke-virtual {v3}, Lfm/douban/controller/ChannelManager;->getPrivateChannels()[Lfm/douban/model/Channel;

    move-result-object v1

    .restart local v1       #chs:[Lfm/douban/model/Channel;
    goto :goto_1

    .line 612
    nop

    :pswitch_data_0
    .packed-switch 0x3eb
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 798
    iget-object v3, p0, Lcom/douban/radio/app/RadioActivity;->lastRadioState:Lfm/douban/service/RadioState;

    iget-boolean v3, v3, Lfm/douban/service/RadioState;->canOp:Z

    if-eqz v3, :cond_1

    .line 799
    iget-object v3, p0, Lcom/douban/radio/app/RadioActivity;->likeButton:Landroid/widget/ImageButton;

    if-ne p1, v3, :cond_4

    .line 800
    const-string v3, "RadioActivity"

    const-string v4, "likeButton click"

    invoke-static {v3, v4}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    iget-object v3, p0, Lcom/douban/radio/app/RadioActivity;->lastRadioState:Lfm/douban/service/RadioState;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/douban/radio/app/RadioActivity;->lastRadioState:Lfm/douban/service/RadioState;

    iget-object v3, v3, Lfm/douban/service/RadioState;->song:Lfm/douban/model/Song;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/douban/radio/app/RadioActivity;->lastRadioState:Lfm/douban/service/RadioState;

    iget-object v3, v3, Lfm/douban/service/RadioState;->song:Lfm/douban/model/Song;

    invoke-virtual {v3}, Lfm/douban/model/Song;->isLike()Z

    move-result v3

    if-nez v3, :cond_2

    move v0, v1

    .line 803
    .local v0, showTipFlag:Z
    :goto_0
    iget-object v3, p0, Lcom/douban/radio/app/RadioActivity;->rm:Lfm/douban/controller/RadioManager;

    invoke-static {v3}, Lfm/douban/model/Token;->isLogin(Lfm/douban/controller/RadioManager;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 804
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/douban/radio/app/RadioActivity;->fmsp:Lfm/douban/model/FMSharedPreferences;

    const-string v4, "user_like"

    invoke-virtual {v3, v4, v1}, Lfm/douban/model/FMSharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 805
    iget-object v1, p0, Lcom/douban/radio/app/RadioActivity;->fmsp:Lfm/douban/model/FMSharedPreferences;

    const-string v3, "user_like"

    invoke-virtual {v1, v3, v2}, Lfm/douban/model/FMSharedPreferences;->putBoolean(Ljava/lang/String;Z)Z

    .line 806
    const v1, 0x7f090098

    invoke-static {p0, v1}, Lfm/douban/util/Utils;->showToast(Landroid/content/Context;I)V

    .line 814
    :cond_0
    :goto_1
    const/4 v1, 0x4

    invoke-static {p0, v1}, Lfm/douban/service/RadioService;->sendCommand(Landroid/content/Context;I)V

    .line 815
    const-string v1, "Love"

    invoke-static {p0, v1}, Lcom/mobclick/android/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 835
    .end local v0           #showTipFlag:Z
    :cond_1
    :goto_2
    return-void

    :cond_2
    move v0, v2

    .line 801
    goto :goto_0

    .line 809
    .restart local v0       #showTipFlag:Z
    :cond_3
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/douban/radio/app/RadioActivity;->fmsp:Lfm/douban/model/FMSharedPreferences;

    const-string v4, "anonymous_like"

    invoke-virtual {v3, v4, v1}, Lfm/douban/model/FMSharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 810
    iget-object v1, p0, Lcom/douban/radio/app/RadioActivity;->fmsp:Lfm/douban/model/FMSharedPreferences;

    const-string v3, "anonymous_like"

    invoke-virtual {v1, v3, v2}, Lfm/douban/model/FMSharedPreferences;->putBoolean(Ljava/lang/String;Z)Z

    .line 811
    const v1, 0x7f09009a

    invoke-static {p0, v1}, Lfm/douban/util/Utils;->showToast(Landroid/content/Context;I)V

    goto :goto_1

    .line 816
    .end local v0           #showTipFlag:Z
    :cond_4
    iget-object v3, p0, Lcom/douban/radio/app/RadioActivity;->hateButton:Landroid/widget/ImageButton;

    if-ne p1, v3, :cond_6

    .line 817
    const-string v3, "RadioActivity"

    const-string v4, "hateButton click"

    invoke-static {v3, v4}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    iget-object v3, p0, Lcom/douban/radio/app/RadioActivity;->fmsp:Lfm/douban/model/FMSharedPreferences;

    const-string v4, "user_hate"

    invoke-virtual {v3, v4, v1}, Lfm/douban/model/FMSharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 819
    iget-object v1, p0, Lcom/douban/radio/app/RadioActivity;->fmsp:Lfm/douban/model/FMSharedPreferences;

    const-string v3, "user_hate"

    invoke-virtual {v1, v3, v2}, Lfm/douban/model/FMSharedPreferences;->putBoolean(Ljava/lang/String;Z)Z

    .line 820
    const v1, 0x7f090099

    invoke-static {p0, v1}, Lfm/douban/util/Utils;->showToast(Landroid/content/Context;I)V

    .line 822
    :cond_5
    const/4 v1, 0x5

    invoke-static {p0, v1}, Lfm/douban/service/RadioService;->sendCommand(Landroid/content/Context;I)V

    .line 823
    const-string v1, "Hate"

    invoke-static {p0, v1}, Lcom/mobclick/android/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .line 824
    :cond_6
    iget-object v1, p0, Lcom/douban/radio/app/RadioActivity;->skipButton:Landroid/widget/ImageButton;

    if-ne p1, v1, :cond_1

    .line 825
    const-string v1, "RadioActivity"

    const-string v2, "skipButton onClick"

    invoke-static {v1, v2}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    const-string v1, "Skip"

    invoke-static {p0, v1}, Lcom/mobclick/android/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 827
    iget-boolean v1, p0, Lcom/douban/radio/app/RadioActivity;->picLoading:Z

    if-eqz v1, :cond_7

    .line 828
    iget-object v1, p0, Lcom/douban/radio/app/RadioActivity;->switchHandler:Landroid/os/Handler;

    const/16 v2, 0xd05

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2

    .line 830
    :cond_7
    iget-object v1, p0, Lcom/douban/radio/app/RadioActivity;->songGallery:Lfm/douban/view/FlipGallery;

    invoke-virtual {v1}, Lfm/douban/view/FlipGallery;->flipToNext()V

    goto :goto_2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 218
    invoke-super {p0, p1}, Lcom/douban/radio/app/FMActivity;->onCreate(Landroid/os/Bundle;)V

    .line 219
    invoke-static {p0}, Lcom/mobclick/android/MobclickAgent;->onError(Landroid/content/Context;)V

    .line 220
    invoke-static {p0}, Lcom/mobclick/android/MobclickAgent;->update(Landroid/content/Context;)V

    .line 222
    invoke-virtual {p0}, Lcom/douban/radio/app/RadioActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/douban/radio/RadioApp;

    iput-object v0, p0, Lcom/douban/radio/app/RadioActivity;->app:Lcom/douban/radio/RadioApp;

    .line 223
    invoke-static {p0}, Lfm/douban/FmApp;->getRadioManager(Landroid/content/Context;)Lfm/douban/controller/RadioManager;

    move-result-object v0

    iput-object v0, p0, Lcom/douban/radio/app/RadioActivity;->rm:Lfm/douban/controller/RadioManager;

    .line 224
    iget-object v0, p0, Lcom/douban/radio/app/RadioActivity;->rm:Lfm/douban/controller/RadioManager;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lfm/douban/controller/RadioManager;->checkedToken:Z

    .line 225
    iget-object v0, p0, Lcom/douban/radio/app/RadioActivity;->rm:Lfm/douban/controller/RadioManager;

    invoke-virtual {v0}, Lfm/douban/controller/RadioManager;->getSharedPreferences()Lfm/douban/model/FMSharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/douban/radio/app/RadioActivity;->fmsp:Lfm/douban/model/FMSharedPreferences;

    .line 226
    iget-object v0, p0, Lcom/douban/radio/app/RadioActivity;->rm:Lfm/douban/controller/RadioManager;

    invoke-virtual {v0}, Lfm/douban/controller/RadioManager;->getChannelManager()Lfm/douban/controller/ChannelManager;

    move-result-object v0

    iput-object v0, p0, Lcom/douban/radio/app/RadioActivity;->cm:Lfm/douban/controller/ChannelManager;

    .line 228
    iget-object v0, p0, Lcom/douban/radio/app/RadioActivity;->app:Lcom/douban/radio/RadioApp;

    invoke-virtual {v0}, Lcom/douban/radio/RadioApp;->getImageDownloader()Lnatalya/graphics/ImageDownloader;

    move-result-object v0

    iput-object v0, p0, Lcom/douban/radio/app/RadioActivity;->idown:Lnatalya/graphics/ImageDownloader;

    .line 230
    invoke-direct {p0}, Lcom/douban/radio/app/RadioActivity;->makeReceiver()V

    .line 231
    invoke-direct {p0}, Lcom/douban/radio/app/RadioActivity;->initPlayer()V

    .line 233
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    .line 1032
    packed-switch p1, :pswitch_data_0

    .line 1064
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/douban/radio/app/RadioActivity;->dialog:Landroid/app/Dialog;

    .line 1066
    :goto_0
    iget-object v2, p0, Lcom/douban/radio/app/RadioActivity;->dialog:Landroid/app/Dialog;

    return-object v2

    .line 1034
    :pswitch_0
    new-instance v2, Landroid/app/Dialog;

    const v3, 0x1030010

    invoke-direct {v2, p0, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/douban/radio/app/RadioActivity;->dialog:Landroid/app/Dialog;

    .line 1035
    iget-object v2, p0, Lcom/douban/radio/app/RadioActivity;->dialog:Landroid/app/Dialog;

    const v3, 0x7f03000d

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setContentView(I)V

    .line 1036
    iget-object v2, p0, Lcom/douban/radio/app/RadioActivity;->dialog:Landroid/app/Dialog;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1037
    iget-object v2, p0, Lcom/douban/radio/app/RadioActivity;->dialog:Landroid/app/Dialog;

    const v3, 0x7f0800a3

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1038
    .local v0, closeGuid:Landroid/widget/ImageView;
    new-instance v2, Lcom/douban/radio/app/RadioActivity$18;

    invoke-direct {v2, p0}, Lcom/douban/radio/app/RadioActivity$18;-><init>(Lcom/douban/radio/app/RadioActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1046
    iget-object v2, p0, Lcom/douban/radio/app/RadioActivity;->dialog:Landroid/app/Dialog;

    const v3, 0x7f0800a2

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1047
    .local v1, content:Landroid/view/View;
    new-instance v2, Lcom/douban/radio/app/RadioActivity$19;

    invoke-direct {v2, p0}, Lcom/douban/radio/app/RadioActivity$19;-><init>(Lcom/douban/radio/app/RadioActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1055
    iget-object v2, p0, Lcom/douban/radio/app/RadioActivity;->dialog:Landroid/app/Dialog;

    new-instance v3, Lcom/douban/radio/app/RadioActivity$20;

    invoke-direct {v3, p0}, Lcom/douban/radio/app/RadioActivity$20;-><init>(Lcom/douban/radio/app/RadioActivity;)V

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_0

    .line 1032
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 690
    const-string v0, "RadioActivity"

    const-string v1, "onCreateOptionsMenu"

    invoke-static {v0, v1}, Lfm/douban/util/DBLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    invoke-virtual {p0}, Lcom/douban/radio/app/RadioActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0b

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 692
    invoke-super {p0, p1}, Lcom/douban/radio/app/FMActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 595
    const-string v0, "RadioActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lfm/douban/util/DBLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/douban/radio/app/RadioActivity;->receiver:Landroid/content/BroadcastReceiver;

    .line 597
    iget-object v0, p0, Lcom/douban/radio/app/RadioActivity;->handler:Landroid/os/Handler;

    const/16 v1, 0xfa3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 598
    invoke-super {p0}, Lcom/douban/radio/app/FMActivity;->onDestroy()V

    .line 599
    return-void
.end method

.method public onDownload(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 2
    .parameter "url"
    .parameter "view"

    .prologue
    .line 740
    if-eqz p2, :cond_0

    const v0, 0x7f090074

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 750
    :goto_0
    return-void

    .line 743
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/douban/radio/app/RadioActivity;->picLoading:Z

    .line 744
    const/16 v0, 0xa

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 745
    iget-object v0, p0, Lcom/douban/radio/app/RadioActivity;->songGallery:Lfm/douban/view/FlipGallery;

    invoke-virtual {v0}, Lfm/douban/view/FlipGallery;->fitCenterAndShowPic()V

    .line 746
    iget-object v0, p0, Lcom/douban/radio/app/RadioActivity;->songGallery:Lfm/douban/view/FlipGallery;

    iget-object v1, p0, Lcom/douban/radio/app/RadioActivity;->startInAnimation:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lfm/douban/view/FlipGallery;->post(Ljava/lang/Runnable;)Z

    .line 747
    invoke-direct {p0}, Lcom/douban/radio/app/RadioActivity;->hideProgress()V

    .line 748
    const-string v0, "RadioActivity"

    const-string v1, "update song pic done "

    invoke-static {v0, v1}, Lfm/douban/util/DBLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 1072
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 1073
    iget-object v1, p0, Lcom/douban/radio/app/RadioActivity;->menuList:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/douban/radio/app/RadioActivity;->menuList:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1074
    invoke-direct {p0}, Lcom/douban/radio/app/RadioActivity;->hideTopMenu()V

    .line 1081
    :goto_0
    return v0

    .line 1077
    :cond_0
    const/16 v1, 0x52

    if-ne p1, v1, :cond_1

    .line 1078
    iget-object v1, p0, Lcom/douban/radio/app/RadioActivity;->menuButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->performClick()Z

    goto :goto_0

    .line 1081
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/douban/radio/app/FMActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 542
    const-string v0, "RadioActivity"

    const-string v1, "onNewIntent"

    invoke-static {v0, v1}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    invoke-virtual {p0, p1}, Lcom/douban/radio/app/RadioActivity;->setIntent(Landroid/content/Intent;)V

    .line 544
    invoke-super {p0, p1}, Lcom/douban/radio/app/FMActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 545
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 702
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 715
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 704
    :pswitch_0
    const-string v2, "RadioActivity"

    const-string v3, "SETTING"

    invoke-static {v2, v3}, Lfm/douban/util/DBLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/douban/radio/app/SettingActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 706
    .local v0, in:Landroid/content/Intent;
    sget-object v2, Lfm/douban/Consts;->INTENT_RADIO_STATE:Ljava/lang/String;

    iget-object v3, p0, Lcom/douban/radio/app/RadioActivity;->lastRadioState:Lfm/douban/service/RadioState;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 707
    invoke-virtual {p0, v0}, Lcom/douban/radio/app/RadioActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 710
    .end local v0           #in:Landroid/content/Intent;
    :pswitch_1
    const-string v2, "RadioActivity"

    const-string v3, "QUIT"

    invoke-static {v2, v3}, Lfm/douban/util/DBLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    const/4 v2, 0x3

    invoke-static {p0, v2}, Lfm/douban/service/RadioService;->sendCommand(Landroid/content/Context;I)V

    .line 712
    invoke-virtual {p0}, Lcom/douban/radio/app/RadioActivity;->finish()V

    goto :goto_0

    .line 702
    :pswitch_data_0
    .packed-switch 0x7f0800ba
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 576
    invoke-super {p0}, Lcom/douban/radio/app/FMActivity;->onPause()V

    .line 577
    const-string v0, "RadioActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lfm/douban/util/DBLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    invoke-static {p0}, Lcom/mobclick/android/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 580
    iget-object v0, p0, Lcom/douban/radio/app/RadioActivity;->menuList:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/douban/radio/app/RadioActivity;->menuList:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/douban/radio/app/RadioActivity;->hideTopMenu()V

    .line 582
    :cond_0
    iget-object v0, p0, Lcom/douban/radio/app/RadioActivity;->cm:Lfm/douban/controller/ChannelManager;

    iget-object v1, p0, Lcom/douban/radio/app/RadioActivity;->channel:Lfm/douban/model/Channel;

    iget-object v1, v1, Lfm/douban/model/Channel;->channel_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lfm/douban/controller/ChannelManager;->saveLastChannelId(Ljava/lang/String;)V

    .line 583
    const-string v0, "Logout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "save channel_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/douban/radio/app/RadioActivity;->channel:Lfm/douban/model/Channel;

    iget-object v2, v2, Lfm/douban/model/Channel;->channel_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    iget-object v0, p0, Lcom/douban/radio/app/RadioActivity;->receiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 586
    iget-object v0, p0, Lcom/douban/radio/app/RadioActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/douban/radio/app/RadioActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 588
    :cond_1
    iget-object v0, p0, Lcom/douban/radio/app/RadioActivity;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    .line 589
    iget-object v0, p0, Lcom/douban/radio/app/RadioActivity;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 591
    :cond_2
    return-void
.end method

.method public onPrepare(Landroid/graphics/Bitmap;Landroid/widget/ImageView;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "bitmap"
    .parameter "view"

    .prologue
    .line 721
    if-eqz p1, :cond_0

    .line 722
    if-eqz p2, :cond_1

    const v0, 0x7f090074

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 723
    invoke-static {p1}, Lnatalya/graphics/Image;->getGaussianBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 727
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 725
    .restart local p1
    :cond_1
    const v0, 0x3dcccccd

    invoke-static {p1, v0}, Lnatalya/graphics/Image;->getSquareBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    const/high16 v1, 0x3e80

    invoke-static {v0, v1}, Lnatalya/graphics/Image;->getReflectBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 697
    const-string v0, "RadioActivity"

    const-string v1, "onPrepareOptionsMenu"

    invoke-static {v0, v1}, Lfm/douban/util/DBLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    invoke-super {p0, p1}, Lcom/douban/radio/app/FMActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 549
    invoke-super {p0}, Lcom/douban/radio/app/FMActivity;->onResume()V

    .line 550
    const-string v3, "RadioActivity"

    const-string v4, "onResume"

    invoke-static {v3, v4}, Lfm/douban/util/DBLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    invoke-static {p0}, Lcom/mobclick/android/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 552
    invoke-direct {p0}, Lcom/douban/radio/app/RadioActivity;->showGuidance()V

    .line 554
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 555
    .local v0, filter:Landroid/content/IntentFilter;
    sget-object v3, Lfm/douban/Consts;->INTENT_RADIO_STATE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 556
    iget-object v3, p0, Lcom/douban/radio/app/RadioActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v0}, Lcom/douban/radio/app/RadioActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 558
    iget-boolean v3, p0, Lcom/douban/radio/app/RadioActivity;->firstLoadingUI:Z

    if-eqz v3, :cond_0

    .line 559
    iget-object v3, p0, Lcom/douban/radio/app/RadioActivity;->pictureProgress:Landroid/widget/ProgressBar;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 562
    :cond_0
    invoke-virtual {p0}, Lcom/douban/radio/app/RadioActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 563
    .local v1, i:Landroid/content/Intent;
    const/4 v2, 0x0

    .line 564
    .local v2, uri:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 565
    const-string v3, "RadioActivity"

    const-string v4, "intent not null"

    invoke-static {v3, v4}, Lfm/douban/util/DBLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    const-string v3, "start_url"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 567
    if-nez v2, :cond_1

    const-string v3, "RadioActivity"

    const-string v4, "start url null"

    invoke-static {v3, v4}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    :cond_1
    invoke-static {p0, v2}, Lfm/douban/service/RadioService;->start(Landroid/content/Context;Ljava/lang/String;)V

    .line 571
    const/16 v3, 0x8

    invoke-static {p0, v3}, Lfm/douban/service/RadioService;->sendCommand(Landroid/content/Context;I)V

    .line 572
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v7, 0x0

    .line 1086
    iget-object v6, p0, Lcom/douban/radio/app/RadioActivity;->menuList:Landroid/view/View;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/douban/radio/app/RadioActivity;->menuList:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->isShown()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1087
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 1088
    .local v4, x:F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 1089
    .local v5, y:F
    iget-object v6, p0, Lcom/douban/radio/app/RadioActivity;->menuList:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    int-to-float v3, v6

    .line 1090
    .local v3, mtop:F
    iget-object v6, p0, Lcom/douban/radio/app/RadioActivity;->menuList:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v6

    int-to-float v0, v6

    .line 1091
    .local v0, mbottom:F
    iget-object v6, p0, Lcom/douban/radio/app/RadioActivity;->menuList:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v6

    int-to-float v1, v6

    .line 1092
    .local v1, mleft:F
    iget-object v6, p0, Lcom/douban/radio/app/RadioActivity;->menuList:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v6

    int-to-float v2, v6

    .line 1093
    .local v2, mright:F
    sub-float v6, v4, v1

    cmpl-float v6, v6, v7

    if-lez v6, :cond_1

    sub-float v6, v2, v4

    cmpl-float v6, v6, v7

    if-lez v6, :cond_1

    sub-float v6, v5, v3

    cmpl-float v6, v6, v7

    if-lez v6, :cond_1

    sub-float v6, v0, v5

    cmpl-float v6, v6, v7

    if-lez v6, :cond_1

    .line 1100
    .end local v0           #mbottom:F
    .end local v1           #mleft:F
    .end local v2           #mright:F
    .end local v3           #mtop:F
    .end local v4           #x:F
    .end local v5           #y:F
    :cond_0
    :goto_0
    const/4 v6, 0x0

    return v6

    .line 1097
    .restart local v0       #mbottom:F
    .restart local v1       #mleft:F
    .restart local v2       #mright:F
    .restart local v3       #mtop:F
    .restart local v4       #x:F
    .restart local v5       #y:F
    :cond_1
    invoke-direct {p0}, Lcom/douban/radio/app/RadioActivity;->hideTopMenu()V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .parameter "hasFocus"

    .prologue
    .line 603
    if-eqz p1, :cond_0

    .line 604
    const-string v0, "RadioActivity"

    const-string v1, "onWindowFocusChanged"

    invoke-static {v0, v1}, Lfm/douban/util/DBLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    iget-object v0, p0, Lcom/douban/radio/app/RadioActivity;->switcher:Lfm/douban/view/ChannelSwitcher;

    invoke-virtual {v0}, Lfm/douban/view/ChannelSwitcher;->layout()V

    .line 607
    :cond_0
    return-void
.end method

.method public switchChannel(Lfm/douban/model/Channel;)V
    .locals 3
    .parameter "c"

    .prologue
    .line 635
    const-string v0, "RadioActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchChannel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lfm/douban/model/Channel;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    const/4 v0, 0x7

    iget-object v1, p1, Lfm/douban/model/Channel;->channel_id:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lfm/douban/service/RadioService;->sendCommand(Landroid/content/Context;ILjava/lang/String;)V

    .line 637
    return-void
.end method
