.class public Lfm/douban/util/AlarmSet;
.super Ljava/lang/Object;
.source "AlarmSet.java"


# static fields
.field private static final REQUEST_CODE_TIMED_QUIT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AlarmSet"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static disableAlarm(Landroid/content/Context;)V
    .locals 5
    .parameter "c"

    .prologue
    .line 23
    const-string v3, "AlarmSet"

    const-string v4, "disableAlarm"

    invoke-static {v3, v4}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 25
    .local v0, am:Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lfm/douban/service/RadioService;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 26
    .local v1, intent:Landroid/content/Intent;
    sget-object v3, Lfm/douban/Consts;->INTENT_RADIO_SERVICE:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    const/4 v3, 0x0

    const/high16 v4, 0x800

    invoke-static {p0, v3, v1, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 28
    .local v2, pIntent:Landroid/app/PendingIntent;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 29
    return-void
.end method

.method public static disableTimedQuitAlarm(Landroid/content/Context;)V
    .locals 5
    .parameter "c"

    .prologue
    .line 32
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 33
    .local v0, am:Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    sget-object v3, Lfm/douban/Consts;->INTENT_RADIO_COMMAND:Ljava/lang/String;

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 34
    .local v1, intent:Landroid/content/Intent;
    const/4 v3, 0x1

    const/high16 v4, 0x800

    invoke-static {p0, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 36
    .local v2, pIntent:Landroid/app/PendingIntent;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 37
    const-string v3, "AlarmSet"

    const-string v4, "disableTimedQuitAlarm"

    invoke-static {v3, v4}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    return-void
.end method

.method public static enableAlarm(Landroid/content/Context;)V
    .locals 15
    .parameter "c"

    .prologue
    .line 41
    new-instance v9, Lfm/douban/model/FMSharedPreferences;

    invoke-direct {v9, p0}, Lfm/douban/model/FMSharedPreferences;-><init>(Landroid/content/Context;)V

    .line 42
    .local v9, fmsp:Lfm/douban/model/FMSharedPreferences;
    const-string v1, "wake_alarm_on"

    const/4 v2, 0x0

    invoke-virtual {v9, v1, v2}, Lfm/douban/model/FMSharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 43
    .local v7, alarmOn:Z
    if-nez v7, :cond_1

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    const-string v1, "wake_alarm_hour"

    const/4 v2, -0x1

    invoke-virtual {v9, v1, v2}, Lfm/douban/model/FMSharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 47
    .local v10, hour:I
    const-string v1, "wake_alarm_min"

    const/4 v2, -0x1

    invoke-virtual {v9, v1, v2}, Lfm/douban/model/FMSharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 48
    .local v12, minute:I
    const/4 v1, -0x1

    if-eq v10, v1, :cond_0

    const/4 v1, -0x1

    if-eq v12, v1, :cond_0

    .line 51
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 52
    .local v0, am:Landroid/app/AlarmManager;
    new-instance v11, Landroid/content/Intent;

    const-class v1, Lfm/douban/service/RadioService;

    invoke-direct {v11, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 53
    .local v11, intent:Landroid/content/Intent;
    sget-object v1, Lfm/douban/Consts;->INTENT_RADIO_SERVICE:Ljava/lang/String;

    invoke-virtual {v11, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    const-string v1, "start_alarm"

    const/4 v2, 0x1

    invoke-virtual {v11, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 55
    const/4 v1, 0x0

    const/high16 v2, 0x800

    invoke-static {p0, v1, v11, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 56
    .local v6, pIntent:Landroid/app/PendingIntent;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    .line 57
    .local v8, ca:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v8, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 59
    const/16 v1, 0xb

    invoke-virtual {v8, v1}, Ljava/util/Calendar;->get(I)I

    move-result v13

    .line 60
    .local v13, nowHour:I
    const/16 v1, 0xc

    invoke-virtual {v8, v1}, Ljava/util/Calendar;->get(I)I

    move-result v14

    .line 63
    .local v14, nowMinute:I
    if-lt v10, v13, :cond_2

    if-ne v10, v13, :cond_3

    if-gt v12, v14, :cond_3

    .line 64
    :cond_2
    const/4 v1, 0x6

    const/4 v2, 0x1

    invoke-virtual {v8, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 66
    :cond_3
    const/16 v1, 0xb

    invoke-virtual {v8, v1, v10}, Ljava/util/Calendar;->set(II)V

    .line 67
    const/16 v1, 0xc

    invoke-virtual {v8, v1, v12}, Ljava/util/Calendar;->set(II)V

    .line 68
    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-virtual {v8, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 69
    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-virtual {v8, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 71
    const/4 v1, 0x0

    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public static enableTimedQuitAlarm(Landroid/content/Context;I)V
    .locals 8
    .parameter "c"
    .parameter "minutes"

    .prologue
    .line 75
    const-string v3, "AlarmSet"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enableTimedQuitAlarm, timedQuitInterval is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    if-nez p1, :cond_0

    .line 85
    :goto_0
    return-void

    .line 79
    :cond_0
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 80
    .local v0, am:Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    sget-object v3, Lfm/douban/Consts;->INTENT_RADIO_COMMAND:Ljava/lang/String;

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 81
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "cmd"

    const/4 v4, 0x3

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 82
    const/4 v3, 0x1

    const/high16 v4, 0x800

    invoke-static {p0, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 84
    .local v2, pIntent:Landroid/app/PendingIntent;
    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    mul-int/lit8 v6, p1, 0x3c

    mul-int/lit16 v6, v6, 0x3e8

    int-to-long v6, v6

    add-long/2addr v4, v6

    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method
