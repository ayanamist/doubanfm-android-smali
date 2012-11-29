.class public Lfm/douban/controller/ChannelManager;
.super Ljava/lang/Object;
.source "ChannelManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ChannelController"


# instance fields
.field private api:Lfm/douban/api/Api;

.field private context:Landroid/content/Context;

.field private fmsp:Lfm/douban/model/FMSharedPreferences;

.field private radioDB:Lfm/douban/model/RadioDB;

.field private rm:Lfm/douban/controller/RadioManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "ctx"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lfm/douban/controller/ChannelManager;->context:Landroid/content/Context;

    .line 43
    iget-object v0, p0, Lfm/douban/controller/ChannelManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lfm/douban/FmApp;->getRadioManager(Landroid/content/Context;)Lfm/douban/controller/RadioManager;

    move-result-object v0

    iput-object v0, p0, Lfm/douban/controller/ChannelManager;->rm:Lfm/douban/controller/RadioManager;

    .line 44
    iget-object v0, p0, Lfm/douban/controller/ChannelManager;->rm:Lfm/douban/controller/RadioManager;

    invoke-virtual {v0}, Lfm/douban/controller/RadioManager;->getDB()Lfm/douban/model/RadioDB;

    move-result-object v0

    iput-object v0, p0, Lfm/douban/controller/ChannelManager;->radioDB:Lfm/douban/model/RadioDB;

    .line 45
    iget-object v0, p0, Lfm/douban/controller/ChannelManager;->rm:Lfm/douban/controller/RadioManager;

    invoke-virtual {v0}, Lfm/douban/controller/RadioManager;->getApi()Lfm/douban/api/Api;

    move-result-object v0

    iput-object v0, p0, Lfm/douban/controller/ChannelManager;->api:Lfm/douban/api/Api;

    .line 46
    iget-object v0, p0, Lfm/douban/controller/ChannelManager;->rm:Lfm/douban/controller/RadioManager;

    invoke-virtual {v0}, Lfm/douban/controller/RadioManager;->getSharedPreferences()Lfm/douban/model/FMSharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lfm/douban/controller/ChannelManager;->fmsp:Lfm/douban/model/FMSharedPreferences;

    .line 47
    return-void
.end method


