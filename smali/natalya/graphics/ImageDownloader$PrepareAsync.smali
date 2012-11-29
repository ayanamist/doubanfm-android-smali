.class Lnatalya/graphics/ImageDownloader$PrepareAsync;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnatalya/graphics/ImageDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PrepareAsync"
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

.field final synthetic this$0:Lnatalya/graphics/ImageDownloader;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lnatalya/graphics/ImageDownloader;Landroid/widget/ImageView;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lnatalya/graphics/ImageDownloader$PrepareAsync;->this$0:Lnatalya/graphics/ImageDownloader;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    if-eqz p2, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lnatalya/graphics/ImageDownloader$PrepareAsync;->refer:Ljava/lang/ref/WeakReference;

    :goto_0
    iput-object v1, p0, Lnatalya/graphics/ImageDownloader$PrepareAsync;->url:Ljava/lang/String;

    return-void

    :cond_0
    iput-object v1, p0, Lnatalya/graphics/ImageDownloader$PrepareAsync;->refer:Ljava/lang/ref/WeakReference;

    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v0, 0x0

    aget-object v2, p1, v0

    const/4 v0, 0x1

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, p1, v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lnatalya/graphics/ImageDownloader$PrepareAsync;->refer:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    instance-of v1, v2, Lnatalya/graphics/ImageDownloader$OnPrepare;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnatalya/graphics/ImageDownloader$PrepareAsync;->refer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    check-cast v2, Lnatalya/graphics/ImageDownloader$OnPrepare;

    invoke-interface {v2, v0, v1}, Lnatalya/graphics/ImageDownloader$OnPrepare;->onPrepare(Landroid/graphics/Bitmap;Landroid/widget/ImageView;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lnatalya/graphics/ImageDownloader$PrepareAsync;->doInBackground([Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 3

    iget-object v0, p0, Lnatalya/graphics/ImageDownloader$PrepareAsync;->refer:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnatalya/graphics/ImageDownloader$PrepareAsync;->refer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    sget v1, Lnatalya/graphics/ImageDownloader;->TAG_KEY:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    instance-of v2, v1, Lnatalya/graphics/ImageDownloader$OnDownload;

    if-eqz v2, :cond_1

    check-cast v1, Lnatalya/graphics/ImageDownloader$OnDownload;

    iget-object v2, p0, Lnatalya/graphics/ImageDownloader$PrepareAsync;->url:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lnatalya/graphics/ImageDownloader$OnDownload;->onDownload(Ljava/lang/String;Landroid/widget/ImageView;)V

    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lnatalya/graphics/ImageDownloader$PrepareAsync;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
