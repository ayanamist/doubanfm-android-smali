.class Lfm/douban/model/RadioDB$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "RadioDB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfm/douban/model/RadioDB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DatabaseHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lfm/douban/model/RadioDB;


# direct methods
.method public constructor <init>(Lfm/douban/model/RadioDB;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter "context"

    .prologue
    .line 44
    iput-object p1, p0, Lfm/douban/model/RadioDB$DatabaseHelper;->this$0:Lfm/douban/model/RadioDB;

    .line 45
    const-string v0, "radio.db"

    const/4 v1, 0x0

    invoke-static {}, Lfm/douban/model/RadioDB;->access$000()I

    move-result v2

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 46
    return-void
.end method

.method private changeTaskTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 99
    const-string v0, "ALTER TABLE download_task ADD COLUMN ssid varchar(20);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method private initChannels(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 103
    const-string v0, "REPLACE INTO channel(id,seq_id,name,name_en,abbr_en) VALUES(-3,-1,\'\u7ea2\u5fc3\',\'Favorite\',\'Fav\')"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 104
    const-string v0, "REPLACE INTO channel(id,seq_id,name,name_en,abbr_en) VALUES(0,0,\'\u79c1\u4eba\',\'Personal Radio\',\'My\')"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 105
    const-string v0, "REPLACE INTO channel(id,seq_id,name,name_en,abbr_en) VALUES(1,2,\'\u534e\u8bed\',\'Chinese\',\'CH\')"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 106
    const-string v0, "REPLACE INTO channel(id,seq_id,name,name_en,abbr_en) VALUES(2,1,\'\u6b27\u7f8e\',\'Euro-American\',\'EN\')"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 107
    const-string v0, "REPLACE INTO channel(id,seq_id,name,name_en,abbr_en) VALUES(3,18,\'\u4e03\u96f6\',\'70\',\'70\')"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 108
    const-string v0, "REPLACE INTO channel(id,seq_id,name,name_en,abbr_en) VALUES(4,19,\'\u516b\u96f6\',\'80\',\'80\')"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 109
    const-string v0, "REPLACE INTO channel(id,seq_id,name,name_en,abbr_en) VALUES(5,20,\'\u4e5d\u96f6\',\'90\',\'90\')"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 110
    const-string v0, "REPLACE INTO channel(id,seq_id,name,name_en,abbr_en) VALUES(6,3,\'\u7ca4\u8bed\',\'Cantonese\',\'HK\')"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 111
    const-string v0, "REPLACE INTO channel(id,seq_id,name,name_en,abbr_en) VALUES(7,13,\'\u6447\u6eda\',\'Rock\',\'Rock\')"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 112
    const-string v0, "REPLACE INTO channel(id,seq_id,name,name_en,abbr_en) VALUES(8,14,\'\u6c11\u8c23\',\'Folk\',\'Folk\')"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 113
    const-string v0, "REPLACE INTO channel(id,seq_id,name,name_en,abbr_en) VALUES(9,16,\'\u8f7b\u97f3\u4e50\',\'Easy Listening\',\'Easy\')"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 114
    const-string v0, "REPLACE INTO channel(id,seq_id,name,name_en,abbr_en) VALUES(10,15,\'\u7535\u5f71\u539f\u58f0\',\'Original\',\'Ori\')"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 115
    const-string v0, "REPLACE INTO channel(id,seq_id,name,name_en,abbr_en) VALUES(13,9,\'\u7235\u58eb\',\'Jazz\',\'Jazz\')"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 116
    const-string v0, "REPLACE INTO channel(id,seq_id,name,name_en,abbr_en) VALUES(14,10,\'\u7535\u5b50\',\'Electronic\',\'Elec\')"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 117
    const-string v0, "REPLACE INTO channel(id,seq_id,name,name_en,abbr_en) VALUES(15,12,\'\u8bf4\u5531\',\'Rap\',\'Rap\')"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 118
    const-string v0, "REPLACE INTO channel(id,seq_id,name,name_en,abbr_en) VALUES(16,11,\'R&B\',\'R&B\',\'R&B\')"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 119
    const-string v0, "REPLACE INTO channel(id,seq_id,name,name_en,abbr_en) VALUES(17,7,\'\u65e5\u8bed\',\'Japanese\',\'JPA\')"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 120
    const-string v0, "REPLACE INTO channel(id,seq_id,name,name_en,abbr_en) VALUES(18,8,\'\u97e9\u8bed\',\'Korea\',\'KRA\')"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 121
    const-string v0, "REPLACE INTO channel(id,seq_id,name,name_en,abbr_en) VALUES(20,17,\'\u5973\u58f0\',\'Female\',\'FEM\')"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 122
    const-string v0, "REPLACE INTO channel(id,seq_id,name,name_en,abbr_en) VALUES(22,6,\'\u6cd5\u8bed\',\'French\',\'FR\')"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 123
    const-string v0, "REPLACE INTO channel(id,seq_id,name,name_en,abbr_en) VALUES(26,5,\'\u97f3\u4e50\u4eba\',\'Artist\',\'Ar\')"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 124
    const-string v0, "REPLACE INTO channel(id,seq_id,name,name_en,abbr_en) VALUES(27,4,\'\u53e4\u5178\',\'Classic\',\'Cla\')"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 125
    const-string v0, "REPLACE INTO channel(id,seq_id,name,name_en,abbr_en) VALUES(28,21,\'\u52a8\u6f2b\',\'Anime\',\'Ani\')"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method private newTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 63
    const-string v0, "DROP TABLE IF EXISTS token"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 64
    const-string v0, "CREATE TABLE token(user_id INTEGER PRIMARY KEY, name TEXT, token TEXT, expire TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 67
    const-string v0, "DROP TABLE IF EXISTS channel"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 68
    const-string v0, "CREATE TABLE channel( id INTEGER PRIMARY KEY, seq_id INTEGER, name TEXT, name_en TEXT, abbr_en TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method private newTable2(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 74
    const-string v0, "DROP TABLE IF EXISTS thread_temp"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 75
    const-string v0, "CREATE TABLE thread_temp(song_id varchar(15) primary key,url varchar(256),file_length INTEGER,is_finish char(1));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 77
    const-string v0, "DROP TABLE IF EXISTS finished_task"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 78
    const-string v0, "CREATE TABLE finished_task(id INTEGER primary key AUTOINCREMENT,song_id varchar(15),start_pos INTEGER,end_pos INTEGER,played INTEGER DEFAULT 0,rtime datetime NOT NULL);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 81
    const-string v0, "DROP TABLE IF EXISTS download_task"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 82
    const-string v0, "CREATE TABLE download_task(song_id varchar(15) primary key,aid varchar(10),picture varchar(256),albumtitle varchar(20),company varchar(100),rating_avg varchar(10),public_time varchar(20),album varchar(20),artist varchar(20),title varchar(20),subtype varchar(10),length INTEGER,url varchar(256),like char(1),is_finish char(1));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 87
    const-string v0, "DROP TABLE IF EXISTS offline_movement"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 88
    const-string v0, "CREATE TABLE offline_movement(song_id varchar(15) primary key, type char(2), rtime datetime NOT NULL)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method private newTable3(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 93
    const-string v0, "DROP TABLE IF EXISTS access_token"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 94
    const-string v0, "CREATE TABLE access_token(type TEXT PRIMARY KEY, name TEXT, token TEXT, expire TEXT,secret TEXT,user_info TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 96
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 50
    const-string v0, "RadioDB"

    const-string v1, "RadioDB onCreate"

    invoke-static {v0, v1}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    const-string v0, "DROP TABLE IF EXISTS email_history"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 53
    const-string v0, "CREATE TABLE email_history( email TEXT PRIMARY KEY);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 55
    invoke-direct {p0, p1}, Lfm/douban/model/RadioDB$DatabaseHelper;->newTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 56
    invoke-direct {p0, p1}, Lfm/douban/model/RadioDB$DatabaseHelper;->initChannels(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 57
    invoke-direct {p0, p1}, Lfm/douban/model/RadioDB$DatabaseHelper;->newTable2(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 58
    invoke-direct {p0, p1}, Lfm/douban/model/RadioDB$DatabaseHelper;->newTable3(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 59
    invoke-direct {p0, p1}, Lfm/douban/model/RadioDB$DatabaseHelper;->changeTaskTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 60
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 130
    const-string v1, "RadioDB"

    const-string v2, "RadioDB onUpgrade"

    invoke-static {v1, v2}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    new-instance v0, Lfm/douban/model/FMSharedPreferences;

    iget-object v1, p0, Lfm/douban/model/RadioDB$DatabaseHelper;->this$0:Lfm/douban/model/RadioDB;

    #getter for: Lfm/douban/model/RadioDB;->context:Landroid/content/Context;
    invoke-static {v1}, Lfm/douban/model/RadioDB;->access$100(Lfm/douban/model/RadioDB;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lfm/douban/model/FMSharedPreferences;-><init>(Landroid/content/Context;)V

    .line 132
    .local v0, fmsp:Lfm/douban/model/FMSharedPreferences;
    const-string v1, "channel_last_check"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lfm/douban/model/FMSharedPreferences;->putInt(Ljava/lang/String;I)Z

    .line 133
    const/4 v1, 0x4

    if-ge p2, v1, :cond_0

    .line 134
    invoke-direct {p0, p1}, Lfm/douban/model/RadioDB$DatabaseHelper;->newTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 136
    :cond_0
    const/16 v1, 0x8

    if-ge p2, v1, :cond_1

    .line 137
    invoke-direct {p0, p1}, Lfm/douban/model/RadioDB$DatabaseHelper;->newTable2(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 139
    :cond_1
    const/16 v1, 0xa

    if-ge p2, v1, :cond_2

    .line 140
    invoke-direct {p0, p1}, Lfm/douban/model/RadioDB$DatabaseHelper;->newTable3(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 142
    :cond_2
    const/16 v1, 0xb

    if-ge p2, v1, :cond_3

    .line 143
    invoke-direct {p0, p1}, Lfm/douban/model/RadioDB$DatabaseHelper;->changeTaskTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 145
    :cond_3
    invoke-direct {p0, p1}, Lfm/douban/model/RadioDB$DatabaseHelper;->initChannels(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 146
    return-void
.end method
