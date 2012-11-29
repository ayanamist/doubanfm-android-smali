.class Lcom/douban/radio/app/FMSinaAuth$1;
.super Landroid/webkit/WebChromeClient;
.source "FMSinaAuth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/douban/radio/app/FMSinaAuth;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/douban/radio/app/FMSinaAuth;


# direct methods
.method constructor <init>(Lcom/douban/radio/app/FMSinaAuth;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/douban/radio/app/FMSinaAuth$1;->this$0:Lcom/douban/radio/app/FMSinaAuth;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onCloseWindow(Landroid/webkit/WebView;)V
    .locals 1
    .parameter "window"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/douban/radio/app/FMSinaAuth$1;->this$0:Lcom/douban/radio/app/FMSinaAuth;

    invoke-virtual {v0}, Lcom/douban/radio/app/FMSinaAuth;->finish()V

    .line 85
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onCloseWindow(Landroid/webkit/WebView;)V

    .line 86
    return-void
.end method
