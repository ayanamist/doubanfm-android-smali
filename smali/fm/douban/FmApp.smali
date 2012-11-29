.class public Lfm/douban/FmApp;
.super Landroid/app/Application;
.source "FmApp.java"


# static fields
.field public static PACKAGE_NAME:Ljava/lang/String;


# instance fields
.field private activityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private client:Lnatalya/net/AndroidHttpClient;

.field private idown:Lnatalya/graphics/ImageDownloader;

.field private im:Lnatalya/graphics/ImageManager;

.field public isServiceRunning:Z

.field private manager:Lfm/douban/controller/RadioManager;

.field private player:Lfm/douban/service/Player;

.field private store:Lnatalya/net/XmlCookieStore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-string v0, "com.douban.radio"

    sput-object v0, Lfm/douban/FmApp;->PACKAGE_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 30
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lfm/douban/FmApp;->activityList:Ljava/util/List;

    return-void
.end method

.method public static getImageDownloader(Landroid/content/Context;)Lnatalya/graphics/ImageDownloader;
    .locals 1
    .parameter "context"

    .prologue
    .line 113
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lfm/douban/FmApp;

    invoke-virtual {v0}, Lfm/douban/FmApp;->getImageDownloader()Lnatalya/graphics/ImageDownloader;

    move-result-object v0

    return-object v0
.end method

.method public static getImageManager(Landroid/content/Context;)Lnatalya/graphics/ImageManager;
    .locals 1
    .parameter "context"

    .prologue
    .line 117
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lfm/douban/FmApp;

    invoke-virtual {v0}, Lfm/douban/FmApp;->getImageManager()Lnatalya/graphics/ImageManager;

    move-result-object v0

    return-object v0
.end method

.method public static getRadioManager(Landroid/content/Context;)Lfm/douban/controller/RadioManager;
    .locals 1
    .parameter "context"

    .prologue
    .line 51
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lfm/douban/FmApp;

    invoke-virtual {v0}, Lfm/douban/FmApp;->getRadioManager()Lfm/douban/controller/RadioManager;

    move-result-object v0

    return-object v0
.end method

.method public static register(Landroid/app/Activity;)V
    .locals 1
    .parameter "act"

    .prologue
    .line 121
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lfm/douban/FmApp;

    iget-object v0, v0, Lfm/douban/FmApp;->activityList:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    return-void
.end method

