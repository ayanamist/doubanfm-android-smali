.class public Lfm/douban/service/Player;
.super Ljava/lang/Object;
.source "Player.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfm/douban/service/Player$State;
    }
.end annotation


# static fields
.field public static final ERROR_ILLEGAL_STATE:I = 0x3e9

.field public static final ERROR_IO:I = 0x3ea

.field private static final MAX_BUFFER_COUNT:I = 0x14

.field private static final MAX_ERROR_COUNT:I = 0x5

.field private static final MSG_FADE_OUT:I = 0xc8

.field private static final MSG_FADE_OUT_DONE:I = 0xc9

.field private static final TAG:Ljava/lang/String; = "Player"

.field private static errorCount:I

.field private static mplayer:Landroid/media/MediaPlayer;


# instance fields
.field private bufferCount:I

.field private context:Landroid/content/Context;

.field private handler:Landroid/os/Handler;

.field private isBuffering:Z

.field private isFading:Z

.field private lastpercent:I

.field private radio:Lfm/douban/service/Radio;

.field private state:Lfm/douban/service/Player$State;

.field private store:Lfm/douban/model/SongStore;

.field private volume:F

.field private wl:Landroid/os/PowerManager$WakeLock;

# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    sput v0, Lfm/douban/service/Player;->errorCount:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lfm/douban/service/Radio;Lfm/douban/model/SongStore;)V
    .locals 7
    .parameter "ctx"
    .parameter "r"
    .parameter "ss"

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfm/douban/service/Player;->isFading:Z

    .line 52
    new-instance v0, Lfm/douban/service/Player$1;

    invoke-direct {v0, p0}, Lfm/douban/service/Player$1;-><init>(Lfm/douban/service/Player;)V

    iput-object v0, p0, Lfm/douban/service/Player;->handler:Landroid/os/Handler;

    .line 77
    iput-object p1, p0, Lfm/douban/service/Player;->context:Landroid/content/Context;

    .line 78
    iput-object p2, p0, Lfm/douban/service/Player;->radio:Lfm/douban/service/Radio;

    .line 79
    iput-object p3, p0, Lfm/douban/service/Player;->store:Lfm/douban/model/SongStore;

    .line 80
    invoke-direct {p0}, Lfm/douban/service/Player;->reset()V

    const/4 v2, 0x0

    .local v2, pm:Landroid/os/PowerManager;
    const-string v3, "power"

    move-object/from16 v0, p0

    move-object/from16 v1, v3

    invoke-virtual {v0, v1}, Lfm/douban/service/Player;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    const/16 v4, 0x1

    const-string v5, "fm.douban.service.Player"

    move/from16 v0, v4

    move-object/from16 v1, v5

    invoke-virtual {v2, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    move-object/from16 v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lfm/douban/service/Player;->wl:Landroid/os/PowerManager$WakeLock;
    .end local v2           #pm:Landroid/os/PowerManager;

    .line 82
    return-void
.end method

.method static synthetic access$000(Lfm/douban/service/Player;)Lfm/douban/service/Radio;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lfm/douban/service/Player;->radio:Lfm/douban/service/Radio;

    return-object v0
.end method

.method static synthetic access$102(Lfm/douban/service/Player;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput-boolean p1, p0, Lfm/douban/service/Player;->isFading:Z

    return p1
.end method

.method private getInterpolation(F)F
    .locals 1
    .parameter "input"

    .prologue
    .line 329
    const/high16 v0, 0x3f80

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 330
    const v0, 0x3f59999a

    .line 332
    :goto_0
    return v0

    :cond_0
    const v0, 0x3e4ccccd

    sub-float v0, p1, v0

    goto :goto_0
.end method

.method private reset()V
    .locals 2

    .prologue
    .line 85
    const-string v0, "Player"

    const-string v1, "reset"

    invoke-static {v0, v1}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    sget-object v0, Lfm/douban/service/Player;->mplayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    sput-object v0, Lfm/douban/service/Player;->mplayer:Landroid/media/MediaPlayer;

    .line 88
    sget-object v0, Lfm/douban/service/Player;->mplayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 89
    sget-object v0, Lfm/douban/service/Player;->mplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 90
    sget-object v0, Lfm/douban/service/Player;->mplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 91
    sget-object v0, Lfm/douban/service/Player;->mplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 92
    sget-object v0, Lfm/douban/service/Player;->mplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 94
    :cond_0
    sget-object v0, Lfm/douban/service/Player;->mplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 95
    sget-object v0, Lfm/douban/service/Player$State;->STOP:Lfm/douban/service/Player$State;

    iput-object v0, p0, Lfm/douban/service/Player;->state:Lfm/douban/service/Player$State;

    .line 96
    const/high16 v0, 0x3f80

    iput v0, p0, Lfm/douban/service/Player;->volume:F

    .line 97
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 180
    :try_start_0
    sget-object v0, Lfm/douban/service/Player;->mplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 181
    sget-object v0, Lfm/douban/service/Player;->mplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 182
    const/4 v0, 0x0

    sput-object v0, Lfm/douban/service/Player;->mplayer:Landroid/media/MediaPlayer;

    .line 183
    const-string v0, "Player"

    const-string v1, "detroy player"

    invoke-static {v0, v1}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :goto_0
    return-void

    .line 184
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public duration()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 217
    sget-object v2, Lfm/douban/service/Player;->mplayer:Landroid/media/MediaPlayer;

    if-nez v2, :cond_1

    .line 227
    :cond_0
    :goto_0
    return v1

    .line 221
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lfm/douban/service/Player;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 222
    sget-object v2, Lfm/douban/service/Player;->mplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getDuration()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, e:Ljava/lang/IllegalStateException;
    goto :goto_0
.end method

.method public fadeOut()V
    .locals 6

    .prologue
    const/16 v5, 0xc8

    .line 337
    const-string v2, "Player"

    const-string v3, "fadeOut"

    invoke-static {v2, v3}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    const/4 v0, 0x0

    .line 339
    .local v0, msg:Landroid/os/Message;
    const/4 v2, 0x1

    iput-boolean v2, p0, Lfm/douban/service/Player;->isFading:Z

    .line 340
    invoke-virtual {p0}, Lfm/douban/service/Player;->getVolume()F

    move-result v2

    const v3, 0x3d4ccccd

    sub-float/2addr v2, v3

    const v3, 0x3b03126f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    .line 341
    invoke-virtual {p0}, Lfm/douban/service/Player;->getVolume()F

    move-result v2

    invoke-direct {p0, v2}, Lfm/douban/service/Player;->getInterpolation(F)F

    move-result v1

    .line 342
    .local v1, v:F
    const-string v2, "Player"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set volume "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    invoke-virtual {p0, v1}, Lfm/douban/service/Player;->setVolume(F)V

    .line 344
    iget-object v2, p0, Lfm/douban/service/Player;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 345
    iget-object v2, p0, Lfm/douban/service/Player;->handler:Landroid/os/Handler;

    const-wide/16 v3, 0xb4

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 351
    .end local v1           #v:F
    :goto_0
    return-void

    .line 347
    :cond_0
    iget-object v2, p0, Lfm/douban/service/Player;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 348
    iget-object v2, p0, Lfm/douban/service/Player;->handler:Landroid/os/Handler;

    const/16 v3, 0xc9

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 349
    iget-object v2, p0, Lfm/douban/service/Player;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public fastFadePlay()V
    .locals 4

    .prologue
    const v3, 0x3d4ccccd

    .line 354
    const/4 v0, 0x0

    .line 355
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lfm/douban/service/Player;->isFading:Z

    .line 356
    invoke-virtual {p0}, Lfm/douban/service/Player;->getVolume()F

    move-result v1

    sub-float/2addr v1, v3

    const v2, 0x3b03126f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    .line 357
    invoke-virtual {p0, v3}, Lfm/douban/service/Player;->setVolume(F)V

    .line 359
    :cond_0
    iget-object v1, p0, Lfm/douban/service/Player;->handler:Landroid/os/Handler;

    const/16 v2, 0xc8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 360
    iget-object v1, p0, Lfm/douban/service/Player;->handler:Landroid/os/Handler;

    const/16 v2, 0xc9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 361
    iget-object v1, p0, Lfm/douban/service/Player;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 362
    return-void
.end method

.method public getVolume()F
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Lfm/douban/service/Player;->volume:F

    return v0
.end method

.method public info()Ljava/lang/String;
    .locals 3

    .prologue
    .line 365
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 366
    .local v0, s:Ljava/lang/StringBuffer;
    const-string v1, "==================\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 367
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lfm/douban/service/Player;->state:Lfm/douban/service/Player$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 368
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "volume: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lfm/douban/service/Player;->volume:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 369
    sget-object v1, Lfm/douban/service/Player;->mplayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 370
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "duration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lfm/douban/service/Player;->duration()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 371
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lfm/douban/service/Player;->position()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 373
    :cond_0
    const-string v1, "==================\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 374
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public isPlaying()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 206
    sget-object v2, Lfm/douban/service/Player;->mplayer:Landroid/media/MediaPlayer;

    if-nez v2, :cond_0

    .line 212
    :goto_0
    return v1

    .line 210
    :cond_0
    :try_start_0
    sget-object v2, Lfm/douban/service/Player;->mplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 211
    :catch_0
    move-exception v0

    .line 212
    .local v0, e:Ljava/lang/IllegalStateException;
    goto :goto_0
.end method

.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 0
    .parameter "mp"
    .parameter "percent"

    .prologue
    .line 274
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3
    .parameter "mp"

    .prologue
    .line 278
    const-string v1, "Player"

    const-string v2, "onCompletion"

    invoke-static {v1, v2}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget-boolean v1, p0, Lfm/douban/service/Player;->isFading:Z

    if-eqz v1, :cond_0

    .line 281
    iget-object v1, p0, Lfm/douban/service/Player;->handler:Landroid/os/Handler;

    const/16 v2, 0xc8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 282
    iget-object v1, p0, Lfm/douban/service/Player;->handler:Landroid/os/Handler;

    const/16 v2, 0xc9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 283
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lfm/douban/service/Player;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 290
    .end local v0           #msg:Landroid/os/Message;
    :goto_0
    return-void

    .line 285
    :cond_0
    invoke-virtual {p0}, Lfm/douban/service/Player;->stop()V

    .line 286
    const/4 v1, 0x0

    sput v1, Lfm/douban/service/Player;->errorCount:I

    .line 288
    iget-object v1, p0, Lfm/douban/service/Player;->radio:Lfm/douban/service/Radio;

    invoke-virtual {v1}, Lfm/douban/service/Radio;->playNextSong()V

    goto :goto_0
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 4
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    const/4 v3, 0x3

    .line 294
    const-string v0, "Player"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError what : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " extra: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    sparse-switch p2, :sswitch_data_0

    .line 303
    iget-object v0, p0, Lfm/douban/service/Player;->context:Landroid/content/Context;

    invoke-static {v0}, Lfm/douban/util/NetworkHelper;->isUsingWap(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 304
    iget-object v0, p0, Lfm/douban/service/Player;->radio:Lfm/douban/service/Radio;

    invoke-virtual {v0, v3}, Lfm/douban/service/Radio;->pause(I)V

    .line 305
    iget-object v0, p0, Lfm/douban/service/Player;->radio:Lfm/douban/service/Radio;

    invoke-virtual {v0}, Lfm/douban/service/Radio;->updateState()V

    .line 306
    iget-object v0, p0, Lfm/douban/service/Player;->radio:Lfm/douban/service/Radio;

    const/16 v1, 0x14

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lfm/douban/service/Radio;->showWarning(ILjava/lang/String;)V

    .line 325
    :cond_0
    :goto_0
    :sswitch_0
    const/4 v0, 0x1

    return v0

    .line 310
    :cond_1
    sget v0, Lfm/douban/service/Player;->errorCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lfm/douban/service/Player;->errorCount:I

    .line 311
    sget v0, Lfm/douban/service/Player;->errorCount:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_2

    .line 313
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 314
    iget-object v0, p0, Lfm/douban/service/Player;->context:Landroid/content/Context;

    const v1, 0x7f0900a1

    invoke-static {v0, v1}, Lfm/douban/util/Utils;->showToast(Landroid/content/Context;I)V

    .line 315
    iget-object v0, p0, Lfm/douban/service/Player;->radio:Lfm/douban/service/Radio;

    invoke-virtual {v0, v3}, Lfm/douban/service/Radio;->pause(I)V

    .line 316
    iget-object v0, p0, Lfm/douban/service/Player;->radio:Lfm/douban/service/Radio;

    invoke-virtual {v0}, Lfm/douban/service/Radio;->updateState()V

    goto :goto_0

    .line 320
    :cond_2
    iget-object v0, p0, Lfm/douban/service/Player;->radio:Lfm/douban/service/Radio;

    invoke-virtual {v0}, Lfm/douban/service/Radio;->play()V

    goto :goto_0

    .line 295
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x3e9 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 3
    .parameter "mp"

    .prologue
    .line 248
    const-string v1, "Player"

    const-string v2, "onPrepared"

    invoke-static {v1, v2}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v1, p0, Lfm/douban/service/Player;->state:Lfm/douban/service/Player$State;

    sget-object v2, Lfm/douban/service/Player$State;->PREPARE:Lfm/douban/service/Player$State;

    if-ne v1, v2, :cond_0

    .line 251
    :try_start_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 252
    sget-object v1, Lfm/douban/service/Player$State;->PLAY:Lfm/douban/service/Player$State;

    iput-object v1, p0, Lfm/douban/service/Player;->state:Lfm/douban/service/Player$State;

    .line 254
    iget-object v1, p0, Lfm/douban/service/Player;->radio:Lfm/douban/service/Radio;

    iget-object v1, v1, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lfm/douban/service/RadioState;->canOp:Z

    .line 255
    iget-object v1, p0, Lfm/douban/service/Player;->radio:Lfm/douban/service/Radio;

    iget-object v1, v1, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v2

    iput v2, v1, Lfm/douban/service/RadioState;->playDuration:I

    .line 256
    iget-object v1, p0, Lfm/douban/service/Player;->radio:Lfm/douban/service/Radio;

    invoke-virtual {v1}, Lfm/douban/service/Radio;->sync()V

    .line 257
    iget-object v1, p0, Lfm/douban/service/Player;->radio:Lfm/douban/service/Radio;

    invoke-virtual {v1}, Lfm/douban/service/Radio;->updateState()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 258
    :catch_0
    move-exception v0

    .line 259
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 260
    const/16 v1, 0x3e9

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2}, Lfm/douban/service/Player;->onError(Landroid/media/MediaPlayer;II)Z

    goto :goto_0
.end method

.method public pause()V
    .locals 4

    .prologue
    .line 135
    iget-object v1, p0, Lfm/douban/service/Player;->state:Lfm/douban/service/Player$State;

    sget-object v2, Lfm/douban/service/Player$State;->PLAY:Lfm/douban/service/Player$State;

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lfm/douban/service/Player;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    :try_start_0
    sget-object v1, Lfm/douban/service/Player;->mplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->pause()V

    .line 138
    sget-object v1, Lfm/douban/service/Player$State;->PAUSE:Lfm/douban/service/Player$State;

    iput-object v1, p0, Lfm/douban/service/Player;->state:Lfm/douban/service/Player$State;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 141
    sget-object v1, Lfm/douban/service/Player;->mplayer:Landroid/media/MediaPlayer;

    const/16 v2, 0x3e9

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lfm/douban/service/Player;->onError(Landroid/media/MediaPlayer;II)Z

    goto :goto_0
.end method

.method public play(Lfm/douban/model/Song;)V
    .locals 11
    .parameter "s"

    .prologue
    const/4 v10, 0x0

    .line 100
    const-string v1, "Player"

    const-string v2, "play"

    invoke-static {v1, v2}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    sget-object v1, Lfm/douban/service/Player;->mplayer:Landroid/media/MediaPlayer;

    if-nez v1, :cond_1

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    if-eqz p1, :cond_0

    .line 105
    invoke-virtual {p0}, Lfm/douban/service/Player;->stop()V

    .line 108
    const/high16 v1, 0x3f80

    :try_start_0
    invoke-virtual {p0, v1}, Lfm/douban/service/Player;->setVolume(F)V

    .line 109
    const-string v1, "Player"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lfm/douban/model/Song;->song_id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lfm/douban/model/Song;->artist:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lfm/douban/model/Song;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p1, Lfm/douban/model/Song;->like:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const-string v1, "Player"

    iget-object v2, p1, Lfm/douban/model/Song;->url:Ljava/lang/String;

    invoke-static {v1, v2}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-virtual {p1}, Lfm/douban/model/Song;->isOffline()Z

    move-result v1

    if-nez v1, :cond_2

    .line 112
    const-string v1, "Player"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "online: url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lfm/douban/model/Song;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    sget-object v1, Lfm/douban/service/Player;->mplayer:Landroid/media/MediaPlayer;

    iget-object v2, p1, Lfm/douban/model/Song;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 120
    :goto_1
    const-string v1, "Player"

    const-string v2, "prepareAsync in play"

    invoke-static {v1, v2}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    sget-object v1, Lfm/douban/service/Player;->mplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 122
    sget-object v1, Lfm/douban/service/Player$State;->PREPARE:Lfm/douban/service/Player$State;

    iput-object v1, p0, Lfm/douban/service/Player;->state:Lfm/douban/service/Player$State;

    .line 123
    iget-object v1, p0, Lfm/douban/service/Player;->radio:Lfm/douban/service/Radio;

    iget-object v1, v1, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lfm/douban/service/RadioState;->canOp:Z

    .line 124
    iget-object v1, p0, Lfm/douban/service/Player;->radio:Lfm/douban/service/Radio;

    invoke-virtual {v1}, Lfm/douban/service/Radio;->updateState()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 125
    :catch_0
    move-exception v8

    .line 126
    .local v8, ie:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    .line 127
    sget-object v1, Lfm/douban/service/Player;->mplayer:Landroid/media/MediaPlayer;

    const/16 v2, 0x3ea

    invoke-virtual {p0, v1, v2, v10}, Lfm/douban/service/Player;->onError(Landroid/media/MediaPlayer;II)Z

    goto/16 :goto_0

    .line 115
    .end local v8           #ie:Ljava/io/IOException;
    :cond_2
    :try_start_1
    move-object v0, p1

    check-cast v0, Lfm/douban/model/OfflineSong;

    move-object v9, v0

    .line 116
    .local v9, os:Lfm/douban/model/OfflineSong;
    const-string v1, "Player"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "offline: start="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, v9, Lfm/douban/model/OfflineSong;->start:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", end="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, v9, Lfm/douban/model/OfflineSong;->end:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    const-string v1, "Player"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "offline: offset="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Lfm/douban/model/OfflineSong;->offset()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", len="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Lfm/douban/model/OfflineSong;->length()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    sget-object v1, Lfm/douban/service/Player;->mplayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lfm/douban/service/Player;->store:Lfm/douban/model/SongStore;

    invoke-virtual {v2}, Lfm/douban/model/SongStore;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v9}, Lfm/douban/model/OfflineSong;->offset()J

    move-result-wide v3

    invoke-virtual {v9}, Lfm/douban/model/OfflineSong;->length()J

    move-result-wide v5

    invoke-virtual/range {v1 .. v6}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 128
    .end local v9           #os:Lfm/douban/model/OfflineSong;
    :catch_1
    move-exception v7

    .line 129
    .local v7, e:Ljava/lang/IllegalStateException;
    sget-object v1, Lfm/douban/service/Player;->mplayer:Landroid/media/MediaPlayer;

    const/16 v2, 0x3e9

    invoke-virtual {p0, v1, v2, v10}, Lfm/douban/service/Player;->onError(Landroid/media/MediaPlayer;II)Z

    goto/16 :goto_0
.end method

.method public position()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 232
    sget-object v2, Lfm/douban/service/Player;->mplayer:Landroid/media/MediaPlayer;

    if-nez v2, :cond_1

    .line 242
    :cond_0
    :goto_0
    return v1

    .line 236
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lfm/douban/service/Player;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lfm/douban/service/Player;->state:Lfm/douban/service/Player$State;

    sget-object v3, Lfm/douban/service/Player$State;->PAUSE:Lfm/douban/service/Player$State;

    if-ne v2, v3, :cond_0

    .line 237
    :cond_2
    sget-object v2, Lfm/douban/service/Player;->mplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getCurrentPosition()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 241
    :catch_0
    move-exception v0

    .line 242
    .local v0, e:Ljava/lang/IllegalStateException;
    goto :goto_0
.end method

.method public resume()V
    .locals 4

    .prologue
    .line 147
    iget-object v1, p0, Lfm/douban/service/Player;->state:Lfm/douban/service/Player$State;

    sget-object v2, Lfm/douban/service/Player$State;->PAUSE:Lfm/douban/service/Player$State;

    if-ne v1, v2, :cond_0

    .line 149
    :try_start_0
    sget-object v1, Lfm/douban/service/Player;->mplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 150
    sget-object v1, Lfm/douban/service/Player$State;->PLAY:Lfm/douban/service/Player$State;

    iput-object v1, p0, Lfm/douban/service/Player;->state:Lfm/douban/service/Player$State;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 153
    sget-object v1, Lfm/douban/service/Player;->mplayer:Landroid/media/MediaPlayer;

    const/16 v2, 0x3e9

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lfm/douban/service/Player;->onError(Landroid/media/MediaPlayer;II)Z

    goto :goto_0
.end method

.method public setVolume(F)V
    .locals 4
    .parameter "v"

    .prologue
    .line 193
    sget-object v1, Lfm/douban/service/Player;->mplayer:Landroid/media/MediaPlayer;

    if-nez v1, :cond_0

    .line 194
    invoke-direct {p0}, Lfm/douban/service/Player;->reset()V

    .line 196
    :cond_0
    const-string v1, "Player"

    const-string v2, "setVolume"

    invoke-static {v1, v2}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :try_start_0
    sget-object v1, Lfm/douban/service/Player;->mplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 199
    iput p1, p0, Lfm/douban/service/Player;->volume:F
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    :goto_0
    return-void

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, e:Ljava/lang/IllegalStateException;
    sget-object v1, Lfm/douban/service/Player;->mplayer:Landroid/media/MediaPlayer;

    const/16 v2, 0x3e9

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lfm/douban/service/Player;->onError(Landroid/media/MediaPlayer;II)Z

    goto :goto_0
.end method

.method public stop()V
    .locals 4

    .prologue
    .line 159
    sget-object v1, Lfm/douban/service/Player;->mplayer:Landroid/media/MediaPlayer;

    if-nez v1, :cond_0

    .line 160
    invoke-direct {p0}, Lfm/douban/service/Player;->reset()V

    .line 163
    :cond_0
    :try_start_0
    iget-object v1, p0, Lfm/douban/service/Player;->state:Lfm/douban/service/Player$State;

    sget-object v2, Lfm/douban/service/Player$State;->PLAY:Lfm/douban/service/Player$State;

    if-ne v1, v2, :cond_1

    .line 164
    const-string v1, "Player"

    const-string v2, "stop:state=play"

    invoke-static {v1, v2}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    sget-object v1, Lfm/douban/service/Player;->mplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 167
    invoke-direct {p0}, Lfm/douban/service/Player;->reset()V

    .line 176
    :goto_0
    return-void

    .line 170
    :cond_1
    const-string v1, "Player"

    const-string v2, "stop:state not play"

    invoke-static {v1, v2}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-direct {p0}, Lfm/douban/service/Player;->reset()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, e:Ljava/lang/IllegalStateException;
    sget-object v1, Lfm/douban/service/Player;->mplayer:Landroid/media/MediaPlayer;

    const/16 v2, 0x3e9

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lfm/douban/service/Player;->onError(Landroid/media/MediaPlayer;II)Z

    goto :goto_0
.end method
