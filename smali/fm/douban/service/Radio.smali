.class public Lfm/douban/service/Radio;
.super Ljava/lang/Object;
.source "Radio.java"

# interfaces
.implements Lnatalya/graphics/ImageDownloader$OnlyDownload;


# static fields
.field public static final PAUSE_RESUME_SOURCE_AUDIO_FOCUS:I = 0x4

.field public static final PAUSE_RESUME_SOURCE_BUFFERING:I = 0x4

.field public static final PAUSE_RESUME_SOURCE_CALL:I = 0x1

.field public static final PAUSE_RESUME_SOURCE_ERROR:I = 0x3

.field public static final PAUSE_RESUME_SOURCE_HEADSET:I = 0x2

.field public static final PAUSE_RESUME_SOURCE_MANUAL:I = 0x0

.field public static final PAUSE_RESUME_SOURCE_NONE:I = -0x1

.field private static final TAG:Ljava/lang/String; = "radio"

.field private static final UPDATE_SHARE_TASK:I = 0x3e8


# instance fields
.field private audioManager:Landroid/media/AudioManager;

.field private audiofcListener:Ljava/lang/Object;

.field public cid:Ljava/lang/String;

.field private cm:Lfm/douban/controller/ChannelManager;

.field private context:Landroid/content/Context;

.field private downloadUrls:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fmsp:Lfm/douban/model/FMSharedPreferences;

.field private handler:Landroid/os/Handler;

.field private idown:Lnatalya/graphics/ImageDownloader;

.field private imanager:Lnatalya/graphics/ImageManager;

.field private notificationManager:Landroid/app/NotificationManager;

.field private offlineList:Lfm/douban/model/OfflinePlaylist;

.field private onlineList:Lfm/douban/model/OnlinePlaylist;

.field public pauseFrom:I

.field private player:Lfm/douban/service/Player;

.field private playlist:Lfm/douban/model/Playlist;

.field private resId:I

.field private rm:Lfm/douban/controller/RadioManager;

