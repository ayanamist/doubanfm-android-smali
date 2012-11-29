.class public Lcom/douban/share/ShareMgr;
.super Ljava/lang/Object;
.source "ShareMgr.java"


# static fields
.field public static final SHARE_NUM:I = 0x4

.field public static final SHARE_STR:[Ljava/lang/String; = null

.field public static final SHARE_TO_DOUBAN:I = 0x0

.field public static final SHARE_TO_RENREN:I = 0x2

.field public static final SHARE_TO_SINA:I = 0x1

.field public static final SHARE_TO_TENCENT:I = 0x3

.field private static instance:Lcom/douban/share/ShareMgr;


# instance fields
.field private radioDB:Lfm/douban/model/RadioDB;

.field public rtm:Lcom/douban/share/RenrenTokenManager;

.field public stm:Lcom/douban/share/SinaTokenManager;

.field public ttm:Lcom/douban/share/TencentTokenManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 20
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "douban"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "sina"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "renren"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "tencent"

    aput-object v2, v0, v1

    sput-object v0, Lcom/douban/share/ShareMgr;->SHARE_STR:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "ctx"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/douban/share/RenrenTokenManager;

    invoke-direct {v0, p1}, Lcom/douban/share/RenrenTokenManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/douban/share/ShareMgr;->rtm:Lcom/douban/share/RenrenTokenManager;

    .line 36
    new-instance v0, Lcom/douban/share/TencentTokenManager;

    invoke-direct {v0, p1}, Lcom/douban/share/TencentTokenManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/douban/share/ShareMgr;->ttm:Lcom/douban/share/TencentTokenManager;

    .line 37
    new-instance v0, Lcom/douban/share/SinaTokenManager;

    invoke-direct {v0, p1}, Lcom/douban/share/SinaTokenManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/douban/share/ShareMgr;->stm:Lcom/douban/share/SinaTokenManager;

    .line 38
    invoke-static {p1}, Lfm/douban/FmApp;->getRadioManager(Landroid/content/Context;)Lfm/douban/controller/RadioManager;

    move-result-object v0

    invoke-virtual {v0}, Lfm/douban/controller/RadioManager;->getDB()Lfm/douban/model/RadioDB;

    move-result-object v0

    iput-object v0, p0, Lcom/douban/share/ShareMgr;->radioDB:Lfm/douban/model/RadioDB;

    .line 40
    iget-object v0, p0, Lcom/douban/share/ShareMgr;->stm:Lcom/douban/share/SinaTokenManager;

    invoke-virtual {v0}, Lcom/douban/share/SinaTokenManager;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/douban/share/ShareMgr;->getSinaToken()V

    .line 43
    :cond_0
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/douban/share/ShareMgr;
    .locals 2
    .parameter "ctx"

    .prologue
    .line 30
    const-class v1, Lcom/douban/share/ShareMgr;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/douban/share/ShareMgr;->instance:Lcom/douban/share/ShareMgr;

    if-nez v0, :cond_0

    new-instance v0, Lcom/douban/share/ShareMgr;

    invoke-direct {v0, p0}, Lcom/douban/share/ShareMgr;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/douban/share/ShareMgr;->instance:Lcom/douban/share/ShareMgr;

    .line 31
    :cond_0
    sget-object v0, Lcom/douban/share/ShareMgr;->instance:Lcom/douban/share/ShareMgr;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getAccessToken(I)Lcom/douban/share/ShareToken;
    .locals 2
    .parameter "i"

    .prologue
    .line 62
    const/4 v0, 0x0

    .line 63
    .local v0, st:Lcom/douban/share/ShareToken;
    packed-switch p1, :pswitch_data_0

    .line 77
    :cond_0
    :goto_0
    :pswitch_0
    return-object v0

    .line 67
    :pswitch_1
    iget-object v1, p0, Lcom/douban/share/ShareMgr;->stm:Lcom/douban/share/SinaTokenManager;

    invoke-virtual {v1}, Lcom/douban/share/SinaTokenManager;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/douban/share/ShareMgr;->stm:Lcom/douban/share/SinaTokenManager;

    goto :goto_0

    .line 71
    :pswitch_2
    iget-object v1, p0, Lcom/douban/share/ShareMgr;->rtm:Lcom/douban/share/RenrenTokenManager;

    invoke-virtual {v1}, Lcom/douban/share/RenrenTokenManager;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/douban/share/ShareMgr;->rtm:Lcom/douban/share/RenrenTokenManager;

    goto :goto_0

    .line 74
    :pswitch_3
    iget-object v1, p0, Lcom/douban/share/ShareMgr;->ttm:Lcom/douban/share/TencentTokenManager;

    invoke-virtual {v1}, Lcom/douban/share/TencentTokenManager;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/douban/share/ShareMgr;->ttm:Lcom/douban/share/TencentTokenManager;

    goto :goto_0

    .line 63
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getSinaToken()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 84
    const/4 v5, 0x0

    .line 85
    .local v5, token:Ljava/lang/String;
    const/4 v4, 0x0

    .line 86
    .local v4, secret:Ljava/lang/String;
    iget-object v6, p0, Lcom/douban/share/ShareMgr;->radioDB:Lfm/douban/model/RadioDB;

    invoke-virtual {v6, v8}, Lfm/douban/model/RadioDB;->getDB(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 88
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v6, 0x1

    :try_start_0
    new-array v0, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "sina"

    aput-object v7, v0, v6

    .line 89
    .local v0, args:[Ljava/lang/String;
    const-string v6, "select type, name, token, expire, secret, user_info from access_token where type=?"

    invoke-virtual {v2, v6, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 90
    .local v1, cursor:Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-ne v6, v8, :cond_0

    .line 91
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 92
    const/4 v6, 0x2

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 93
    const/4 v6, 0x3

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 95
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .end local v0           #args:[Ljava/lang/String;
    .end local v1           #cursor:Landroid/database/Cursor;
    :goto_0
    iget-object v6, p0, Lcom/douban/share/ShareMgr;->stm:Lcom/douban/share/SinaTokenManager;

    invoke-virtual {v6, v5, v4}, Lcom/douban/share/SinaTokenManager;->setOldToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return-void

    .line 96
    :catch_0
    move-exception v3

    .line 97
    .local v3, e:Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    goto :goto_0
.end method

.method public removeSinaAccessToken()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 103
    iget-object v3, p0, Lcom/douban/share/ShareMgr;->radioDB:Lfm/douban/model/RadioDB;

    invoke-virtual {v3, v4}, Lfm/douban/model/RadioDB;->getDB(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 105
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v3, 0x1

    :try_start_0
    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "sina"

    aput-object v4, v2, v3

    .line 106
    .local v2, whereArgs:[Ljava/lang/String;
    const-string v3, "access_token"

    const-string v4, "type=?"

    invoke-virtual {v0, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    .end local v2           #whereArgs:[Ljava/lang/String;
    :goto_0
    return-void

    .line 107
    :catch_0
    move-exception v1

    .line 108
    .local v1, e:Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    goto :goto_0
.end method

.method public removeToken(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 46
    packed-switch p1, :pswitch_data_0

    .line 59
    :goto_0
    :pswitch_0
    return-void

    .line 50
    :pswitch_1
    iget-object v0, p0, Lcom/douban/share/ShareMgr;->stm:Lcom/douban/share/SinaTokenManager;

    invoke-virtual {v0}, Lcom/douban/share/SinaTokenManager;->removeToken()V

    goto :goto_0

    .line 53
    :pswitch_2
    iget-object v0, p0, Lcom/douban/share/ShareMgr;->rtm:Lcom/douban/share/RenrenTokenManager;

    invoke-virtual {v0}, Lcom/douban/share/RenrenTokenManager;->removeToken()V

    goto :goto_0

    .line 56
    :pswitch_3
    iget-object v0, p0, Lcom/douban/share/ShareMgr;->ttm:Lcom/douban/share/TencentTokenManager;

    invoke-virtual {v0}, Lcom/douban/share/TencentTokenManager;->removeToken()V

    goto :goto_0

    .line 46
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
