.class Lnatalya/graphics/ImageDownloader$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnatalya/graphics/ImageDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnatalya/graphics/ImageDownloader;


# direct methods
.method constructor <init>(Lnatalya/graphics/ImageDownloader;)V
    .locals 0

    iput-object p1, p0, Lnatalya/graphics/ImageDownloader$2;->this$0:Lnatalya/graphics/ImageDownloader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lnatalya/graphics/ImageDownloader$2;->this$0:Lnatalya/graphics/ImageDownloader;

    invoke-virtual {v0}, Lnatalya/graphics/ImageDownloader;->clearCache()V

    return-void
.end method
