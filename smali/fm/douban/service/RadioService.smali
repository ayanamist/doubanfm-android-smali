.class public Lfm/douban/service/RadioService;
.super Landroid/app/Service;
.source "RadioService.java"

# interfaces
.implements Lfm/douban/util/ShakeMonitor$ShakeHandler;


# static fields
.field public static final CMD_CHANNEL:I = 0x7

.field public static final CMD_HATE:I = 0x5

.field public static final CMD_LIKE:I = 0x4

.field public static final CMD_LOGOUT:I = 0x9

.field public static final CMD_PAUSE:I = 0x2

.field public static final CMD_PICTURE:I = 0xa

.field public static final CMD_PLAY:I = 0x1

.field public static final CMD_QUIT:I = 0x3

.field public static final CMD_SHARE:I = 0xe

.field public static final CMD_SKIP:I = 0x6

.field public static final CMD_STATE:I = 0x8

.field public static final CMD_SWITCH_OFFLINE:I = 0xd

.field public static final CMD_SWITCH_ONLINE:I = 0xc

.field private static final MSG_COMMAND_HANDLE:I = 0x8ae

.field private static final MSG_NET_HANDLE:I = 0x457

.field protected static final MSG_TRY_OFFLINE:I = 0xd05

.field public static final NOTIFICATION_PLAY:I = 0x1

