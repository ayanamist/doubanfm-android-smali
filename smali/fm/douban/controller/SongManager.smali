.class public Lfm/douban/controller/SongManager;
.super Ljava/lang/Object;
.source "SongManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SongManager"


# instance fields
.field private api:Lfm/douban/api/Api;

.field private context:Landroid/content/Context;

.field private db:Lfm/douban/model/RadioDB;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "ctx"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lfm/douban/controller/SongManager;->context:Landroid/content/Context;

    .line 35
    iget-object v1, p0, Lfm/douban/controller/SongManager;->context:Landroid/content/Context;

    invoke-static {v1}, Lfm/douban/FmApp;->getRadioManager(Landroid/content/Context;)Lfm/douban/controller/RadioManager;

    move-result-object v0

    .line 36
    .local v0, rm:Lfm/douban/controller/RadioManager;
    invoke-virtual {v0}, Lfm/douban/controller/RadioManager;->getDB()Lfm/douban/model/RadioDB;

    move-result-object v1

    iput-object v1, p0, Lfm/douban/controller/SongManager;->db:Lfm/douban/model/RadioDB;

    .line 37
    invoke-virtual {v0}, Lfm/douban/controller/RadioManager;->getApi()Lfm/douban/api/Api;

    move-result-object v1

    iput-object v1, p0, Lfm/douban/controller/SongManager;->api:Lfm/douban/api/Api;

    .line 38
    return-void
.end method


