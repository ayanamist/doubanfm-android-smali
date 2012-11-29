.class Lnatalya/graphics/ImageDownloader$BitmapDownloaderOnlyTask;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnatalya/graphics/ImageDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BitmapDownloaderOnlyTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private cate:I

.field private final refer:Lnatalya/graphics/ImageDownloader$OnlyDownload;

.field final synthetic this$0:Lnatalya/graphics/ImageDownloader;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lnatalya/graphics/ImageDownloader;Lnatalya/graphics/ImageDownloader$OnlyDownload;)V
    .locals 0

    iput-object p1, p0, Lnatalya/graphics/ImageDownloader$BitmapDownloaderOnlyTask;->this$0:Lnatalya/graphics/ImageDownloader;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lnatalya/graphics/ImageDownloader$BitmapDownloaderOnlyTask;->refer:Lnatalya/graphics/ImageDownloader$OnlyDownload;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lnatalya/graphics/ImageDownloader$BitmapDownloaderOnlyTask;->url:Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lnatalya/graphics/ImageDownloader$BitmapDownloaderOnlyTask;->cate:I

    iget-object v0, p0, Lnatalya/graphics/ImageDownloader$BitmapDownloaderOnlyTask;->this$0:Lnatalya/graphics/ImageDownloader;

    #getter for: Lnatalya/graphics/ImageDownloader;->client:Lnatalya/net/AndroidHttpClient;
    invoke-static {v0}, Lnatalya/graphics/ImageDownloader;->access$100(Lnatalya/graphics/ImageDownloader;)Lnatalya/net/AndroidHttpClient;

    move-result-object v0

    iget-object v2, p0, Lnatalya/graphics/ImageDownloader$BitmapDownloaderOnlyTask;->url:Ljava/lang/String;

    iget-object v3, p0, Lnatalya/graphics/ImageDownloader$BitmapDownloaderOnlyTask;->this$0:Lnatalya/graphics/ImageDownloader;

    #getter for: Lnatalya/graphics/ImageDownloader;->manager:Lnatalya/graphics/ImageManager;
    invoke-static {v3}, Lnatalya/graphics/ImageDownloader;->access$200(Lnatalya/graphics/ImageDownloader;)Lnatalya/graphics/ImageManager;

    sget v3, Lnatalya/graphics/ImageManager;->MAX_WIDTH:I

    invoke-static {v0, v2, v3}, Lnatalya/graphics/Image;->downloadBitmap(Lnatalya/net/AndroidHttpClient;Ljava/lang/String;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v1, p0, Lnatalya/graphics/ImageDownloader$BitmapDownloaderOnlyTask;->this$0:Lnatalya/graphics/ImageDownloader;

    #getter for: Lnatalya/graphics/ImageDownloader;->manager:Lnatalya/graphics/ImageManager;
    invoke-static {v1}, Lnatalya/graphics/ImageDownloader;->access$200(Lnatalya/graphics/ImageDownloader;)Lnatalya/graphics/ImageManager;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnatalya/graphics/ImageDownloader$BitmapDownloaderOnlyTask;->this$0:Lnatalya/graphics/ImageDownloader;

    #getter for: Lnatalya/graphics/ImageDownloader;->manager:Lnatalya/graphics/ImageManager;
    invoke-static {v1}, Lnatalya/graphics/ImageDownloader;->access$200(Lnatalya/graphics/ImageDownloader;)Lnatalya/graphics/ImageManager;

    move-result-object v1

    iget-object v2, p0, Lnatalya/graphics/ImageDownloader$BitmapDownloaderOnlyTask;->url:Ljava/lang/String;

    iget v3, p0, Lnatalya/graphics/ImageDownloader$BitmapDownloaderOnlyTask;->cate:I

    invoke-virtual {v1, v0, v2, v3}, Lnatalya/graphics/ImageManager;->saveImage(Landroid/graphics/Bitmap;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lnatalya/graphics/ImageDownloader$BitmapDownloaderOnlyTask;->doInBackground([Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 2

    invoke-virtual {p0}, Lnatalya/graphics/ImageDownloader$BitmapDownloaderOnlyTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "ImageDownloader"

    const-string v1, "bitmap downloaded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lnatalya/graphics/ImageDownloader$BitmapDownloaderOnlyTask;->refer:Lnatalya/graphics/ImageDownloader$OnlyDownload;

    if-eqz v0, :cond_1

    const-string v0, "ImageDownloader"

    const-string v1, "refer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lnatalya/graphics/ImageDownloader$BitmapDownloaderOnlyTask;->refer:Lnatalya/graphics/ImageDownloader$OnlyDownload;

    iget-object v1, p0, Lnatalya/graphics/ImageDownloader$BitmapDownloaderOnlyTask;->url:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lnatalya/graphics/ImageDownloader$OnlyDownload;->onDownload(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lnatalya/graphics/ImageDownloader$BitmapDownloaderOnlyTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