.method public static terminate(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 109
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lfm/douban/FmApp;

    invoke-virtual {v0}, Lfm/douban/FmApp;->terminate()V

    .line 110
    return-void
.end method

.method public static unregister(Landroid/app/Activity;)V
    .locals 1
    .parameter "act"

    .prologue
    .line 125
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lfm/douban/FmApp;

    iget-object v0, v0, Lfm/douban/FmApp;->activityList:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 127
    return-void
.end method


# virtual methods
.method public getHttpClient()Lnatalya/net/AndroidHttpClient;
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lfm/douban/FmApp;->client:Lnatalya/net/AndroidHttpClient;

    if-nez v0, :cond_0

    .line 56
    invoke-static {}, Lnatalya/net/AndroidHttpClient;->newInstance()Lnatalya/net/AndroidHttpClient;

    move-result-object v0

    iput-object v0, p0, Lfm/douban/FmApp;->client:Lnatalya/net/AndroidHttpClient;

    .line 57
    iget-object v0, p0, Lfm/douban/FmApp;->client:Lnatalya/net/AndroidHttpClient;

    iget-object v1, p0, Lfm/douban/FmApp;->store:Lnatalya/net/XmlCookieStore;

    invoke-virtual {v0, v1}, Lnatalya/net/AndroidHttpClient;->setCookieStore(Lnatalya/net/CookieStore;)V

    .line 59
    :cond_0
    iget-object v0, p0, Lfm/douban/FmApp;->client:Lnatalya/net/AndroidHttpClient;

    return-object v0
.end method

.method public getImageDownloader()Lnatalya/graphics/ImageDownloader;
    .locals 5

    .prologue
    .line 63
    iget-object v0, p0, Lfm/douban/FmApp;->idown:Lnatalya/graphics/ImageDownloader;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lnatalya/graphics/ImageDownloader;

    invoke-virtual {p0}, Lfm/douban/FmApp;->getImageManager()Lnatalya/graphics/ImageManager;

    move-result-object v1

    invoke-virtual {p0}, Lfm/douban/FmApp;->getHttpClient()Lnatalya/net/AndroidHttpClient;

    move-result-object v2

    const v3, 0x7f08000d

    const v4, 0x7f08000e

    invoke-direct {v0, v1, v2, v3, v4}, Lnatalya/graphics/ImageDownloader;-><init>(Lnatalya/graphics/ImageManager;Lnatalya/net/AndroidHttpClient;II)V

    iput-object v0, p0, Lfm/douban/FmApp;->idown:Lnatalya/graphics/ImageDownloader;

    .line 67
    :cond_0
    iget-object v0, p0, Lfm/douban/FmApp;->idown:Lnatalya/graphics/ImageDownloader;

    return-object v0
.end method

.method public getImageManager()Lnatalya/graphics/ImageManager;
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lfm/douban/FmApp;->im:Lnatalya/graphics/ImageManager;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lnatalya/graphics/ImageManager;

    const-string v1, "image"

    invoke-direct {v0, p0, v1}, Lnatalya/graphics/ImageManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lfm/douban/FmApp;->im:Lnatalya/graphics/ImageManager;

    .line 74
    :cond_0
    iget-object v0, p0, Lfm/douban/FmApp;->im:Lnatalya/graphics/ImageManager;

    return-object v0
.end method

.method public getRadioManager()Lfm/douban/controller/RadioManager;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lfm/douban/FmApp;->manager:Lfm/douban/controller/RadioManager;

    return-object v0
.end method

.method public getSongTime()I
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lfm/douban/FmApp;->player:Lfm/douban/service/Player;

    if-nez v0, :cond_0

    .line 104
    const/4 v0, 0x0

    .line 106
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lfm/douban/FmApp;->player:Lfm/douban/service/Player;

    invoke-virtual {v0}, Lfm/douban/service/Player;->position()I

    move-result v0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 37
    invoke-virtual {p0}, Lfm/douban/FmApp;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfm/douban/FmApp;->PACKAGE_NAME:Ljava/lang/String;

    .line 39
    new-instance v0, Lfm/douban/controller/RadioManager;

    invoke-direct {v0, p0}, Lfm/douban/controller/RadioManager;-><init>(Lfm/douban/FmApp;)V

    iput-object v0, p0, Lfm/douban/FmApp;->manager:Lfm/douban/controller/RadioManager;

    .line 40
    iput-object v1, p0, Lfm/douban/FmApp;->client:Lnatalya/net/AndroidHttpClient;

    .line 41
    iput-object v1, p0, Lfm/douban/FmApp;->im:Lnatalya/graphics/ImageManager;

    .line 42
    iput-object v1, p0, Lfm/douban/FmApp;->idown:Lnatalya/graphics/ImageDownloader;

    .line 43
    new-instance v0, Lnatalya/net/XmlCookieStore;

    invoke-direct {v0, p0}, Lnatalya/net/XmlCookieStore;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lfm/douban/FmApp;->store:Lnatalya/net/XmlCookieStore;

    .line 44
    return-void
.end method

.method public setPlayer(Lfm/douban/service/Player;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 99
    iput-object p1, p0, Lfm/douban/FmApp;->player:Lfm/douban/service/Player;

    .line 100
    return-void
.end method

.method public terminate()V
    .locals 3

    .prologue
    .line 78
    iget-object v2, p0, Lfm/douban/FmApp;->im:Lnatalya/graphics/ImageManager;

    if-eqz v2, :cond_0

    .line 79
    iget-object v2, p0, Lfm/douban/FmApp;->im:Lnatalya/graphics/ImageManager;

    invoke-virtual {v2, p0}, Lnatalya/graphics/ImageManager;->close(Landroid/content/Context;)V

    .line 80
    const/4 v2, 0x0

    iput-object v2, p0, Lfm/douban/FmApp;->im:Lnatalya/graphics/ImageManager;

    .line 83
    :cond_0
    iget-object v2, p0, Lfm/douban/FmApp;->idown:Lnatalya/graphics/ImageDownloader;

    if-eqz v2, :cond_1

    .line 84
    iget-object v2, p0, Lfm/douban/FmApp;->idown:Lnatalya/graphics/ImageDownloader;

    invoke-virtual {v2}, Lnatalya/graphics/ImageDownloader;->clearCache()V

    .line 87
    :cond_1
    iget-object v2, p0, Lfm/douban/FmApp;->manager:Lfm/douban/controller/RadioManager;

    if-eqz v2, :cond_2

    .line 88
    iget-object v2, p0, Lfm/douban/FmApp;->manager:Lfm/douban/controller/RadioManager;

    invoke-virtual {v2}, Lfm/douban/controller/RadioManager;->terminate()V

    .line 91
    :cond_2
    iget-object v2, p0, Lfm/douban/FmApp;->activityList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 92
    .local v0, act:Landroid/app/Activity;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_3

    .line 93
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 96
    .end local v0           #act:Landroid/app/Activity;
    :cond_4
    return-void
.end method