# virtual methods
.method public checkTasks()Z
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 221
    const/4 v2, 0x0

    .line 222
    .local v2, finishEmpty:Z
    const/4 v5, 0x0

    .line 223
    .local v5, taskEmpty:Z
    const/4 v3, 0x0

    .line 224
    .local v3, opEmpty:Z
    iget-object v8, p0, Lfm/douban/controller/SongManager;->db:Lfm/douban/model/RadioDB;

    invoke-virtual {v8}, Lfm/douban/model/RadioDB;->getDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 225
    .local v1, d:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v8

    if-nez v8, :cond_1

    .line 258
    :cond_0
    :goto_0
    return v6

    .line 228
    :cond_1
    const-string v8, "select start_pos, end_pos, played, like, f.song_id, substr(title, 0, 16) from finished_task as f, download_task as t  where f.song_id=t.song_id order by start_pos"

    invoke-virtual {v1, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 232
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-lez v8, :cond_3

    .line 233
    const/4 v2, 0x0

    .line 237
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 239
    new-array v4, v6, [Ljava/lang/String;

    .line 240
    .local v4, select:[Ljava/lang/String;
    const-string v8, "1"

    aput-object v8, v4, v7

    .line 241
    const-string v8, "select like, is_finish, song_id, substr(title, 0, 10) from download_task where is_finish !=?"

    invoke-virtual {v1, v8, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 243
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-lez v8, :cond_4

    .line 244
    const/4 v5, 0x0

    .line 248
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 249
    const-string v8, "select h.song_id, substr(title, 0, 10), type, rtime from offline_movement as h, download_task as t where h.song_id=t.song_id"

    invoke-virtual {v1, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 251
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-lez v8, :cond_5

    .line 252
    const/4 v3, 0x0

    .line 256
    :goto_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 258
    if-eqz v2, :cond_2

    if-eqz v5, :cond_2

    if-nez v3, :cond_0

    :cond_2
    move v6, v7

    goto :goto_0

    .line 235
    .end local v4           #select:[Ljava/lang/String;
    :cond_3
    const/4 v2, 0x1

    goto :goto_1

    .line 246
    .restart local v4       #select:[Ljava/lang/String;
    :cond_4
    const/4 v5, 0x1

    goto :goto_2

    .line 254
    :cond_5
    const/4 v3, 0x1

    goto :goto_3
.end method

.method public clearOfflineRecords()V
    .locals 3

    .prologue
    .line 374
    iget-object v1, p0, Lfm/douban/controller/SongManager;->db:Lfm/douban/model/RadioDB;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lfm/douban/model/RadioDB;->getDB(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 375
    .local v0, d:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 377
    :try_start_0
    const-string v1, "delete from offline_movement where song_id in (select song_id from offline_movement order by rtime limit 100)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 381
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 383
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 386
    return-void

    .line 383
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method public clearup()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 495
    iget-object v6, p0, Lfm/douban/controller/SongManager;->context:Landroid/content/Context;

    invoke-static {v6}, Lfm/douban/FmApp;->getRadioManager(Landroid/content/Context;)Lfm/douban/controller/RadioManager;

    move-result-object v6

    invoke-virtual {v6}, Lfm/douban/controller/RadioManager;->getSongTaskManager()Lfm/douban/controller/SongTaskManager;

    move-result-object v6

    invoke-virtual {v6}, Lfm/douban/controller/SongTaskManager;->stop()V

    .line 496
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 497
    .local v4, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v6, p0, Lfm/douban/controller/SongManager;->db:Lfm/douban/model/RadioDB;

    invoke-virtual {v6, v7}, Lfm/douban/model/RadioDB;->getDB(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 498
    .local v1, d:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 499
    const/4 v0, 0x0

    .line 501
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_0
    const-string v6, "select song_id from finished_task"

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 502
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_0

    .line 503
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 504
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-ge v3, v6, :cond_0

    .line 505
    const/4 v6, 0x0

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 506
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 504
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 509
    .end local v3           #i:I
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 510
    const-string v6, "select song_id from download_task where is_finish=\'2\'"

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 511
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_1

    .line 512
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 513
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-ge v3, v6, :cond_1

    .line 514
    const/4 v6, 0x0

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 515
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 513
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 518
    .end local v3           #i:I
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 519
    const-string v6, "delete from finished_task"

    invoke-virtual {v1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 520
    const-string v6, "delete from download_task"

    invoke-virtual {v1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 522
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 523
    iget-object v6, p0, Lfm/douban/controller/SongManager;->context:Landroid/content/Context;

    invoke-static {v6}, Lfm/douban/FmApp;->getRadioManager(Landroid/content/Context;)Lfm/douban/controller/RadioManager;

    move-result-object v6

    invoke-virtual {v6}, Lfm/douban/controller/RadioManager;->getSongTaskManager()Lfm/douban/controller/SongTaskManager;

    move-result-object v6

    invoke-virtual {v6}, Lfm/douban/controller/SongTaskManager;->cleanup()Z

    .line 524
    invoke-virtual {p0}, Lfm/douban/controller/SongManager;->syncOfflineRecords()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 528
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 530
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 531
    .local v5, sb:Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_3

    .line 532
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v3, v6, :cond_2

    .line 534
    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 525
    .end local v3           #i:I
    .end local v5           #sb:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v2

    .line 526
    .local v2, e:Landroid/database/SQLException;
    :try_start_1
    invoke-virtual {v2}, Landroid/database/SQLException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 528
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_2

    .end local v2           #e:Landroid/database/SQLException;
    :catchall_0
    move-exception v6

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v6

    .line 537
    .restart local v3       #i:I
    .restart local v5       #sb:Ljava/lang/StringBuilder;
    :cond_3
    const-string v6, "SongManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cleared songs:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    iget-object v6, p0, Lfm/douban/controller/SongManager;->context:Landroid/content/Context;

    invoke-static {v6}, Lfm/douban/FmApp;->getRadioManager(Landroid/content/Context;)Lfm/douban/controller/RadioManager;

    move-result-object v6

    invoke-virtual {v6}, Lfm/douban/controller/RadioManager;->getSharedPreferences()Lfm/douban/model/FMSharedPreferences;

    move-result-object v6

    const-string v7, "cleared_songids"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lfm/douban/model/FMSharedPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 539
    return-void
.end method

.method public getOfflineRecords()Ljava/lang/String;
    .locals 8

    .prologue
    .line 347
    iget-object v6, p0, Lfm/douban/controller/SongManager;->db:Lfm/douban/model/RadioDB;

    invoke-virtual {v6}, Lfm/douban/model/RadioDB;->getDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 348
    .local v1, d:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v4, 0x0

    .line 349
    .local v4, ret:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 350
    .local v5, sb:Ljava/lang/StringBuilder;
    const-string v6, "select song_id, type, rtime from offline_movement order by rtime limit 100"

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 352
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 353
    .local v3, n:I
    if-lez v3, :cond_2

    .line 354
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 355
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 356
    const/4 v6, 0x0

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    const/4 v6, 0x1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    const/4 v6, 0x2

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    add-int/lit8 v6, v3, -0x1

    if-ge v2, v6, :cond_0

    .line 362
    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 355
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 366
    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 368
    .end local v2           #i:I
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 370
    return-object v4
.end method

.method public getOfflineSong(Ljava/lang/String;)Lfm/douban/model/OfflineSong;
    .locals 9
    .parameter "song_id"

    .prologue
    const/4 v8, 0x1

    .line 171
    const/4 v5, 0x0

    .line 172
    .local v5, song:Lfm/douban/model/OfflineSong;
    iget-object v7, p0, Lfm/douban/controller/SongManager;->db:Lfm/douban/model/RadioDB;

    invoke-virtual {v7}, Lfm/douban/model/RadioDB;->getDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 173
    .local v1, d:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v0, 0x0

    .line 174
    .local v0, cursor:Landroid/database/Cursor;
    new-array v4, v8, [Ljava/lang/String;

    .line 175
    .local v4, select:[Ljava/lang/String;
    const/4 v7, 0x0

    aput-object p1, v4, v7

    .line 177
    :try_start_0
    const-string v7, "select * from download_task where song_id=?"

    invoke-virtual {v1, v7, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 178
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-lez v7, :cond_1

    .line 179
    const-string v7, "SongManager"

    const-string v8, "****getOfflineSong got one!"

    invoke-static {v7, v8}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 181
    new-instance v6, Lfm/douban/model/OfflineSong;

    invoke-direct {v6}, Lfm/douban/model/OfflineSong;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    .end local v5           #song:Lfm/douban/model/OfflineSong;
    .local v6, song:Lfm/douban/model/OfflineSong;
    :try_start_1
    const-string v7, "song_id"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lfm/douban/model/OfflineSong;->song_id:Ljava/lang/String;

    .line 183
    const-string v7, "aid"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lfm/douban/model/OfflineSong;->album_id:Ljava/lang/String;

    .line 184
    const-string v7, "url"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lfm/douban/model/OfflineSong;->url:Ljava/lang/String;

    .line 185
    const-string v7, "title"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lfm/douban/model/OfflineSong;->title:Ljava/lang/String;

    .line 186
    const-string v7, "artist"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lfm/douban/model/OfflineSong;->artist:Ljava/lang/String;

    .line 187
    const-string v7, "albumtitle"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lfm/douban/model/OfflineSong;->album:Ljava/lang/String;

    .line 188
    const-string v7, "album"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lfm/douban/model/OfflineSong;->album_path:Ljava/lang/String;

    .line 189
    const-string v7, "picture"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lfm/douban/model/OfflineSong;->picture:Ljava/lang/String;

    .line 191
    const-string v7, "like"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 192
    .local v3, i:Ljava/lang/String;
    const-string v7, "1"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, v6, Lfm/douban/model/OfflineSong;->like:Z

    .line 193
    const-string v7, "rating_avg"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v7

    iput-wide v7, v6, Lfm/douban/model/OfflineSong;->rating_avg:D

    .line 194
    const-string v7, "public_time"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lfm/douban/model/OfflineSong;->public_time:Ljava/lang/String;

    .line 195
    const/4 v7, 0x1

    iput v7, v6, Lfm/douban/model/OfflineSong;->offline:I

    .line 196
    const-string v7, "ssid"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lfm/douban/model/OfflineSong;->ssid:Ljava/lang/String;

    .line 197
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 199
    const-string v7, "select * from finished_task where song_id=?"

    invoke-virtual {v1, v7, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 200
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-lez v7, :cond_0

    .line 201
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 202
    const-string v7, "start_pos"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v6, Lfm/douban/model/OfflineSong;->start:J

    .line 203
    const-string v7, "end_pos"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v6, Lfm/douban/model/OfflineSong;->end:J

    .line 204
    const-string v7, "played"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iput v7, v6, Lfm/douban/model/OfflineSong;->played:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    move-object v5, v6

    .line 211
    .end local v3           #i:Ljava/lang/String;
    .end local v6           #song:Lfm/douban/model/OfflineSong;
    .restart local v5       #song:Lfm/douban/model/OfflineSong;
    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_2

    .line 212
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 216
    :cond_2
    :goto_0
    return-object v5

    .line 208
    :catch_0
    move-exception v2

    .line 209
    .local v2, e:Landroid/database/SQLException;
    :goto_1
    :try_start_2
    invoke-virtual {v2}, Landroid/database/SQLException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 211
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_2

    .line 212
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 211
    .end local v2           #e:Landroid/database/SQLException;
    :catchall_0
    move-exception v7

    :goto_2
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v8

    if-nez v8, :cond_3

    .line 212
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v7

    .line 211
    .end local v5           #song:Lfm/douban/model/OfflineSong;
    .restart local v6       #song:Lfm/douban/model/OfflineSong;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6           #song:Lfm/douban/model/OfflineSong;
    .restart local v5       #song:Lfm/douban/model/OfflineSong;
    goto :goto_2

    .line 208
    .end local v5           #song:Lfm/douban/model/OfflineSong;
    .restart local v6       #song:Lfm/douban/model/OfflineSong;
    :catch_1
    move-exception v2

    move-object v5, v6

    .end local v6           #song:Lfm/douban/model/OfflineSong;
    .restart local v5       #song:Lfm/douban/model/OfflineSong;
    goto :goto_1
.end method

.method public getOfflineSongCount()I
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 389
    const/4 v4, 0x0

    .line 390
    .local v4, ret:I
    iget-object v5, p0, Lfm/douban/controller/SongManager;->db:Lfm/douban/model/RadioDB;

    invoke-virtual {v5, v6}, Lfm/douban/model/RadioDB;->getDB(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 392
    .local v2, d:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v5, 0x2

    :try_start_0
    new-array v0, v5, [Ljava/lang/String;

    .line 393
    .local v0, args:[Ljava/lang/String;
    const/4 v5, 0x0

    const-string v6, "b"

    aput-object v6, v0, v5

    .line 394
    const/4 v5, 0x1

    const-string v6, "u"

    aput-object v6, v0, v5

    .line 395
    const-string v5, "select count(*) from finished_task where song_id not in (select song_id from offline_movement where type in (?, ?))"

    invoke-virtual {v2, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 398
    .local v1, cursor:Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 399
    const/4 v5, 0x0

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 400
    const-string v5, "SongManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "offline song count = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    .end local v0           #args:[Ljava/lang/String;
    .end local v1           #cursor:Landroid/database/Cursor;
    :goto_0
    return v4

    .line 402
    :catch_0
    move-exception v3

    .line 403
    .local v3, e:Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getRandomSong()Lfm/douban/model/OfflineSong;
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 439
    const/4 v5, 0x0

    .line 440
    .local v5, song_id:Ljava/lang/String;
    iget-object v6, p0, Lfm/douban/controller/SongManager;->db:Lfm/douban/model/RadioDB;

    invoke-virtual {v6}, Lfm/douban/model/RadioDB;->getDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 441
    .local v2, d:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x0

    .line 443
    .local v1, cursor:Landroid/database/Cursor;
    :try_start_0
    const-string v6, "select song_id from finished_task where played=0 and id not in (select id from finished_task where played=1 order by rtime desc limit 5)  order by random() limit 1"

    const/4 v9, 0x0

    invoke-virtual {v2, v6, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 446
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-nez v6, :cond_0

    .line 447
    const-string v6, "SongManager"

    const-string v9, "no not played"

    invoke-static {v6, v9}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 449
    const-string v6, "select song_id from finished_task where id not in (select id from finished_task where played=1 order by rtime desc limit 5)  order by random() limit 1"

    const/4 v9, 0x0

    invoke-virtual {v2, v6, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 454
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-nez v6, :cond_1

    .line 455
    const-string v6, "SongManager"

    const-string v9, "no not recented 5 played"

    invoke-static {v6, v9}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 457
    const-string v6, "select song_id from finished_task where id not in (select id from finished_task where played=1 order by rtime desc limit 1)  order by random() limit 1"

    const/4 v9, 0x0

    invoke-virtual {v2, v6, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 462
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-nez v6, :cond_2

    .line 463
    const-string v6, "SongManager"

    const-string v9, "no not recented 1 played"

    invoke-static {v6, v9}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 465
    const-string v6, "select song_id from finished_task order by random() limit 1"

    const/4 v9, 0x0

    invoke-virtual {v2, v6, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 467
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_3

    .line 468
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 469
    const/4 v6, 0x0

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 470
    const/4 v6, 0x1

    new-array v0, v6, [Ljava/lang/Object;

    .line 471
    .local v0, args:[Ljava/lang/Object;
    const/4 v6, 0x0

    aput-object v5, v0, v6

    .line 472
    const-string v6, "update finished_task set played=1, rtime=datetime(\'now\',\'localtime\') where song_id=?"

    invoke-virtual {v2, v6, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 475
    .end local v0           #args:[Ljava/lang/Object;
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 479
    if-eqz v1, :cond_6

    move v6, v7

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v9

    if-nez v9, :cond_7

    :goto_1
    and-int/2addr v6, v7

    if-eqz v6, :cond_4

    .line 480
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 485
    :cond_4
    :goto_2
    const-string v6, "SongManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "******* getRandomSong:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    const/4 v4, 0x0

    .line 487
    .local v4, song:Lfm/douban/model/OfflineSong;
    if-eqz v5, :cond_5

    .line 488
    invoke-virtual {p0, v5}, Lfm/douban/controller/SongManager;->getOfflineSong(Ljava/lang/String;)Lfm/douban/model/OfflineSong;

    move-result-object v4

    .line 491
    :cond_5
    return-object v4

    .end local v4           #song:Lfm/douban/model/OfflineSong;
    :cond_6
    move v6, v8

    .line 479
    goto :goto_0

    :cond_7
    move v7, v8

    goto :goto_1

    .line 476
    :catch_0
    move-exception v3

    .line 477
    .local v3, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 479
    if-eqz v1, :cond_8

    move v6, v7

    :goto_3
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v9

    if-nez v9, :cond_9

    :goto_4
    and-int/2addr v6, v7

    if-eqz v6, :cond_4

    .line 480
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :cond_8
    move v6, v8

    .line 479
    goto :goto_3

    :cond_9
    move v7, v8

    goto :goto_4

    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    move-object v9, v6

    if-eqz v1, :cond_b

    move v6, v7

    :goto_5
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v10

    if-nez v10, :cond_c

    :goto_6
    and-int/2addr v6, v7

    if-eqz v6, :cond_a

    .line 480
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_a
    throw v9

    :cond_b
    move v6, v8

    .line 479
    goto :goto_5

    :cond_c
    move v7, v8

    goto :goto_6
.end method

.method public getSongIds()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 127
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 128
    .local v5, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v7, p0, Lfm/douban/controller/SongManager;->db:Lfm/douban/model/RadioDB;

    invoke-virtual {v7}, Lfm/douban/model/RadioDB;->getDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 129
    .local v2, d:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x0

    .line 131
    .local v1, cursor:Landroid/database/Cursor;
    :try_start_0
    const-string v7, "select song_id from finished_task"

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 132
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-lez v7, :cond_0

    .line 133
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 134
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-ge v4, v7, :cond_0

    .line 135
    const/4 v7, 0x0

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 134
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 139
    .end local v4           #i:I
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 140
    const-string v7, "select song_id from download_task where is_finish=\'2\'"

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 141
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-lez v7, :cond_1

    .line 142
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 143
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-ge v4, v7, :cond_1

    .line 144
    const/4 v7, 0x0

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 143
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 148
    .end local v4           #i:I
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_2

    .line 153
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 157
    :cond_2
    :goto_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 158
    iget-object v7, p0, Lfm/douban/controller/SongManager;->context:Landroid/content/Context;

    invoke-static {v7}, Lfm/douban/FmApp;->getRadioManager(Landroid/content/Context;)Lfm/douban/controller/RadioManager;

    move-result-object v7

    invoke-virtual {v7}, Lfm/douban/controller/RadioManager;->getSharedPreferences()Lfm/douban/model/FMSharedPreferences;

    move-result-object v7

    const-string v8, "cleared_songids"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Lfm/douban/model/FMSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, clearedSongs:Ljava/lang/String;
    const-string v7, ""

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 160
    const-string v7, ";"

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 161
    .local v6, sids:[Ljava/lang/String;
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_3
    array-length v7, v6

    if-ge v4, v7, :cond_4

    .line 162
    aget-object v7, v6, v4

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 149
    .end local v0           #clearedSongs:Ljava/lang/String;
    .end local v4           #i:I
    .end local v6           #sids:[Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 150
    .local v3, e:Landroid/database/SQLException;
    :try_start_1
    invoke-virtual {v3}, Landroid/database/SQLException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_2

    .line 153
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 152
    .end local v3           #e:Landroid/database/SQLException;
    :catchall_0
    move-exception v7

    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v8

    if-nez v8, :cond_3

    .line 153
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v7

    .line 165
    .restart local v0       #clearedSongs:Ljava/lang/String;
    :cond_4
    const-string v7, "SongManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cleared Song when finish table is empty:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    .end local v0           #clearedSongs:Ljava/lang/String;
    :cond_5
    return-object v5
.end method

.method public info()Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 261
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v5, ""

    invoke-direct {v3, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 262
    .local v3, s:Ljava/lang/StringBuffer;
    iget-object v5, p0, Lfm/douban/controller/SongManager;->db:Lfm/douban/model/RadioDB;

    invoke-virtual {v5}, Lfm/douban/model/RadioDB;->getDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 263
    .local v1, d:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v5

    if-nez v5, :cond_0

    .line 264
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 342
    :goto_0
    return-object v5

    .line 266
    :cond_0
    const-string v5, "select start_pos, end_pos, played, like, f.song_id, substr(title, 0, 16) from finished_task as f, download_task as t  where f.song_id=t.song_id order by start_pos"

    invoke-virtual {v1, v5, v11}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 270
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_1

    .line 271
    const-string v5, ">> finish songs: \n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 272
    const-string v5, "| start\t| end\t| played\t| like\t| song_id\t| title\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 273
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 274
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 275
    const-string v5, "| "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 276
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 277
    const-string v5, "\t| "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 278
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 279
    const-string v5, "\t| "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 280
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 281
    const-string v5, "\t| "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 282
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 283
    const-string v5, "\t| "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 284
    const/4 v5, 0x4

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 285
    const-string v5, "\t| "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 286
    const/4 v5, 0x5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 287
    const-string v5, "\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 288
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 274
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 291
    .end local v2           #i:I
    :cond_1
    const-string v5, ">> no finish song ;) \n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 293
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 295
    new-array v4, v8, [Ljava/lang/String;

    .line 296
    .local v4, select:[Ljava/lang/String;
    const-string v5, "1"

    aput-object v5, v4, v7

    .line 297
    const-string v5, "select like, is_finish, song_id, substr(title, 0, 10) from download_task where is_finish !=?"

    invoke-virtual {v1, v5, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 299
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_3

    .line 300
    const-string v5, ">> unfinish songs: \n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 301
    const-string v5, "| like\t| status\t| song_id\t| title \n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 302
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 303
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 304
    const-string v5, "| "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 305
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 306
    const-string v5, "\t| "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 307
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 308
    const-string v5, "\t| "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 309
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 310
    const-string v5, "\t| "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 311
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 312
    const-string v5, "\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 313
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 303
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 316
    .end local v2           #i:I
    :cond_3
    const-string v5, ">> no unfinish song ;) \n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 318
    :cond_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 319
    const-string v5, "select h.song_id, substr(title, 0, 10), type, rtime from offline_movement as h, download_task as t where h.song_id=t.song_id"

    invoke-virtual {v1, v5, v11}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 321
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_5

    .line 322
    const-string v5, ">> song op history: \n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 323
    const-string v5, "| song_id\t| title \t| op\t| time\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 324
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 325
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_3
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-ge v2, v5, :cond_6

    .line 326
    const-string v5, "| "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 327
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 328
    const-string v5, "\t| "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 329
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 330
    const-string v5, "\t| "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 331
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 332
    const-string v5, "\t| "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 333
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 334
    const-string v5, "\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 335
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 325
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 338
    .end local v2           #i:I
    :cond_5
    const-string v5, ">> no song op history;) \n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 340
    :cond_6
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 342
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0
.end method

.method public isCacheEmpty()Z
    .locals 6

    .prologue
    .line 546
    const/4 v2, 0x1

    .line 548
    .local v2, empty:Z
    :try_start_0
    iget-object v4, p0, Lfm/douban/controller/SongManager;->db:Lfm/douban/model/RadioDB;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lfm/douban/model/RadioDB;->getDB(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 550
    .local v3, sqlDB:Landroid/database/sqlite/SQLiteDatabase;
    const-string v4, "select * from finished_task limit 1"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 551
    .local v0, c:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_0

    .line 552
    const/4 v2, 0x0

    .line 554
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 558
    .end local v0           #c:Landroid/database/Cursor;
    .end local v3           #sqlDB:Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    return v2

    .line 555
    :catch_0
    move-exception v1

    .line 556
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public needSkip(Ljava/lang/String;)Z
    .locals 9
    .parameter "song_id"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 410
    const/4 v4, 0x0

    .line 411
    .local v4, ret:Z
    iget-object v7, p0, Lfm/douban/controller/SongManager;->db:Lfm/douban/model/RadioDB;

    invoke-virtual {v7}, Lfm/douban/model/RadioDB;->getDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 413
    .local v2, d:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v7, 0x3

    :try_start_0
    new-array v0, v7, [Ljava/lang/String;

    .line 414
    .local v0, args:[Ljava/lang/String;
    const/4 v7, 0x0

    const-string v8, "b"

    aput-object v8, v0, v7

    .line 415
    const/4 v7, 0x1

    const-string v8, "u"

    aput-object v8, v0, v7

    .line 416
    const/4 v7, 0x2

    aput-object p1, v0, v7

    .line 417
    const-string v7, "select 1 from (select song_id from offline_movement where type in (?,?)) where song_id=?"

    invoke-virtual {v2, v7, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 419
    .local v1, cursor:Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-lez v7, :cond_1

    move v4, v5

    .line 420
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 422
    if-nez v4, :cond_0

    .line 423
    const/4 v7, 0x0

    aput-object p1, v0, v7

    .line 424
    const/4 v7, 0x1

    const-string v8, "1"

    aput-object v8, v0, v7

    .line 425
    const/4 v7, 0x2

    const-string v8, "2"

    aput-object v8, v0, v7

    .line 426
    const-string v7, "select 1 from download_task where song_id=? and is_finish in (?, ?)"

    invoke-virtual {v2, v7, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 428
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-lez v7, :cond_2

    move v4, v5

    .line 429
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 434
    .end local v0           #args:[Ljava/lang/String;
    .end local v1           #cursor:Landroid/database/Cursor;
    :cond_0
    :goto_2
    return v4

    .restart local v0       #args:[Ljava/lang/String;
    .restart local v1       #cursor:Landroid/database/Cursor;
    :cond_1
    move v4, v6

    .line 419
    goto :goto_0

    :cond_2
    move v4, v6

    .line 428
    goto :goto_1

    .line 431
    .end local v0           #args:[Ljava/lang/String;
    .end local v1           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v3

    .line 432
    .local v3, e:Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    goto :goto_2
.end method

.method public saveHistory(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "sid"
    .parameter "type"

    .prologue
    const/4 v6, 0x0

    .line 96
    iget-object v5, p0, Lfm/douban/controller/SongManager;->db:Lfm/douban/model/RadioDB;

    invoke-virtual {v5, v6}, Lfm/douban/model/RadioDB;->getDB(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 97
    .local v3, d:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x0

    .line 99
    .local v2, cursor:Landroid/database/Cursor;
    :try_start_0
    const-string v5, "SongManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "saveHistory "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const/4 v5, 0x1

    new-array v0, v5, [Ljava/lang/String;

    .line 101
    .local v0, arg:[Ljava/lang/String;
    const/4 v5, 0x0

    aput-object p1, v0, v5

    .line 102
    const-string v5, "select song_id from offline_movement where type=\'u\' and song_id = ?"

    invoke-virtual {v3, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 103
    const/4 v1, 0x0

    .line 104
    .local v1, args:[Ljava/lang/Object;
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_1

    .line 105
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 106
    const/4 v5, 0x1

    new-array v1, v5, [Ljava/lang/Object;

    .line 107
    const/4 v5, 0x0

    aput-object p1, v1, v5

    .line 108
    const-string v5, "update offline_movement set rtime=datetime(\'now\',\'localtime\') where song_id=?"

    invoke-virtual {v3, v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :goto_0
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_0

    .line 120
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 124
    .end local v0           #arg:[Ljava/lang/String;
    .end local v1           #args:[Ljava/lang/Object;
    :cond_0
    :goto_1
    return-void

    .line 111
    .restart local v0       #arg:[Ljava/lang/String;
    .restart local v1       #args:[Ljava/lang/Object;
    :cond_1
    const/4 v5, 0x2

    :try_start_1
    new-array v1, v5, [Ljava/lang/Object;

    .line 112
    const/4 v5, 0x0

    aput-object p1, v1, v5

    .line 113
    const/4 v5, 0x1

    aput-object p2, v1, v5

    .line 114
    const-string v5, "replace into offline_movement values(?, ?, datetime(\'now\',\'localtime\'))"

    invoke-virtual {v3, v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 116
    .end local v0           #arg:[Ljava/lang/String;
    .end local v1           #args:[Ljava/lang/Object;
    :catch_0
    move-exception v4

    .line 117
    .local v4, e:Landroid/database/SQLException;
    :try_start_2
    invoke-virtual {v4}, Landroid/database/SQLException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 119
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_0

    .line 120
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 119
    .end local v4           #e:Landroid/database/SQLException;
    :catchall_0
    move-exception v5

    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_2

    .line 120
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v5
.end method

.method public saveSongs(Lorg/json/JSONArray;)V
    .locals 7
    .parameter "songs"

    .prologue
    const/4 v6, 0x0

    .line 41
    iget-object v5, p0, Lfm/douban/controller/SongManager;->db:Lfm/douban/model/RadioDB;

    invoke-virtual {v5, v6}, Lfm/douban/model/RadioDB;->getDB(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 42
    .local v1, d:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 43
    const/16 v5, 0x10

    new-array v0, v5, [Ljava/lang/Object;

    .line 45
    .local v0, args:[Ljava/lang/Object;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    if-ge v3, v5, :cond_1

    .line 47
    :try_start_1
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 48
    .local v4, s:Lorg/json/JSONObject;
    const-string v5, "sid"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lfm/douban/controller/SongManager;->needSkip(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 49
    const/4 v5, 0x0

    const-string v6, "sid"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v5

    .line 50
    const/4 v5, 0x1

    const-string v6, "aid"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v5

    .line 51
    const/4 v5, 0x2

    const-string v6, "picture"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v5

    .line 52
    const/4 v5, 0x3

    const-string v6, "albumtitle"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v5

    .line 53
    const/4 v5, 0x4

    const-string v6, "company"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v5

    .line 54
    const/4 v5, 0x5

    const-string v6, "rating_avg"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v5

    .line 55
    const/4 v5, 0x6

    const-string v6, "public_time"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v5

    .line 56
    const/4 v5, 0x7

    const-string v6, "album"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v5

    .line 57
    const/16 v5, 0x8

    const-string v6, "artist"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v5

    .line 58
    const/16 v5, 0x9

    const-string v6, "title"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v5

    .line 59
    const/16 v5, 0xa

    const-string v6, "subtype"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v5

    .line 60
    const/16 v5, 0xb

    const-string v6, "length"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v5

    .line 61
    const/16 v5, 0xc

    const-string v6, "url"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v5

    .line 62
    const/16 v5, 0xd

    const-string v6, "like"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v5

    .line 63
    const/16 v5, 0xe

    const-string v6, "0"

    aput-object v6, v0, v5

    .line 64
    const/16 v5, 0xf

    const-string v6, "ssid"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v5

    .line 65
    const-string v5, "replace into download_task values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

    invoke-virtual {v1, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 45
    .end local v4           #s:Lorg/json/JSONObject;
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 67
    :catch_0
    move-exception v2

    .line 68
    .local v2, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 73
    .end local v2           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 74
    .restart local v2       #e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 76
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 79
    .end local v2           #e:Ljava/lang/Exception;
    :goto_2
    return-void

    .line 72
    :cond_1
    :try_start_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 76
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_2

    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5
.end method

.method public syncOfflineRecords()V
    .locals 5

    .prologue
    .line 562
    invoke-virtual {p0}, Lfm/douban/controller/SongManager;->getOfflineRecords()Ljava/lang/String;

    move-result-object v1

    .line 563
    .local v1, records:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 564
    const-string v2, "SongManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "syncOfflineRecords = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    new-instance v0, Lfm/douban/controller/SongManager$1;

    invoke-direct {v0, p0}, Lfm/douban/controller/SongManager$1;-><init>(Lfm/douban/controller/SongManager;)V

    .line 572
    .local v0, handler:Lcom/loopj/android/http/AsyncHttpResponseHandler;
    iget-object v2, p0, Lfm/douban/controller/SongManager;->api:Lfm/douban/api/Api;

    invoke-virtual {v2, v1, v0}, Lfm/douban/api/Api;->reportOfflineHistory(Ljava/lang/String;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 574
    .end local v0           #handler:Lcom/loopj/android/http/AsyncHttpResponseHandler;
    :cond_0
    return-void
.end method

.method public updateSongLike(Ljava/lang/String;Z)V
    .locals 5
    .parameter "sid"
    .parameter "like"

    .prologue
    const/4 v4, 0x0

    .line 82
    iget-object v3, p0, Lfm/douban/controller/SongManager;->db:Lfm/douban/model/RadioDB;

    invoke-virtual {v3, v4}, Lfm/douban/model/RadioDB;->getDB(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 84
    .local v1, d:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v3, 0x2

    :try_start_0
    new-array v0, v3, [Ljava/lang/Object;

    .line 85
    .local v0, args:[Ljava/lang/Object;
    const/4 v4, 0x0

    if-eqz p2, :cond_0

    const-string v3, "1"

    :goto_0
    aput-object v3, v0, v4

    .line 86
    const/4 v3, 0x1

    aput-object p1, v0, v3

    .line 87
    const-string v3, "update download_task set like=? where song_id = ?"

    invoke-virtual {v1, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    .end local v0           #args:[Ljava/lang/Object;
    :goto_1
    return-void

    .line 85
    .restart local v0       #args:[Ljava/lang/Object;
    :cond_0
    const-string v3, "0"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 88
    .end local v0           #args:[Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 89
    .local v2, e:Landroid/database/SQLException;
    :try_start_1
    invoke-virtual {v2}, Landroid/database/SQLException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 90
    .end local v2           #e:Landroid/database/SQLException;
    :catchall_0
    move-exception v3

    throw v3
.end method