.field private shareHandlers:[Lcom/loopj/android/http/AsyncHttpResponseHandler;

.field private shareTask:I

.field public start:Ljava/lang/String;

.field public state:Lfm/douban/service/RadioState;

.field private success:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "ctx"

    .prologue
    const/4 v4, 0x0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput v4, p0, Lfm/douban/service/Radio;->shareTask:I

    .line 79
    iput v4, p0, Lfm/douban/service/Radio;->success:I

    .line 80
    iput v4, p0, Lfm/douban/service/Radio;->resId:I

    .line 82
    const/4 v2, -0x1

    iput v2, p0, Lfm/douban/service/Radio;->pauseFrom:I

    .line 92
    new-instance v2, Lfm/douban/service/Radio$1;

    invoke-direct {v2, p0}, Lfm/douban/service/Radio$1;-><init>(Lfm/douban/service/Radio;)V

    iput-object v2, p0, Lfm/douban/service/Radio;->handler:Landroid/os/Handler;

    .line 851
    const/4 v2, 0x4

    new-array v2, v2, [Lcom/loopj/android/http/AsyncHttpResponseHandler;

    iput-object v2, p0, Lfm/douban/service/Radio;->shareHandlers:[Lcom/loopj/android/http/AsyncHttpResponseHandler;

    .line 105
    iput-object p1, p0, Lfm/douban/service/Radio;->context:Landroid/content/Context;

    .line 106
    new-instance v2, Lfm/douban/service/RadioState;

    invoke-direct {v2}, Lfm/douban/service/RadioState;-><init>()V

    iput-object v2, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    .line 108
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lfm/douban/service/Radio;->downloadUrls:Ljava/util/Set;

    .line 110
    new-instance v2, Lfm/douban/model/OnlinePlaylist;

    iget-object v3, p0, Lfm/douban/service/Radio;->context:Landroid/content/Context;

    invoke-direct {v2, v3, p0}, Lfm/douban/model/OnlinePlaylist;-><init>(Landroid/content/Context;Lfm/douban/service/Radio;)V

    iput-object v2, p0, Lfm/douban/service/Radio;->onlineList:Lfm/douban/model/OnlinePlaylist;

    .line 111
    new-instance v2, Lfm/douban/model/OfflinePlaylist;

    iget-object v3, p0, Lfm/douban/service/Radio;->context:Landroid/content/Context;

    invoke-direct {v2, v3, p0}, Lfm/douban/model/OfflinePlaylist;-><init>(Landroid/content/Context;Lfm/douban/service/Radio;)V

    iput-object v2, p0, Lfm/douban/service/Radio;->offlineList:Lfm/douban/model/OfflinePlaylist;

    .line 112
    iget-object v2, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iput-boolean v4, v2, Lfm/douban/service/RadioState;->isOffline:Z

    .line 113
    iget-object v2, p0, Lfm/douban/service/Radio;->onlineList:Lfm/douban/model/OnlinePlaylist;

    iput-object v2, p0, Lfm/douban/service/Radio;->playlist:Lfm/douban/model/Playlist;

    .line 115
    iget-object v2, p0, Lfm/douban/service/Radio;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lfm/douban/FmApp;

    .line 116
    .local v0, app:Lfm/douban/FmApp;
    iget-object v2, p0, Lfm/douban/service/Radio;->context:Landroid/content/Context;

    invoke-static {v2}, Lfm/douban/FmApp;->getRadioManager(Landroid/content/Context;)Lfm/douban/controller/RadioManager;

    move-result-object v2

    iput-object v2, p0, Lfm/douban/service/Radio;->rm:Lfm/douban/controller/RadioManager;

    .line 117
    iget-object v2, p0, Lfm/douban/service/Radio;->rm:Lfm/douban/controller/RadioManager;

    invoke-virtual {v2}, Lfm/douban/controller/RadioManager;->getSharedPreferences()Lfm/douban/model/FMSharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lfm/douban/service/Radio;->fmsp:Lfm/douban/model/FMSharedPreferences;

    .line 118
    invoke-virtual {v0}, Lfm/douban/FmApp;->getImageDownloader()Lnatalya/graphics/ImageDownloader;

    move-result-object v2

    iput-object v2, p0, Lfm/douban/service/Radio;->idown:Lnatalya/graphics/ImageDownloader;

    .line 119
    invoke-virtual {v0}, Lfm/douban/FmApp;->getImageManager()Lnatalya/graphics/ImageManager;

    move-result-object v2

    iput-object v2, p0, Lfm/douban/service/Radio;->imanager:Lnatalya/graphics/ImageManager;

    .line 121
    iget-object v2, p0, Lfm/douban/service/Radio;->rm:Lfm/douban/controller/RadioManager;

    invoke-virtual {v2}, Lfm/douban/controller/RadioManager;->getChannelManager()Lfm/douban/controller/ChannelManager;

    move-result-object v2

    iput-object v2, p0, Lfm/douban/service/Radio;->cm:Lfm/douban/controller/ChannelManager;

    .line 123
    new-instance v2, Lfm/douban/service/Player;

    iget-object v3, p0, Lfm/douban/service/Radio;->rm:Lfm/douban/controller/RadioManager;

    invoke-virtual {v3}, Lfm/douban/controller/RadioManager;->getSongStore()Lfm/douban/model/SongStore;

    move-result-object v3

    invoke-direct {v2, p1, p0, v3}, Lfm/douban/service/Player;-><init>(Landroid/content/Context;Lfm/douban/service/Radio;Lfm/douban/model/SongStore;)V

    iput-object v2, p0, Lfm/douban/service/Radio;->player:Lfm/douban/service/Player;

    .line 124
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lfm/douban/FmApp;

    iget-object v3, p0, Lfm/douban/service/Radio;->player:Lfm/douban/service/Player;

    invoke-virtual {v2, v3}, Lfm/douban/FmApp;->setPlayer(Lfm/douban/service/Player;)V

    .line 125
    iget-object v2, p0, Lfm/douban/service/Radio;->cm:Lfm/douban/controller/ChannelManager;

    invoke-virtual {v2}, Lfm/douban/controller/ChannelManager;->getLastChannel()Lfm/douban/model/Channel;

    move-result-object v1

    .line 126
    .local v1, ch:Lfm/douban/model/Channel;
    invoke-virtual {v1}, Lfm/douban/model/Channel;->isPublic()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lfm/douban/service/Radio;->rm:Lfm/douban/controller/RadioManager;

    invoke-static {v2}, Lfm/douban/model/Token;->isLogin(Lfm/douban/controller/RadioManager;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 127
    iget-object v2, p0, Lfm/douban/service/Radio;->cm:Lfm/douban/controller/ChannelManager;

    invoke-virtual {v2}, Lfm/douban/controller/ChannelManager;->getDefaultChannel()Lfm/douban/model/Channel;

    move-result-object v1

    .line 129
    :cond_0
    iget-object v2, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iget-object v3, v1, Lfm/douban/model/Channel;->channel_id:Ljava/lang/String;

    iput-object v3, v2, Lfm/douban/service/RadioState;->channelId:Ljava/lang/String;

    .line 130
    iget-object v2, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iget-object v3, p0, Lfm/douban/service/Radio;->cm:Lfm/douban/controller/ChannelManager;

    iget-object v4, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iget-object v4, v4, Lfm/douban/service/RadioState;->channelId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lfm/douban/controller/ChannelManager;->getChannel(Ljava/lang/String;)Lfm/douban/model/Channel;

    move-result-object v3

    iput-object v3, v2, Lfm/douban/service/RadioState;->channel:Lfm/douban/model/Channel;

    .line 132
    iget-object v2, p0, Lfm/douban/service/Radio;->context:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iput-object v2, p0, Lfm/douban/service/Radio;->notificationManager:Landroid/app/NotificationManager;

    .line 133
    iget-object v2, p0, Lfm/douban/service/Radio;->context:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lfm/douban/service/Radio;->audioManager:Landroid/media/AudioManager;

    .line 134
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x7

    if-le v2, v3, :cond_1

    .line 135
    new-instance v2, Lfm/douban/service/Radio$2;

    invoke-direct {v2, p0}, Lfm/douban/service/Radio$2;-><init>(Lfm/douban/service/Radio;)V

    iput-object v2, p0, Lfm/douban/service/Radio;->audiofcListener:Ljava/lang/Object;

    .line 175
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lfm/douban/service/Radio;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lfm/douban/service/Radio;->updateShareState(I)V

    return-void
.end method

.method static synthetic access$100(Lfm/douban/service/Radio;)Lfm/douban/service/Player;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lfm/douban/service/Radio;->player:Lfm/douban/service/Player;

    return-object v0
.end method

.method static synthetic access$200(Lfm/douban/service/Radio;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Lfm/douban/service/Radio;->success:I

    return v0
.end method

.method static synthetic access$212(Lfm/douban/service/Radio;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iget v0, p0, Lfm/douban/service/Radio;->success:I

    add-int/2addr v0, p1

    iput v0, p0, Lfm/douban/service/Radio;->success:I

    return v0
.end method

.method static synthetic access$302(Lfm/douban/service/Radio;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput p1, p0, Lfm/douban/service/Radio;->resId:I

    return p1
.end method

.method static synthetic access$400(Lfm/douban/service/Radio;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lfm/douban/service/Radio;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lfm/douban/service/Radio;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lfm/douban/service/Radio;->sendUpdateShare(I)V

    return-void
.end method

.method private getShareSongHref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "channelId"
    .parameter "songId"
    .parameter "ssid"

    .prologue
    .line 791
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 792
    .local v0, sBuilder:Ljava/lang/StringBuilder;
    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 793
    const-string v1, "www.douban.fm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 794
    if-eqz p3, :cond_0

    const-string v1, ""

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 795
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 805
    :goto_0
    return-object v1

    .line 797
    :cond_1
    const-string v1, "?cid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 798
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 799
    const-string v1, "&start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 800
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 801
    const-string v1, "g"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 802
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 803
    const-string v1, "g"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 804
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 805
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private makeShareHandler(I)V
    .locals 2
    .parameter "source"

    .prologue
    .line 854
    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-le p1, v0, :cond_1

    .line 904
    :cond_0
    :goto_0
    return-void

    .line 857
    :cond_1
    iget-object v0, p0, Lfm/douban/service/Radio;->shareHandlers:[Lcom/loopj/android/http/AsyncHttpResponseHandler;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    .line 860
    iget-object v0, p0, Lfm/douban/service/Radio;->shareHandlers:[Lcom/loopj/android/http/AsyncHttpResponseHandler;

    new-instance v1, Lfm/douban/service/Radio$3;

    invoke-direct {v1, p0, p1}, Lfm/douban/service/Radio$3;-><init>(Lfm/douban/service/Radio;I)V

    aput-object v1, v0, p1

    goto :goto_0
.end method

.method private offline()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 624
    const/4 v2, 0x0

    .line 625
    .local v2, ret:Z
    const-string v4, "radio"

    const-string v5, "offline..."

    invoke-static {v4, v5}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    const-string v4, "radio"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "state canOp="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iget-boolean v6, v6, Lfm/douban/service/RadioState;->canOp:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isOffline="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iget-boolean v6, v6, Lfm/douban/service/RadioState;->isOffline:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", offline list empty="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lfm/douban/service/Radio;->offlineList:Lfm/douban/model/OfflinePlaylist;

    invoke-virtual {v6}, Lfm/douban/model/OfflinePlaylist;->empty()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    iget-object v4, p0, Lfm/douban/service/Radio;->rm:Lfm/douban/controller/RadioManager;

    invoke-static {v4}, Lfm/douban/model/Token;->isLogin(Lfm/douban/controller/RadioManager;)Z

    move-result v4

    if-nez v4, :cond_0

    move v3, v2

    .line 658
    .end local v2           #ret:Z
    .local v3, ret:I
    :goto_0
    return v3

    .line 631
    .end local v3           #ret:I
    .restart local v2       #ret:Z
    :cond_0
    iget-object v4, p0, Lfm/douban/service/Radio;->fmsp:Lfm/douban/model/FMSharedPreferences;

    const-string v5, "offline_switch"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lfm/douban/model/FMSharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 632
    .local v1, offline:I
    if-nez v1, :cond_3

    .line 641
    :cond_1
    iget-object v4, p0, Lfm/douban/service/Radio;->offlineList:Lfm/douban/model/OfflinePlaylist;

    invoke-virtual {v4}, Lfm/douban/model/OfflinePlaylist;->empty()Z

    move-result v0

    .line 643
    .local v0, isempty:Z
    iget-object v4, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iget-boolean v4, v4, Lfm/douban/service/RadioState;->isOffline:Z

    if-nez v4, :cond_4

    if-nez v0, :cond_4

    .line 645
    iget-object v4, p0, Lfm/douban/service/Radio;->offlineList:Lfm/douban/model/OfflinePlaylist;

    iput-object v4, p0, Lfm/douban/service/Radio;->playlist:Lfm/douban/model/Playlist;

    .line 646
    iget-object v4, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iput-boolean v7, v4, Lfm/douban/service/RadioState;->isOffline:Z

    .line 648
    iget-object v4, p0, Lfm/douban/service/Radio;->onlineList:Lfm/douban/model/OnlinePlaylist;

    invoke-virtual {v4}, Lfm/douban/model/OnlinePlaylist;->reset()V

    .line 649
    iget-object v4, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iput-boolean v7, v4, Lfm/douban/service/RadioState;->canOp:Z

    .line 650
    iget-object v4, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    const-string v5, "-3"

    iput-object v5, v4, Lfm/douban/service/RadioState;->channelId:Ljava/lang/String;

    .line 651
    const/4 v2, 0x1

    .line 652
    const-string v4, "radio"

    const-string v5, "offline success"

    invoke-static {v4, v5}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    move v3, v2

    .line 658
    .restart local v3       #ret:I
    goto :goto_0

    .line 634
    .end local v0           #isempty:Z
    .end local v3           #ret:I
    :cond_3
    if-ne v1, v7, :cond_1

    .line 636
    iget-object v4, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    const/16 v5, 0x13

    iput v5, v4, Lfm/douban/service/RadioState;->errorState:I

    .line 637
    iget-object v4, p0, Lfm/douban/service/Radio;->context:Landroid/content/Context;

    const v5, 0x7f0900c9

    invoke-static {v4, v5}, Lfm/douban/util/Utils;->showToastLonger(Landroid/content/Context;I)V

    move v3, v2

    .line 638
    .restart local v3       #ret:I
    goto :goto_0

    .line 653
    .end local v3           #ret:I
    .restart local v0       #isempty:Z
    :cond_4
    if-eqz v0, :cond_2

    .line 656
    iget-object v4, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    const/16 v5, 0xb

    iput v5, v4, Lfm/douban/service/RadioState;->errorState:I

    goto :goto_1
.end method

.method private sendNotification()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    .line 761
    iget-object v8, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iget-object v8, v8, Lfm/douban/service/RadioState;->song:Lfm/douban/model/Song;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iget-object v8, v8, Lfm/douban/service/RadioState;->channel:Lfm/douban/model/Channel;

    if-nez v8, :cond_1

    .line 783
    :cond_0
    :goto_0
    return-void

    .line 765
    :cond_1
    const v1, 0x7f020075

    .line 766
    .local v1, icon:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 767
    .local v6, when:J
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lfm/douban/service/Radio;->context:Landroid/content/Context;

    const v10, 0x7f090001

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iget-object v9, v9, Lfm/douban/service/RadioState;->song:Lfm/douban/model/Song;

    iget-object v9, v9, Lfm/douban/model/Song;->title:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 768
    .local v4, tickerText:Ljava/lang/CharSequence;
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2, v1, v4, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 769
    .local v2, notification:Landroid/app/Notification;
    const/16 v8, 0x20

    iput v8, v2, Landroid/app/Notification;->flags:I

    .line 771
    new-instance v3, Landroid/content/Intent;

    iget-object v8, p0, Lfm/douban/service/Radio;->context:Landroid/content/Context;

    const-class v9, Lcom/douban/radio/app/RadioActivity;

    invoke-direct {v3, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 772
    .local v3, notificationIntent:Landroid/content/Intent;
    iget-object v8, p0, Lfm/douban/service/Radio;->context:Landroid/content/Context;

    const/high16 v9, 0x800

    invoke-static {v8, v13, v3, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 774
    .local v0, contentIntent:Landroid/app/PendingIntent;
    const v8, 0x7f020075

    iput v8, v2, Landroid/app/Notification;->icon:I

    .line 775
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lfm/douban/service/Radio;->context:Landroid/content/Context;

    const/high16 v10, 0x7f09

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lfm/douban/service/Radio;->context:Landroid/content/Context;

    const v10, 0x7f090023

    new-array v11, v14, [Ljava/lang/Object;

    iget-object v12, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iget-object v12, v12, Lfm/douban/service/RadioState;->channel:Lfm/douban/model/Channel;

    iget-object v12, v12, Lfm/douban/model/Channel;->name:Ljava/lang/String;

    aput-object v12, v11, v13

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 777
    .local v5, title:Ljava/lang/String;
    iget-object v8, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iget-boolean v8, v8, Lfm/douban/service/RadioState;->isOffline:Z

    if-eqz v8, :cond_2

    .line 778
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lfm/douban/service/Radio;->context:Landroid/content/Context;

    const v10, 0x7f0900bf

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 779
    :cond_2
    iget-object v8, p0, Lfm/douban/service/Radio;->context:Landroid/content/Context;

    iget-object v9, p0, Lfm/douban/service/Radio;->context:Landroid/content/Context;

    const v10, 0x7f090024

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    iget-object v12, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iget-object v12, v12, Lfm/douban/service/RadioState;->song:Lfm/douban/model/Song;

    iget-object v12, v12, Lfm/douban/model/Song;->title:Ljava/lang/String;

    aput-object v12, v11, v13

    iget-object v12, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iget-object v12, v12, Lfm/douban/service/RadioState;->song:Lfm/douban/model/Song;

    iget-object v12, v12, Lfm/douban/model/Song;->artist:Ljava/lang/String;

    aput-object v12, v11, v14

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v5, v9, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 781
    iput-object v0, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 782
    iget-object v8, p0, Lfm/douban/service/Radio;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v8, v14, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0
.end method

.method private sendUpdateShare(I)V
    .locals 2
    .parameter "source"

    .prologue
    .line 907
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 908
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x3e8

    iput v1, v0, Landroid/os/Message;->what:I

    .line 909
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 910
    iget-object v1, p0, Lfm/douban/service/Radio;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 911
    return-void
.end method

.method private setPlayUrl(Ljava/lang/String;)Z
    .locals 5
    .parameter "url"

    .prologue
    const/4 v1, 0x0

    .line 183
    if-nez p1, :cond_1

    .line 190
    :cond_0
    :goto_0
    return v1

    .line 185
    :cond_1
    const-string v2, "radio"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "****************startUrl:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 187
    .local v0, uri:Landroid/net/Uri;
    const-string v2, "start"

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lfm/douban/service/Radio;->start:Ljava/lang/String;

    .line 188
    const-string v2, "cid"

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lfm/douban/service/Radio;->cid:Ljava/lang/String;

    .line 190
    iget-object v2, p0, Lfm/douban/service/Radio;->start:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lfm/douban/service/Radio;->cid:Ljava/lang/String;

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private declared-synchronized updateShareState(I)V
    .locals 2
    .parameter "failSources"

    .prologue
    .line 913
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lfm/douban/service/Radio;->shareTask:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lfm/douban/service/Radio;->shareTask:I

    .line 914
    iget v0, p0, Lfm/douban/service/Radio;->shareTask:I

    if-gtz v0, :cond_0

    .line 915
    const/4 v0, 0x0

    iput v0, p0, Lfm/douban/service/Radio;->shareTask:I

    .line 916
    iget-object v0, p0, Lfm/douban/service/Radio;->context:Landroid/content/Context;

    iget v1, p0, Lfm/douban/service/Radio;->resId:I

    invoke-static {v0, p1, v1}, Lfm/douban/service/RadioService;->sendShareDone(Landroid/content/Context;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 918
    :cond_0
    monitor-exit p0

    return-void

    .line 913
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected cancelNotification()V
    .locals 2

    .prologue
    .line 786
    iget-object v0, p0, Lfm/douban/service/Radio;->notificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 787
    return-void
.end method

.method public checkAndSync()V
    .locals 4

    .prologue
    .line 673
    const-string v1, "radio"

    const-string v2, "checkAndSync****"

    invoke-static {v1, v2}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    iget-object v1, p0, Lfm/douban/service/Radio;->fmsp:Lfm/douban/model/FMSharedPreferences;

    const-string v2, "offline_sync_method"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lfm/douban/model/FMSharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 675
    .local v0, syncMethod:I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lfm/douban/service/Radio;->context:Landroid/content/Context;

    invoke-static {v1}, Lfm/douban/util/NetworkHelper;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lfm/douban/service/Radio;->context:Landroid/content/Context;

    invoke-static {v1}, Lfm/douban/util/NetworkHelper;->isActiveNetWorkWifi(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    .line 677
    :cond_1
    iget-object v1, p0, Lfm/douban/service/Radio;->rm:Lfm/douban/controller/RadioManager;

    invoke-virtual {v1}, Lfm/douban/controller/RadioManager;->getSongTaskManager()Lfm/douban/controller/SongTaskManager;

    move-result-object v1

    invoke-virtual {v1}, Lfm/douban/controller/SongTaskManager;->start()V

    .line 681
    :goto_0
    return-void

    .line 679
    :cond_2
    iget-object v1, p0, Lfm/douban/service/Radio;->rm:Lfm/douban/controller/RadioManager;

    invoke-virtual {v1}, Lfm/douban/controller/RadioManager;->getSongTaskManager()Lfm/douban/controller/SongTaskManager;

    move-result-object v1

    invoke-virtual {v1}, Lfm/douban/controller/SongTaskManager;->stop()V

    goto :goto_0
.end method

.method public destroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 415
    iget-object v0, p0, Lfm/douban/service/Radio;->playlist:Lfm/douban/model/Playlist;

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lfm/douban/service/Radio;->playlist:Lfm/douban/model/Playlist;

    invoke-interface {v0}, Lfm/douban/model/Playlist;->stop()V

    .line 417
    :cond_0
    iget-object v0, p0, Lfm/douban/service/Radio;->player:Lfm/douban/service/Player;

    invoke-virtual {v0}, Lfm/douban/service/Player;->stop()V

    .line 418
    iget-object v0, p0, Lfm/douban/service/Radio;->player:Lfm/douban/service/Player;

    invoke-virtual {v0}, Lfm/douban/service/Player;->destroy()V

    .line 420
    iget-object v0, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iput-boolean v2, v0, Lfm/douban/service/RadioState;->canOp:Z

    .line 421
    iget-object v0, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lfm/douban/service/RadioState;->isStoped:Z

    .line 422
    iget-object v0, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    const/4 v1, 0x0

    iput-object v1, v0, Lfm/douban/service/RadioState;->song:Lfm/douban/model/Song;

    .line 423
    iget-object v0, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iput-boolean v2, v0, Lfm/douban/service/RadioState;->hasSong:Z

    .line 424
    iget-object v0, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iput-boolean v2, v0, Lfm/douban/service/RadioState;->isPaused:Z

    .line 425
    iget-object v0, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iput-boolean v2, v0, Lfm/douban/service/RadioState;->isResumed:Z

    .line 426
    iget-object v0, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iput-boolean v2, v0, Lfm/douban/service/RadioState;->isOffline:Z

    .line 427
    iget-object v0, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iput v2, v0, Lfm/douban/service/RadioState;->errorState:I

    .line 429
    iget-object v0, p0, Lfm/douban/service/Radio;->onlineList:Lfm/douban/model/OnlinePlaylist;

    iput-object v0, p0, Lfm/douban/service/Radio;->playlist:Lfm/douban/model/Playlist;

    .line 430
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x7

    if-le v0, v1, :cond_1

    .line 431
    iget-object v1, p0, Lfm/douban/service/Radio;->audioManager:Landroid/media/AudioManager;

    iget-object v0, p0, Lfm/douban/service/Radio;->audiofcListener:Ljava/lang/Object;

    check-cast v0, Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 434
    :cond_1
    return-void
.end method

.method public getCurrentSongPlayTime()I
    .locals 1

    .prologue
    .line 925
    iget-object v0, p0, Lfm/douban/service/Radio;->player:Lfm/douban/service/Player;

    invoke-virtual {v0}, Lfm/douban/service/Player;->position()I

    move-result v0

    return v0
.end method

.method public hate()V
    .locals 5

    .prologue
    .line 460
    iget-object v0, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iget-boolean v0, v0, Lfm/douban/service/RadioState;->canOp:Z

    if-eqz v0, :cond_1

    .line 461
    iget-object v0, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lfm/douban/service/RadioState;->canOp:Z

    .line 462
    iget-object v0, p0, Lfm/douban/service/Radio;->context:Landroid/content/Context;

    const-string v1, "Hate"

    invoke-static {v0, v1}, Lcom/mobclick/android/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 463
    iget-object v0, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iget-object v0, v0, Lfm/douban/service/RadioState;->channelId:Ljava/lang/String;

    const-string v1, "-3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfm/douban/service/Radio;->playlist:Lfm/douban/model/Playlist;

    invoke-interface {v0}, Lfm/douban/model/Playlist;->empty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Lfm/douban/service/Radio;->context:Landroid/content/Context;

    const v1, 0x7f0900c2

    invoke-static {v0, v1}, Lfm/douban/util/Utils;->showToastLonger(Landroid/content/Context;I)V

    .line 466
    iget-object v0, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    const-string v1, "0"

    iput-object v1, v0, Lfm/douban/service/RadioState;->channelId:Ljava/lang/String;

    .line 468
    :cond_0
    iget-object v0, p0, Lfm/douban/service/Radio;->playlist:Lfm/douban/model/Playlist;

    iget-object v1, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iget-object v1, v1, Lfm/douban/service/RadioState;->song:Lfm/douban/model/Song;

    invoke-virtual {p0}, Lfm/douban/service/Radio;->getCurrentSongPlayTime()I

    move-result v2

    const-string v3, "b"

    iget-object v4, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iget-object v4, v4, Lfm/douban/service/RadioState;->channelId:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3, v4}, Lfm/douban/model/Playlist;->require(Lfm/douban/model/Song;ILjava/lang/String;Ljava/lang/String;)V

    .line 470
    :cond_1
    return-void
.end method

.method public like()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 440
    iget-object v0, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iget-boolean v0, v0, Lfm/douban/service/RadioState;->canOp:Z

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iput-boolean v5, v0, Lfm/douban/service/RadioState;->canOp:Z

    .line 442
    const/4 v3, 0x0

    .line 443
    .local v3, op:Ljava/lang/String;
    iget-object v0, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iget-object v0, v0, Lfm/douban/service/RadioState;->song:Lfm/douban/model/Song;

    invoke-virtual {v0}, Lfm/douban/model/Song;->isLike()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 444
    iget-object v0, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iget-object v0, v0, Lfm/douban/service/RadioState;->song:Lfm/douban/model/Song;

    iput-boolean v5, v0, Lfm/douban/model/Song;->like:Z

    .line 445
    const-string v3, "u"

    .line 446
    iget-object v0, p0, Lfm/douban/service/Radio;->context:Landroid/content/Context;

    const-string v1, "Love"

    const-string v2, "Cancel"

    invoke-static {v0, v1, v2}, Lcom/mobclick/android/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    :goto_0
    iget-object v0, p0, Lfm/douban/service/Radio;->playlist:Lfm/douban/model/Playlist;

    iget-object v1, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iget-object v1, v1, Lfm/douban/service/RadioState;->song:Lfm/douban/model/Song;

    invoke-virtual {p0}, Lfm/douban/service/Radio;->getCurrentSongPlayTime()I

    move-result v2

    iget-object v4, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iget-object v4, v4, Lfm/douban/service/RadioState;->channelId:Ljava/lang/String;

    invoke-interface/range {v0 .. v5}, Lfm/douban/model/Playlist;->require(Lfm/douban/model/Song;ILjava/lang/String;Ljava/lang/String;Z)V

    .line 454
    .end local v3           #op:Ljava/lang/String;
    :cond_0
    return-void

    .line 448
    .restart local v3       #op:Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iget-object v0, v0, Lfm/douban/service/RadioState;->song:Lfm/douban/model/Song;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lfm/douban/model/Song;->like:Z

    .line 449
    const-string v3, "r"

    .line 450
    iget-object v0, p0, Lfm/douban/service/Radio;->context:Landroid/content/Context;

    const-string v1, "Love"

    const-string v2, "Love"

    invoke-static {v0, v1, v2}, Lcom/mobclick/android/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public logout()V
    .locals 1

    .prologue
    .line 712
    iget-object v0, p0, Lfm/douban/service/Radio;->rm:Lfm/douban/controller/RadioManager;

    invoke-static {v0}, Lfm/douban/model/Token;->clean(Lfm/douban/controller/RadioManager;)V

    .line 713
    iget-object v0, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iget-object v0, v0, Lfm/douban/service/RadioState;->channel:Lfm/douban/model/Channel;

    invoke-virtual {v0}, Lfm/douban/model/Channel;->isPublic()Z

    move-result v0

    if-nez v0, :cond_0

    .line 714
    iget-object v0, p0, Lfm/douban/service/Radio;->cm:Lfm/douban/controller/ChannelManager;

    invoke-virtual {v0}, Lfm/douban/controller/ChannelManager;->getDefaultChannel()Lfm/douban/model/Channel;

    move-result-object v0

    iget-object v0, v0, Lfm/douban/model/Channel;->channel_id:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lfm/douban/service/Radio;->switchChannel(Ljava/lang/String;)V

    .line 716
    :cond_0
    return-void
.end method

.method public onDownload(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "url"
    .parameter "bitmap"

    .prologue
    .line 754
    const-string v0, "radio"

    const-string v1, "onDownload"

    invoke-static {v0, v1}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    iget-object v1, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iget-object v0, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iget-object v0, v0, Lfm/douban/service/RadioState;->song:Lfm/douban/model/Song;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iget-object v0, v0, Lfm/douban/service/RadioState;->song:Lfm/douban/model/Song;

    invoke-virtual {v0}, Lfm/douban/model/Song;->pictureUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v1, Lfm/douban/service/RadioState;->hasPicture:Z

    .line 756
    iget-object v0, p0, Lfm/douban/service/Radio;->downloadUrls:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 757
    invoke-virtual {p0}, Lfm/douban/service/Radio;->updateState()V

    .line 758
    return-void

    .line 755
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause(I)V
    .locals 3
    .parameter "pauseSource"

    .prologue
    .line 367
    iget-object v0, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iget-boolean v0, v0, Lfm/douban/service/RadioState;->isPaused:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iget-object v0, v0, Lfm/douban/service/RadioState;->song:Lfm/douban/model/Song;

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lfm/douban/service/RadioState;->isPaused:Z

    .line 369
    iput p1, p0, Lfm/douban/service/Radio;->pauseFrom:I

    .line 370
    iget-object v0, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lfm/douban/service/RadioState;->canOp:Z

    .line 371
    iget-object v0, p0, Lfm/douban/service/Radio;->player:Lfm/douban/service/Player;

    invoke-virtual {v0}, Lfm/douban/service/Player;->pause()V

    .line 372
    iget-object v1, p0, Lfm/douban/service/Radio;->audioManager:Landroid/media/AudioManager;

    iget-object v0, p0, Lfm/douban/service/Radio;->audiofcListener:Ljava/lang/Object;

    check-cast v0, Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 373
    const-string v0, "radio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Paused from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :cond_0
    return-void
.end method

.method public picture()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 719
    const-string v1, "radio"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "picture: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    invoke-virtual {v3}, Lfm/douban/service/RadioState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    iget-object v1, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iget-boolean v1, v1, Lfm/douban/service/RadioState;->hasSong:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iget-object v1, v1, Lfm/douban/service/RadioState;->song:Lfm/douban/model/Song;

    if-eqz v1, :cond_0

    .line 721
    iget-object v1, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iget-object v1, v1, Lfm/douban/service/RadioState;->song:Lfm/douban/model/Song;

    invoke-virtual {v1}, Lfm/douban/model/Song;->pictureUrl()Ljava/lang/String;

    move-result-object v0

    .line 722
    .local v0, url:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 723
    const-string v1, "radio"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "picture: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    iget-object v1, p0, Lfm/douban/service/Radio;->imanager:Lnatalya/graphics/ImageManager;

    invoke-virtual {v1, v0, v4}, Lnatalya/graphics/ImageManager;->hasImage(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 725
    const-string v1, "radio"

    const-string v2, "has local image"

    invoke-static {v1, v2}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lfm/douban/service/Radio;->onDownload(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 736
    .end local v0           #url:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 728
    .restart local v0       #url:Ljava/lang/String;
    :cond_1
    const-string v1, "radio"

    const-string v2, "download net image"

    invoke-static {v1, v2}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    iget-object v1, p0, Lfm/douban/service/Radio;->downloadUrls:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 730
    iget-object v1, p0, Lfm/douban/service/Radio;->downloadUrls:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 731
    iget-object v1, p0, Lfm/douban/service/Radio;->idown:Lnatalya/graphics/ImageDownloader;

    invoke-virtual {v1, v0, v4, p0}, Lnatalya/graphics/ImageDownloader;->download(Ljava/lang/String;ILnatalya/graphics/ImageDownloader$OnlyDownload;)V

    goto :goto_0
.end method

.method public play()V
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iget-object v0, v0, Lfm/douban/service/RadioState;->channelId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lfm/douban/service/Radio;->play(Ljava/lang/String;)V

    .line 259
    return-void
.end method

.method public play(Ljava/lang/String;)V
    .locals 8
    .parameter "channelId"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x3

    const/4 v5, 0x0

    .line 262
    const-string v2, "radio"

    const-string v3, "play"

    invoke-static {v2, v3}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    invoke-virtual {p0}, Lfm/douban/service/Radio;->checkAndSync()V

    .line 264
    iget-object v2, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iput-boolean v5, v2, Lfm/douban/service/RadioState;->isStoped:Z

    .line 266
    iget-object v2, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iget-boolean v2, v2, Lfm/douban/service/RadioState;->isPaused:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iget-object v2, v2, Lfm/douban/service/RadioState;->song:Lfm/douban/model/Song;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iget v2, v2, Lfm/douban/service/RadioState;->errorState:I

    if-nez v2, :cond_2

    .line 267
    sget-boolean v2, Lfm/douban/service/RadioService;->netChangeWhenPause:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lfm/douban/service/Radio;->context:Landroid/content/Context;

    invoke-static {v2}, Lfm/douban/util/NetworkHelper;->isActiveNetworkMobile(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 272
    const-string v2, ""

    invoke-virtual {p0, v6, v2}, Lfm/douban/service/Radio;->showWarning(ILjava/lang/String;)V

    .line 278
    :goto_0
    sput-boolean v5, Lfm/douban/service/RadioService;->netChangeWhenPause:Z

    .line 347
    :cond_0
    :goto_1
    return-void

    .line 275
    :cond_1
    iget v2, p0, Lfm/douban/service/Radio;->pauseFrom:I

    invoke-virtual {p0, v2}, Lfm/douban/service/Radio;->resume(I)V

    .line 276
    invoke-virtual {p0}, Lfm/douban/service/Radio;->updateState()V

    goto :goto_0

    .line 279
    :cond_2
    iget-object v2, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iget-boolean v2, v2, Lfm/douban/service/RadioState;->isPaused:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iget v2, v2, Lfm/douban/service/RadioState;->errorState:I

    if-eqz v2, :cond_5

    .line 281
    iget-object v2, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iget v2, v2, Lfm/douban/service/RadioState;->errorState:I

    sparse-switch v2, :sswitch_data_0

    goto :goto_1

    .line 288
    :cond_3
    :sswitch_0
    invoke-virtual {p0}, Lfm/douban/service/Radio;->tryPlayOffline()V

    goto :goto_1

    .line 283
    :sswitch_1
    iget-object v2, p0, Lfm/douban/service/Radio;->context:Landroid/content/Context;

    invoke-static {v2}, Lfm/douban/util/NetworkHelper;->isActiveNetworkMobile(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 284
    const-string v2, ""

    invoke-virtual {p0, v6, v2}, Lfm/douban/service/Radio;->showWarning(ILjava/lang/String;)V

    goto :goto_1

    .line 291
    :sswitch_2
    iget-object v2, p0, Lfm/douban/service/Radio;->fmsp:Lfm/douban/model/FMSharedPreferences;

    const-string v3, "offline_switch"

    invoke-virtual {v2, v3, v5}, Lfm/douban/model/FMSharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 292
    .local v0, offline:I
    if-nez v0, :cond_4

    .line 293
    iget-object v2, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iput v5, v2, Lfm/douban/service/RadioState;->errorState:I

    .line 294
    iget v2, p0, Lfm/douban/service/Radio;->pauseFrom:I

    invoke-virtual {p0, v2}, Lfm/douban/service/Radio;->resume(I)V

    .line 295
    invoke-virtual {p0}, Lfm/douban/service/Radio;->tryPlayOffline()V

    goto :goto_1

    .line 297
    :cond_4
    iget-object v2, p0, Lfm/douban/service/Radio;->context:Landroid/content/Context;

    const v3, 0x7f0900c9

    invoke-static {v2, v3}, Lfm/douban/util/Utils;->showToastLonger(Landroid/content/Context;I)V

    goto :goto_1

    .line 304
    .end local v0           #offline:I
    :cond_5
    iget-object v2, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iput v5, v2, Lfm/douban/service/RadioState;->errorState:I

    .line 306
    if-eqz p1, :cond_6

    iget-object v2, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iget-object v2, v2, Lfm/douban/service/RadioState;->channelId:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 307
    const-string v2, "radio"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "success switch to channel = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-object v2, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iput-object p1, v2, Lfm/douban/service/RadioState;->channelId:Ljava/lang/String;

    .line 309
    iget-object v2, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iget-object v3, p0, Lfm/douban/service/Radio;->cm:Lfm/douban/controller/ChannelManager;

    iget-object v4, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iget-object v4, v4, Lfm/douban/service/RadioState;->channelId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lfm/douban/controller/ChannelManager;->getChannel(Ljava/lang/String;)Lfm/douban/model/Channel;

    move-result-object v3

    iput-object v3, v2, Lfm/douban/service/RadioState;->channel:Lfm/douban/model/Channel;

    .line 312
    :cond_6
    iget-object v2, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iput-boolean v5, v2, Lfm/douban/service/RadioState;->isPaused:Z

    .line 313
    iget-object v2, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iput-boolean v5, v2, Lfm/douban/service/RadioState;->isResumed:Z

    .line 315
    iget-object v2, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iget-object v3, p0, Lfm/douban/service/Radio;->playlist:Lfm/douban/model/Playlist;

    invoke-interface {v3}, Lfm/douban/model/Playlist;->getNextSong()Lfm/douban/model/Song;

    move-result-object v3

    iput-object v3, v2, Lfm/douban/service/RadioState;->song:Lfm/douban/model/Song;

    .line 316
    const-string v2, "radio"

    const-string v3, "next song"

    invoke-static {v2, v3}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iget-object v2, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iget-object v2, v2, Lfm/douban/service/RadioState;->song:Lfm/douban/model/Song;

    if-nez v2, :cond_8

    .line 319
    iget-object v2, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iget-boolean v2, v2, Lfm/douban/service/RadioState;->isOffline:Z

    if-eqz v2, :cond_7

    .line 321
    iget-object v2, p0, Lfm/douban/service/Radio;->context:Landroid/content/Context;

    const v3, 0x7f0900c2

    invoke-static {v2, v3}, Lfm/douban/util/Utils;->showToast(Landroid/content/Context;I)V

    .line 322
    invoke-virtual {p0}, Lfm/douban/service/Radio;->updateState()V

    goto/16 :goto_1

    .line 325
    :cond_7
    iget-object v2, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iput-boolean v5, v2, Lfm/douban/service/RadioState;->canOp:Z

    .line 326
    const-string v2, "radio"

    const-string v3, "empty require new list"

    invoke-static {v2, v3}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    iget-object v2, p0, Lfm/douban/service/Radio;->playlist:Lfm/douban/model/Playlist;

    iget-object v3, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iget-object v3, v3, Lfm/douban/service/RadioState;->song:Lfm/douban/model/Song;

    invoke-virtual {p0}, Lfm/douban/service/Radio;->getCurrentSongPlayTime()I

    move-result v4

    const-string v5, "n"

    iget-object v6, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iget-object v6, v6, Lfm/douban/service/RadioState;->channelId:Ljava/lang/String;

    invoke-interface {v2, v3, v4, v5, v6}, Lfm/douban/model/Playlist;->require(Lfm/douban/model/Song;ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 331
    :cond_8
    const-string v2, "radio"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "next song: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iget-object v4, v4, Lfm/douban/service/RadioState;->song:Lfm/douban/model/Song;

    iget-object v4, v4, Lfm/douban/model/Song;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x7

    if-le v2, v3, :cond_9

    .line 333
    iget-object v3, p0, Lfm/douban/service/Radio;->audioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lfm/douban/service/Radio;->audiofcListener:Ljava/lang/Object;

    check-cast v2, Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v3, v2, v6, v7}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v1

    .line 335
    .local v1, result:I
    if-ne v1, v7, :cond_0

    .line 338
    const-string v2, "radio"

    const-string v3, "Audiofocus granted in play()"

    invoke-static {v2, v3}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    .end local v1           #result:I
    :cond_9
    iget-object v2, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iget-object v3, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iget-object v3, v3, Lfm/douban/service/RadioState;->song:Lfm/douban/model/Song;

    iget-boolean v3, v3, Lfm/douban/model/Song;->like:Z

    iput-boolean v3, v2, Lfm/douban/service/RadioState;->isLike:Z

    .line 341
    iget-object v2, p0, Lfm/douban/service/Radio;->player:Lfm/douban/service/Player;

    iget-object v3, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iget-object v3, v3, Lfm/douban/service/RadioState;->song:Lfm/douban/model/Song;

    invoke-virtual {v2, v3}, Lfm/douban/service/Player;->play(Lfm/douban/model/Song;)V

    .line 342
    invoke-virtual {p0}, Lfm/douban/service/Radio;->updateState()V

    goto/16 :goto_1

    .line 281
    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_0
        0x12 -> :sswitch_1
        0x13 -> :sswitch_2
    .end sparse-switch
.end method

.method public playCertainSong(Ljava/lang/String;)V
    .locals 9
    .parameter "url"

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 194
    const-string v0, "radio"

    const-string v1, "play certain song"

    invoke-static {v0, v1}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v0, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iget-object v0, v0, Lfm/douban/service/RadioState;->song:Lfm/douban/model/Song;

    if-nez v0, :cond_0

    .line 243
    :goto_0
    return-void

    .line 198
    :cond_0
    invoke-direct {p0, p1}, Lfm/douban/service/Radio;->setPlayUrl(Ljava/lang/String;)Z

    move-result v7

    .line 199
    .local v7, canStart:Z
    iget-object v0, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iput-boolean v2, v0, Lfm/douban/service/RadioState;->canOp:Z

    .line 200
    if-eqz v7, :cond_7

    .line 201
    const/4 v8, 0x0

    .line 202
    .local v8, toDefault:Z
    iget-object v0, p0, Lfm/douban/service/Radio;->cm:Lfm/douban/controller/ChannelManager;

    iget-object v1, p0, Lfm/douban/service/Radio;->cid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lfm/douban/controller/ChannelManager;->isValidChannelId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 203
    iget-object v0, p0, Lfm/douban/service/Radio;->cm:Lfm/douban/controller/ChannelManager;

    iget-object v1, p0, Lfm/douban/service/Radio;->cid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lfm/douban/controller/ChannelManager;->getChannel(Ljava/lang/String;)Lfm/douban/model/Channel;

    move-result-object v6

    .line 204
    .local v6, c:Lfm/douban/model/Channel;
    invoke-virtual {v6}, Lfm/douban/model/Channel;->isPublic()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lfm/douban/service/Radio;->cid:Ljava/lang/String;

    iget-object v1, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iget-object v1, v1, Lfm/douban/service/RadioState;->channelId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 205
    const/4 v8, 0x1

    .line 210
    .end local v6           #c:Lfm/douban/model/Channel;
    :cond_1
    :goto_1
    if-eqz v8, :cond_2

    .line 211
    iget-object v0, p0, Lfm/douban/service/Radio;->cm:Lfm/douban/controller/ChannelManager;

    invoke-virtual {v0}, Lfm/douban/controller/ChannelManager;->getDefaultChannel()Lfm/douban/model/Channel;

    move-result-object v0

    iget-object v0, v0, Lfm/douban/model/Channel;->channel_id:Ljava/lang/String;

    iput-object v0, p0, Lfm/douban/service/Radio;->cid:Ljava/lang/String;

    .line 214
    :cond_2
    iget-object v0, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iget-boolean v0, v0, Lfm/douban/service/RadioState;->isOffline:Z

    if-eqz v0, :cond_6

    .line 216
    iget-object v0, p0, Lfm/douban/service/Radio;->context:Landroid/content/Context;

    invoke-static {v0}, Lfm/douban/util/NetworkHelper;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 217
    iget-object v0, p0, Lfm/douban/service/Radio;->context:Landroid/content/Context;

    const v1, 0x7f0900a2

    invoke-static {v0, v1}, Lfm/douban/util/Utils;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 208
    :cond_3
    const/4 v8, 0x1

    goto :goto_1

    .line 222
    :cond_4
    iget-object v0, p0, Lfm/douban/service/Radio;->context:Landroid/content/Context;

    invoke-static {v0}, Lfm/douban/util/NetworkHelper;->isActiveNetworkMobile(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lfm/douban/service/Radio;->fmsp:Lfm/douban/model/FMSharedPreferences;

    const-string v1, "offline_switch_channel"

    invoke-virtual {v0, v1, v2}, Lfm/douban/model/FMSharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_5

    .line 224
    const/16 v0, 0xd

    iget-object v1, p0, Lfm/douban/service/Radio;->cid:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lfm/douban/service/Radio;->showWarning(ILjava/lang/String;)V

    .line 225
    iget-object v0, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iput-boolean v5, v0, Lfm/douban/service/RadioState;->canOp:Z

    goto :goto_0

    .line 228
    :cond_5
    const-string v0, "radio"

    const-string v1, "switchOnline and require new"

    invoke-static {v0, v1}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    invoke-virtual {p0}, Lfm/douban/service/Radio;->switchOnline()V

    .line 233
    iget-object v0, p0, Lfm/douban/service/Radio;->playlist:Lfm/douban/model/Playlist;

    iget-object v1, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iget-object v1, v1, Lfm/douban/service/RadioState;->song:Lfm/douban/model/Song;

    invoke-virtual {p0}, Lfm/douban/service/Radio;->getCurrentSongPlayTime()I

    move-result v2

    const-string v3, "n"

    iget-object v4, p0, Lfm/douban/service/Radio;->cid:Ljava/lang/String;

    invoke-interface/range {v0 .. v5}, Lfm/douban/model/Playlist;->require(Lfm/douban/model/Song;ILjava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 236
    :cond_6
    iget-object v0, p0, Lfm/douban/service/Radio;->playlist:Lfm/douban/model/Playlist;

    iget-object v1, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iget-object v1, v1, Lfm/douban/service/RadioState;->song:Lfm/douban/model/Song;

    invoke-virtual {p0}, Lfm/douban/service/Radio;->getCurrentSongPlayTime()I

    move-result v2

    const-string v3, "n"

    iget-object v4, p0, Lfm/douban/service/Radio;->cid:Ljava/lang/String;

    invoke-interface/range {v0 .. v5}, Lfm/douban/model/Playlist;->require(Lfm/douban/model/Song;ILjava/lang/String;Ljava/lang/String;Z)V

    .line 237
    iget-object v0, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iput-boolean v5, v0, Lfm/douban/service/RadioState;->canOp:Z

    goto/16 :goto_0

    .line 241
    .end local v8           #toDefault:Z
    :cond_7
    iget-object v0, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iput-boolean v5, v0, Lfm/douban/service/RadioState;->canOp:Z

    goto/16 :goto_0
.end method

.method public playNextSong()V
    .locals 6

    .prologue
    .line 246
    iget-object v0, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iget-object v0, v0, Lfm/douban/service/RadioState;->channelId:Ljava/lang/String;

    const-string v1, "-3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lfm/douban/service/Radio;->playlist:Lfm/douban/model/Playlist;

    invoke-interface {v0}, Lfm/douban/model/Playlist;->empty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lfm/douban/service/RadioState;->canOp:Z

    .line 248
    const-string v0, "radio"

    const-string v1, "last song require new list"

    invoke-static {v0, v1}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v0, p0, Lfm/douban/service/Radio;->playlist:Lfm/douban/model/Playlist;

    iget-object v1, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iget-object v1, v1, Lfm/douban/service/RadioState;->song:Lfm/douban/model/Song;

    iget-object v2, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iget v2, v2, Lfm/douban/service/RadioState;->playDuration:I

    const-string v3, "p"

    iget-object v4, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iget-object v4, v4, Lfm/douban/service/RadioState;->channelId:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-interface/range {v0 .. v5}, Lfm/douban/model/Playlist;->require(Lfm/douban/model/Song;ILjava/lang/String;Ljava/lang/String;Z)V

    .line 254
    :goto_0
    return-void

    .line 251
    :cond_0
    iget-object v0, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    invoke-virtual {p0, v0}, Lfm/douban/service/Radio;->played(Lfm/douban/service/RadioState;)V

    .line 252
    invoke-virtual {p0}, Lfm/douban/service/Radio;->play()V

    goto :goto_0
.end method

.method public played(Lfm/douban/service/RadioState;)V
    .locals 4
    .parameter "st"

    .prologue
    .line 350
    if-eqz p1, :cond_0

    iget-object v0, p1, Lfm/douban/service/RadioState;->song:Lfm/douban/model/Song;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lfm/douban/service/RadioState;->channelId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lfm/douban/service/Radio;->playlist:Lfm/douban/model/Playlist;

    iget-object v1, p1, Lfm/douban/service/RadioState;->song:Lfm/douban/model/Song;

    iget-object v1, v1, Lfm/douban/model/Song;->song_id:Ljava/lang/String;

    iget v2, p1, Lfm/douban/service/RadioState;->playDuration:I

    iget-object v3, p1, Lfm/douban/service/RadioState;->channelId:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lfm/douban/model/Playlist;->played(Ljava/lang/String;ILjava/lang/String;)V

    .line 353
    :cond_0
    return-void
.end method

.method public resume(I)V
    .locals 5
    .parameter "resumeSource"

    .prologue
    const/4 v4, 0x1

    .line 384
    iget-object v1, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iget-boolean v1, v1, Lfm/douban/service/RadioState;->isPaused:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lfm/douban/service/Radio;->pauseFrom:I

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iget-object v1, v1, Lfm/douban/service/RadioState;->song:Lfm/douban/model/Song;

    if-eqz v1, :cond_0

    .line 385
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x7

    if-le v1, v2, :cond_2

    .line 386
    iget-object v2, p0, Lfm/douban/service/Radio;->audioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lfm/douban/service/Radio;->audiofcListener:Ljava/lang/Object;

    check-cast v1, Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v3, 0x3

    invoke-virtual {v2, v1, v3, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    .line 388
    .local v0, result:I
    if-eq v0, v4, :cond_1

    .line 400
    .end local v0           #result:I
    :cond_0
    :goto_0
    return-void

    .line 391
    .restart local v0       #result:I
    :cond_1
    const-string v1, "radio"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Audiofocus granted in resume, resumeSource: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    .end local v0           #result:I
    :cond_2
    iget-object v1, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lfm/douban/service/RadioState;->isPaused:Z

    .line 394
    iget-object v1, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iput-boolean v4, v1, Lfm/douban/service/RadioState;->isResumed:Z

    .line 395
    iget-object v1, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iput-boolean v4, v1, Lfm/douban/service/RadioState;->canOp:Z

    .line 396
    const/4 v1, -0x1

    iput v1, p0, Lfm/douban/service/Radio;->pauseFrom:I

    .line 397
    iget-object v1, p0, Lfm/douban/service/Radio;->player:Lfm/douban/service/Player;

    invoke-virtual {v1}, Lfm/douban/service/Player;->resume()V

    .line 398
    const-string v1, "radio"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resumed from: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public resumeAnyway()V
    .locals 3

    .prologue
    .line 406
    iget v0, p0, Lfm/douban/service/Radio;->pauseFrom:I

    invoke-virtual {p0, v0}, Lfm/douban/service/Radio;->resume(I)V

    .line 407
    iget-object v0, p0, Lfm/douban/service/Radio;->context:Landroid/content/Context;

    const-string v1, "Resume"

    const-string v2, "force"

    invoke-static {v0, v1, v2}, Lcom/mobclick/android/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    return-void
.end method

.method public declared-synchronized shareTo(ILjava/lang/String;Lfm/douban/service/RadioState;)V
    .locals 12
    .parameter "shareSource"
    .parameter "content"
    .parameter "rs"

    .prologue
    const/4 v1, 0x0

    .line 809
    monitor-enter p0

    if-eqz p3, :cond_1

    :try_start_0
    iget-object v2, p3, Lfm/douban/service/RadioState;->song:Lfm/douban/model/Song;

    if-eqz v2, :cond_1

    .line 811
    iget-object v2, p3, Lfm/douban/service/RadioState;->song:Lfm/douban/model/Song;

    iget-object v11, v2, Lfm/douban/model/Song;->song_id:Ljava/lang/String;

    .line 812
    .local v11, songId:Ljava/lang/String;
    iget-object v2, p3, Lfm/douban/service/RadioState;->channelId:Ljava/lang/String;

    iget-object v3, p3, Lfm/douban/service/RadioState;->song:Lfm/douban/model/Song;

    iget-object v3, v3, Lfm/douban/model/Song;->ssid:Ljava/lang/String;

    invoke-direct {p0, v2, v11, v3}, Lfm/douban/service/Radio;->getShareSongHref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 814
    .local v4, shareHref:Ljava/lang/String;
    iget v2, p0, Lfm/douban/service/Radio;->shareTask:I

    if-gtz v2, :cond_0

    .line 815
    const/4 v2, 0x0

    iput v2, p0, Lfm/douban/service/Radio;->shareTask:I

    .line 816
    const/4 v2, 0x0

    iput v2, p0, Lfm/douban/service/Radio;->success:I

    .line 817
    const/4 v2, 0x0

    iput v2, p0, Lfm/douban/service/Radio;->resId:I

    .line 820
    :cond_0
    iget-object v2, p0, Lfm/douban/service/Radio;->context:Landroid/content/Context;

    invoke-static {v2}, Lfm/douban/FmApp;->getRadioManager(Landroid/content/Context;)Lfm/douban/controller/RadioManager;

    move-result-object v2

    invoke-virtual {v2}, Lfm/douban/controller/RadioManager;->getApi()Lfm/douban/api/Api;

    move-result-object v0

    .line 821
    .local v0, api:Lfm/douban/api/Api;
    iget-object v2, p0, Lfm/douban/service/Radio;->rm:Lfm/douban/controller/RadioManager;

    invoke-static {v2}, Lfm/douban/model/Token;->get(Lfm/douban/controller/RadioManager;)Lfm/douban/model/Token;

    move-result-object v9

    .line 822
    .local v9, loginToken:Lfm/douban/model/Token;
    iget-object v2, p0, Lfm/douban/service/Radio;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/douban/share/ShareMgr;->getInstance(Landroid/content/Context;)Lcom/douban/share/ShareMgr;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/douban/share/ShareMgr;->getAccessToken(I)Lcom/douban/share/ShareToken;

    move-result-object v10

    .line 823
    .local v10, shareToken:Lcom/douban/share/ShareToken;
    const/4 v7, 0x0

    .line 824
    .local v7, canShare:Z
    packed-switch p1, :pswitch_data_0

    .line 835
    :goto_0
    if-eqz v7, :cond_3

    .line 836
    invoke-direct {p0, p1}, Lfm/douban/service/Radio;->makeShareHandler(I)V

    .line 837
    iget v1, p0, Lfm/douban/service/Radio;->shareTask:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lfm/douban/service/Radio;->shareTask:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 839
    :try_start_1
    iget-object v1, p0, Lfm/douban/service/Radio;->context:Landroid/content/Context;

    iget-object v2, p0, Lfm/douban/service/Radio;->shareHandlers:[Lcom/loopj/android/http/AsyncHttpResponseHandler;

    aget-object v6, v2, p1

    move-object v2, p3

    move-object v3, p2

    move v5, p1

    invoke-virtual/range {v0 .. v6}, Lfm/douban/api/Api;->shareTo(Landroid/content/Context;Lfm/douban/service/RadioState;Ljava/lang/String;Ljava/lang/String;ILcom/loopj/android/http/AsyncHttpResponseHandler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 849
    .end local v0           #api:Lfm/douban/api/Api;
    .end local v4           #shareHref:Ljava/lang/String;
    .end local v7           #canShare:Z
    .end local v9           #loginToken:Lfm/douban/model/Token;
    .end local v10           #shareToken:Lcom/douban/share/ShareToken;
    .end local v11           #songId:Ljava/lang/String;
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    .line 826
    .restart local v0       #api:Lfm/douban/api/Api;
    .restart local v4       #shareHref:Ljava/lang/String;
    .restart local v7       #canShare:Z
    .restart local v9       #loginToken:Lfm/douban/model/Token;
    .restart local v10       #shareToken:Lcom/douban/share/ShareToken;
    .restart local v11       #songId:Ljava/lang/String;
    :pswitch_0
    if-eqz v9, :cond_2

    const/4 v7, 0x1

    .line 827
    :goto_2
    goto :goto_0

    :cond_2
    move v7, v1

    .line 826
    goto :goto_2

    .line 831
    :pswitch_1
    :try_start_2
    invoke-virtual {v10}, Lcom/douban/share/ShareToken;->isAvailable()Z

    move-result v7

    goto :goto_0

    .line 840
    :catch_0
    move-exception v8

    .line 841
    .local v8, e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 842
    iget v1, p0, Lfm/douban/service/Radio;->success:I

    sget-object v2, Lcom/douban/radio/app/ShareActivity;->SHARE_FAIL_CODES:[I

    aget v2, v2, p1

    add-int/2addr v1, v2

    iput v1, p0, Lfm/douban/service/Radio;->success:I

    .line 843
    iget v1, p0, Lfm/douban/service/Radio;->success:I

    invoke-direct {p0, v1}, Lfm/douban/service/Radio;->sendUpdateShare(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 809
    .end local v0           #api:Lfm/douban/api/Api;
    .end local v4           #shareHref:Ljava/lang/String;
    .end local v7           #canShare:Z
    .end local v8           #e:Ljava/lang/Exception;
    .end local v9           #loginToken:Lfm/douban/model/Token;
    .end local v10           #shareToken:Lcom/douban/share/ShareToken;
    .end local v11           #songId:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 846
    .restart local v0       #api:Lfm/douban/api/Api;
    .restart local v4       #shareHref:Ljava/lang/String;
    .restart local v7       #canShare:Z
    .restart local v9       #loginToken:Lfm/douban/model/Token;
    .restart local v10       #shareToken:Lcom/douban/share/ShareToken;
    .restart local v11       #songId:Ljava/lang/String;
    :cond_3
    :try_start_3
    const-string v1, "radio"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Share Auth in Radio:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 824
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected showWarning(ILjava/lang/String;)V
    .locals 3
    .parameter "code"
    .parameter "toChannel"

    .prologue
    .line 740
    if-nez p1, :cond_0

    .line 750
    :goto_0
    return-void

    .line 743
    :cond_0
    iget-object v1, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    const/4 v2, 0x0

    iput v2, v1, Lfm/douban/service/RadioState;->errorState:I

    .line 744
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lfm/douban/service/Radio;->context:Landroid/content/Context;

    const-class v2, Lcom/douban/radio/app/Warning;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 745
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x3000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 746
    const-string v1, "code"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 747
    const-string v1, "to_channel"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 748
    iget-object v1, p0, Lfm/douban/service/Radio;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 749
    invoke-virtual {p0}, Lfm/douban/service/Radio;->updateState()V

    goto :goto_0
.end method

.method public skip()V
    .locals 5

    .prologue
    .line 476
    iget-object v0, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iget-boolean v0, v0, Lfm/douban/service/RadioState;->canOp:Z

    if-eqz v0, :cond_1

    .line 477
    iget-object v0, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lfm/douban/service/RadioState;->canOp:Z

    .line 478
    iget-object v0, p0, Lfm/douban/service/Radio;->playlist:Lfm/douban/model/Playlist;

    invoke-interface {v0}, Lfm/douban/model/Playlist;->isOffline()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lfm/douban/service/Radio;->context:Landroid/content/Context;

    invoke-static {v0}, Lfm/douban/util/NetworkHelper;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 479
    :cond_0
    iget-object v0, p0, Lfm/douban/service/Radio;->playlist:Lfm/douban/model/Playlist;

    iget-object v1, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iget-object v1, v1, Lfm/douban/service/RadioState;->song:Lfm/douban/model/Song;

    invoke-virtual {p0}, Lfm/douban/service/Radio;->getCurrentSongPlayTime()I

    move-result v2

    const-string v3, "s"

    iget-object v4, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iget-object v4, v4, Lfm/douban/service/RadioState;->channelId:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3, v4}, Lfm/douban/model/Playlist;->require(Lfm/douban/model/Song;ILjava/lang/String;Ljava/lang/String;)V

    .line 485
    :cond_1
    :goto_0
    return-void

    .line 481
    :cond_2
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lfm/douban/service/Radio;->pause(I)V

    .line 482
    iget-object v0, p0, Lfm/douban/service/Radio;->context:Landroid/content/Context;

    const v1, 0x7f0900c8

    invoke-static {v0, v1}, Lfm/douban/util/Utils;->showToast(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public switchChannel(Ljava/lang/String;)V
    .locals 7
    .parameter "newChannelId"

    .prologue
    const/16 v6, 0xd

    const/4 v4, 0x3

    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 493
    iget-object v0, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iput-boolean v3, v0, Lfm/douban/service/RadioState;->canOp:Z

    .line 494
    const-string v0, "radio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "try to switch to channel = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    iget-object v0, p0, Lfm/douban/service/Radio;->context:Landroid/content/Context;

    const-string v1, "SwitchChannel"

    invoke-static {v0, v1, p1}, Lcom/mobclick/android/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    iget-object v0, p0, Lfm/douban/service/Radio;->cm:Lfm/douban/controller/ChannelManager;

    invoke-virtual {v0, p1}, Lfm/douban/controller/ChannelManager;->isValidChannelId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 498
    iget-object v0, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iget-boolean v0, v0, Lfm/douban/service/RadioState;->isOffline:Z

    if-eqz v0, :cond_5

    .line 500
    iget-object v0, p0, Lfm/douban/service/Radio;->context:Landroid/content/Context;

    invoke-static {v0}, Lfm/douban/util/NetworkHelper;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 502
    iget-object v0, p0, Lfm/douban/service/Radio;->rm:Lfm/douban/controller/RadioManager;

    invoke-static {v0}, Lfm/douban/model/Token;->isLogin(Lfm/douban/controller/RadioManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 503
    const-string v0, "-3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 504
    invoke-virtual {p0, v4}, Lfm/douban/service/Radio;->pause(I)V

    .line 505
    const-string v0, "-3"

    invoke-virtual {p0, v6, v0}, Lfm/douban/service/Radio;->showWarning(ILjava/lang/String;)V

    .line 551
    :goto_0
    return-void

    .line 507
    :cond_0
    iget-object v0, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iput-boolean v5, v0, Lfm/douban/service/RadioState;->canOp:Z

    .line 508
    invoke-virtual {p0}, Lfm/douban/service/Radio;->updateState()V

    goto :goto_0

    .line 512
    :cond_1
    const-string v0, "radio"

    const-string v1, "not login"

    invoke-static {v0, v1}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    invoke-virtual {p0, v4}, Lfm/douban/service/Radio;->pause(I)V

    .line 514
    iget-object v0, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iget-object v0, v0, Lfm/douban/service/RadioState;->channel:Lfm/douban/model/Channel;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iget-object v0, v0, Lfm/douban/service/RadioState;->channelId:Ljava/lang/String;

    const-string v1, "-3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 515
    iget-object v0, p0, Lfm/douban/service/Radio;->context:Landroid/content/Context;

    const v1, 0x7f0900c8

    invoke-static {v0, v1}, Lfm/douban/util/Utils;->showToastLonger(Landroid/content/Context;I)V

    .line 516
    iget-object v0, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iput-object p1, v0, Lfm/douban/service/RadioState;->channelId:Ljava/lang/String;

    .line 517
    iget-object v0, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iget-object v1, p0, Lfm/douban/service/Radio;->cm:Lfm/douban/controller/ChannelManager;

    invoke-virtual {v1, p1}, Lfm/douban/controller/ChannelManager;->getChannel(Ljava/lang/String;)Lfm/douban/model/Channel;

    move-result-object v1

    iput-object v1, v0, Lfm/douban/service/RadioState;->channel:Lfm/douban/model/Channel;

    .line 518
    invoke-virtual {p0}, Lfm/douban/service/Radio;->switchOnline()V

    .line 519
    invoke-virtual {p0}, Lfm/douban/service/Radio;->updateState()V

    goto :goto_0

    .line 521
    :cond_2
    const/4 v0, 0x4

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lfm/douban/service/Radio;->showWarning(ILjava/lang/String;)V

    goto :goto_0

    .line 528
    :cond_3
    iget-object v0, p0, Lfm/douban/service/Radio;->context:Landroid/content/Context;

    invoke-static {v0}, Lfm/douban/util/NetworkHelper;->isActiveNetworkMobile(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lfm/douban/service/Radio;->fmsp:Lfm/douban/model/FMSharedPreferences;

    const-string v1, "offline_switch_channel"

    invoke-virtual {v0, v1, v3}, Lfm/douban/model/FMSharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_4

    .line 530
    invoke-virtual {p0, v6, p1}, Lfm/douban/service/Radio;->showWarning(ILjava/lang/String;)V

    .line 531
    iget-object v0, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iput-boolean v5, v0, Lfm/douban/service/RadioState;->canOp:Z

    goto :goto_0

    .line 537
    :cond_4
    invoke-virtual {p0}, Lfm/douban/service/Radio;->switchOnline()V

    .line 538
    const-string v0, "radio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "offline switch to online "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    iget-object v0, p0, Lfm/douban/service/Radio;->playlist:Lfm/douban/model/Playlist;

    iget-object v1, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iget-object v1, v1, Lfm/douban/service/RadioState;->song:Lfm/douban/model/Song;

    invoke-virtual {p0}, Lfm/douban/service/Radio;->getCurrentSongPlayTime()I

    move-result v2

    const-string v3, "n"

    move-object v4, p1

    invoke-interface/range {v0 .. v5}, Lfm/douban/model/Playlist;->require(Lfm/douban/model/Song;ILjava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 541
    :cond_5
    iget-object v0, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iget-object v0, v0, Lfm/douban/service/RadioState;->channelId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 543
    const-string v0, "radio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switch to online from="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iget-object v2, v2, Lfm/douban/service/RadioState;->channelId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", to="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    iget-object v0, p0, Lfm/douban/service/Radio;->playlist:Lfm/douban/model/Playlist;

    iget-object v1, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iget-object v1, v1, Lfm/douban/service/RadioState;->song:Lfm/douban/model/Song;

    invoke-virtual {p0}, Lfm/douban/service/Radio;->getCurrentSongPlayTime()I

    move-result v2

    const-string v3, "n"

    move-object v4, p1

    invoke-interface/range {v0 .. v5}, Lfm/douban/model/Playlist;->require(Lfm/douban/model/Song;ILjava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 546
    :cond_6
    iget-object v0, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iput-boolean v5, v0, Lfm/douban/service/RadioState;->canOp:Z

    goto/16 :goto_0

    .line 549
    :cond_7
    iget-object v0, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iput-boolean v5, v0, Lfm/douban/service/RadioState;->canOp:Z

    goto/16 :goto_0
.end method

.method public switchOffline()Z
    .locals 5

    .prologue
    .line 599
    const/4 v1, 0x0

    .line 600
    .local v1, ret:Z
    const-string v2, "radio"

    const-string v3, "switchOffline..."

    invoke-static {v2, v3}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    const-string v2, "radio"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "state canOp="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iget-boolean v4, v4, Lfm/douban/service/RadioState;->canOp:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isOffline="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iget-boolean v4, v4, Lfm/douban/service/RadioState;->isOffline:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", offline list empty="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lfm/douban/service/Radio;->offlineList:Lfm/douban/model/OfflinePlaylist;

    invoke-virtual {v4}, Lfm/douban/model/OfflinePlaylist;->empty()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    iget-object v2, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iget-object v2, v2, Lfm/douban/service/RadioState;->song:Lfm/douban/model/Song;

    if-nez v2, :cond_3

    const/4 v0, 0x1

    .line 604
    .local v0, justStarted:Z
    :goto_0
    iget-object v2, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iget-boolean v2, v2, Lfm/douban/service/RadioState;->canOp:Z

    if-nez v2, :cond_0

    if-eqz v0, :cond_2

    .line 605
    :cond_0
    invoke-direct {p0}, Lfm/douban/service/Radio;->offline()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 606
    const-string v2, "radio"

    const-string v3, "switchOffline success"

    invoke-static {v2, v3}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    iget-object v2, p0, Lfm/douban/service/Radio;->context:Landroid/content/Context;

    const v3, 0x7f0900c6

    invoke-static {v2, v3}, Lfm/douban/util/Utils;->showToast(Landroid/content/Context;I)V

    .line 608
    invoke-virtual {p0}, Lfm/douban/service/Radio;->updateState()V

    .line 609
    iget-object v2, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iget-boolean v2, v2, Lfm/douban/service/RadioState;->isPaused:Z

    if-eqz v2, :cond_1

    .line 610
    invoke-virtual {p0}, Lfm/douban/service/Radio;->resumeAnyway()V

    .line 612
    :cond_1
    if-eqz v0, :cond_4

    .line 613
    iget-object v2, p0, Lfm/douban/service/Radio;->player:Lfm/douban/service/Player;

    invoke-virtual {v2}, Lfm/douban/service/Player;->fastFadePlay()V

    .line 619
    :cond_2
    :goto_1
    return v1

    .line 603
    .end local v0           #justStarted:Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 615
    .restart local v0       #justStarted:Z
    :cond_4
    iget-object v2, p0, Lfm/douban/service/Radio;->player:Lfm/douban/service/Player;

    invoke-virtual {v2}, Lfm/douban/service/Player;->fadeOut()V

    goto :goto_1
.end method

.method public switchOnline()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 662
    const-string v0, "radio"

    const-string v1, "switchOnline"

    invoke-static {v0, v1}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    iget-object v0, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iget-boolean v0, v0, Lfm/douban/service/RadioState;->isOffline:Z

    if-eqz v0, :cond_0

    .line 664
    iget-object v0, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iput-boolean v2, v0, Lfm/douban/service/RadioState;->isOffline:Z

    .line 665
    iget-object v0, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iput-boolean v2, v0, Lfm/douban/service/RadioState;->canOp:Z

    .line 666
    iget-object v0, p0, Lfm/douban/service/Radio;->onlineList:Lfm/douban/model/OnlinePlaylist;

    iput-object v0, p0, Lfm/douban/service/Radio;->playlist:Lfm/douban/model/Playlist;

    .line 667
    iget-object v0, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iput v2, v0, Lfm/douban/service/RadioState;->errorState:I

    .line 669
    :cond_0
    iget-object v0, p0, Lfm/douban/service/Radio;->fmsp:Lfm/douban/model/FMSharedPreferences;

    const-string v1, "offline_switch_channel"

    invoke-virtual {v0, v1, v2}, Lfm/douban/model/FMSharedPreferences;->putBoolean(Ljava/lang/String;Z)Z

    .line 670
    return-void
.end method

.method public sync()V
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iget-boolean v0, v0, Lfm/douban/service/RadioState;->isOffline:Z

    if-nez v0, :cond_0

    .line 357
    iget-object v0, p0, Lfm/douban/service/Radio;->rm:Lfm/douban/controller/RadioManager;

    invoke-virtual {v0}, Lfm/douban/controller/RadioManager;->getSongManager()Lfm/douban/controller/SongManager;

    move-result-object v0

    invoke-virtual {v0}, Lfm/douban/controller/SongManager;->syncOfflineRecords()V

    .line 359
    :cond_0
    return-void
.end method

.method public tryPlayOffline()V
    .locals 4

    .prologue
    const/16 v3, 0x12

    const/4 v2, 0x3

    .line 554
    const-string v0, "radio"

    const-string v1, "tryPlayOffline ****"

    invoke-static {v0, v1}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    iget-object v0, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    const/4 v1, 0x0

    iput v1, v0, Lfm/douban/service/RadioState;->errorState:I

    .line 556
    iget-object v0, p0, Lfm/douban/service/Radio;->rm:Lfm/douban/controller/RadioManager;

    invoke-virtual {v0}, Lfm/douban/controller/RadioManager;->getSongTaskManager()Lfm/douban/controller/SongTaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lfm/douban/controller/SongTaskManager;->stop()V

    .line 557
    iget-object v0, p0, Lfm/douban/service/Radio;->playlist:Lfm/douban/model/Playlist;

    invoke-interface {v0}, Lfm/douban/model/Playlist;->isOffline()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 558
    invoke-virtual {p0}, Lfm/douban/service/Radio;->resumeAnyway()V

    .line 590
    :goto_0
    return-void

    .line 561
    :cond_0
    iget-object v0, p0, Lfm/douban/service/Radio;->rm:Lfm/douban/controller/RadioManager;

    invoke-static {v0}, Lfm/douban/model/Token;->isLogin(Lfm/douban/controller/RadioManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lfm/douban/service/Radio;->rm:Lfm/douban/controller/RadioManager;

    invoke-virtual {v0}, Lfm/douban/controller/RadioManager;->getSongManager()Lfm/douban/controller/SongManager;

    move-result-object v0

    invoke-virtual {v0}, Lfm/douban/controller/SongManager;->isCacheEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 563
    :cond_1
    invoke-virtual {p0, v2}, Lfm/douban/service/Radio;->pause(I)V

    .line 564
    const/4 v0, 0x4

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lfm/douban/service/Radio;->showWarning(ILjava/lang/String;)V

    .line 565
    invoke-virtual {p0}, Lfm/douban/service/Radio;->updateState()V

    goto :goto_0

    .line 568
    :cond_2
    invoke-virtual {p0}, Lfm/douban/service/Radio;->switchOffline()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 570
    const-string v0, "radio"

    const-string v1, "switch radio offline successful"

    invoke-static {v0, v1}, Lfm/douban/util/DBLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    invoke-virtual {p0}, Lfm/douban/service/Radio;->updateState()V

    goto :goto_0

    .line 573
    :cond_3
    const-string v0, "radio"

    const-string v1, "cannot switch offline"

    invoke-static {v0, v1}, Lfm/douban/util/DBLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    invoke-virtual {p0, v2}, Lfm/douban/service/Radio;->pause(I)V

    .line 577
    iget-object v0, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iget v0, v0, Lfm/douban/service/RadioState;->errorState:I

    if-nez v0, :cond_4

    .line 579
    iget-object v0, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iput v3, v0, Lfm/douban/service/RadioState;->errorState:I

    .line 581
    :cond_4
    iget-object v0, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iget-object v0, v0, Lfm/douban/service/RadioState;->song:Lfm/douban/model/Song;

    if-nez v0, :cond_5

    .line 582
    iget-object v0, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iget v0, v0, Lfm/douban/service/RadioState;->errorState:I

    if-ne v0, v3, :cond_6

    .line 583
    const-string v0, ""

    invoke-virtual {p0, v2, v0}, Lfm/douban/service/Radio;->showWarning(ILjava/lang/String;)V

    .line 588
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lfm/douban/service/Radio;->updateState()V

    goto :goto_0

    .line 585
    :cond_6
    const-string v0, ""

    invoke-virtual {p0, v3, v0}, Lfm/douban/service/Radio;->showWarning(ILjava/lang/String;)V

    goto :goto_1
.end method

.method public updateState()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 684
    iget-object v1, p0, Lfm/douban/service/Radio;->rm:Lfm/douban/controller/RadioManager;

    invoke-static {v1}, Lfm/douban/model/Token;->get(Lfm/douban/controller/RadioManager;)Lfm/douban/model/Token;

    move-result-object v0

    .line 685
    .local v0, token:Lfm/douban/model/Token;
    iget-object v4, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    if-eqz v0, :cond_3

    move v1, v2

    :goto_0
    iput-boolean v1, v4, Lfm/douban/service/RadioState;->isLogin:Z

    .line 686
    iget-object v1, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iput-object v0, v1, Lfm/douban/service/RadioState;->token:Lfm/douban/model/Token;

    .line 688
    iget-object v1, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iget-object v4, p0, Lfm/douban/service/Radio;->playlist:Lfm/douban/model/Playlist;

    invoke-interface {v4}, Lfm/douban/model/Playlist;->isOffline()Z

    move-result v4

    iput-boolean v4, v1, Lfm/douban/service/RadioState;->isOffline:Z

    .line 690
    iget-object v4, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iget-object v1, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iget-object v1, v1, Lfm/douban/service/RadioState;->song:Lfm/douban/model/Song;

    if-eqz v1, :cond_4

    move v1, v2

    :goto_1
    iput-boolean v1, v4, Lfm/douban/service/RadioState;->hasSong:Z

    .line 691
    iget-object v1, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iget-object v4, p0, Lfm/douban/service/Radio;->player:Lfm/douban/service/Player;

    invoke-virtual {v4}, Lfm/douban/service/Player;->position()I

    move-result v4

    iput v4, v1, Lfm/douban/service/RadioState;->playPosition:I

    .line 693
    iget-object v1, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iget-boolean v1, v1, Lfm/douban/service/RadioState;->hasSong:Z

    if-eqz v1, :cond_0

    .line 694
    iget-object v1, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iget-object v4, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iget-object v4, v4, Lfm/douban/service/RadioState;->song:Lfm/douban/model/Song;

    iget-boolean v4, v4, Lfm/douban/model/Song;->like:Z

    iput-boolean v4, v1, Lfm/douban/service/RadioState;->isLike:Z

    .line 697
    :cond_0
    iget-object v1, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iget-object v4, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iget-boolean v4, v4, Lfm/douban/service/RadioState;->hasSong:Z

    if-eqz v4, :cond_5

    iget-object v4, p0, Lfm/douban/service/Radio;->imanager:Lnatalya/graphics/ImageManager;

    iget-object v5, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iget-object v5, v5, Lfm/douban/service/RadioState;->song:Lfm/douban/model/Song;

    invoke-virtual {v5}, Lfm/douban/model/Song;->pictureUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Lnatalya/graphics/ImageManager;->hasImage(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_5

    :goto_2
    iput-boolean v2, v1, Lfm/douban/service/RadioState;->hasPicture:Z

    .line 699
    iget-object v1, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iget-object v1, v1, Lfm/douban/service/RadioState;->channel:Lfm/douban/model/Channel;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iget-object v1, v1, Lfm/douban/service/RadioState;->channelId:Ljava/lang/String;

    iget-object v2, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iget-object v2, v2, Lfm/douban/service/RadioState;->channel:Lfm/douban/model/Channel;

    iget-object v2, v2, Lfm/douban/model/Channel;->channel_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 700
    :cond_1
    iget-object v1, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iget-object v2, p0, Lfm/douban/service/Radio;->cm:Lfm/douban/controller/ChannelManager;

    iget-object v3, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iget-object v3, v3, Lfm/douban/service/RadioState;->channelId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lfm/douban/controller/ChannelManager;->getChannel(Ljava/lang/String;)Lfm/douban/model/Channel;

    move-result-object v2

    iput-object v2, v1, Lfm/douban/service/RadioState;->channel:Lfm/douban/model/Channel;

    .line 703
    :cond_2
    iget-object v1, p0, Lfm/douban/service/Radio;->context:Landroid/content/Context;

    iget-object v2, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    invoke-static {v1, v2}, Lfm/douban/service/RadioService;->sendState(Landroid/content/Context;Lfm/douban/service/RadioState;)V

    .line 704
    iget-object v1, p0, Lfm/douban/service/Radio;->state:Lfm/douban/service/RadioState;

    iget-boolean v1, v1, Lfm/douban/service/RadioState;->isStoped:Z

    if-eqz v1, :cond_6

    .line 705
    invoke-virtual {p0}, Lfm/douban/service/Radio;->cancelNotification()V

    .line 709
    :goto_3
    return-void

    :cond_3
    move v1, v3

    .line 685
    goto/16 :goto_0

    :cond_4
    move v1, v3

    .line 690
    goto :goto_1

    :cond_5
    move v2, v3

    .line 697
    goto :goto_2

    .line 707
    :cond_6
    invoke-direct {p0}, Lfm/douban/service/Radio;->sendNotification()V

    goto :goto_3
.end method
