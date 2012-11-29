.class public Lfm/douban/controller/SongTaskManager;
.super Ljava/lang/Object;
.source "SongTaskManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfm/douban/controller/SongTaskManager$DownloadTask;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x400

.field private static final EXCEPTION_LENGTH_NOT_MATCHED:Ljava/lang/String; = "length_not_matched"

.field private static final MAX_ERROR_COUNT:I = 0x5

.field private static final MSG_DOWNLOAD_TASK:I = 0x66

.field private static final MSG_GET_TASK_LIST:I = 0x65

.field private static final MSG_START:I = 0x64

.field private static final MSG_STOP:I = 0x67

.field private static final TAG:Ljava/lang/String; = "SongTaskManager"


# instance fields
.field private api:Lfm/douban/api/Api;

.field private context:Landroid/content/Context;

.field private db:Lfm/douban/model/RadioDB;

.field private down:Lfm/douban/controller/SongTaskManager$DownloadTask;

.field private errCount:I

.field private handler:Landroid/os/Handler;

.field private idown:Lnatalya/graphics/ImageDownloader;

.field private isDownloading:Z

.field private listHandler:Lcom/loopj/android/http/AsyncHttpResponseHandler;

.field private manager:Lfm/douban/controller/SongManager;

.field private rm:Lfm/douban/controller/RadioManager;

.field private startSyncFlag:Z

.field private store:Lfm/douban/model/SongStore;

.field private syncing:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput v1, p0, Lfm/douban/controller/SongTaskManager;->errCount:I

    .line 77
    new-instance v0, Lfm/douban/controller/SongTaskManager$1;

    invoke-direct {v0, p0}, Lfm/douban/controller/SongTaskManager$1;-><init>(Lfm/douban/controller/SongTaskManager;)V

    iput-object v0, p0, Lfm/douban/controller/SongTaskManager;->listHandler:Lcom/loopj/android/http/AsyncHttpResponseHandler;

    .line 110
    iput-boolean v1, p0, Lfm/douban/controller/SongTaskManager;->startSyncFlag:Z

    .line 112
    new-instance v0, Lfm/douban/controller/SongTaskManager$2;

    invoke-direct {v0, p0}, Lfm/douban/controller/SongTaskManager$2;-><init>(Lfm/douban/controller/SongTaskManager;)V

    iput-object v0, p0, Lfm/douban/controller/SongTaskManager;->handler:Landroid/os/Handler;

    .line 213
    iput-object p1, p0, Lfm/douban/controller/SongTaskManager;->context:Landroid/content/Context;

    .line 214
    invoke-static {p1}, Lfm/douban/FmApp;->getRadioManager(Landroid/content/Context;)Lfm/douban/controller/RadioManager;

    move-result-object v0

    iput-object v0, p0, Lfm/douban/controller/SongTaskManager;->rm:Lfm/douban/controller/RadioManager;

    .line 215
    invoke-static {p1}, Lfm/douban/FmApp;->getImageDownloader(Landroid/content/Context;)Lnatalya/graphics/ImageDownloader;

    move-result-object v0

    iput-object v0, p0, Lfm/douban/controller/SongTaskManager;->idown:Lnatalya/graphics/ImageDownloader;

    .line 216
    iget-object v0, p0, Lfm/douban/controller/SongTaskManager;->rm:Lfm/douban/controller/RadioManager;

    invoke-virtual {v0}, Lfm/douban/controller/RadioManager;->getDB()Lfm/douban/model/RadioDB;

    move-result-object v0

    iput-object v0, p0, Lfm/douban/controller/SongTaskManager;->db:Lfm/douban/model/RadioDB;

    .line 217
    iget-object v0, p0, Lfm/douban/controller/SongTaskManager;->rm:Lfm/douban/controller/RadioManager;

    invoke-virtual {v0}, Lfm/douban/controller/RadioManager;->getSongStore()Lfm/douban/model/SongStore;

    move-result-object v0

    iput-object v0, p0, Lfm/douban/controller/SongTaskManager;->store:Lfm/douban/model/SongStore;

    .line 218
    iget-object v0, p0, Lfm/douban/controller/SongTaskManager;->rm:Lfm/douban/controller/RadioManager;

    invoke-virtual {v0}, Lfm/douban/controller/RadioManager;->getApi()Lfm/douban/api/Api;

    move-result-object v0

    iput-object v0, p0, Lfm/douban/controller/SongTaskManager;->api:Lfm/douban/api/Api;

    .line 219
    iget-object v0, p0, Lfm/douban/controller/SongTaskManager;->rm:Lfm/douban/controller/RadioManager;

    invoke-virtual {v0}, Lfm/douban/controller/RadioManager;->getSongManager()Lfm/douban/controller/SongManager;

    move-result-object v0

    iput-object v0, p0, Lfm/douban/controller/SongTaskManager;->manager:Lfm/douban/controller/SongManager;

    .line 220
    const/4 v0, 0x0

    iput-object v0, p0, Lfm/douban/controller/SongTaskManager;->down:Lfm/douban/controller/SongTaskManager$DownloadTask;

    .line 221
    iput-boolean v1, p0, Lfm/douban/controller/SongTaskManager;->syncing:Z

    .line 222
    return-void