.field private static final QUIT_MINUTE:[I = null

.field private static final TAG:Ljava/lang/String; = "RadioService"

.field protected static netChangeWhenPause:Z


# instance fields
.field private broadReceiverHandler:Landroid/os/Handler;

.field private cm:Lfm/douban/controller/ChannelManager;

.field private fmsp:Lfm/douban/model/FMSharedPreferences;

.field private fromAlarm:Z

.field private isFinishing:Z

.field private phoneStateListener:Landroid/telephony/PhoneStateListener;

.field private radio:Lfm/douban/service/Radio;

.field private receiver:Landroid/content/BroadcastReceiver;

.field private rm:Lfm/douban/controller/RadioManager;

.field private shakeMonitor:Lfm/douban/util/ShakeMonitor;

.field private startPlugFlag:Z

.field private startTime:J

.field private stophandler:Landroid/os/Handler;

.field private taskManager:Lfm/douban/controller/SongTaskManager;

.field private telephonyManager:Landroid/telephony/TelephonyManager;

.field private wifiLock:Landroid/net/wifi/WifiManager$WifiLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    sput-boolean v0, Lfm/douban/service/RadioService;->netChangeWhenPause:Z

    .line 79
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lfm/douban/service/RadioService;->QUIT_MINUTE:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x3ct 0x0t 0x0t 0x0t
        0x78t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfm/douban/service/RadioService;->startPlugFlag:Z

    .line 76
    iput-boolean v1, p0, Lfm/douban/service/RadioService;->isFinishing:Z

    .line 77
    iput-boolean v1, p0, Lfm/douban/service/RadioService;->fromAlarm:Z

    .line 102
    new-instance v0, Lfm/douban/service/RadioService$1;

    invoke-direct {v0, p0}, Lfm/douban/service/RadioService$1;-><init>(Lfm/douban/service/RadioService;)V

    iput-object v0, p0, Lfm/douban/service/RadioService;->broadReceiverHandler:Landroid/os/Handler;

    .line 119
    new-instance v0, Lfm/douban/service/RadioService$2;

    invoke-direct {v0, p0}, Lfm/douban/service/RadioService$2;-><init>(Lfm/douban/service/RadioService;)V

    iput-object v0, p0, Lfm/douban/service/RadioService;->receiver:Landroid/content/BroadcastReceiver;

    .line 272
    new-instance v0, Lfm/douban/service/RadioService$3;

    invoke-direct {v0, p0}, Lfm/douban/service/RadioService$3;-><init>(Lfm/douban/service/RadioService;)V

    iput-object v0, p0, Lfm/douban/service/RadioService;->stophandler:Landroid/os/Handler;

    .line 500
    new-instance v0, Lfm/douban/service/RadioService$4;

    invoke-direct {v0, p0}, Lfm/douban/service/RadioService$4;-><init>(Lfm/douban/service/RadioService;)V

    iput-object v0, p0, Lfm/douban/service/RadioService;->phoneStateListener:Landroid/telephony/PhoneStateListener;

    return-void
.end method

.method static synthetic access$000(Lfm/douban/service/RadioService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lfm/douban/service/RadioService;->handleNetworkChanged()V

    return-void
.end method

.method static synthetic access$100(Lfm/douban/service/RadioService;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lfm/douban/service/RadioService;->command(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Lfm/douban/service/RadioService;)Lfm/douban/service/Radio;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lfm/douban/service/RadioService;->radio:Lfm/douban/service/Radio;

    return-object v0
.end method

.method static synthetic access$202(Lfm/douban/service/RadioService;Lfm/douban/service/Radio;)Lfm/douban/service/Radio;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-object p1, p0, Lfm/douban/service/RadioService;->radio:Lfm/douban/service/Radio;

    return-object p1
.end method

.method static synthetic access$300(Lfm/douban/service/RadioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-boolean v0, p0, Lfm/douban/service/RadioService;->isFinishing:Z

    return v0
.end method

.method static synthetic access$302(Lfm/douban/service/RadioService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-boolean p1, p0, Lfm/douban/service/RadioService;->isFinishing:Z

    return p1
.end method

.method static synthetic access$400(Lfm/douban/service/RadioService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lfm/douban/service/RadioService;->broadReceiverHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lfm/douban/service/RadioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-boolean v0, p0, Lfm/douban/service/RadioService;->startPlugFlag:Z

    return v0
.end method

.method static synthetic access$502(Lfm/douban/service/RadioService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-boolean p1, p0, Lfm/douban/service/RadioService;->startPlugFlag:Z

    return p1
.end method

.method private command(Landroid/content/Intent;)V
    .locals 12
    .parameter "intent"

    .prologue
    const/4 v11, 0x1

    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 288
    const-string v6, "cmd"

    invoke-virtual {p1, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 289
    .local v1, command:I
    const-string v6, "RadioService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "command = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    packed-switch v1, :pswitch_data_0

    .line 372
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 292
    :pswitch_1
    const-string v6, "RadioService"

    const-string v7, "CMD_PLAY"

    invoke-static {v6, v7}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    const-string v6, "channel"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 294
    .local v0, channelId:Ljava/lang/String;
    iget-object v6, p0, Lfm/douban/service/RadioService;->radio:Lfm/douban/service/Radio;

    invoke-virtual {v6, v0}, Lfm/douban/service/Radio;->play(Ljava/lang/String;)V

    .line 295
    iget-object v6, p0, Lfm/douban/service/RadioService;->radio:Lfm/douban/service/Radio;

    invoke-virtual {v6}, Lfm/douban/service/Radio;->updateState()V

    goto :goto_0

    .line 298
    .end local v0           #channelId:Ljava/lang/String;
    :pswitch_2
    const-string v6, "RadioService"

    const-string v7, "CMD_PAUSE"

    invoke-static {v6, v7}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-object v6, p0, Lfm/douban/service/RadioService;->radio:Lfm/douban/service/Radio;

    invoke-virtual {v6, v9}, Lfm/douban/service/Radio;->pause(I)V

    .line 300
    const-string v6, "Pause"

    const-string v7, "Manual"

    invoke-static {p0, v6, v7}, Lcom/mobclick/android/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    iget-object v6, p0, Lfm/douban/service/RadioService;->radio:Lfm/douban/service/Radio;

    invoke-virtual {v6}, Lfm/douban/service/Radio;->updateState()V

    goto :goto_0

    .line 304
    :pswitch_3
    const-string v6, "RadioService"

    const-string v7, "CMD_QUIT"

    invoke-static {v6, v7}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object v6, p0, Lfm/douban/service/RadioService;->radio:Lfm/douban/service/Radio;

    if-eqz v6, :cond_1

    iget-boolean v6, p0, Lfm/douban/service/RadioService;->isFinishing:Z

    if-nez v6, :cond_1

    .line 306
    iget-object v6, p0, Lfm/douban/service/RadioService;->taskManager:Lfm/douban/controller/SongTaskManager;

    invoke-virtual {v6}, Lfm/douban/controller/SongTaskManager;->stop()V

    .line 307
    iput-boolean v11, p0, Lfm/douban/service/RadioService;->isFinishing:Z

    .line 308
    iget-object v6, p0, Lfm/douban/service/RadioService;->radio:Lfm/douban/service/Radio;

    invoke-virtual {v6}, Lfm/douban/service/Radio;->destroy()V

    .line 309
    iget-object v6, p0, Lfm/douban/service/RadioService;->radio:Lfm/douban/service/Radio;

    invoke-virtual {v6}, Lfm/douban/service/Radio;->updateState()V

    .line 310
    iget-object v6, p0, Lfm/douban/service/RadioService;->rm:Lfm/douban/controller/RadioManager;

    invoke-virtual {v6}, Lfm/douban/controller/RadioManager;->getSongTaskManager()Lfm/douban/controller/SongTaskManager;

    move-result-object v6

    invoke-virtual {v6}, Lfm/douban/controller/SongTaskManager;->stop()V

    .line 311
    iget-object v6, p0, Lfm/douban/service/RadioService;->stophandler:Landroid/os/Handler;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 313
    :cond_1
    iget-object v6, p0, Lfm/douban/service/RadioService;->fmsp:Lfm/douban/model/FMSharedPreferences;

    const-string v7, "sleep_clock"

    invoke-virtual {v6, v7, v9}, Lfm/douban/model/FMSharedPreferences;->putInt(Ljava/lang/String;I)Z

    .line 314
    invoke-static {p0}, Lfm/douban/FmApp;->terminate(Landroid/content/Context;)V

    goto :goto_0

    .line 317
    :pswitch_4
    const-string v6, "RadioService"

    const-string v7, "CMD_LIKE"

    invoke-static {v6, v7}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iget-object v6, p0, Lfm/douban/service/RadioService;->radio:Lfm/douban/service/Radio;

    invoke-virtual {v6}, Lfm/douban/service/Radio;->like()V

    .line 319
    iget-object v6, p0, Lfm/douban/service/RadioService;->radio:Lfm/douban/service/Radio;

    invoke-virtual {v6}, Lfm/douban/service/Radio;->updateState()V

    goto :goto_0

    .line 322
    :pswitch_5
    const-string v6, "RadioService"

    const-string v7, "CMD_HATE"

    invoke-static {v6, v7}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object v6, p0, Lfm/douban/service/RadioService;->radio:Lfm/douban/service/Radio;

    invoke-virtual {v6}, Lfm/douban/service/Radio;->hate()V

    .line 324
    iget-object v6, p0, Lfm/douban/service/RadioService;->radio:Lfm/douban/service/Radio;

    invoke-virtual {v6}, Lfm/douban/service/Radio;->updateState()V

    goto/16 :goto_0

    .line 327
    :pswitch_6
    const-string v6, "RadioService"

    const-string v7, "CMD_SKIP"

    invoke-static {v6, v7}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object v6, p0, Lfm/douban/service/RadioService;->radio:Lfm/douban/service/Radio;

    invoke-virtual {v6}, Lfm/douban/service/Radio;->skip()V

    .line 329
    iget-object v6, p0, Lfm/douban/service/RadioService;->radio:Lfm/douban/service/Radio;

    invoke-virtual {v6}, Lfm/douban/service/Radio;->updateState()V

    .line 330
    const-string v6, "Skip"

    const-string v7, "Manual"

    invoke-static {p0, v6, v7}, Lcom/mobclick/android/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 333
    :pswitch_7
    const-string v6, "RadioService"

    const-string v7, "CMD_CHANNEL"

    invoke-static {v6, v7}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    const-string v6, "channel"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 335
    .local v3, newChannelId:Ljava/lang/String;
    const-string v6, "RadioService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CMD_CHANNEL:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget-object v6, p0, Lfm/douban/service/RadioService;->radio:Lfm/douban/service/Radio;

    iget-object v6, v6, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iput v9, v6, Lfm/douban/service/RadioState;->errorState:I

    .line 337
    iget-object v6, p0, Lfm/douban/service/RadioService;->radio:Lfm/douban/service/Radio;

    invoke-virtual {v6, v3}, Lfm/douban/service/Radio;->switchChannel(Ljava/lang/String;)V

    .line 338
    iget-object v6, p0, Lfm/douban/service/RadioService;->radio:Lfm/douban/service/Radio;

    invoke-virtual {v6}, Lfm/douban/service/Radio;->updateState()V

    goto/16 :goto_0

    .line 341
    .end local v3           #newChannelId:Ljava/lang/String;
    :pswitch_8
    iget-object v6, p0, Lfm/douban/service/RadioService;->radio:Lfm/douban/service/Radio;

    invoke-virtual {v6}, Lfm/douban/service/Radio;->updateState()V

    goto/16 :goto_0

    .line 344
    :pswitch_9
    iget-object v6, p0, Lfm/douban/service/RadioService;->radio:Lfm/douban/service/Radio;

    invoke-virtual {v6}, Lfm/douban/service/Radio;->logout()V

    .line 345
    iget-object v6, p0, Lfm/douban/service/RadioService;->radio:Lfm/douban/service/Radio;

    invoke-virtual {v6}, Lfm/douban/service/Radio;->updateState()V

    goto/16 :goto_0

    .line 348
    :pswitch_a
    const-string v6, "RadioService"

    const-string v7, "CMD_PICTURE"

    invoke-static {v6, v7}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    iget-object v6, p0, Lfm/douban/service/RadioService;->radio:Lfm/douban/service/Radio;

    invoke-virtual {v6}, Lfm/douban/service/Radio;->picture()V

    goto/16 :goto_0

    .line 352
    :pswitch_b
    invoke-direct {p0}, Lfm/douban/service/RadioService;->updateChannelList()V

    .line 353
    iget-object v6, p0, Lfm/douban/service/RadioService;->radio:Lfm/douban/service/Radio;

    invoke-virtual {v6}, Lfm/douban/service/Radio;->switchOnline()V

    .line 354
    iget-object v6, p0, Lfm/douban/service/RadioService;->radio:Lfm/douban/service/Radio;

    invoke-virtual {v6}, Lfm/douban/service/Radio;->play()V

    goto/16 :goto_0

    .line 357
    :pswitch_c
    iget-object v6, p0, Lfm/douban/service/RadioService;->radio:Lfm/douban/service/Radio;

    iget-object v6, v6, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iput-boolean v11, v6, Lfm/douban/service/RadioState;->canOp:Z

    .line 358
    iget-object v6, p0, Lfm/douban/service/RadioService;->radio:Lfm/douban/service/Radio;

    invoke-virtual {v6}, Lfm/douban/service/Radio;->tryPlayOffline()V

    goto/16 :goto_0

    .line 361
    :pswitch_d
    const-string v6, "share_source"

    invoke-virtual {p1, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 362
    .local v5, shareSource:I
    const-string v6, "share_content"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 363
    .local v2, content:Ljava/lang/String;
    const-string v6, "state"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lfm/douban/service/RadioState;

    .line 364
    .local v4, rs:Lfm/douban/service/RadioState;
    if-eq v5, v10, :cond_0

    .line 365
    const-string v6, "RadioService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "share: share source:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";content:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    iget-object v6, p0, Lfm/douban/service/RadioService;->radio:Lfm/douban/service/Radio;

    invoke-virtual {v6, v5, v2, v4}, Lfm/douban/service/Radio;->shareTo(ILjava/lang/String;Lfm/douban/service/RadioState;)V

    goto/16 :goto_0

    .line 290
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method private handleNetworkChanged()V
    .locals 9

    .prologue
    const-wide/16 v7, 0xbb8

    const/4 v6, 0x3

    const/16 v5, 0xd05

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 169
    iget-object v3, p0, Lfm/douban/service/RadioService;->broadReceiverHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 170
    iget-object v3, p0, Lfm/douban/service/RadioService;->radio:Lfm/douban/service/Radio;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lfm/douban/service/RadioService;->radio:Lfm/douban/service/Radio;

    iget-object v3, v3, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lfm/douban/service/RadioService;->isFinishing:Z

    if-eqz v3, :cond_1

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    iget-object v3, p0, Lfm/douban/service/RadioService;->radio:Lfm/douban/service/Radio;

    iget-object v3, v3, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iget-boolean v3, v3, Lfm/douban/service/RadioState;->isPaused:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lfm/douban/service/RadioService;->radio:Lfm/douban/service/Radio;

    iget v3, v3, Lfm/douban/service/Radio;->pauseFrom:I

    if-nez v3, :cond_4

    invoke-virtual {p0}, Lfm/douban/service/RadioService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lfm/douban/util/NetworkHelper;->isActiveNetworkMobile(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 178
    sput-boolean v1, Lfm/douban/service/RadioService;->netChangeWhenPause:Z

    .line 182
    :goto_1
    iget-object v3, p0, Lfm/douban/service/RadioService;->radio:Lfm/douban/service/Radio;

    iget-object v3, v3, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iget-boolean v3, v3, Lfm/douban/service/RadioState;->isPaused:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lfm/douban/service/RadioService;->radio:Lfm/douban/service/Radio;

    iget v3, v3, Lfm/douban/service/Radio;->pauseFrom:I

    if-eq v3, v1, :cond_0

    iget-object v3, p0, Lfm/douban/service/RadioService;->radio:Lfm/douban/service/Radio;

    iget v3, v3, Lfm/douban/service/Radio;->pauseFrom:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lfm/douban/service/RadioService;->radio:Lfm/douban/service/Radio;

    iget v3, v3, Lfm/douban/service/Radio;->pauseFrom:I

    if-eqz v3, :cond_0

    iget-object v3, p0, Lfm/douban/service/RadioService;->radio:Lfm/douban/service/Radio;

    iget v3, v3, Lfm/douban/service/Radio;->pauseFrom:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    .line 190
    :cond_2
    iget-object v3, p0, Lfm/douban/service/RadioService;->radio:Lfm/douban/service/Radio;

    iget-object v3, v3, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iput v2, v3, Lfm/douban/service/RadioState;->errorState:I

    .line 191
    invoke-virtual {p0}, Lfm/douban/service/RadioService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lfm/douban/util/NetworkHelper;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 192
    const-string v3, "RadioService"

    const-string v4, "Network available."

    invoke-static {v3, v4}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-virtual {p0}, Lfm/douban/service/RadioService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lfm/douban/util/NetworkHelper;->isActiveNetWorkWifi(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 194
    const-string v3, "RadioService"

    const-string v4, "Network type is WIFI."

    invoke-static {v3, v4}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const-string v3, "NetworkChanged"

    const-string v4, "Wifi"

    invoke-static {p0, v3, v4}, Lcom/mobclick/android/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-object v3, p0, Lfm/douban/service/RadioService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-nez v3, :cond_3

    .line 197
    const-string v3, "RadioService"

    const-string v4, "Acquire wifilock."

    invoke-static {v3, v4}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    const-string v3, "radio_android"

    invoke-static {p0, v3}, Lfm/douban/util/NetworkHelper;->acquireWifiLock(Landroid/content/Context;Ljava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v3

    iput-object v3, p0, Lfm/douban/service/RadioService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 201
    :cond_3
    const-string v3, "RadioService"

    const-string v4, "switch radio online"

    invoke-static {v3, v4}, Lfm/douban/util/DBLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-direct {p0}, Lfm/douban/service/RadioService;->updateChannelList()V

    .line 203
    iget-object v3, p0, Lfm/douban/service/RadioService;->radio:Lfm/douban/service/Radio;

    invoke-virtual {v3}, Lfm/douban/service/Radio;->switchOnline()V

    .line 204
    iget-object v3, p0, Lfm/douban/service/RadioService;->radio:Lfm/douban/service/Radio;

    iget-object v3, v3, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iget-object v3, v3, Lfm/douban/service/RadioState;->song:Lfm/douban/model/Song;

    if-nez v3, :cond_5

    iget-object v3, p0, Lfm/douban/service/RadioService;->radio:Lfm/douban/service/Radio;

    iget-object v3, v3, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iget-boolean v3, v3, Lfm/douban/service/RadioState;->isPaused:Z

    if-nez v3, :cond_5

    .line 205
    iget-object v1, p0, Lfm/douban/service/RadioService;->radio:Lfm/douban/service/Radio;

    invoke-virtual {v1}, Lfm/douban/service/Radio;->play()V

    goto/16 :goto_0

    .line 180
    :cond_4
    sput-boolean v2, Lfm/douban/service/RadioService;->netChangeWhenPause:Z

    goto/16 :goto_1

    .line 207
    :cond_5
    iget-object v3, p0, Lfm/douban/service/RadioService;->radio:Lfm/douban/service/Radio;

    iget-object v3, v3, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iget-object v4, p0, Lfm/douban/service/RadioService;->radio:Lfm/douban/service/Radio;

    iget-object v4, v4, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iget-boolean v4, v4, Lfm/douban/service/RadioState;->isPaused:Z

    if-nez v4, :cond_6

    :goto_2
    iput-boolean v1, v3, Lfm/douban/service/RadioState;->canOp:Z

    .line 208
    iget-object v1, p0, Lfm/douban/service/RadioService;->radio:Lfm/douban/service/Radio;

    invoke-virtual {v1}, Lfm/douban/service/Radio;->updateState()V

    goto/16 :goto_0

    :cond_6
    move v1, v2

    .line 207
    goto :goto_2

    .line 210
    :cond_7
    invoke-virtual {p0}, Lfm/douban/service/RadioService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lfm/douban/util/NetworkHelper;->isActiveNetworkMobile(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 211
    const-string v1, "RadioService"

    const-string v3, "Network type is MOBILE."

    invoke-static {v1, v3}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    const-string v1, "NetworkChanged"

    const-string v3, "Mobile"

    invoke-static {p0, v1, v3}, Lcom/mobclick/android/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    invoke-static {p0}, Lfm/douban/util/NetworkHelper;->isUsingWap(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 214
    const v1, 0x7f0900a5

    invoke-static {p0, v1}, Lfm/douban/util/Utils;->showToastLonger(Landroid/content/Context;I)V

    .line 217
    :cond_8
    iget-object v1, p0, Lfm/douban/service/RadioService;->radio:Lfm/douban/service/Radio;

    iget-object v1, v1, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iget-boolean v1, v1, Lfm/douban/service/RadioState;->isOffline:Z

    if-nez v1, :cond_9

    iget-boolean v1, p0, Lfm/douban/service/RadioService;->fromAlarm:Z

    if-nez v1, :cond_9

    .line 218
    const-string v1, "RadioService"

    const-string v2, "show warning ***"

    invoke-static {v1, v2}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v1, p0, Lfm/douban/service/RadioService;->radio:Lfm/douban/service/Radio;

    invoke-virtual {v1, v6}, Lfm/douban/service/Radio;->pause(I)V

    .line 221
    iget-object v1, p0, Lfm/douban/service/RadioService;->radio:Lfm/douban/service/Radio;

    const-string v2, ""

    invoke-virtual {v1, v6, v2}, Lfm/douban/service/Radio;->showWarning(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 224
    :cond_9
    iget-boolean v1, p0, Lfm/douban/service/RadioService;->fromAlarm:Z

    if-eqz v1, :cond_a

    .line 226
    iput-boolean v2, p0, Lfm/douban/service/RadioService;->fromAlarm:Z

    .line 228
    :cond_a
    iget-object v1, p0, Lfm/douban/service/RadioService;->fmsp:Lfm/douban/model/FMSharedPreferences;

    const-string v3, "setting_can_use_mobile_net"

    invoke-virtual {v1, v3, v2}, Lfm/douban/model/FMSharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 229
    invoke-direct {p0}, Lfm/douban/service/RadioService;->updateChannelList()V

    .line 230
    iget-object v1, p0, Lfm/douban/service/RadioService;->radio:Lfm/douban/service/Radio;

    invoke-virtual {v1}, Lfm/douban/service/Radio;->switchOnline()V

    .line 231
    iget-object v1, p0, Lfm/douban/service/RadioService;->radio:Lfm/douban/service/Radio;

    invoke-virtual {v1}, Lfm/douban/service/Radio;->play()V

    .line 232
    iget-object v1, p0, Lfm/douban/service/RadioService;->fmsp:Lfm/douban/model/FMSharedPreferences;

    const-string v3, "setting_can_use_mobile_net"

    invoke-virtual {v1, v3, v2}, Lfm/douban/model/FMSharedPreferences;->putBoolean(Ljava/lang/String;Z)Z

    goto/16 :goto_0

    .line 236
    :cond_b
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 237
    .local v0, msg:Landroid/os/Message;
    iput v5, v0, Landroid/os/Message;->what:I

    .line 238
    iget-object v1, p0, Lfm/douban/service/RadioService;->broadReceiverHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 243
    .end local v0           #msg:Landroid/os/Message;
    :cond_c
    const-string v1, "RadioService"

    const-string v2, "Network type is Other."

    invoke-static {v1, v2}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    const-string v1, "NetworkChanged"

    const-string v2, "Other"

    invoke-static {p0, v1, v2}, Lcom/mobclick/android/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const-string v1, "RadioService"

    const-string v2, "switch radio online"

    invoke-static {v1, v2}, Lfm/douban/util/DBLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object v1, p0, Lfm/douban/service/RadioService;->radio:Lfm/douban/service/Radio;

    invoke-virtual {v1}, Lfm/douban/service/Radio;->switchOnline()V

    .line 247
    iget-object v1, p0, Lfm/douban/service/RadioService;->radio:Lfm/douban/service/Radio;

    invoke-virtual {v1}, Lfm/douban/service/Radio;->play()V

    goto/16 :goto_0

    .line 250
    :cond_d
    const-string v1, "RadioService"

    const-string v2, "No network available"

    invoke-static {v1, v2}, Lfm/douban/util/DBLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    const-string v1, "NetworkChanged"

    const-string v2, "NA"

    invoke-static {p0, v1, v2}, Lcom/mobclick/android/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 253
    .restart local v0       #msg:Landroid/os/Message;
    iput v5, v0, Landroid/os/Message;->what:I

    .line 254
    iget-object v1, p0, Lfm/douban/service/RadioService;->broadReceiverHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0
.end method

.method public static sendCommand(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "cmd"

    .prologue
    .line 458
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lfm/douban/Consts;->INTENT_RADIO_COMMAND:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 459
    .local v0, it:Landroid/content/Intent;
    const-string v1, "cmd"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 460
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 461
    return-void
.end method

.method public static sendCommand(Landroid/content/Context;ILjava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "cmd"
    .parameter "channel_id"

    .prologue
    .line 464
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lfm/douban/Consts;->INTENT_RADIO_COMMAND:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 465
    .local v0, it:Landroid/content/Intent;
    const-string v1, "cmd"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 466
    const-string v1, "channel"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 467
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 468
    return-void
.end method

.method public static sendError(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "error"

    .prologue
    .line 480
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lfm/douban/Consts;->INTENT_RADIO_ERROR:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 481
    .local v0, it:Landroid/content/Intent;
    const-string v1, "err"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 482
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 483
    return-void
.end method

.method public static sendShareCommand(Landroid/content/Context;IILjava/lang/String;Lfm/douban/service/RadioState;)V
    .locals 2
    .parameter "context"
    .parameter "cmd"
    .parameter "shareSource"
    .parameter "content"
    .parameter "rs"

    .prologue
    .line 471
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lfm/douban/Consts;->INTENT_RADIO_COMMAND:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 472
    .local v0, it:Landroid/content/Intent;
    const-string v1, "cmd"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 473
    const-string v1, "share_source"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 474
    const-string v1, "share_content"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 475
    const-string v1, "state"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 476
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 477
    return-void
.end method

.method public static sendShareDone(Landroid/content/Context;II)V
    .locals 4
    .parameter "ctx"
    .parameter "result"
    .parameter "resId"

    .prologue
    .line 443
    const-string v1, "share"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "share done**"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "****"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    new-instance v0, Landroid/content/Intent;

    const-string v1, "fm.douban.action_share_done"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 445
    .local v0, it:Landroid/content/Intent;
    const-string v1, "err"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 446
    const-string v1, "resource_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 447
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 448
    return-void
.end method

.method public static sendState(Landroid/content/Context;Lfm/douban/service/RadioState;)V
    .locals 2
    .parameter "ctx"
    .parameter "state"

    .prologue
    .line 451
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lfm/douban/Consts;->INTENT_RADIO_STATE:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 452
    .local v0, it:Landroid/content/Intent;
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 453
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 454
    return-void
.end method

.method public static start(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 486
    const-string v1, "RadioService"

    const-string v2, "start service"

    invoke-static {v1, v2}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lfm/douban/service/RadioService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 488
    .local v0, intent:Landroid/content/Intent;
    if-eqz p1, :cond_0

    const-string v1, "start_url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 489
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 490
    return-void
.end method

.method private updateChannelList()V
    .locals 6

    .prologue
    .line 260
    iget-object v3, p0, Lfm/douban/service/RadioService;->fmsp:Lfm/douban/model/FMSharedPreferences;

    const-string v4, "channel_last_check"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lfm/douban/model/FMSharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 261
    .local v2, lastCheck:I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 262
    .local v0, day:I
    if-eqz v2, :cond_0

    add-int/lit8 v3, v2, 0x0

    if-le v0, v3, :cond_1

    .line 264
    :cond_0
    :try_start_0
    iget-object v3, p0, Lfm/douban/service/RadioService;->cm:Lfm/douban/controller/ChannelManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lfm/douban/controller/ChannelManager;->checkChannels(Lcom/loopj/android/http/AsyncHttpResponseHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    :cond_1
    :goto_0
    return-void

    .line 265
    :catch_0
    move-exception v1

    .line 266
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 99
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 5

    .prologue
    .line 376
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 377
    const-string v2, "RadioService"

    const-string v3, "onCreate start"

    invoke-static {v2, v3}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    new-instance v2, Lfm/douban/service/Radio;

    invoke-direct {v2, p0}, Lfm/douban/service/Radio;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lfm/douban/service/RadioService;->radio:Lfm/douban/service/Radio;

    .line 381
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 382
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 383
    const-string v2, "android.net.conn.BACKGROUND_DATA_SETTING_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 384
    const-string v2, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 385
    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 387
    sget-object v2, Lfm/douban/Consts;->INTENT_RADIO_COMMAND:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 388
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 389
    iget-object v2, p0, Lfm/douban/service/RadioService;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lfm/douban/service/RadioService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 391
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lfm/douban/service/RadioService;->startTime:J

    .line 392
    new-instance v2, Lfm/douban/util/ShakeMonitor;

    invoke-direct {v2, p0, p0}, Lfm/douban/util/ShakeMonitor;-><init>(Landroid/content/Context;Lfm/douban/util/ShakeMonitor$ShakeHandler;)V

    iput-object v2, p0, Lfm/douban/service/RadioService;->shakeMonitor:Lfm/douban/util/ShakeMonitor;

    .line 393
    iget-object v2, p0, Lfm/douban/service/RadioService;->shakeMonitor:Lfm/douban/util/ShakeMonitor;

    invoke-virtual {v2}, Lfm/douban/util/ShakeMonitor;->enable()V

    .line 395
    invoke-virtual {p0}, Lfm/douban/service/RadioService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lfm/douban/FmApp;

    .line 397
    .local v0, app:Lfm/douban/FmApp;
    invoke-virtual {v0}, Lfm/douban/FmApp;->getRadioManager()Lfm/douban/controller/RadioManager;

    move-result-object v2

    invoke-virtual {v2}, Lfm/douban/controller/RadioManager;->getSongTaskManager()Lfm/douban/controller/SongTaskManager;

    move-result-object v2

    iput-object v2, p0, Lfm/douban/service/RadioService;->taskManager:Lfm/douban/controller/SongTaskManager;

    .line 399
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lfm/douban/service/RadioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lfm/douban/service/RadioService;->telephonyManager:Landroid/telephony/TelephonyManager;

    .line 400
    iget-object v2, p0, Lfm/douban/service/RadioService;->telephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lfm/douban/service/RadioService;->phoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v4, 0x20

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 402
    invoke-virtual {v0}, Lfm/douban/FmApp;->getRadioManager()Lfm/douban/controller/RadioManager;

    move-result-object v2

    iput-object v2, p0, Lfm/douban/service/RadioService;->rm:Lfm/douban/controller/RadioManager;

    .line 403
    iget-object v2, p0, Lfm/douban/service/RadioService;->rm:Lfm/douban/controller/RadioManager;

    invoke-virtual {v2}, Lfm/douban/controller/RadioManager;->getChannelManager()Lfm/douban/controller/ChannelManager;

    move-result-object v2

    iput-object v2, p0, Lfm/douban/service/RadioService;->cm:Lfm/douban/controller/ChannelManager;

    .line 404
    iget-object v2, p0, Lfm/douban/service/RadioService;->rm:Lfm/douban/controller/RadioManager;

    invoke-virtual {v2}, Lfm/douban/controller/RadioManager;->getSharedPreferences()Lfm/douban/model/FMSharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lfm/douban/service/RadioService;->fmsp:Lfm/douban/model/FMSharedPreferences;

    .line 405
    iget-object v2, p0, Lfm/douban/service/RadioService;->fmsp:Lfm/douban/model/FMSharedPreferences;

    const-string v3, "setting_can_use_mobile_net"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lfm/douban/model/FMSharedPreferences;->putBoolean(Ljava/lang/String;Z)Z

    .line 408
    const-string v2, "RadioService"

    const-string v3, "onCreate done"

    invoke-static {v2, v3}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    iget-object v2, p0, Lfm/douban/service/RadioService;->radio:Lfm/douban/service/Radio;

    invoke-virtual {v2}, Lfm/douban/service/Radio;->updateState()V

    .line 411
    const/4 v2, 0x1

    iput-boolean v2, v0, Lfm/douban/FmApp;->isServiceRunning:Z

    .line 412
    return-void
.end method

.method public onDestroy()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 415
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 416
    const-string v4, "RadioService"

    const-string v5, "onDestroy start"

    invoke-static {v4, v5}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    iget-object v4, p0, Lfm/douban/service/RadioService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v4, :cond_0

    .line 418
    iget-object v4, p0, Lfm/douban/service/RadioService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 420
    :cond_0
    iget-object v4, p0, Lfm/douban/service/RadioService;->rm:Lfm/douban/controller/RadioManager;

    invoke-virtual {v4}, Lfm/douban/controller/RadioManager;->getDB()Lfm/douban/model/RadioDB;

    move-result-object v4

    invoke-virtual {v4}, Lfm/douban/model/RadioDB;->close()V

    .line 421
    iget-object v4, p0, Lfm/douban/service/RadioService;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4}, Lfm/douban/service/RadioService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 422
    iget-object v4, p0, Lfm/douban/service/RadioService;->shakeMonitor:Lfm/douban/util/ShakeMonitor;

    invoke-virtual {v4}, Lfm/douban/util/ShakeMonitor;->disable()V

    .line 423
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lfm/douban/service/RadioService;->startTime:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    const-wide/16 v6, 0x3c

    div-long v0, v4, v6

    .line 424
    .local v0, duration:J
    const/4 v2, 0x0

    .line 425
    .local v2, i:I
    const/4 v2, 0x0

    :goto_0
    sget-object v4, Lfm/douban/service/RadioService;->QUIT_MINUTE:[I

    array-length v4, v4

    if-ge v2, v4, :cond_1

    .line 426
    sget-object v4, Lfm/douban/service/RadioService;->QUIT_MINUTE:[I

    aget v4, v4, v2

    int-to-long v4, v4

    cmp-long v4, v0, v4

    if-gtz v4, :cond_3

    .line 429
    :cond_1
    if-lez v2, :cond_2

    sget-object v4, Lfm/douban/service/RadioService;->QUIT_MINUTE:[I

    array-length v4, v4

    if-ge v2, v4, :cond_2

    .line 430
    const v4, 0x7f090011

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    sget-object v6, Lfm/douban/service/RadioService;->QUIT_MINUTE:[I

    add-int/lit8 v7, v2, -0x1

    aget v6, v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x1

    sget-object v7, Lfm/douban/service/RadioService;->QUIT_MINUTE:[I

    aget v7, v7, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p0, v4, v5}, Lfm/douban/service/RadioService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 431
    .local v3, quitTime:Ljava/lang/String;
    const-string v4, "RadioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "quit time "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    const-string v4, "QuitTime"

    invoke-static {p0, v4, v3}, Lcom/mobclick/android/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    .end local v3           #quitTime:Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lfm/douban/service/RadioService;->getApplication()Landroid/app/Application;

    move-result-object v4

    check-cast v4, Lfm/douban/FmApp;

    iput-boolean v8, v4, Lfm/douban/FmApp;->isServiceRunning:Z

    .line 436
    invoke-static {p0}, Lfm/douban/FmApp;->terminate(Landroid/content/Context;)V

    .line 437
    const-string v4, "RadioService"

    const-string v5, "onDestroy done"

    invoke-static {v4, v5}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    return-void

    .line 425
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public onShake()V
    .locals 3

    .prologue
    .line 494
    invoke-static {p0}, Lfm/douban/FmApp;->getRadioManager(Landroid/content/Context;)Lfm/douban/controller/RadioManager;

    move-result-object v0

    invoke-virtual {v0}, Lfm/douban/controller/RadioManager;->getSharedPreferences()Lfm/douban/model/FMSharedPreferences;

    move-result-object v0

    const-string v1, "shake2"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lfm/douban/model/FMSharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Lfm/douban/service/RadioService;->radio:Lfm/douban/service/Radio;

    invoke-virtual {v0}, Lfm/douban/service/Radio;->skip()V

    .line 496
    const-string v0, "Skip"

    const-string v1, "Shake"

    invoke-static {p0, v0, v1}, Lcom/mobclick/android/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 83
    const-string v1, "RadioService"

    const-string v2, "onStartCommand"

    invoke-static {v1, v2}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v1, p0, Lfm/douban/service/RadioService;->radio:Lfm/douban/service/Radio;

    if-nez v1, :cond_0

    .line 85
    new-instance v1, Lfm/douban/service/Radio;

    invoke-direct {v1, p0}, Lfm/douban/service/Radio;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lfm/douban/service/RadioService;->radio:Lfm/douban/service/Radio;

    .line 87
    :cond_0
    if-eqz p1, :cond_1

    .line 88
    const-string v1, "start_url"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, url:Ljava/lang/String;
    const-string v1, "start_alarm"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lfm/douban/service/RadioService;->fromAlarm:Z

    .line 90
    const-string v1, "RadioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "From alarm:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lfm/douban/service/RadioService;->fromAlarm:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    if-eqz v0, :cond_1

    .line 92
    iget-object v1, p0, Lfm/douban/service/RadioService;->radio:Lfm/douban/service/Radio;

    invoke-virtual {v1, v0}, Lfm/douban/service/Radio;->playCertainSong(Ljava/lang/String;)V

    .line 95
    .end local v0           #url:Ljava/lang/String;
    :cond_1
    const/4 v1, 0x2

    return v1
.end method
