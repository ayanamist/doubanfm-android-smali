.class public Lfm/douban/model/SongTask;
.super Ljava/lang/Object;
.source "SongTask.java"


# static fields
.field public static final FINISH:Ljava/lang/String; = "1"

.field public static final SKIP:Ljava/lang/String; = "2"

.field public static final UNFINISH:Ljava/lang/String; = "0"


# instance fields
.field public picture:Ljava/lang/String;

.field public song_id:Ljava/lang/String;

.field public status:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "sid"
    .parameter "url"
    .parameter "pic"
    .parameter "finish"

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lfm/douban/model/SongTask;->song_id:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lfm/douban/model/SongTask;->url:Ljava/lang/String;

    .line 17
    iput-object p3, p0, Lfm/douban/model/SongTask;->picture:Ljava/lang/String;

    .line 18
    iput-object p4, p0, Lfm/douban/model/SongTask;->status:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public pictureUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 22
    iget-object v0, p0, Lfm/douban/model/SongTask;->picture:Ljava/lang/String;

    const-string v1, "mpic"

    const-string v2, "lpic"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
