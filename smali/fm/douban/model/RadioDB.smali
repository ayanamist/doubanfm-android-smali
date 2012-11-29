.class public Lfm/douban/model/RadioDB;
.super Ljava/lang/Object;
.source "RadioDB.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfm/douban/model/RadioDB$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "radio.db"

.field private static DATABASE_VERSION:I = 0x0

.field public static final TABLE_ACCESS_TOKEN:Ljava/lang/String; = "access_token"

.field public static final TABLE_CHANNEL:Ljava/lang/String; = "channel"

.field private static final TABLE_EMAIL:Ljava/lang/String; = "email_history"

.field public static final TABLE_FINISH:Ljava/lang/String; = "finished_task"

.field public static final TABLE_OFFLINE_MOVE:Ljava/lang/String; = "offline_movement"

.field public static final TABLE_TASK:Ljava/lang/String; = "download_task"

.field public static final TABLE_TMP:Ljava/lang/String; = "thread_temp"

.field public static final TABLE_TOKEN:Ljava/lang/String; = "token"

.field private static final TAG:Ljava/lang/String; = "RadioDB"


# instance fields
.field private context:Landroid/content/Context;

.field private helper:Lfm/douban/model/RadioDB$DatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/16 v0, 0xc

    sput v0, Lfm/douban/model/RadioDB;->DATABASE_VERSION:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lfm/douban/model/RadioDB$DatabaseHelper;

    invoke-direct {v0, p0, p1}, Lfm/douban/model/RadioDB$DatabaseHelper;-><init>(Lfm/douban/model/RadioDB;Landroid/content/Context;)V

    iput-object v0, p0, Lfm/douban/model/RadioDB;->helper:Lfm/douban/model/RadioDB$DatabaseHelper;

    .line 35
    iput-object p1, p0, Lfm/douban/model/RadioDB;->context:Landroid/content/Context;

    .line 36
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 12
    sget v0, Lfm/douban/model/RadioDB;->DATABASE_VERSION:I

    return v0
.end method

.method static synthetic access$100(Lfm/douban/model/RadioDB;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 12
    iget-object v0, p0, Lfm/douban/model/RadioDB;->context:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 163
    :try_start_0
    iget-object v1, p0, Lfm/douban/model/RadioDB;->helper:Lfm/douban/model/RadioDB$DatabaseHelper;

    invoke-virtual {v1}, Lfm/douban/model/RadioDB$DatabaseHelper;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :goto_0
    return-void

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lfm/douban/model/RadioDB;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getDB()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lfm/douban/model/RadioDB;->getDB(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public getDB(Z)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .parameter "readonly"

    .prologue
    .line 154
    if-eqz p1, :cond_0

    .line 155
    iget-object v0, p0, Lfm/douban/model/RadioDB;->helper:Lfm/douban/model/RadioDB$DatabaseHelper;

    invoke-virtual {v0}, Lfm/douban/model/RadioDB$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 157
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lfm/douban/model/RadioDB;->helper:Lfm/douban/model/RadioDB$DatabaseHelper;

    invoke-virtual {v0}, Lfm/douban/model/RadioDB$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    goto :goto_0
.end method

.method public getEmails()[Ljava/lang/String;
    .locals 8

    .prologue
    .line 170
    invoke-virtual {p0}, Lfm/douban/model/RadioDB;->getDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 171
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v3, 0x0

    .line 172
    .local v3, emails:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 174
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_0
    const-string v6, "select email from email_history order by ROWID desc"

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 175
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    .line 176
    .local v5, total:I
    if-lez v5, :cond_0

    .line 177
    new-array v3, v5, [Ljava/lang/String;

    .line 178
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 179
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v5, :cond_0

    .line 180
    const/4 v6, 0x0

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    .line 181
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 188
    .end local v4           #i:I
    :cond_0
    if-eqz v0, :cond_1

    .line 189
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 193
    .end local v5           #total:I
    :cond_1
    :goto_1
    return-object v3

    .line 185
    :catch_0
    move-exception v2

    .line 186
    .local v2, e:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 188
    if-eqz v0, :cond_1

    .line 189
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 188
    .end local v2           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_2

    .line 189
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v6
.end method

.method public saveEmail(Ljava/lang/String;)V
    .locals 4
    .parameter "email"

    .prologue
    const/4 v3, 0x0

    .line 197
    invoke-virtual {p0, v3}, Lfm/douban/model/RadioDB;->getDB(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 199
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v3, 0x1

    :try_start_0
    new-array v0, v3, [Ljava/lang/Object;

    .line 200
    .local v0, args:[Ljava/lang/Object;
    const/4 v3, 0x0

    aput-object p1, v0, v3

    .line 201
    const-string v3, "REPLACE INTO email_history values(?)"

    invoke-virtual {v1, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    .end local v0           #args:[Ljava/lang/Object;
    :goto_0
    return-void

    .line 202
    :catch_0
    move-exception v2

    .line 203
    .local v2, e:Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    goto :goto_0
.end method
