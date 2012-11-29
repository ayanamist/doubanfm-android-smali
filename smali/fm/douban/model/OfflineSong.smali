.class public Lfm/douban/model/OfflineSong;
.super Lfm/douban/model/Song;
.source "OfflineSong.java"


# instance fields
.field public end:J

.field public played:I

.field public start:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 10
    invoke-direct {p0}, Lfm/douban/model/Song;-><init>()V

    .line 11
    const/4 v0, 0x1

    iput v0, p0, Lfm/douban/model/OfflineSong;->offline:I

    .line 12
    iput-wide v1, p0, Lfm/douban/model/OfflineSong;->start:J

    .line 13
    iput-wide v1, p0, Lfm/douban/model/OfflineSong;->end:J

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lfm/douban/model/OfflineSong;->played:I

    .line 15
    return-void
.end method


# virtual methods
.method public isPlayed()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 31
    iget v1, p0, Lfm/douban/model/OfflineSong;->played:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public length()J
    .locals 4

    .prologue
    .line 22
    iget-wide v0, p0, Lfm/douban/model/OfflineSong;->end:J

    iget-wide v2, p0, Lfm/douban/model/OfflineSong;->start:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public offset()J
    .locals 4

    .prologue
    .line 18
    iget-wide v0, p0, Lfm/douban/model/OfflineSong;->start:J

    const-wide/16 v2, 0x64

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public setPosition(JJ)V
    .locals 0
    .parameter "start"
    .parameter "end"

    .prologue
    .line 26
    iput-wide p1, p0, Lfm/douban/model/OfflineSong;->start:J

    .line 27
    iput-wide p1, p0, Lfm/douban/model/OfflineSong;->end:J

    .line 28
    return-void
.end method
