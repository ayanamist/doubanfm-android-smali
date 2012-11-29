.class public abstract Lfm/douban/widget/WidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "WidgetProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method private applyUpdate(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .locals 5
    .parameter "context"
    .parameter "views"

    .prologue
    .line 106
    if-eqz p2, :cond_0

    .line 107
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    .line 108
    .local v2, manager:Landroid/appwidget/AppWidgetManager;
    new-instance v3, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v3}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    .line 109
    .local v0, ids:[I
    if-eqz v0, :cond_0

    .line 110
    const/4 v1, 0x0

    .local v1, k:I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 112
    aget v3, v0, v1

    invoke-virtual {v2, v3, p2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 110
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 116
    .end local v0           #ids:[I
    .end local v1           #k:I
    .end local v2           #manager:Landroid/appwidget/AppWidgetManager;
    :cond_0
    return-void
.end method

.method private updateUI(Landroid/content/Context;Lfm/douban/service/RadioState;)V
    .locals 2
    .parameter "context"
    .parameter "state"

    .prologue
    .line 95
    if-eqz p2, :cond_0

    iget-boolean v1, p2, Lfm/douban/service/RadioState;->isStoped:Z

    if-eqz v1, :cond_2

    .line 97
    :cond_0
    invoke-virtual {p0, p1}, Lfm/douban/widget/WidgetProvider;->stopViews(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 102
    .local v0, views:Landroid/widget/RemoteViews;
    :goto_0
    if-eqz v0, :cond_1

    invoke-direct {p0, p1, v0}, Lfm/douban/widget/WidgetProvider;->applyUpdate(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 103
    :cond_1
    return-void

    .line 100
    .end local v0           #views:Landroid/widget/RemoteViews;
    :cond_2
    invoke-virtual {p0, p1, p2}, Lfm/douban/widget/WidgetProvider;->playViews(Landroid/content/Context;Lfm/douban/service/RadioState;)Landroid/widget/RemoteViews;

    move-result-object v0

    .restart local v0       #views:Landroid/widget/RemoteViews;
    goto :goto_0
.end method


# virtual methods
.method public hateIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x5

    .line 40
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lfm/douban/Consts;->INTENT_RADIO_COMMAND:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 41
    .local v0, i:Landroid/content/Intent;
    const-string v1, "cmd"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 42
    const/high16 v1, 0x800

    invoke-static {p1, v2, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method public likeIntent(Landroid/content/Context;Z)Landroid/app/PendingIntent;
    .locals 3
    .parameter "context"
    .parameter "like"

    .prologue
    const/4 v2, 0x4

    .line 34
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lfm/douban/Consts;->INTENT_RADIO_COMMAND:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 35
    .local v0, i:Landroid/content/Intent;
    const-string v1, "cmd"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 36
    const/high16 v1, 0x800

    invoke-static {p1, v2, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 84
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 85
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, action:Ljava/lang/String;
    sget-object v2, Lfm/douban/Consts;->INTENT_RADIO_STATE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 88
    const-string v2, "state"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lfm/douban/service/RadioState;

    .line 89
    .local v1, state:Lfm/douban/service/RadioState;
    invoke-direct {p0, p1, v1}, Lfm/douban/widget/WidgetProvider;->updateUI(Landroid/content/Context;Lfm/douban/service/RadioState;)V

    .line 91
    .end local v1           #state:Lfm/douban/service/RadioState;
    :cond_0
    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 1
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lfm/douban/widget/WidgetProvider;->updateUI(Landroid/content/Context;Lfm/douban/service/RadioState;)V

    .line 80
    const/16 v0, 0x8

    invoke-static {p1, v0}, Lfm/douban/service/RadioService;->sendCommand(Landroid/content/Context;I)V

    .line 81
    return-void
.end method

.method public pauseIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x2

    .line 58
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lfm/douban/Consts;->INTENT_RADIO_COMMAND:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 59
    .local v0, i:Landroid/content/Intent;
    const-string v1, "cmd"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 60
    const/high16 v1, 0x800

    invoke-static {p1, v2, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method public playViews(Landroid/content/Context;Lfm/douban/service/RadioState;)Landroid/widget/RemoteViews;
    .locals 1
    .parameter "context"
    .parameter "state"

    .prologue
    .line 25
    const/4 v0, 0x0

    return-object v0
.end method

.method public playerIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/app/PendingIntent;
    .locals 3
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;)",
            "Landroid/app/PendingIntent;"
        }
    .end annotation

    .prologue
    .line 52
    .local p2, player:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 53
    .local v0, i:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 54
    const/4 v1, 0x0

    const/high16 v2, 0x800

    invoke-static {p1, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method public quitIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x3

    .line 70
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lfm/douban/Consts;->INTENT_RADIO_COMMAND:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 71
    .local v0, i:Landroid/content/Intent;
    const-string v1, "cmd"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 72
    const/high16 v1, 0x800

    invoke-static {p1, v2, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method public resumeIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    .line 64
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lfm/douban/Consts;->INTENT_RADIO_COMMAND:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 65
    .local v0, i:Landroid/content/Intent;
    const-string v1, "cmd"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 66
    const/high16 v1, 0x800

    invoke-static {p1, v2, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method public skipIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x6

    .line 46
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lfm/douban/Consts;->INTENT_RADIO_COMMAND:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 47
    .local v0, i:Landroid/content/Intent;
    const-string v1, "cmd"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 48
    const/high16 v1, 0x800

    invoke-static {p1, v2, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method public startIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 3
    .parameter "context"

    .prologue
    .line 29
    const/4 v0, 0x0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lfm/douban/service/RadioService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x800

    invoke-static {p1, v0, v1, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public stopViews(Landroid/content/Context;)Landroid/widget/RemoteViews;
    .locals 1
    .parameter "context"

    .prologue
    .line 21
    const/4 v0, 0x0

    return-object v0
.end method
