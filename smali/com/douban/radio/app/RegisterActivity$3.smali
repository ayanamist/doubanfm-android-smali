.class Lcom/douban/radio/app/RegisterActivity$3;
.super Landroid/webkit/WebChromeClient;
.source "RegisterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/douban/radio/app/RegisterActivity;->showWeb()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/douban/radio/app/RegisterActivity;


# direct methods
.method constructor <init>(Lcom/douban/radio/app/RegisterActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/douban/radio/app/RegisterActivity$3;->this$0:Lcom/douban/radio/app/RegisterActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onCloseWindow(Landroid/webkit/WebView;)V
    .locals 2
    .parameter "window"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/douban/radio/app/RegisterActivity$3;->this$0:Lcom/douban/radio/app/RegisterActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/douban/radio/app/RegisterActivity;->setResult(I)V

    .line 126
    iget-object v0, p0, Lcom/douban/radio/app/RegisterActivity$3;->this$0:Lcom/douban/radio/app/RegisterActivity;

    invoke-virtual {v0}, Lcom/douban/radio/app/RegisterActivity;->finish()V

    .line 127
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onCloseWindow(Landroid/webkit/WebView;)V

    .line 128
    return-void
.end method
