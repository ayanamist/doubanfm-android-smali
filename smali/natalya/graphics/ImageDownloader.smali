.class public Lnatalya/graphics/ImageDownloader;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnatalya/graphics/ImageDownloader$PrepareAsync;,
        Lnatalya/graphics/ImageDownloader$BitmapDownloaderOnlyTask;,
        Lnatalya/graphics/ImageDownloader$BitmapDownloaderTask;,
        Lnatalya/graphics/ImageDownloader$OnPrepare;,
        Lnatalya/graphics/ImageDownloader$OnDownload;,
        Lnatalya/graphics/ImageDownloader$OnlyDownload;
    }
.end annotation


# static fields
.field private static final DELAY_BEFORE_PURGE:I = 0x2710

.field private static final HARD_CACHE_CAPACITY:I = 0x10

.field private static final TAG:Ljava/lang/String; = "ImageDownloader"

.field public static TAG_KEY:I

.field private static TAG_TASK_KEY:I

.field private static final sSoftBitmapCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final client:Lnatalya/net/AndroidHttpClient;

.field private final manager:Lnatalya/graphics/ImageManager;

.field private final purgeHandler:Landroid/os/Handler;

.field private final purger:Ljava/lang/Runnable;

.field private final sHardBitmapCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lnatalya/graphics/ImageDownloader;->TAG_KEY:I

    sput v0, Lnatalya/graphics/ImageDownloader;->TAG_TASK_KEY:I

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lnatalya/graphics/ImageDownloader;->sSoftBitmapCache:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>(Lnatalya/graphics/ImageManager;Lnatalya/net/AndroidHttpClient;II)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lnatalya/graphics/ImageDownloader$1;

    const/16 v1, 0x8

    const/high16 v2, 0x3f40

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lnatalya/graphics/ImageDownloader$1;-><init>(Lnatalya/graphics/ImageDownloader;IFZ)V

    iput-object v0, p0, Lnatalya/graphics/ImageDownloader;->sHardBitmapCache:Ljava/util/HashMap;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lnatalya/graphics/ImageDownloader;->purgeHandler:Landroid/os/Handler;

    new-instance v0, Lnatalya/graphics/ImageDownloader$2;

    invoke-direct {v0, p0}, Lnatalya/graphics/ImageDownloader$2;-><init>(Lnatalya/graphics/ImageDownloader;)V

    iput-object v0, p0, Lnatalya/graphics/ImageDownloader;->purger:Ljava/lang/Runnable;

    iput-object p1, p0, Lnatalya/graphics/ImageDownloader;->manager:Lnatalya/graphics/ImageManager;

    iput-object p2, p0, Lnatalya/graphics/ImageDownloader;->client:Lnatalya/net/AndroidHttpClient;

    invoke-static {p3, p4}, Lnatalya/graphics/ImageDownloader;->setTagKey(II)V

    return-void
.end method

.method static synthetic access$100(Lnatalya/graphics/ImageDownloader;)Lnatalya/net/AndroidHttpClient;
    .locals 1

    iget-object v0, p0, Lnatalya/graphics/ImageDownloader;->client:Lnatalya/net/AndroidHttpClient;

    return-object v0
.end method

.method static synthetic access$200(Lnatalya/graphics/ImageDownloader;)Lnatalya/graphics/ImageManager;
    .locals 1

    iget-object v0, p0, Lnatalya/graphics/ImageDownloader;->manager:Lnatalya/graphics/ImageManager;

    return-object v0
.end method

