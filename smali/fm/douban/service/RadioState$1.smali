.class final Lfm/douban/service/RadioState$1;
.super Ljava/lang/Object;
.source "RadioState.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfm/douban/service/RadioState;
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
        "Lfm/douban/service/RadioState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lfm/douban/service/RadioState;
    .locals 1
    .parameter "in"

    .prologue
    .line 55
    new-instance v0, Lfm/douban/service/RadioState;

    invoke-direct {v0, p1}, Lfm/douban/service/RadioState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lfm/douban/service/RadioState$1;->createFromParcel(Landroid/os/Parcel;)Lfm/douban/service/RadioState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lfm/douban/service/RadioState;
    .locals 1
    .parameter "size"

    .prologue
    .line 59
    new-array v0, p1, [Lfm/douban/service/RadioState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lfm/douban/service/RadioState$1;->newArray(I)[Lfm/douban/service/RadioState;

    move-result-object v0

    return-object v0
.end method
