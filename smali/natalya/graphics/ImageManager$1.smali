.class Lnatalya/graphics/ImageManager$1;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnatalya/graphics/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnatalya/graphics/ImageManager;


# direct methods
.method constructor <init>(Lnatalya/graphics/ImageManager;)V
    .locals 0

    iput-object p1, p0, Lnatalya/graphics/ImageManager$1;->this$0:Lnatalya/graphics/ImageManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lnatalya/graphics/ImageManager$1;->this$0:Lnatalya/graphics/ImageManager;

    invoke-virtual {v0}, Lnatalya/graphics/ImageManager;->updateState()V

    :cond_1
    return-void
.end method
