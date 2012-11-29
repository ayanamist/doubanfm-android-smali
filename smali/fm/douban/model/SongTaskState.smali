.class public Lfm/douban/model/SongTaskState;
.super Ljava/lang/Object;
.source "SongTaskState.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lfm/douban/model/SongTaskState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public listing:Z

.field public song_id:Ljava/lang/String;

.field public syncing:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lfm/douban/model/SongTaskState$1;

    invoke-direct {v0}, Lfm/douban/model/SongTaskState$1;-><init>()V

    sput-object v0, Lfm/douban/model/SongTaskState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-boolean v0, p0, Lfm/douban/model/SongTaskState;->listing:Z

    .line 19
    iput-boolean v0, p0, Lfm/douban/model/SongTaskState;->syncing:Z

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lfm/douban/model/SongTaskState;->song_id:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "in"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-virtual {p0, p1}, Lfm/douban/model/SongTaskState;->readFromParcel(Landroid/os/Parcel;)V

    .line 35
    return-void
.end method

.method public constructor <init>(ZZLjava/lang/String;)V
    .locals 0
    .parameter "listing"
    .parameter "syncing"
    .parameter "song_id"

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-boolean p1, p0, Lfm/douban/model/SongTaskState;->listing:Z

    .line 13
    iput-boolean p2, p0, Lfm/douban/model/SongTaskState;->syncing:Z

    .line 14
    iput-object p3, p0, Lfm/douban/model/SongTaskState;->song_id:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x2

    return v0
.end method

.method public info()Ljava/lang/String;
    .locals 2

    .prologue
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">> song task state: \n listing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lfm/douban/model/SongTaskState;->listing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " syncing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lfm/douban/model/SongTaskState;->syncing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " song_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lfm/douban/model/SongTaskState;->song_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lfm/douban/model/SongTaskState;->listing:Z

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_2

    :goto_1
    iput-boolean v1, p0, Lfm/douban/model/SongTaskState;->syncing:Z

    .line 48
    iget-boolean v0, p0, Lfm/douban/model/SongTaskState;->syncing:Z

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfm/douban/model/SongTaskState;->song_id:Ljava/lang/String;

    .line 51
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 46
    goto :goto_0

    :cond_2
    move v1, v2

    .line 47
    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "out"
    .parameter "i"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 38
    iget-boolean v0, p0, Lfm/douban/model/SongTaskState;->listing:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 39
    iget-boolean v0, p0, Lfm/douban/model/SongTaskState;->syncing:Z

    if-eqz v0, :cond_2

    :goto_1
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 40
    iget-object v0, p0, Lfm/douban/model/SongTaskState;->song_id:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lfm/douban/model/SongTaskState;->song_id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 38
    goto :goto_0

    :cond_2
    move v1, v2

    .line 39
    goto :goto_1
.end method
