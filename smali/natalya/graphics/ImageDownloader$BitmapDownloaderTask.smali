.class Lnatalya/graphics/ImageDownloader$BitmapDownloaderTask;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnatalya/graphics/ImageDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BitmapDownloaderTask"
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

.field private final refer:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private resId:I

.field final synthetic this$0:Lnatalya/graphics/ImageDownloader;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lnatalya/graphics/ImageDownloader;Landroid/widget/ImageView;I)V
    .locals 1

    iput-object p1, p0, Lnatalya/graphics/ImageDownloader$BitmapDownloaderTask;->this$0:Lnatalya/graphics/ImageDownloader;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    if-eqz p2, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lnatalya/graphics/ImageDownloader$BitmapDownloaderTask;->refer:Ljava/lang/ref/WeakReference;

    :goto_0
    iput p3, p0, Lnatalya/graphics/ImageDownloader$BitmapDownloaderTask;->resId:I

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lnatalya/graphics/ImageDownloader$BitmapDownloaderTask;->refer:Ljava/lang/ref/WeakReference;

    goto :goto_0
.end method

.method static synthetic access$000(Lnatalya/graphics/ImageDownloader$BitmapDownloaderTask;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnatalya/graphics/ImageDownloader$BitmapDownloaderTask;->url:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lnatalya/graphics/ImageDownloader$BitmapDownloaderTask;->url:Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lnatalya/graphics/ImageDownloader$BitmapDownloaderTask;->cate:I

    iget-object v0, p0, Lnatalya/graphics/ImageDownloader$BitmapDownloaderTask;->this$0:Lnatalya/graphics/ImageDownloader;

    #getter for: Lnatalya/graphics/ImageDownloader;->client:Lnatalya/net/AndroidHttpClient;
    invoke-static {v0}, Lnatalya/graphics/ImageDownloader;->access$100(Lnatalya/graphics/ImageDownloader;)Lnatalya/net/AndroidHttpClient;

    move-result-object v0

    iget-object v2, p0, Lnatalya/graphics/ImageDownloader$BitmapDownloaderTask;->url:Ljava/lang/String;

    iget-object v3, p0, Lnatalya/graphics/ImageDownloader$BitmapDownloaderTask;->this$0:Lnatalya/graphics/ImageDownloader;

    #getter for: Lnatalya/graphics/ImageDownloader;->manager:Lnatalya/graphics/ImageManager;
    invoke-static {v3}, Lnatalya/graphics/ImageDownloader;->access$200(Lnatalya/graphics/ImageDownloader;)Lnatalya/graphics/ImageManager;

    sget v3, Lnatalya/graphics/ImageManager;->MAX_WIDTH:I

    invoke-static {v0, v2, v3}, Lnatalya/graphics/Image;->downloadBitmap(Lnatalya/net/AndroidHttpClient;Ljava/lang/String;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v1, p0, Lnatalya/graphics/ImageDownloader$BitmapDownloaderTask;->this$0:Lnatalya/graphics/ImageDownloader;

    #getter for: Lnatalya/graphics/ImageDownloader;->manager:Lnatalya/graphics/ImageManager;
    invoke-static {v1}, Lnatalya/graphics/ImageDownloader;->access$200(Lnatalya/graphics/ImageDownloader;)Lnatalya/graphics/ImageManager;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnatalya/graphics/ImageDownloader$BitmapDownloaderTask;->this$0:Lnatalya/graphics/ImageDownloader;

    #getter for: Lnatalya/graphics/ImageDownloader;->manager:Lnatalya/graphics/ImageManager;
    invoke-static {v1}, Lnatalya/graphics/ImageDownloader;->access$200(Lnatalya/graphics/ImageDownloader;)Lnatalya/graphics/ImageManager;

    move-result-object v1

    iget-object v2, p0, Lnatalya/graphics/ImageDownloader$BitmapDownloaderTask;->url:Ljava/lang/String;

    iget v3, p0, Lnatalya/graphics/ImageDownloader$BitmapDownloaderTask;->cate:I

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

    invoke-virtual {p0, p1}, Lnatalya/graphics/ImageDownloader$BitmapDownloaderTask;->doInBackground([Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 4

    invoke-virtual {p0}, Lnatalya/graphics/ImageDownloader$BitmapDownloaderTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    iget v0, p0, Lnatalya/graphics/ImageDownloader$BitmapDownloaderTask;->cate:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lnatalya/graphics/ImageDownloader$BitmapDownloaderTask;->this$0:Lnatalya/graphics/ImageDownloader;

    iget-object v1, p0, Lnatalya/graphics/ImageDownloader$BitmapDownloaderTask;->url:Ljava/lang/String;

    #calls: Lnatalya/graphics/ImageDownloader;->addBitmapToCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    invoke-static {v0, v1, p1}, Lnatalya/graphics/ImageDownloader;->access$300(Lnatalya/graphics/ImageDownloader;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_1
    iget-object v0, p0, Lnatalya/graphics/ImageDownloader$BitmapDownloaderTask;->refer:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnatalya/graphics/ImageDownloader$BitmapDownloaderTask;->refer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    #calls: Lnatalya/graphics/ImageDownloader;->getBitmapDownloaderTask(Landroid/widget/ImageView;)Lnatalya/graphics/ImageDownloader$BitmapDownloaderTask;
    invoke-static {v0}, Lnatalya/graphics/ImageDownloader;->access$400(Landroid/widget/ImageView;)Lnatalya/graphics/ImageDownloader$BitmapDownloaderTask;

    move-result-object v1

    if-eqz v0, :cond_2

    if-ne p0, v1, :cond_2

    iget-object v1, p0, Lnatalya/graphics/ImageDownloader$BitmapDownloaderTask;->this$0:Lnatalya/graphics/ImageDownloader;

    iget-object v2, p0, Lnatalya/graphics/ImageDownloader$BitmapDownloaderTask;->url:Ljava/lang/String;

    iget v3, p0, Lnatalya/graphics/ImageDownloader$BitmapDownloaderTask;->resId:I

    #calls: Lnatalya/graphics/ImageDownloader;->setImage(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/Bitmap;I)V
    invoke-static {v1, v0, v2, p1, v3}, Lnatalya/graphics/ImageDownloader;->access$500(Lnatalya/graphics/ImageDownloader;Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    :cond_2
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lnatalya/graphics/ImageDownloader$BitmapDownloaderTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
