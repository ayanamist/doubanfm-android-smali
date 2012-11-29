.class public Lfm/douban/model/SongStore;
.super Ljava/lang/Object;
.source "SongStore.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x1000

.field private static final FM_FILE:Ljava/lang/String; = "fm.music"

.field private static final MIN_MP3_SPACE:J = 0x200000L

.field private static final MP_INFO:Ljava/lang/String; = "\u00a9 2005\uff0d2012 douban.com, all rights reserved"

.field public static final SKIP_BYTE:J = 0x64L

.field private static final TAG:Ljava/lang/String; = "SongStore"

.field private static final TMP_FILE:Ljava/lang/String; = "music.tmp"


# instance fields
.field private context:Landroid/content/Context;

.field private db:Lfm/douban/model/RadioDB;

.field private path:Ljava/lang/String;

.field private songFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "ctx"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lfm/douban/model/SongStore;->context:Landroid/content/Context;

    .line 44
    iget-object v2, p0, Lfm/douban/model/SongStore;->context:Landroid/content/Context;

    invoke-static {v2}, Lfm/douban/FmApp;->getRadioManager(Landroid/content/Context;)Lfm/douban/controller/RadioManager;

    move-result-object v1

    .line 45
    .local v1, rm:Lfm/douban/controller/RadioManager;
    invoke-virtual {v1}, Lfm/douban/controller/RadioManager;->getDB()Lfm/douban/model/RadioDB;

    move-result-object v2

    iput-object v2, p0, Lfm/douban/model/SongStore;->db:Lfm/douban/model/RadioDB;

    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/Android/data/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lfm/douban/FmApp;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/.music/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lfm/douban/model/SongStore;->path:Ljava/lang/String;

    .line 49
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lfm/douban/model/SongStore;->path:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 50
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 51
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 54
    :cond_0
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lfm/douban/model/SongStore;->path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "fm.music"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lfm/douban/model/SongStore;->songFile:Ljava/io/File;

    .line 55
    iget-object v2, p0, Lfm/douban/model/SongStore;->songFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 56
    const-string v2, "SongStore"

    const-string v3, "file fm.music create"

    invoke-static {v2, v3}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :try_start_0
    iget-object v2, p0, Lfm/douban/model/SongStore;->songFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :cond_1
    :goto_0
    return-void

    .line 59
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public cleanStore()Z
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lfm/douban/model/SongStore;->songFile:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lfm/douban/model/SongStore;->songFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    .line 238
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getFD()Ljava/io/FileDescriptor;
    .locals 6

    .prologue
    .line 218
    const/4 v1, 0x0

    .line 220
    .local v1, fd:Ljava/io/FileDescriptor;
    :try_start_0
    new-instance v2, Ljava/io/RandomAccessFile;

    iget-object v3, p0, Lfm/douban/model/SongStore;->songFile:Ljava/io/File;

    const-string v4, "r"

    invoke-direct {v2, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 221
    .local v2, rf:Ljava/io/RandomAccessFile;
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 222
    const-string v3, "SongStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getFD "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    .end local v2           #rf:Ljava/io/RandomAccessFile;
    :goto_0
    return-object v1

    .line 223
    :catch_0
    move-exception v0

    .line 224
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getStart(J)J
    .locals 15
    .parameter "len"

    .prologue
    .line 109
    const-wide/16 v7, 0x0

    .line 110
    .local v7, start:J
    invoke-virtual {p0}, Lfm/douban/model/SongStore;->length()J

    move-result-wide v4

    .line 112
    .local v4, now:J
    add-long v9, v4, p1

    const-wide/16 v11, 0x64

    add-long/2addr v9, v11

    invoke-virtual {p0}, Lfm/douban/model/SongStore;->size()J

    move-result-wide v11

    const-wide/32 v13, 0x200000

    add-long/2addr v11, v13

    cmp-long v9, v9, v11

    if-gez v9, :cond_0

    .line 113
    const-string v9, "SongStore"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "not full return start = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    .end local v4           #now:J
    :goto_0
    return-wide v4

    .line 117
    .restart local v4       #now:J
    :cond_0
    iget-object v9, p0, Lfm/douban/model/SongStore;->db:Lfm/douban/model/RadioDB;

    invoke-virtual {v9}, Lfm/douban/model/RadioDB;->getDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 118
    .local v2, d:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x0

    .line 120
    .local v1, cursor:Landroid/database/Cursor;
    const/4 v9, 0x1

    :try_start_0
    new-array v0, v9, [Ljava/lang/String;

    .line 121
    .local v0, args:[Ljava/lang/String;
    const/4 v9, 0x0

    const-string v10, "p"

    aput-object v10, v0, v9

    .line 124
    const-string v9, "select song_id from offline_movement where type=? order by rtime desc limit 1"

    invoke-virtual {v2, v9, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 126
    const-string v6, "-1"

    .line 127
    .local v6, play_id:Ljava/lang/String;
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    .line 128
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 129
    const/4 v9, 0x0

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 131
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 133
    const-string v9, "SongStore"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "now play song_id = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const/4 v9, 0x2

    new-array v0, v9, [Ljava/lang/String;

    .line 136
    const/4 v9, 0x0

    aput-object v6, v0, v9

    .line 137
    const/4 v9, 0x1

    sub-long v10, v4, p1

    const-wide/16 v12, 0x64

    sub-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v0, v9

    .line 138
    const-string v9, "SongStore"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "eof="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " most large start="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x1

    aget-object v11, v0, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const-string v9, "select start_pos from finished_task where song_id != ? and played=1 and start_pos <= ? order by rtime desc limit 1"

    invoke-virtual {v2, v9, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 143
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v9

    if-nez v9, :cond_2

    .line 144
    const-string v9, "SongStore"

    const-string v10, "no recent played song match matched"

    invoke-static {v9, v10}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 147
    const-string v9, "select start_pos from finished_task where song_id != ? and start_pos <= ? order by rtime desc limit 1"

    invoke-virtual {v2, v9, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 149
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v9

    if-nez v9, :cond_2

    .line 150
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 151
    const-string v9, "SongStore"

    const-string v10, "no oldest downloaded song matched"

    invoke-static {v9, v10}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const-string v9, "select start_pos from finished_task where song_id != ? and start_pos <= ? order by start_pos limit 1"

    invoke-virtual {v2, v9, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 158
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_3

    .line 159
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 160
    const/4 v9, 0x0

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 162
    :cond_3
    const-string v9, "SongStore"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "start used "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v9

    if-nez v9, :cond_4

    .line 167
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .end local v0           #args:[Ljava/lang/String;
    .end local v6           #play_id:Ljava/lang/String;
    :cond_4
    :goto_1
    move-wide v4, v7

    .line 171
    goto/16 :goto_0

    .line 163
    :catch_0
    move-exception v3

    .line 164
    .local v3, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 166
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v9

    if-nez v9, :cond_4

    .line 167
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 166
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v10

    if-nez v10, :cond_5

    .line 167
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v9
.end method

.method public declared-synchronized getTempFile()Ljava/io/File;
    .locals 5

    .prologue
    .line 98
    monitor-enter p0

    const/4 v1, 0x0

    .line 100
    .local v1, file:Ljava/io/File;
    :try_start_0
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lfm/douban/model/SongStore;->path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "music.tmp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .end local v1           #file:Ljava/io/File;
    .local v2, file:Ljava/io/File;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 105
    .end local v2           #file:Ljava/io/File;
    .restart local v1       #file:Ljava/io/File;
    :goto_0
    monitor-exit p0

    return-object v1

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, e:Ljava/io/IOException;
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 98
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_2
    monitor-exit p0

    throw v3

    .line 102
    .end local v1           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2           #file:Ljava/io/File;
    .restart local v1       #file:Ljava/io/File;
    goto :goto_1

    .line 98
    .end local v1           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #file:Ljava/io/File;
    .restart local v1       #file:Ljava/io/File;
    goto :goto_2
.end method

.method public isFull()Z
    .locals 4

    .prologue
    .line 68
    invoke-virtual {p0}, Lfm/douban/model/SongStore;->length()J

    move-result-wide v0

    const-wide/32 v2, 0x200000

    add-long/2addr v0, v2

    invoke-virtual {p0}, Lfm/douban/model/SongStore;->size()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public length()J
    .locals 7

    .prologue
    .line 76
    iget-object v5, p0, Lfm/douban/model/SongStore;->db:Lfm/douban/model/RadioDB;

    invoke-virtual {v5}, Lfm/douban/model/RadioDB;->getDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 77
    .local v1, d:Landroid/database/sqlite/SQLiteDatabase;
    const-wide/16 v3, 0x0

    .line 78
    .local v3, now:J
    const/4 v0, 0x0

    .line 81
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_0
    const-string v5, "select max(end_pos) from finished_task"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 82
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 83
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 84
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    .line 89
    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_1

    .line 90
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 94
    :cond_1
    :goto_0
    return-wide v3

    .line 86
    :catch_0
    move-exception v2

    .line 87
    .local v2, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_1

    .line 90
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 89
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_2

    .line 90
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v5
.end method

.method public size()J
    .locals 2

    .prologue
    .line 72
    const-wide/32 v0, 0x6400000

    return-wide v0
.end method

.method public write(JLjava/io/File;)J
    .locals 17
    .parameter "start"
    .parameter "file"

    .prologue
    .line 175
    const/4 v9, 0x0

    .line 176
    .local v9, raf:Ljava/io/RandomAccessFile;
    const/4 v5, 0x0

    .line 177
    .local v5, fis:Ljava/io/FileInputStream;
    const-wide/16 v7, 0x0

    .line 179
    .local v7, len:J
    :try_start_0
    new-instance v10, Ljava/io/RandomAccessFile;

    move-object/from16 v0, p0

    iget-object v13, v0, Lfm/douban/model/SongStore;->songFile:Ljava/io/File;

    const-string v14, "rw"

    invoke-direct {v10, v13, v14}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 180
    .end local v9           #raf:Ljava/io/RandomAccessFile;
    .local v10, raf:Ljava/io/RandomAccessFile;
    :try_start_1
    new-instance v6, Ljava/io/FileInputStream;

    move-object/from16 v0, p3

    invoke-direct {v6, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 182
    .end local v5           #fis:Ljava/io/FileInputStream;
    .local v6, fis:Ljava/io/FileInputStream;
    :try_start_2
    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->length()J

    move-result-wide v7

    .line 185
    move-wide/from16 v0, p1

    invoke-virtual {v10, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 187
    const-string v13, "\u00a9 2005\uff0d2012 douban.com, all rights reserved"

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/io/RandomAccessFile;->write([B)V

    .line 190
    const-wide/16 v13, 0x64

    add-long v13, v13, p1

    invoke-virtual {v10, v13, v14}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 192
    const/16 v13, 0x1000

    new-array v2, v13, [B

    .line 193
    .local v2, buffer:[B
    const-wide/16 v11, 0x0

    .line 194
    .local v11, sum:J
    const/4 v3, 0x0

    .line 195
    .local v3, bytes:I
    :goto_0
    const/4 v13, 0x0

    const/16 v14, 0x1000

    invoke-virtual {v6, v2, v13, v14}, Ljava/io/FileInputStream;->read([BII)I

    move-result v3

    if-lez v3, :cond_0

    .line 196
    const/4 v13, 0x0

    invoke-virtual {v10, v2, v13, v3}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 197
    int-to-long v13, v3

    add-long/2addr v11, v13

    goto :goto_0

    .line 199
    :cond_0
    const-string v13, "SongStore"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "fm.music total write "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    .line 206
    if-eqz v10, :cond_1

    .line 207
    :try_start_3
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V

    .line 208
    :cond_1
    if-eqz v6, :cond_2

    .line 209
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_2
    move-object v5, v6

    .end local v6           #fis:Ljava/io/FileInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    move-object v9, v10

    .line 213
    .end local v2           #buffer:[B
    .end local v3           #bytes:I
    .end local v10           #raf:Ljava/io/RandomAccessFile;
    .end local v11           #sum:J
    .restart local v9       #raf:Ljava/io/RandomAccessFile;
    :cond_3
    :goto_1
    add-long v13, p1, v7

    const-wide/16 v15, 0x64

    add-long/2addr v13, v15

    return-wide v13

    .line 210
    .end local v5           #fis:Ljava/io/FileInputStream;
    .end local v9           #raf:Ljava/io/RandomAccessFile;
    .restart local v2       #buffer:[B
    .restart local v3       #bytes:I
    .restart local v6       #fis:Ljava/io/FileInputStream;
    .restart local v10       #raf:Ljava/io/RandomAccessFile;
    .restart local v11       #sum:J
    :catch_0
    move-exception v13

    move-object v5, v6

    .end local v6           #fis:Ljava/io/FileInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    move-object v9, v10

    .line 212
    .end local v10           #raf:Ljava/io/RandomAccessFile;
    .restart local v9       #raf:Ljava/io/RandomAccessFile;
    goto :goto_1

    .line 200
    .end local v2           #buffer:[B
    .end local v3           #bytes:I
    .end local v11           #sum:J
    :catch_1
    move-exception v4

    .line 201
    .local v4, e:Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 206
    if-eqz v9, :cond_4

    .line 207
    :try_start_5
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V

    .line 208
    :cond_4
    if-eqz v5, :cond_3

    .line 209
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 210
    :catch_2
    move-exception v13

    goto :goto_1

    .line 202
    .end local v4           #e:Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v4

    .line 203
    .local v4, e:Ljava/io/IOException;
    :goto_3
    :try_start_6
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 206
    if-eqz v9, :cond_5

    .line 207
    :try_start_7
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V

    .line 208
    :cond_5
    if-eqz v5, :cond_3

    .line 209
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_1

    .line 210
    :catch_4
    move-exception v13

    goto :goto_1

    .line 205
    .end local v4           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v13

    .line 206
    :goto_4
    if-eqz v9, :cond_6

    .line 207
    :try_start_8
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V

    .line 208
    :cond_6
    if-eqz v5, :cond_7

    .line 209
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 211
    :cond_7
    :goto_5
    throw v13

    .line 210
    :catch_5
    move-exception v14

    goto :goto_5

    .line 205
    .end local v9           #raf:Ljava/io/RandomAccessFile;
    .restart local v10       #raf:Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v13

    move-object v9, v10

    .end local v10           #raf:Ljava/io/RandomAccessFile;
    .restart local v9       #raf:Ljava/io/RandomAccessFile;
    goto :goto_4

    .end local v5           #fis:Ljava/io/FileInputStream;
    .end local v9           #raf:Ljava/io/RandomAccessFile;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    .restart local v10       #raf:Ljava/io/RandomAccessFile;
    :catchall_2
    move-exception v13

    move-object v5, v6

    .end local v6           #fis:Ljava/io/FileInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    move-object v9, v10

    .end local v10           #raf:Ljava/io/RandomAccessFile;
    .restart local v9       #raf:Ljava/io/RandomAccessFile;
    goto :goto_4

    .line 202
    .end local v9           #raf:Ljava/io/RandomAccessFile;
    .restart local v10       #raf:Ljava/io/RandomAccessFile;
    :catch_6
    move-exception v4

    move-object v9, v10

    .end local v10           #raf:Ljava/io/RandomAccessFile;
    .restart local v9       #raf:Ljava/io/RandomAccessFile;
    goto :goto_3

    .end local v5           #fis:Ljava/io/FileInputStream;
    .end local v9           #raf:Ljava/io/RandomAccessFile;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    .restart local v10       #raf:Ljava/io/RandomAccessFile;
    :catch_7
    move-exception v4

    move-object v5, v6

    .end local v6           #fis:Ljava/io/FileInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    move-object v9, v10

    .end local v10           #raf:Ljava/io/RandomAccessFile;
    .restart local v9       #raf:Ljava/io/RandomAccessFile;
    goto :goto_3

    .line 200
    .end local v9           #raf:Ljava/io/RandomAccessFile;
    .restart local v10       #raf:Ljava/io/RandomAccessFile;
    :catch_8
    move-exception v4

    move-object v9, v10

    .end local v10           #raf:Ljava/io/RandomAccessFile;
    .restart local v9       #raf:Ljava/io/RandomAccessFile;
    goto :goto_2

    .end local v5           #fis:Ljava/io/FileInputStream;
    .end local v9           #raf:Ljava/io/RandomAccessFile;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    .restart local v10       #raf:Ljava/io/RandomAccessFile;
    :catch_9
    move-exception v4

    move-object v5, v6

    .end local v6           #fis:Ljava/io/FileInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    move-object v9, v10

    .end local v10           #raf:Ljava/io/RandomAccessFile;
    .restart local v9       #raf:Ljava/io/RandomAccessFile;
    goto :goto_2
.end method
