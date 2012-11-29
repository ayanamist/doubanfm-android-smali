.class Lfm/douban/controller/SongTaskManager$DownloadTask$1;
.super Ljava/lang/Object;
.source "SongTaskManager.java"

# interfaces
.implements Lnatalya/graphics/ImageDownloader$OnlyDownload;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfm/douban/controller/SongTaskManager$DownloadTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lfm/douban/controller/SongTaskManager$DownloadTask;


# direct methods
.method constructor <init>(Lfm/douban/controller/SongTaskManager$DownloadTask;)V
    .locals 0
    .parameter

    .prologue
    .line 193
    iput-object p1, p0, Lfm/douban/controller/SongTaskManager$DownloadTask$1;->this$1:Lfm/douban/controller/SongTaskManager$DownloadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownload(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 195
    return-void
.end method
