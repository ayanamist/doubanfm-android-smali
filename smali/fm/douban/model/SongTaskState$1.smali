.class final Lfm/douban/model/SongTaskState$1;
.super Ljava/lang/Object;
.source "SongTaskState.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfm/douban/model/SongTaskState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lfm/douban/model/SongTaskState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lfm/douban/model/SongTaskState;
    .locals 1
    .parameter "in"

    .prologue
    .line 25
    new-instance v0, Lfm/douban/model/SongTaskState;

    invoke-direct {v0, p1}, Lfm/douban/model/SongTaskState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lfm/douban/model/SongTaskState$1;->createFromParcel(Landroid/os/Parcel;)Lfm/douban/model/SongTaskState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lfm/douban/model/SongTaskState;
    .locals 1
    .parameter "size"

    .prologue
    .line 29
    new-array v0, p1, [Lfm/douban/model/SongTaskState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lfm/douban/model/SongTaskState$1;->newArray(I)[Lfm/douban/model/SongTaskState;

    move-result-object v0

    return-object v0
.end method
