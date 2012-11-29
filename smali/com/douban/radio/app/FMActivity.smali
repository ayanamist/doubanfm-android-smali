.class public abstract Lcom/douban/radio/app/FMActivity;
.super Landroid/app/Activity;
.source "FMActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 12
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 13
    invoke-static {p0}, Lfm/douban/FmApp;->register(Landroid/app/Activity;)V

    .line 14
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 18
    invoke-static {p0}, Lfm/douban/FmApp;->unregister(Landroid/app/Activity;)V

    .line 19
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 20
    return-void
.end method
