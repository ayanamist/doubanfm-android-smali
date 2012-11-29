.class public Lfm/douban/model/Token;
.super Ljava/lang/Object;
.source "Token.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final ARGS:Ljava/lang/String; = null

.field public static final ARGS_APPEND:Ljava/lang/String; = null

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lfm/douban/model/Token;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXPIRE:Ljava/lang/String; = "expire"

.field public static final TOKEN:Ljava/lang/String; = "token"

.field public static final USER_ID:Ljava/lang/String; = "user_id"

.field public static final USER_NAME:Ljava/lang/String; = "user_name"

.field public static final app_name:Ljava/lang/String; = "radio_android"

.field public static final version:Ljava/lang/String;


# instance fields
.field public expire:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public token:Ljava/lang/String;

.field public user_id:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    sget-object v0, Lfm/douban/Consts;->VERSION:Ljava/lang/String;

    sput-object v0, Lfm/douban/model/Token;->version:Ljava/lang/String;

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "?app_name=radio_android&version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lfm/douban/model/Token;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfm/douban/model/Token;->ARGS:Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "&app_name=radio_android&version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lfm/douban/model/Token;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfm/douban/model/Token;->ARGS_APPEND:Ljava/lang/String;

    .line 53
    new-instance v0, Lfm/douban/model/Token$1;

    invoke-direct {v0}, Lfm/douban/model/Token$1;-><init>()V

    sput-object v0, Lfm/douban/model/Token;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "in"

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-virtual {p0, p1}, Lfm/douban/model/Token;->readFromParcel(Landroid/os/Parcel;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "user_id"
    .parameter "name"
    .parameter "token"
    .parameter "expire"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lfm/douban/model/Token;->user_id:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lfm/douban/model/Token;->name:Ljava/lang/String;

    .line 42
    iput-object p3, p0, Lfm/douban/model/Token;->token:Ljava/lang/String;

    .line 43
    iput-object p4, p0, Lfm/douban/model/Token;->expire:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 4
    .parameter "t"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 36
    const-string v0, "user_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "user_name"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "token"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "expire"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lfm/douban/model/Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public static clean(Lfm/douban/controller/RadioManager;)V
    .locals 4
    .parameter "rm"

    .prologue
    .line 131
    invoke-virtual {p0}, Lfm/douban/controller/RadioManager;->getDB()Lfm/douban/model/RadioDB;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lfm/douban/model/RadioDB;->getDB(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 133
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string v2, "DELETE FROM token"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :goto_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lfm/douban/controller/RadioManager;->setUserToken(Lfm/douban/model/Token;)V

    .line 139
    return-void

    .line 134
    :catch_0
    move-exception v1

    .line 135
    .local v1, e:Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static get(Lfm/douban/controller/RadioManager;)Lfm/douban/model/Token;
    .locals 11
    .parameter "rm"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 107
    invoke-virtual {p0}, Lfm/douban/controller/RadioManager;->getUserToken()Lfm/douban/model/Token;

    move-result-object v3

    .line 108
    .local v3, token:Lfm/douban/model/Token;
    if-nez v3, :cond_0

    iget-boolean v7, p0, Lfm/douban/controller/RadioManager;->checkedToken:Z

    if-eqz v7, :cond_1

    :cond_0
    move-object v4, v3

    .line 126
    .end local v3           #token:Lfm/douban/model/Token;
    .local v4, token:Lfm/douban/model/Token;
    :goto_0
    return-object v4

    .line 111
    .end local v4           #token:Lfm/douban/model/Token;
    .restart local v3       #token:Lfm/douban/model/Token;
    :cond_1
    invoke-virtual {p0}, Lfm/douban/controller/RadioManager;->getDB()Lfm/douban/model/RadioDB;

    move-result-object v7

    invoke-virtual {v7, v5}, Lfm/douban/model/RadioDB;->getDB(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 113
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string v7, "select user_id, name, token, expire from token"

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 114
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-ne v7, v5, :cond_2

    .line 115
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 116
    new-instance v4, Lfm/douban/model/Token;

    const/4 v7, 0x0

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v4, v7, v8, v9, v10}, Lfm/douban/model/Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .end local v3           #token:Lfm/douban/model/Token;
    .restart local v4       #token:Lfm/douban/model/Token;
    move-object v3, v4

    .line 119
    .end local v4           #token:Lfm/douban/model/Token;
    .restart local v3       #token:Lfm/douban/model/Token;
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .end local v0           #cursor:Landroid/database/Cursor;
    :goto_1
    invoke-virtual {p0, v3}, Lfm/douban/controller/RadioManager;->setUserToken(Lfm/douban/model/Token;)V

    .line 125
    if-eqz v3, :cond_3

    :goto_2
    iput-boolean v5, p0, Lfm/douban/controller/RadioManager;->checkedToken:Z

    move-object v4, v3

    .line 126
    .end local v3           #token:Lfm/douban/model/Token;
    .restart local v4       #token:Lfm/douban/model/Token;
    goto :goto_0

    .line 120
    .end local v4           #token:Lfm/douban/model/Token;
    .restart local v3       #token:Lfm/douban/model/Token;
    :catch_0
    move-exception v2

    .line 121
    .local v2, e:Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    goto :goto_1

    .end local v2           #e:Landroid/database/sqlite/SQLiteException;
    :cond_3
    move v5, v6

    .line 125
    goto :goto_2
.end method

.method public static isLogin(Lfm/douban/controller/RadioManager;)Z
    .locals 1
    .parameter "rm"

    .prologue
    .line 103
    invoke-static {p0}, Lfm/douban/model/Token;->get(Lfm/douban/controller/RadioManager;)Lfm/douban/model/Token;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x1

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfm/douban/model/Token;->user_id:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfm/douban/model/Token;->name:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfm/douban/model/Token;->token:Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfm/douban/model/Token;->expire:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public save(Lfm/douban/controller/RadioManager;)V
    .locals 6
    .parameter "rm"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 86
    invoke-virtual {p1}, Lfm/douban/controller/RadioManager;->getDB()Lfm/douban/model/RadioDB;

    move-result-object v3

    invoke-virtual {v3, v4}, Lfm/douban/model/RadioDB;->getDB(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 88
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v3, 0x4

    :try_start_0
    new-array v0, v3, [Ljava/lang/Object;

    .line 89
    .local v0, args:[Ljava/lang/Object;
    const/4 v3, 0x0

    iget-object v4, p0, Lfm/douban/model/Token;->user_id:Ljava/lang/String;

    aput-object v4, v0, v3

    .line 90
    const/4 v3, 0x1

    iget-object v4, p0, Lfm/douban/model/Token;->name:Ljava/lang/String;

    aput-object v4, v0, v3

    .line 91
    const/4 v3, 0x2

    iget-object v4, p0, Lfm/douban/model/Token;->token:Ljava/lang/String;

    aput-object v4, v0, v3

    .line 92
    const/4 v3, 0x3

    iget-object v4, p0, Lfm/douban/model/Token;->expire:Ljava/lang/String;

    aput-object v4, v0, v3

    .line 93
    const-string v3, "REPLACE INTO token(user_id, name, token, expire) values(?,?,?,?)"

    invoke-virtual {v1, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .end local v0           #args:[Ljava/lang/Object;
    :goto_0
    invoke-virtual {p1, p0}, Lfm/douban/controller/RadioManager;->setUserToken(Lfm/douban/model/Token;)V

    .line 99
    iput-boolean v5, p1, Lfm/douban/controller/RadioManager;->checkedToken:Z

    .line 100
    return-void

    .line 94
    :catch_0
    move-exception v2

    .line 95
    .local v2, e:Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Token: user_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lfm/douban/model/Token;->user_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lfm/douban/model/Token;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lfm/douban/model/Token;->token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " expire="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lfm/douban/model/Token;->expire:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lfm/douban/model/Token;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "i"

    .prologue
    .line 68
    iget-object v0, p0, Lfm/douban/model/Token;->user_id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lfm/douban/model/Token;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lfm/douban/model/Token;->token:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lfm/douban/model/Token;->expire:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 72
    return-void
.end method