# virtual methods
.method public checkChannels(Lcom/loopj/android/http/AsyncHttpResponseHandler;)V
    .locals 1
    .parameter "handler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 189
    if-nez p1, :cond_0

    .line 190
    new-instance p1, Lfm/douban/controller/ChannelManager$1;

    .end local p1
    invoke-direct {p1, p0}, Lfm/douban/controller/ChannelManager$1;-><init>(Lfm/douban/controller/ChannelManager;)V

    .line 210
    .restart local p1
    :cond_0
    iget-object v0, p0, Lfm/douban/controller/ChannelManager;->api:Lfm/douban/api/Api;

    invoke-virtual {v0, p1}, Lfm/douban/api/Api;->getChannels(Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 212
    return-void
.end method

.method public getChannel(Ljava/lang/String;)Lfm/douban/model/Channel;
    .locals 10
    .parameter "id"

    .prologue
    const/4 v4, 0x1

    .line 77
    if-nez p1, :cond_1

    .line 78
    invoke-virtual {p0}, Lfm/douban/controller/ChannelManager;->getDefaultChannel()Lfm/douban/model/Channel;

    move-result-object v0

    .line 100
    :cond_0
    :goto_0
    return-object v0

    .line 80
    :cond_1
    const/4 v7, 0x0

    .line 81
    .local v7, channel:Lfm/douban/model/Channel;
    iget-object v1, p0, Lfm/douban/controller/ChannelManager;->radioDB:Lfm/douban/model/RadioDB;

    invoke-virtual {v1, v4}, Lfm/douban/model/RadioDB;->getDB(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    .line 82
    .local v9, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v8, 0x0

    .line 84
    .local v8, cursor:Landroid/database/Cursor;
    const/4 v1, 0x1

    :try_start_0
    new-array v6, v1, [Ljava/lang/String;

    .line 85
    .local v6, args:[Ljava/lang/String;
    const/4 v1, 0x0

    aput-object p1, v6, v1

    .line 86
    const-string v1, "ChannelController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "select seq_id, name, name_en, abbr_en from channel where id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, v6, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const-string v1, "select seq_id, name, name_en, abbr_en from channel where id=?"

    invoke-virtual {v9, v1, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 89
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ne v1, v4, :cond_4

    .line 90
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 91
    new-instance v0, Lfm/douban/model/Channel;

    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x2

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x3

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lfm/douban/model/Channel;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .end local v7           #channel:Lfm/douban/model/Channel;
    .local v0, channel:Lfm/douban/model/Channel;
    :goto_1
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 97
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 94
    .end local v0           #channel:Lfm/douban/model/Channel;
    .end local v6           #args:[Ljava/lang/String;
    .restart local v7       #channel:Lfm/douban/model/Channel;
    :catch_0
    move-exception v1

    .line 96
    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 97
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move-object v0, v7

    .end local v7           #channel:Lfm/douban/model/Channel;
    .restart local v0       #channel:Lfm/douban/model/Channel;
    goto :goto_0

    .line 96
    .end local v0           #channel:Lfm/douban/model/Channel;
    .restart local v7       #channel:Lfm/douban/model/Channel;
    :catchall_0
    move-exception v1

    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_2

    .line 97
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1

    :cond_3
    move-object v0, v7

    .end local v7           #channel:Lfm/douban/model/Channel;
    .restart local v0       #channel:Lfm/douban/model/Channel;
    goto :goto_0

    .end local v0           #channel:Lfm/douban/model/Channel;
    .restart local v6       #args:[Ljava/lang/String;
    .restart local v7       #channel:Lfm/douban/model/Channel;
    :cond_4
    move-object v0, v7

    .end local v7           #channel:Lfm/douban/model/Channel;
    .restart local v0       #channel:Lfm/douban/model/Channel;
    goto :goto_1
.end method

.method public getDefaultChannel()Lfm/douban/model/Channel;
    .locals 9

    .prologue
    const/4 v3, 0x1

    .line 259
    const/4 v8, 0x0

    .line 260
    .local v8, defaultChannel:Lfm/douban/model/Channel;
    iget-object v1, p0, Lfm/douban/controller/ChannelManager;->radioDB:Lfm/douban/model/RadioDB;

    invoke-virtual {v1, v3}, Lfm/douban/model/RadioDB;->getDB(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    .line 261
    .local v7, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v6, 0x0

    .line 263
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    const-string v1, "select id, name, name_en, abbr_en from channel where seq_id=1"

    const/4 v2, 0x0

    invoke-virtual {v7, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 265
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ne v1, v3, :cond_3

    .line 266
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 267
    new-instance v0, Lfm/douban/model/Channel;

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lfm/douban/model/Channel;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    .end local v8           #defaultChannel:Lfm/douban/model/Channel;
    .local v0, defaultChannel:Lfm/douban/model/Channel;
    :goto_0
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 273
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 276
    :cond_0
    :goto_1
    return-object v0

    .line 270
    .end local v0           #defaultChannel:Lfm/douban/model/Channel;
    .restart local v8       #defaultChannel:Lfm/douban/model/Channel;
    :catch_0
    move-exception v1

    .line 272
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 273
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v0, v8

    .end local v8           #defaultChannel:Lfm/douban/model/Channel;
    .restart local v0       #defaultChannel:Lfm/douban/model/Channel;
    goto :goto_1

    .line 272
    .end local v0           #defaultChannel:Lfm/douban/model/Channel;
    .restart local v8       #defaultChannel:Lfm/douban/model/Channel;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 273
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v1

    :cond_2
    move-object v0, v8

    .end local v8           #defaultChannel:Lfm/douban/model/Channel;
    .restart local v0       #defaultChannel:Lfm/douban/model/Channel;
    goto :goto_1

    .end local v0           #defaultChannel:Lfm/douban/model/Channel;
    .restart local v8       #defaultChannel:Lfm/douban/model/Channel;
    :cond_3
    move-object v0, v8

    .end local v8           #defaultChannel:Lfm/douban/model/Channel;
    .restart local v0       #defaultChannel:Lfm/douban/model/Channel;
    goto :goto_0
.end method

.method public getLastChannel()Lfm/douban/model/Channel;
    .locals 5

    .prologue
    .line 240
    const/4 v0, 0x0

    .line 241
    .local v0, channel:Lfm/douban/model/Channel;
    iget-object v2, p0, Lfm/douban/controller/ChannelManager;->fmsp:Lfm/douban/model/FMSharedPreferences;

    const-string v3, "last_channel"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lfm/douban/model/FMSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 242
    .local v1, channel_id:Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 243
    invoke-virtual {p0}, Lfm/douban/controller/ChannelManager;->getDefaultChannel()Lfm/douban/model/Channel;

    move-result-object v0

    .line 250
    :goto_0
    const-string v2, "ChannelController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLastChannel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lfm/douban/model/Channel;->channel_id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    return-object v0

    .line 244
    :cond_0
    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "-3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iget-object v2, p0, Lfm/douban/controller/ChannelManager;->rm:Lfm/douban/controller/RadioManager;

    invoke-static {v2}, Lfm/douban/model/Token;->isLogin(Lfm/douban/controller/RadioManager;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 246
    invoke-virtual {p0}, Lfm/douban/controller/ChannelManager;->getDefaultChannel()Lfm/douban/model/Channel;

    move-result-object v0

    goto :goto_0

    .line 248
    :cond_2
    invoke-virtual {p0, v1}, Lfm/douban/controller/ChannelManager;->getChannel(Ljava/lang/String;)Lfm/douban/model/Channel;

    move-result-object v0

    goto :goto_0
.end method

.method public getPrivateChannels()[Lfm/douban/model/Channel;
    .locals 3

    .prologue
    .line 110
    const/4 v0, 0x0

    .line 111
    .local v0, channels:[Lfm/douban/model/Channel;
    const/4 v1, 0x2

    new-array v0, v1, [Lfm/douban/model/Channel;

    .line 113
    const/4 v1, 0x0

    const-string v2, "-3"

    invoke-virtual {p0, v2}, Lfm/douban/controller/ChannelManager;->getChannel(Ljava/lang/String;)Lfm/douban/model/Channel;

    move-result-object v2

    aput-object v2, v0, v1

    .line 115
    const/4 v1, 0x1

    const-string v2, "0"

    invoke-virtual {p0, v2}, Lfm/douban/controller/ChannelManager;->getChannel(Ljava/lang/String;)Lfm/douban/model/Channel;

    move-result-object v2

    aput-object v2, v0, v1

    .line 116
    return-object v0
.end method

.method public getPublicChannels()[Lfm/douban/model/Channel;
    .locals 12

    .prologue
    const/4 v1, 0x1

    .line 125
    const/4 v7, 0x0

    .line 126
    .local v7, channels:[Lfm/douban/model/Channel;
    iget-object v0, p0, Lfm/douban/controller/ChannelManager;->radioDB:Lfm/douban/model/RadioDB;

    invoke-virtual {v0, v1}, Lfm/douban/model/RadioDB;->getDB(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    .line 127
    .local v9, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v8, 0x0

    .line 129
    .local v8, cursor:Landroid/database/Cursor;
    const/4 v0, 0x2

    :try_start_0
    new-array v6, v0, [Ljava/lang/String;

    .line 130
    .local v6, args:[Ljava/lang/String;
    const/4 v0, 0x0

    const-string v1, "0"

    aput-object v1, v6, v0

    .line 131
    const/4 v0, 0x1

    const-string v1, "-3"

    aput-object v1, v6, v0

    .line 132
    const-string v0, "select id, seq_id, name, name_en, abbr_en from channel where id!=? and id!=? order by seq_id"

    invoke-virtual {v9, v0, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 134
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v11

    .line 135
    .local v11, total:I
    if-lez v11, :cond_0

    .line 136
    new-array v7, v11, [Lfm/douban/model/Channel;

    .line 137
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 138
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    if-ge v10, v11, :cond_0

    .line 139
    new-instance v0, Lfm/douban/model/Channel;

    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    invoke-interface {v8, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lfm/douban/model/Channel;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v10

    .line 141
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 148
    .end local v10           #i:I
    :cond_0
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 149
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 153
    .end local v6           #args:[Ljava/lang/String;
    .end local v11           #total:I
    :cond_1
    :goto_1
    return-object v7

    .line 145
    :catch_0
    move-exception v0

    .line 148
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 149
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 148
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 149
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public isValidChannelId(Ljava/lang/String;)Z
    .locals 8
    .parameter "id"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 50
    iget-object v7, p0, Lfm/douban/controller/ChannelManager;->radioDB:Lfm/douban/model/RadioDB;

    invoke-virtual {v7, v5}, Lfm/douban/model/RadioDB;->getDB(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 51
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v4, 0x0

    .line 52
    .local v4, ret:Z
    const/4 v1, 0x0

    .line 54
    .local v1, cursor:Landroid/database/Cursor;
    const/4 v7, 0x1

    :try_start_0
    new-array v0, v7, [Ljava/lang/String;

    .line 55
    .local v0, args:[Ljava/lang/String;
    const/4 v7, 0x0

    aput-object p1, v0, v7

    .line 56
    const-string v7, "select 1 from channel where id=?"

    invoke-virtual {v2, v7, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 57
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-ne v7, v5, :cond_1

    move v4, v5

    .line 62
    :goto_0
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_0

    .line 63
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 67
    .end local v0           #args:[Ljava/lang/String;
    :cond_0
    :goto_1
    return v4

    .restart local v0       #args:[Ljava/lang/String;
    :cond_1
    move v4, v6

    .line 57
    goto :goto_0

    .line 59
    .end local v0           #args:[Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 60
    .local v3, e:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_0

    .line 63
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 62
    .end local v3           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v5

    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_2

    .line 63
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v5
.end method

.method public removeAllChannels()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 298
    iget-object v1, p0, Lfm/douban/controller/ChannelManager;->radioDB:Lfm/douban/model/RadioDB;

    invoke-virtual {v1}, Lfm/douban/model/RadioDB;->getDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 299
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "channel"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 300
    return-void
.end method

.method public removeExtraChannels(Ljava/lang/String;)V
    .locals 4
    .parameter "channelSeqId"

    .prologue
    .line 292
    iget-object v2, p0, Lfm/douban/controller/ChannelManager;->radioDB:Lfm/douban/model/RadioDB;

    invoke-virtual {v2}, Lfm/douban/model/RadioDB;->getDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 293
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 294
    .local v1, whereArgs:[Ljava/lang/String;
    const-string v2, "channel"

    const-string v3, "seq_id > ?"

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 295
    return-void
.end method

.method public save(Lfm/douban/model/Channel;)V
    .locals 4
    .parameter "channel"

    .prologue
    const/4 v3, 0x0

    .line 162
    iget-object v2, p0, Lfm/douban/controller/ChannelManager;->radioDB:Lfm/douban/model/RadioDB;

    invoke-virtual {v2, v3}, Lfm/douban/model/RadioDB;->getDB(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 164
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x5

    :try_start_0
    new-array v0, v2, [Ljava/lang/Object;

    .line 165
    .local v0, args:[Ljava/lang/Object;
    const/4 v2, 0x0

    iget-object v3, p1, Lfm/douban/model/Channel;->channel_id:Ljava/lang/String;

    aput-object v3, v0, v2

    .line 166
    const/4 v2, 0x1

    iget v3, p1, Lfm/douban/model/Channel;->seq_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    .line 167
    const/4 v2, 0x2

    iget-object v3, p1, Lfm/douban/model/Channel;->name:Ljava/lang/String;

    aput-object v3, v0, v2

    .line 168
    const/4 v2, 0x3

    iget-object v3, p1, Lfm/douban/model/Channel;->name_en:Ljava/lang/String;

    aput-object v3, v0, v2

    .line 169
    const/4 v2, 0x4

    iget-object v3, p1, Lfm/douban/model/Channel;->abbr_en:Ljava/lang/String;

    aput-object v3, v0, v2

    .line 173
    const-string v2, "REPLACE INTO channel(id,seq_id,name,name_en,abbr_en) values(?,?,?,?,?)"

    invoke-virtual {v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    .end local v0           #args:[Ljava/lang/Object;
    :goto_0
    return-void

    .line 177
    :catchall_0
    move-exception v2

    throw v2

    .line 175
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public saveChannels(Ljava/lang/String;)V
    .locals 9
    .parameter "content"

    .prologue
    .line 215
    const-string v6, "ChannelController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "check channels:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 219
    .local v5, json:Lorg/json/JSONObject;
    const-string v6, "channels"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONArray;

    .line 220
    .local v1, channels:Lorg/json/JSONArray;
    const-string v6, "0"

    invoke-virtual {p0, v6}, Lfm/douban/controller/ChannelManager;->removeExtraChannels(Ljava/lang/String;)V

    .line 222
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v4, v6, :cond_0

    .line 223
    new-instance v0, Lfm/douban/model/Channel;

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-direct {v0, v6}, Lfm/douban/model/Channel;-><init>(Lorg/json/JSONObject;)V

    .line 224
    .local v0, c:Lfm/douban/model/Channel;
    invoke-virtual {p0, v0}, Lfm/douban/controller/ChannelManager;->save(Lfm/douban/model/Channel;)V

    .line 222
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 227
    .end local v0           #c:Lfm/douban/model/Channel;
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    const/4 v7, 0x6

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 228
    .local v2, day:I
    iget-object v6, p0, Lfm/douban/controller/ChannelManager;->fmsp:Lfm/douban/model/FMSharedPreferences;

    const-string v7, "channel_last_check"

    invoke-virtual {v6, v7, v2}, Lfm/douban/model/FMSharedPreferences;->putInt(Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    .end local v1           #channels:Lorg/json/JSONArray;
    .end local v2           #day:I
    .end local v4           #i:I
    .end local v5           #json:Lorg/json/JSONObject;
    :goto_1
    return-void

    .line 229
    :catch_0
    move-exception v3

    .line 230
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public saveLastChannelId(Ljava/lang/String;)V
    .locals 2
    .parameter "channel_id"

    .prologue
    .line 285
    iget-object v0, p0, Lfm/douban/controller/ChannelManager;->fmsp:Lfm/douban/model/FMSharedPreferences;

    const-string v1, "last_channel"

    invoke-virtual {v0, v1, p1}, Lfm/douban/model/FMSharedPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 286
    return-void
.end method