.method static synthetic access$300(Lnatalya/graphics/ImageDownloader;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnatalya/graphics/ImageDownloader;->addBitmapToCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$400(Landroid/widget/ImageView;)Lnatalya/graphics/ImageDownloader$BitmapDownloaderTask;
    .locals 1

    invoke-static {p0}, Lnatalya/graphics/ImageDownloader;->getBitmapDownloaderTask(Landroid/widget/ImageView;)Lnatalya/graphics/ImageDownloader$BitmapDownloaderTask;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lnatalya/graphics/ImageDownloader;Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/Bitmap;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lnatalya/graphics/ImageDownloader;->setImage(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method static synthetic access$600()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    sget-object v0, Lnatalya/graphics/ImageDownloader;->sSoftBitmapCache:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method private addBitmapToCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    if-eqz p2, :cond_0

    iget-object v1, p0, Lnatalya/graphics/ImageDownloader;->sHardBitmapCache:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lnatalya/graphics/ImageDownloader;->sHardBitmapCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static cancelPotentialDownload(Ljava/lang/String;Landroid/widget/ImageView;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-static {p1}, Lnatalya/graphics/ImageDownloader;->getBitmapDownloaderTask(Landroid/widget/ImageView;)Lnatalya/graphics/ImageDownloader$BitmapDownloaderTask;

    move-result-object v1

    if-eqz v1, :cond_1

    #getter for: Lnatalya/graphics/ImageDownloader$BitmapDownloaderTask;->url:Ljava/lang/String;
    invoke-static {v1}, Lnatalya/graphics/ImageDownloader$BitmapDownloaderTask;->access$000(Lnatalya/graphics/ImageDownloader$BitmapDownloaderTask;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    invoke-virtual {v1, v0}, Lnatalya/graphics/ImageDownloader$BitmapDownloaderTask;->cancel(Z)Z

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private forceDownload(Ljava/lang/String;ILandroid/widget/ImageView;I)V
    .locals 4

    if-nez p1, :cond_1

    if-eqz p3, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1, p3}, Lnatalya/graphics/ImageDownloader;->cancelPotentialDownload(Ljava/lang/String;Landroid/widget/ImageView;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lnatalya/graphics/ImageDownloader$BitmapDownloaderTask;

    invoke-direct {v0, p0, p3, p4}, Lnatalya/graphics/ImageDownloader$BitmapDownloaderTask;-><init>(Lnatalya/graphics/ImageDownloader;Landroid/widget/ImageView;I)V

    sget v1, Lnatalya/graphics/ImageDownloader;->TAG_TASK_KEY:I

    invoke-virtual {p3, v1, v0}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lnatalya/graphics/ImageDownloader$BitmapDownloaderTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private static getBitmapDownloaderTask(Landroid/widget/ImageView;)Lnatalya/graphics/ImageDownloader$BitmapDownloaderTask;
    .locals 2

    if-eqz p0, :cond_0

    sget v0, Lnatalya/graphics/ImageDownloader;->TAG_TASK_KEY:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lnatalya/graphics/ImageDownloader$BitmapDownloaderTask;

    if-eqz v1, :cond_0

    check-cast v0, Lnatalya/graphics/ImageDownloader$BitmapDownloaderTask;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getBitmapFromCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    iget-object v1, p0, Lnatalya/graphics/ImageDownloader;->sHardBitmapCache:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lnatalya/graphics/ImageDownloader;->sHardBitmapCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lnatalya/graphics/ImageDownloader;->sHardBitmapCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lnatalya/graphics/ImageDownloader;->sHardBitmapCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lnatalya/graphics/ImageDownloader;->sSoftBitmapCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    sget-object v0, Lnatalya/graphics/ImageDownloader;->sSoftBitmapCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private resetPurgeTimer()V
    .locals 4

    iget-object v0, p0, Lnatalya/graphics/ImageDownloader;->purgeHandler:Landroid/os/Handler;

    iget-object v1, p0, Lnatalya/graphics/ImageDownloader;->purger:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lnatalya/graphics/ImageDownloader;->purgeHandler:Landroid/os/Handler;

    iget-object v1, p0, Lnatalya/graphics/ImageDownloader;->purger:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private setImage(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/Bitmap;I)V
    .locals 4

    if-eqz p3, :cond_2

    sget v0, Lnatalya/graphics/ImageDownloader;->TAG_KEY:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lnatalya/graphics/ImageDownloader$OnPrepare;

    if-eqz v1, :cond_1

    new-instance v1, Lnatalya/graphics/ImageDownloader$PrepareAsync;

    invoke-direct {v1, p0, p1}, Lnatalya/graphics/ImageDownloader$PrepareAsync;-><init>(Lnatalya/graphics/ImageDownloader;Landroid/widget/ImageView;)V

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object p2, v2, v0

    const/4 v0, 0x2

    aput-object p3, v2, v0

    invoke-virtual {v1, v2}, Lnatalya/graphics/ImageDownloader$PrepareAsync;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    if-eqz v0, :cond_0

    instance-of v1, v0, Lnatalya/graphics/ImageDownloader$OnDownload;

    if-eqz v1, :cond_0

    check-cast v0, Lnatalya/graphics/ImageDownloader$OnDownload;

    invoke-interface {v0, p2, p1}, Lnatalya/graphics/ImageDownloader$OnDownload;->onDownload(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_0

    :cond_2
    if-lez p4, :cond_0

    invoke-virtual {p1, p4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public static setTagKey(II)V
    .locals 0

    sput p0, Lnatalya/graphics/ImageDownloader;->TAG_KEY:I

    sput p1, Lnatalya/graphics/ImageDownloader;->TAG_TASK_KEY:I

    return-void
.end method


# virtual methods
.method public clearCache()V
    .locals 1

    iget-object v0, p0, Lnatalya/graphics/ImageDownloader;->sHardBitmapCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    sget-object v0, Lnatalya/graphics/ImageDownloader;->sSoftBitmapCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method public download(Ljava/lang/String;ILandroid/widget/ImageView;)V
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lnatalya/graphics/ImageDownloader;->download(Ljava/lang/String;ILandroid/widget/ImageView;ZI)V

    return-void
.end method

.method public download(Ljava/lang/String;ILandroid/widget/ImageView;ZI)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Lnatalya/graphics/ImageDownloader;->getLocalImage(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_2

    if-eqz p4, :cond_1

    invoke-direct {p0, p1, p2, p3, p5}, Lnatalya/graphics/ImageDownloader;->forceDownload(Ljava/lang/String;ILandroid/widget/ImageView;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-lez p5, :cond_0

    invoke-virtual {p3, p5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    invoke-static {p1, p3}, Lnatalya/graphics/ImageDownloader;->cancelPotentialDownload(Ljava/lang/String;Landroid/widget/ImageView;)Z

    invoke-direct {p0, p3, p1, v0, p5}, Lnatalya/graphics/ImageDownloader;->setImage(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    goto :goto_0
.end method

.method public download(Ljava/lang/String;ILnatalya/graphics/ImageDownloader$OnlyDownload;)V
    .locals 4

    invoke-virtual {p0, p1, p2}, Lnatalya/graphics/ImageDownloader;->getLocalImage(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lnatalya/graphics/ImageDownloader$BitmapDownloaderOnlyTask;

    invoke-direct {v0, p0, p3}, Lnatalya/graphics/ImageDownloader$BitmapDownloaderOnlyTask;-><init>(Lnatalya/graphics/ImageDownloader;Lnatalya/graphics/ImageDownloader$OnlyDownload;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lnatalya/graphics/ImageDownloader$BitmapDownloaderOnlyTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void

    :cond_0
    invoke-interface {p3, p1, v0}, Lnatalya/graphics/ImageDownloader$OnlyDownload;->onDownload(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public getLocalImage(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 2

    invoke-direct {p0}, Lnatalya/graphics/ImageDownloader;->resetPurgeTimer()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    invoke-direct {p0, p1}, Lnatalya/graphics/ImageDownloader;->getBitmapFromCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    :cond_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lnatalya/graphics/ImageDownloader;->manager:Lnatalya/graphics/ImageManager;

    invoke-virtual {v0, p1, p2}, Lnatalya/graphics/ImageManager;->getImage(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_1
    return-object v0
.end method
