.class public Lcom/douban/radio/widget/WidgetSmall;
.super Lfm/douban/widget/WidgetProvider;
.source "WidgetSmall.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lfm/douban/widget/WidgetProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public playViews(Landroid/content/Context;Lfm/douban/service/RadioState;)Landroid/widget/RemoteViews;
    .locals 9
    .parameter "context"
    .parameter "state"

    .prologue
    const v8, 0x7f0800b5

    const v7, 0x7f0800b4

    const v6, 0x7f08004e

    const v5, 0x7f08004d

    const v4, 0x7f0800b9

    .line 28
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f030018

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 29
    .local v1, views:Landroid/widget/RemoteViews;
    iget-boolean v2, p2, Lfm/douban/service/RadioState;->canOp:Z

    if-eqz v2, :cond_0

    .line 30
    iget-boolean v2, p2, Lfm/douban/service/RadioState;->isLike:Z

    if-eqz v2, :cond_1

    const v2, 0x7f020021

    :goto_0
    invoke-virtual {v1, v7, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 31
    iget-boolean v2, p2, Lfm/douban/service/RadioState;->isLike:Z

    if-nez v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {p0, p1, v2}, Lcom/douban/radio/widget/WidgetSmall;->likeIntent(Landroid/content/Context;Z)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v7, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 33
    const v2, 0x7f02007b

    invoke-virtual {v1, v8, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 34
    invoke-virtual {p0, p1}, Lcom/douban/radio/widget/WidgetSmall;->hateIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v8, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 36
    invoke-virtual {p0, p1}, Lcom/douban/radio/widget/WidgetSmall;->skipIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 37
    const v2, 0x7f02006e

    invoke-virtual {v1, v5, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 41
    :cond_0
    iget-boolean v2, p2, Lfm/douban/service/RadioState;->hasSong:Z

    if-eqz v2, :cond_3

    iget-object v2, p2, Lfm/douban/service/RadioState;->song:Lfm/douban/model/Song;

    if-eqz v2, :cond_3

    .line 42
    iget-object v0, p2, Lfm/douban/service/RadioState;->song:Lfm/douban/model/Song;

    .line 43
    .local v0, song:Lfm/douban/model/Song;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lfm/douban/model/Song;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lfm/douban/model/Song;->artist:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 47
    .end local v0           #song:Lfm/douban/model/Song;
    :goto_2
    const v2, 0x7f0800b7

    const-class v3, Lcom/douban/radio/app/RadioActivity;

    invoke-virtual {p0, p1, v3}, Lcom/douban/radio/widget/WidgetSmall;->playerIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 49
    iget-boolean v2, p2, Lfm/douban/service/RadioState;->isPaused:Z

    if-eqz v2, :cond_4

    .line 50
    invoke-virtual {p0, p1}, Lcom/douban/radio/widget/WidgetSmall;->resumeIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 51
    const v2, 0x7f02003f

    invoke-virtual {v1, v4, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 56
    :goto_3
    return-object v1

    .line 30
    :cond_1
    const v2, 0x7f020023

    goto :goto_0

    .line 31
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 45
    :cond_3
    const-string v2, ""

    invoke-virtual {v1, v6, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_2

    .line 53
    :cond_4
    invoke-virtual {p0, p1}, Lcom/douban/radio/widget/WidgetSmall;->pauseIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 54
    const v2, 0x7f02003e

    invoke-virtual {v1, v4, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_3
.end method

.method public stopViews(Landroid/content/Context;)Landroid/widget/RemoteViews;
    .locals 3
    .parameter "context"

    .prologue
    .line 20
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f030017

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 21
    .local v0, views:Landroid/widget/RemoteViews;
    const v1, 0x7f0800b1

    invoke-virtual {p0, p1}, Lcom/douban/radio/widget/WidgetSmall;->startIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 22
    const v1, 0x7f0800b0

    const-class v2, Lcom/douban/radio/app/RadioActivity;

    invoke-virtual {p0, p1, v2}, Lcom/douban/radio/widget/WidgetSmall;->playerIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 23
    return-object v0
.end method
