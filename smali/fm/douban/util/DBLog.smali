.class public Lfm/douban/util/DBLog;
.super Ljava/lang/Object;
.source "DBLog.java"


# static fields
.field public static DEBUG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    const/4 v0, 0x1

    sput-boolean v0, Lfm/douban/util/DBLog;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 9
    invoke-static {p0, p1}, Lfm/douban/util/DBLog;->l(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 17
    invoke-static {p0, p1}, Lfm/douban/util/DBLog;->l(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static l(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 21
    sget-boolean v0, Lfm/douban/util/DBLog;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 13
    invoke-static {p0, p1}, Lfm/douban/util/DBLog;->l(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
