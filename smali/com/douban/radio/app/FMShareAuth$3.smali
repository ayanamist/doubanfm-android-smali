.class Lcom/douban/radio/app/FMShareAuth$3;
.super Landroid/webkit/WebChromeClient;
.source "FMShareAuth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/douban/radio/app/FMShareAuth;->initWeb()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/douban/radio/app/FMShareAuth;


# direct methods
.method constructor <init>(Lcom/douban/radio/app/FMShareAuth;)V
    .locals 0
    .parameter

    .prologue
    .line 368
    iput-object p1, p0, Lcom/douban/radio/app/FMShareAuth$3;->this$0:Lcom/douban/radio/app/FMShareAuth;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onCloseWindow(Landroid/webkit/WebView;)V
    .locals 2
    .parameter "window"

    .prologue
    .line 371
    iget-object v0, p0, Lcom/douban/radio/app/FMShareAuth$3;->this$0:Lcom/douban/radio/app/FMShareAuth;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/douban/radio/app/FMShareAuth;->setResult(I)V

    .line 372
    iget-object v0, p0, Lcom/douban/radio/app/FMShareAuth$3;->this$0:Lcom/douban/radio/app/FMShareAuth;

    invoke-virtual {v0}, Lcom/douban/radio/app/FMShareAuth;->finish()V

    .line 373
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onCloseWindow(Landroid/webkit/WebView;)V

    .line 374
    return-void
.end method