.end method

.method static synthetic access$000(Lfm/douban/controller/SongTaskManager;)Lfm/douban/controller/SongManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lfm/douban/controller/SongTaskManager;->manager:Lfm/douban/controller/SongManager;

    return-object v0
.end method

.method static synthetic access$100(Lfm/douban/controller/SongTaskManager;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lfm/douban/controller/SongTaskManager;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lfm/douban/controller/SongTaskManager;)Lfm/douban/model/SongTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lfm/douban/controller/SongTaskManager;->getNextTask()Lfm/douban/model/SongTask;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lfm/douban/controller/SongTaskManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Lfm/douban/controller/SongTaskManager;->isDownloading:Z

    return v0
.end method

.method static synthetic access$1102(Lfm/douban/controller/SongTaskManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-boolean p1, p0, Lfm/douban/controller/SongTaskManager;->isDownloading:Z

    return p1
.end method

.method static synthetic access$1200(Lfm/douban/controller/SongTaskManager;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lfm/douban/controller/SongTaskManager;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lfm/douban/controller/SongTaskManager;)Lfm/douban/controller/SongTaskManager$DownloadTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lfm/douban/controller/SongTaskManager;->down:Lfm/douban/controller/SongTaskManager$DownloadTask;

    return-object v0
.end method

.method static synthetic access$1302(Lfm/douban/controller/SongTaskManager;Lfm/douban/controller/SongTaskManager$DownloadTask;)Lfm/douban/controller/SongTaskManager$DownloadTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-object p1, p0, Lfm/douban/controller/SongTaskManager;->down:Lfm/douban/controller/SongTaskManager$DownloadTask;

    return-object p1
.end method

.method static synthetic access$1400(Lfm/douban/controller/SongTaskManager;Lfm/douban/model/SongTask;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lfm/douban/controller/SongTaskManager;->download(Lfm/douban/model/SongTask;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lfm/douban/controller/SongTaskManager;)Lnatalya/graphics/ImageDownloader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lfm/douban/controller/SongTaskManager;->idown:Lnatalya/graphics/ImageDownloader;

    return-object v0
.end method

.method static synthetic access$200(Lfm/douban/controller/SongTaskManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Lfm/douban/controller/SongTaskManager;->startSyncFlag:Z

    return v0
.end method

.method static synthetic access$202(Lfm/douban/controller/SongTaskManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-boolean p1, p0, Lfm/douban/controller/SongTaskManager;->startSyncFlag:Z

    return p1
.end method

.method static synthetic access$300(Lfm/douban/controller/SongTaskManager;)Lfm/douban/controller/RadioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lfm/douban/controller/SongTaskManager;->rm:Lfm/douban/controller/RadioManager;

    return-object v0
.end method

.method static synthetic access$400(Lfm/douban/controller/SongTaskManager;)Lcom/loopj/android/http/AsyncHttpResponseHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lfm/douban/controller/SongTaskManager;->listHandler:Lcom/loopj/android/http/AsyncHttpResponseHandler;

    return-object v0
.end method

.method static synthetic access$500(Lfm/douban/controller/SongTaskManager;)Lfm/douban/api/Api;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lfm/douban/controller/SongTaskManager;->api:Lfm/douban/api/Api;

    return-object v0
.end method

.method static synthetic access$600(Lfm/douban/controller/SongTaskManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Lfm/douban/controller/SongTaskManager;->syncing:Z

    return v0
.end method

.method static synthetic access$602(Lfm/douban/controller/SongTaskManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-boolean p1, p0, Lfm/douban/controller/SongTaskManager;->syncing:Z

    return p1
.end method

.method static synthetic access$700(Lfm/douban/controller/SongTaskManager;ZZLjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Lfm/douban/controller/SongTaskManager;->updateState(ZZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lfm/douban/controller/SongTaskManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lfm/douban/controller/SongTaskManager;->errCount:I

    return v0
.end method

.method static synthetic access$802(Lfm/douban/controller/SongTaskManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput p1, p0, Lfm/douban/controller/SongTaskManager;->errCount:I

    return p1
.end method

.method static synthetic access$808(Lfm/douban/controller/SongTaskManager;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lfm/douban/controller/SongTaskManager;->errCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lfm/douban/controller/SongTaskManager;->errCount:I

    return v0
.end method

.method static synthetic access$900(Lfm/douban/controller/SongTaskManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lfm/douban/controller/SongTaskManager;->canStart()Z

    move-result v0

    return v0
.end method

.method private canStart()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 225
    const-string v3, "SongTaskManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "canStart store isFull="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lfm/douban/controller/SongTaskManager;->store:Lfm/douban/model/SongStore;

    invoke-virtual {v5}, Lfm/douban/model/SongStore;->isFull()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , need sync="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lfm/douban/controller/SongTaskManager;->needSync()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v3, p0, Lfm/douban/controller/SongTaskManager;->rm:Lfm/douban/controller/RadioManager;

    invoke-virtual {v3}, Lfm/douban/controller/RadioManager;->getSharedPreferences()Lfm/douban/model/FMSharedPreferences;

    move-result-object v3

    const-string v4, "offline_switch"

    invoke-virtual {v3, v4, v2}, Lfm/douban/model/FMSharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_1

    move v0, v1

    .line 228
    .local v0, switchoffline:Z
    :goto_0
    if-eqz v0, :cond_2

    iget-object v3, p0, Lfm/douban/controller/SongTaskManager;->rm:Lfm/douban/controller/RadioManager;

    invoke-static {v3}, Lfm/douban/model/Token;->isLogin(Lfm/douban/controller/RadioManager;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lfm/douban/controller/SongTaskManager;->store:Lfm/douban/model/SongStore;

    invoke-virtual {v3}, Lfm/douban/model/SongStore;->isFull()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lfm/douban/controller/SongTaskManager;->needSync()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    invoke-direct {p0}, Lfm/douban/controller/SongTaskManager;->checkSDCardStorage()Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    return v1

    .end local v0           #switchoffline:Z
    :cond_1
    move v0, v2

    .line 227
    goto :goto_0

    .restart local v0       #switchoffline:Z
    :cond_2
    move v1, v2

    .line 228
    goto :goto_1
.end method

.method private checkSDCardStorage()Z
    .locals 10

    .prologue
    .line 456
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    .line 457
    .local v4, root:Ljava/io/File;
    new-instance v5, Landroid/os/StatFs;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 458
    .local v5, sf:Landroid/os/StatFs;
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v2, v6

    .line 459
    .local v2, blockSize:J
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v0, v6

    .line 460
    .local v0, availCount:J
    mul-long v6, v0, v2

    const-wide/32 v8, 0x600000

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    const/4 v6, 0x1

    :goto_0
    return v6

    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private download(Lfm/douban/model/SongTask;)Z
    .locals 27
    .parameter "task"

    .prologue
    .line 283
    const/16 v21, 0x1

    .line 284
    .local v21, result:Z
    const-string v2, "SongTaskManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "download "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v5, v0, Lfm/douban/model/SongTask;->song_id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v5, v0, Lfm/douban/model/SongTask;->url:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    const/4 v3, 0x0

    .line 286
    .local v3, conn:Ljava/net/HttpURLConnection;
    const/16 v18, 0x0

    .line 287
    .local v18, is:Ljava/io/InputStream;
    const/4 v10, 0x0

    .line 289
    .local v10, bos:Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v24, Ljava/net/URL;

    move-object/from16 v0, p1

    iget-object v2, v0, Lfm/douban/model/SongTask;->url:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 290
    .local v24, url:Ljava/net/URL;
    invoke-virtual/range {v24 .. v24}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v3, v0

    .line 291
    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lfm/douban/controller/SongTaskManager;->setConnection(Ljava/net/HttpURLConnection;JJ)V

    .line 292
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    .line 293
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v14

    .line 294
    .local v14, code:I
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v2

    int-to-long v0, v2

    move-wide/from16 v19, v0

    .line 295
    .local v19, length:J
    const-string v2, "SongTaskManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "code="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , length="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v19

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    const/16 v2, 0xc8

    if-ne v14, v2, :cond_0

    invoke-direct/range {p0 .. p0}, Lfm/douban/controller/SongTaskManager;->checkSDCardStorage()Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide/32 v4, 0x600000

    cmp-long v2, v19, v4

    if-ltz v2, :cond_4

    .line 299
    :cond_0
    const-string v2, "SongTaskManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "skip task song_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v5, v0, Lfm/douban/model/SongTask;->song_id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    invoke-direct/range {p0 .. p1}, Lfm/douban/controller/SongTaskManager;->skip(Lfm/douban/model/SongTask;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 341
    :goto_0
    if-eqz v3, :cond_1

    .line 342
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 344
    :cond_1
    if-eqz v18, :cond_2

    .line 345
    :try_start_1
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V

    .line 346
    :cond_2
    if-eqz v10, :cond_3

    .line 347
    invoke-virtual {v10}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 353
    .end local v14           #code:I
    .end local v19           #length:J
    .end local v24           #url:Ljava/net/URL;
    :cond_3
    :goto_1
    return v21

    .line 302
    .restart local v14       #code:I
    .restart local v19       #length:J
    .restart local v24       #url:Ljava/net/URL;
    :cond_4
    :try_start_2
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v18

    .line 303
    move-object/from16 v0, p0

    iget-object v2, v0, Lfm/douban/controller/SongTaskManager;->store:Lfm/douban/model/SongStore;

    invoke-virtual {v2}, Lfm/douban/model/SongStore;->getTempFile()Ljava/io/File;

    move-result-object v17

    .line 304
    .local v17, file:Ljava/io/File;
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->delete()Z

    .line 305
    new-instance v11, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v4, 0x1

    move-object/from16 v0, v17

    invoke-direct {v2, v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v11, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 306
    .end local v10           #bos:Ljava/io/BufferedOutputStream;
    .local v11, bos:Ljava/io/BufferedOutputStream;
    const/16 v2, 0x400

    :try_start_3
    new-array v12, v2, [B

    .line 307
    .local v12, buffer:[B
    const/4 v13, 0x0

    .line 308
    .local v13, bytes:I
    const-wide/16 v22, 0x0

    .line 309
    .local v22, sum:J
    :goto_2
    const/4 v2, 0x0

    const/16 v4, 0x400

    move-object/from16 v0, v18

    invoke-virtual {v0, v12, v2, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v13

    if-lez v13, :cond_5

    .line 310
    const/4 v2, 0x0

    invoke-virtual {v11, v12, v2, v13}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 311
    int-to-long v4, v13

    add-long v22, v22, v4

    goto :goto_2

    .line 314
    :cond_5
    invoke-virtual {v11}, Ljava/io/BufferedOutputStream;->flush()V

    .line 315
    const-string v2, "SongTaskManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "download song_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v5, v0, Lfm/douban/model/SongTask;->song_id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", bytes="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v22

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; length="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v19

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; file length="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->length()J

    move-result-wide v25

    move-wide/from16 v0, v25

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v2, v4, v19

    if-eqz v2, :cond_8

    .line 320
    const-string v2, "SongTaskManager"

    const-string v4, "download:Exception:Length not matched!*****"

    invoke-static {v2, v4}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    new-instance v2, Ljava/lang/Exception;

    const-string v4, "length_not_matched"

    invoke-direct {v2, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 331
    .end local v12           #buffer:[B
    .end local v13           #bytes:I
    .end local v22           #sum:J
    :catch_0
    move-exception v15

    move-object v10, v11

    .line 332
    .end local v11           #bos:Ljava/io/BufferedOutputStream;
    .end local v14           #code:I
    .end local v17           #file:Ljava/io/File;
    .end local v19           #length:J
    .end local v24           #url:Ljava/net/URL;
    .restart local v10       #bos:Ljava/io/BufferedOutputStream;
    .local v15, e:Ljava/lang/Exception;
    :goto_3
    :try_start_4
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    .line 333
    const/16 v21, 0x0

    .line 334
    const-string v2, "length_not_matched"

    invoke-virtual {v15}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 336
    const-string v2, "SongTaskManager"

    const-string v4, "download length_not_matched exception catched"

    invoke-static {v2, v4}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 341
    :goto_4
    if-eqz v3, :cond_6

    .line 342
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 344
    :cond_6
    if-eqz v18, :cond_7

    .line 345
    :try_start_5
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V

    .line 346
    :cond_7
    if-eqz v10, :cond_3

    .line 347
    invoke-virtual {v10}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_1

    .line 349
    :catch_1
    move-exception v16

    .line 350
    .local v16, e1:Ljava/io/IOException;
    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 324
    .end local v10           #bos:Ljava/io/BufferedOutputStream;
    .end local v15           #e:Ljava/lang/Exception;
    .end local v16           #e1:Ljava/io/IOException;
    .restart local v11       #bos:Ljava/io/BufferedOutputStream;
    .restart local v12       #buffer:[B
    .restart local v13       #bytes:I
    .restart local v14       #code:I
    .restart local v17       #file:Ljava/io/File;
    .restart local v19       #length:J
    .restart local v22       #sum:J
    .restart local v24       #url:Ljava/net/URL;
    :cond_8
    :try_start_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lfm/douban/controller/SongTaskManager;->store:Lfm/douban/model/SongStore;

    move-wide/from16 v0, v19

    invoke-virtual {v2, v0, v1}, Lfm/douban/model/SongStore;->getStart(J)J

    move-result-wide v6

    .line 326
    .local v6, start:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lfm/douban/controller/SongTaskManager;->store:Lfm/douban/model/SongStore;

    move-object/from16 v0, v17

    invoke-virtual {v2, v6, v7, v0}, Lfm/douban/model/SongStore;->write(JLjava/io/File;)J

    move-result-wide v8

    .local v8, end:J
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    .line 328
    invoke-direct/range {v4 .. v9}, Lfm/douban/controller/SongTaskManager;->finish(Lfm/douban/model/SongTask;JJ)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    move-object v10, v11

    .end local v11           #bos:Ljava/io/BufferedOutputStream;
    .restart local v10       #bos:Ljava/io/BufferedOutputStream;
    goto/16 :goto_0

    .line 349
    .end local v6           #start:J
    .end local v8           #end:J
    .end local v12           #buffer:[B
    .end local v13           #bytes:I
    .end local v17           #file:Ljava/io/File;
    .end local v22           #sum:J
    :catch_2
    move-exception v16

    .line 350
    .restart local v16       #e1:Ljava/io/IOException;
    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 338
    .end local v14           #code:I
    .end local v16           #e1:Ljava/io/IOException;
    .end local v19           #length:J
    .end local v24           #url:Ljava/net/URL;
    .restart local v15       #e:Ljava/lang/Exception;
    :cond_9
    :try_start_7
    invoke-virtual/range {p0 .. p0}, Lfm/douban/controller/SongTaskManager;->stop()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_4

    .line 341
    .end local v15           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    :goto_5
    if-eqz v3, :cond_a

    .line 342
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 344
    :cond_a
    if-eqz v18, :cond_b

    .line 345
    :try_start_8
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V

    .line 346
    :cond_b
    if-eqz v10, :cond_c

    .line 347
    invoke-virtual {v10}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 351
    :cond_c
    :goto_6
    throw v2

    .line 349
    :catch_3
    move-exception v16

    .line 350
    .restart local v16       #e1:Ljava/io/IOException;
    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 341
    .end local v10           #bos:Ljava/io/BufferedOutputStream;
    .end local v16           #e1:Ljava/io/IOException;
    .restart local v11       #bos:Ljava/io/BufferedOutputStream;
    .restart local v14       #code:I
    .restart local v17       #file:Ljava/io/File;
    .restart local v19       #length:J
    .restart local v24       #url:Ljava/net/URL;
    :catchall_1
    move-exception v2

    move-object v10, v11

    .end local v11           #bos:Ljava/io/BufferedOutputStream;
    .restart local v10       #bos:Ljava/io/BufferedOutputStream;
    goto :goto_5

    .line 331
    .end local v14           #code:I
    .end local v17           #file:Ljava/io/File;
    .end local v19           #length:J
    .end local v24           #url:Ljava/net/URL;
    :catch_4
    move-exception v15

    goto :goto_3
.end method

.method private finish(Lfm/douban/model/SongTask;JJ)V
    .locals 10
    .parameter "task"
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 366
    const-string v5, "SongTaskManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "finish task song_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lfm/douban/model/SongTask;->song_id:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", start="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", end="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iget-object v5, p0, Lfm/douban/controller/SongTaskManager;->db:Lfm/douban/model/RadioDB;

    invoke-virtual {v5, v8}, Lfm/douban/model/RadioDB;->getDB(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 368
    .local v2, d:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x0

    .line 370
    .local v1, c:Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 372
    .local v0, args:[Ljava/lang/Object;
    :try_start_0
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 374
    const/4 v5, 0x1

    new-array v4, v5, [Ljava/lang/String;

    .line 375
    .local v4, select:[Ljava/lang/String;
    const/4 v5, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 376
    const-string v5, "select song_id from finished_task where start_pos=?"

    invoke-virtual {v2, v5, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 377
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-ne v5, v9, :cond_0

    .line 378
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 379
    const/4 v5, 0x1

    new-array v0, v5, [Ljava/lang/Object;

    .line 380
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v5

    .line 381
    const-string v5, "delete from finished_task where song_id=?"

    invoke-virtual {v2, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 382
    const-string v5, "delete from download_task where song_id=?"

    invoke-virtual {v2, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 385
    :cond_0
    const/4 v5, 0x3

    new-array v0, v5, [Ljava/lang/Object;

    .line 386
    const/4 v5, 0x0

    iget-object v6, p1, Lfm/douban/model/SongTask;->song_id:Ljava/lang/String;

    aput-object v6, v0, v5

    .line 387
    const/4 v5, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v0, v5

    .line 388
    const/4 v5, 0x2

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v0, v5

    .line 389
    const-string v5, "replace into finished_task(song_id, start_pos, end_pos, rtime) values(?, ?, ?, datetime(\'now\',\'localtime\'))"

    invoke-virtual {v2, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 392
    const/4 v5, 0x2

    new-array v0, v5, [Ljava/lang/Object;

    .line 393
    const/4 v5, 0x0

    const-string v6, "1"

    aput-object v6, v0, v5

    .line 394
    const/4 v5, 0x1

    iget-object v6, p1, Lfm/douban/model/SongTask;->song_id:Ljava/lang/String;

    aput-object v6, v0, v5

    .line 395
    const-string v5, "update download_task set is_finish=? where song_id = ?"

    invoke-virtual {v2, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 397
    const/4 v5, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v0, v5

    .line 398
    const/4 v5, 0x1

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v0, v5

    .line 400
    const-string v5, "delete from download_task where song_id in (select s.song_id from finished_task as s where s.start_pos > ? and s.start_pos < ?)"

    invoke-virtual {v2, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 402
    const-string v5, "delete from finished_task where start_pos > ? and start_pos < ?"

    invoke-virtual {v2, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 404
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 408
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_1

    .line 409
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 411
    :cond_1
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 413
    .end local v4           #select:[Ljava/lang/String;
    :goto_0
    return-void

    .line 405
    :catch_0
    move-exception v3

    .line 406
    .local v3, e:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 408
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_2

    .line 409
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 411
    :cond_2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .line 408
    .end local v3           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v5

    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_3

    .line 409
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 411
    :cond_3
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5
.end method

.method private getNextTask()Lfm/douban/model/SongTask;
    .locals 12

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 257
    const/4 v5, 0x0

    .line 258
    .local v5, task:Lfm/douban/model/SongTask;
    new-array v0, v8, [Ljava/lang/String;

    .line 259
    .local v0, args:[Ljava/lang/String;
    const-string v8, "0"

    aput-object v8, v0, v9

    .line 260
    const-string v4, "select song_id, url, picture from download_task where is_finish = ? order by ROWID limit 1"

    .line 262
    .local v4, sql:Ljava/lang/String;
    iget-object v8, p0, Lfm/douban/controller/SongTaskManager;->db:Lfm/douban/model/RadioDB;

    invoke-virtual {v8}, Lfm/douban/model/RadioDB;->getDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 263
    .local v2, d:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x0

    .line 265
    .local v1, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {v2, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 266
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 267
    .local v7, total:I
    if-lez v7, :cond_0

    .line 268
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 269
    new-instance v6, Lfm/douban/model/SongTask;

    const/4 v8, 0x0

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "0"

    invoke-direct {v6, v8, v9, v10, v11}, Lfm/douban/model/SongTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v5           #task:Lfm/douban/model/SongTask;
    .local v6, task:Lfm/douban/model/SongTask;
    move-object v5, v6

    .line 275
    .end local v6           #task:Lfm/douban/model/SongTask;
    .restart local v5       #task:Lfm/douban/model/SongTask;
    :cond_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v8

    if-nez v8, :cond_1

    .line 276
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 279
    .end local v7           #total:I
    :cond_1
    :goto_0
    return-object v5

    .line 272
    :catch_0
    move-exception v3

    .line 273
    .local v3, e:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 275
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v8

    if-nez v8, :cond_1

    .line 276
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 275
    .end local v3           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v8

    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v9

    if-nez v9, :cond_2

    .line 276
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v8
.end method

.method private needSync()Z
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 428
    const/4 v5, 0x0

    .line 429
    .local v5, ret:Z
    const/4 v0, 0x0

    .line 430
    .local v0, all:I
    const/4 v4, 0x0

    .line 431
    .local v4, played:I
    iget-object v8, p0, Lfm/douban/controller/SongTaskManager;->db:Lfm/douban/model/RadioDB;

    invoke-virtual {v8}, Lfm/douban/model/RadioDB;->getDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 432
    .local v2, d:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x0

    .line 434
    .local v1, cursor:Landroid/database/Cursor;
    :try_start_0
    const-string v8, "select count(1) from finished_task"

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 435
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 436
    const/4 v8, 0x0

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 439
    const-string v8, "select count(1) from finished_task where played = 1"

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 440
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 441
    const/4 v8, 0x0

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 445
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v8

    if-nez v8, :cond_0

    .line 446
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 448
    :cond_0
    const-string v8, "SongTaskManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "all = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " played = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    :goto_0
    if-le v0, v7, :cond_1

    mul-int/lit8 v8, v4, 0x3

    mul-int/lit8 v9, v0, 0x2

    if-le v8, v9, :cond_4

    :cond_1
    move v5, v7

    .line 452
    :goto_1
    return v5

    .line 442
    :catch_0
    move-exception v3

    .line 443
    .local v3, e:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 445
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v8

    if-nez v8, :cond_2

    .line 446
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 448
    :cond_2
    const-string v8, "SongTaskManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "all = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " played = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 445
    .end local v3           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v6

    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_3

    .line 446
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 448
    :cond_3
    const-string v7, "SongTaskManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "all = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " played = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw v6

    :cond_4
    move v5, v6

    .line 451
    goto :goto_1
.end method

.method private setConnection(Ljava/net/HttpURLConnection;JJ)V
    .locals 3
    .parameter "conn"
    .parameter "start"
    .parameter "end"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v1, 0x0

    .line 357
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setAllowUserInteraction(Z)V

    .line 358
    const/16 v0, 0x1f40

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 359
    const/16 v0, 0x2710

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 360
    cmp-long v0, p2, v1

    if-gtz v0, :cond_0

    cmp-long v0, p4, v1

    if-lez v0, :cond_1

    .line 361
    :cond_0
    const-string v0, "Range"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bytes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    :cond_1
    return-void
.end method

.method private skip(Lfm/douban/model/SongTask;)V
    .locals 5
    .parameter "task"

    .prologue
    const/4 v4, 0x0

    .line 416
    iget-object v3, p0, Lfm/douban/controller/SongTaskManager;->db:Lfm/douban/model/RadioDB;

    invoke-virtual {v3, v4}, Lfm/douban/model/RadioDB;->getDB(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 418
    .local v1, d:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v3, 0x2

    :try_start_0
    new-array v0, v3, [Ljava/lang/Object;

    .line 419
    .local v0, args:[Ljava/lang/Object;
    const/4 v3, 0x0

    const-string v4, "2"

    aput-object v4, v0, v3

    .line 420
    const/4 v3, 0x1

    iget-object v4, p1, Lfm/douban/model/SongTask;->song_id:Ljava/lang/String;

    aput-object v4, v0, v3

    .line 421
    const-string v3, "update download_task set is_finish=? where song_id = ?"

    invoke-virtual {v1, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 425
    .end local v0           #args:[Ljava/lang/Object;
    :goto_0
    return-void

    .line 422
    :catch_0
    move-exception v2

    .line 423
    .local v2, e:Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    goto :goto_0
.end method

.method private updateState(ZZLjava/lang/String;)V
    .locals 4
    .parameter "listing"
    .parameter "syncing"
    .parameter "song_id"

    .prologue
    .line 464
    new-instance v1, Lfm/douban/model/SongTaskState;

    invoke-direct {v1, p1, p2, p3}, Lfm/douban/model/SongTaskState;-><init>(ZZLjava/lang/String;)V

    .line 465
    .local v1, state:Lfm/douban/model/SongTaskState;
    iget-object v2, p0, Lfm/douban/controller/SongTaskManager;->rm:Lfm/douban/controller/RadioManager;

    invoke-virtual {v2}, Lfm/douban/controller/RadioManager;->getSharedPreferences()Lfm/douban/model/FMSharedPreferences;

    move-result-object v2

    const-string v3, "is_sync"

    invoke-virtual {v2, v3, p2}, Lfm/douban/model/FMSharedPreferences;->putBoolean(Ljava/lang/String;Z)Z

    .line 466
    new-instance v0, Landroid/content/Intent;

    sget-object v2, Lfm/douban/Consts;->INTENT_TASK_STATE:Ljava/lang/String;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 467
    .local v0, it:Landroid/content/Intent;
    const-string v2, "state"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 468
    iget-object v2, p0, Lfm/douban/controller/SongTaskManager;->context:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 469
    return-void
.end method


# virtual methods
.method public cleanup()Z
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lfm/douban/controller/SongTaskManager;->store:Lfm/douban/model/SongStore;

    invoke-virtual {v0}, Lfm/douban/model/SongStore;->cleanStore()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized start()V
    .locals 4

    .prologue
    .line 232
    monitor-enter p0

    :try_start_0
    const-string v0, "SongTaskManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start syning="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lfm/douban/controller/SongTaskManager;->syncing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    invoke-direct {p0}, Lfm/douban/controller/SongTaskManager;->canStart()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lfm/douban/controller/SongTaskManager;->syncing:Z

    if-nez v0, :cond_0

    .line 234
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfm/douban/controller/SongTaskManager;->syncing:Z

    .line 235
    const-string v0, "SongTaskManager"

    const-string v1, "send SYNC START MSG"

    invoke-static {v0, v1}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v0, p0, Lfm/douban/controller/SongTaskManager;->rm:Lfm/douban/controller/RadioManager;

    invoke-virtual {v0}, Lfm/douban/controller/RadioManager;->getSharedPreferences()Lfm/douban/model/FMSharedPreferences;

    move-result-object v0

    const-string v1, "is_sync"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lfm/douban/model/FMSharedPreferences;->putBoolean(Ljava/lang/String;Z)Z

    .line 237
    iget-object v0, p0, Lfm/douban/controller/SongTaskManager;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lfm/douban/controller/SongTaskManager;->handler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    :cond_0
    monitor-exit p0

    return-void

    .line 232
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 3

    .prologue
    .line 243
    monitor-enter p0

    :try_start_0
    const-string v0, "SongTaskManager"

    const-string v1, "stop"

    invoke-static {v0, v1}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-object v0, p0, Lfm/douban/controller/SongTaskManager;->api:Lfm/douban/api/Api;

    iget-object v1, p0, Lfm/douban/controller/SongTaskManager;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lfm/douban/api/Api;->stop(Landroid/content/Context;)V

    .line 245
    iget-object v0, p0, Lfm/douban/controller/SongTaskManager;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lfm/douban/controller/SongTaskManager;->handler:Landroid/os/Handler;

    const/16 v2, 0x67

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    monitor-exit p0

    return-void

    .line 243
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
