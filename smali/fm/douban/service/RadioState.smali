.class public Lfm/douban/service/RadioState;
.super Ljava/lang/Object;
.source "RadioState.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lfm/douban/service/RadioState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public canOp:Z

.field public channel:Lfm/douban/model/Channel;

.field public channelId:Ljava/lang/String;

.field public errorState:I

.field public hasPicture:Z

.field public hasSong:Z

.field public isLike:Z

.field public isLogin:Z

.field public isOffline:Z

.field public isPaused:Z

.field public isResumed:Z

.field public isStoped:Z

.field public playDuration:I

.field public playPosition:I

.field public song:Lfm/douban/model/Song;

.field public token:Lfm/douban/model/Token;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lfm/douban/service/RadioState$1;

    invoke-direct {v0}, Lfm/douban/service/RadioState$1;-><init>()V

    sput-object v0, Lfm/douban/service/RadioState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-boolean v1, p0, Lfm/douban/service/RadioState;->canOp:Z

    .line 35
    iput-boolean v1, p0, Lfm/douban/service/RadioState;->isOffline:Z

    .line 36
    iput-boolean v1, p0, Lfm/douban/service/RadioState;->isPaused:Z

    .line 37
    iput-boolean v1, p0, Lfm/douban/service/RadioState;->isResumed:Z

    .line 38
    iput-boolean v1, p0, Lfm/douban/service/RadioState;->isStoped:Z

    .line 39
    iput-boolean v1, p0, Lfm/douban/service/RadioState;->isLike:Z

    .line 40
    iput-boolean v1, p0, Lfm/douban/service/RadioState;->hasPicture:Z

    .line 42
    const-string v0, "1"

    iput-object v0, p0, Lfm/douban/service/RadioState;->channelId:Ljava/lang/String;

    .line 43
    iput v1, p0, Lfm/douban/service/RadioState;->playPosition:I

    .line 44
    iput v1, p0, Lfm/douban/service/RadioState;->playDuration:I

    .line 46
    iput-boolean v1, p0, Lfm/douban/service/RadioState;->hasSong:Z

    .line 47
    iput-object v2, p0, Lfm/douban/service/RadioState;->song:Lfm/douban/model/Song;

    .line 48
    iput-boolean v1, p0, Lfm/douban/service/RadioState;->isLogin:Z

    .line 49
    iput-object v2, p0, Lfm/douban/service/RadioState;->token:Lfm/douban/model/Token;

    .line 50
    iput-object v2, p0, Lfm/douban/service/RadioState;->channel:Lfm/douban/model/Channel;

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "in"

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-virtual {p0, p1}, Lfm/douban/service/RadioState;->readFromParcel(Landroid/os/Parcel;)V

    .line 65
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x3

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .parameter "in"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lfm/douban/service/RadioState;->canOp:Z

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lfm/douban/service/RadioState;->isStoped:Z

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lfm/douban/service/RadioState;->isOffline:Z

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lfm/douban/service/RadioState;->isPaused:Z

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_4

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lfm/douban/service/RadioState;->isResumed:Z

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_5

    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lfm/douban/service/RadioState;->isLike:Z

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_6

    move v0, v1

    :goto_6
    iput-boolean v0, p0, Lfm/douban/service/RadioState;->hasPicture:Z

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfm/douban/service/RadioState;->channelId:Ljava/lang/String;

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lfm/douban/service/RadioState;->playPosition:I

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lfm/douban/service/RadioState;->playDuration:I

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_7

    move v0, v1

    :goto_7
    iput-boolean v0, p0, Lfm/douban/service/RadioState;->hasSong:Z

    .line 119
    iget-boolean v0, p0, Lfm/douban/service/RadioState;->hasSong:Z

    if-eqz v0, :cond_8

    .line 120
    new-instance v0, Lfm/douban/model/Song;

    invoke-direct {v0, p1}, Lfm/douban/model/Song;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lfm/douban/service/RadioState;->song:Lfm/douban/model/Song;

    .line 125
    :goto_8
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_9

    :goto_9
    iput-boolean v1, p0, Lfm/douban/service/RadioState;->isLogin:Z

    .line 126
    iget-boolean v0, p0, Lfm/douban/service/RadioState;->isLogin:Z

    if-eqz v0, :cond_a

    .line 127
    new-instance v0, Lfm/douban/model/Token;

    invoke-direct {v0, p1}, Lfm/douban/model/Token;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lfm/douban/service/RadioState;->token:Lfm/douban/model/Token;

    .line 132
    :goto_a
    new-instance v0, Lfm/douban/model/Channel;

    invoke-direct {v0, p1}, Lfm/douban/model/Channel;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lfm/douban/service/RadioState;->channel:Lfm/douban/model/Channel;

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lfm/douban/service/RadioState;->errorState:I

    .line 135
    return-void

    :cond_0
    move v0, v2

    .line 106
    goto :goto_0

    :cond_1
    move v0, v2

    .line 107
    goto :goto_1

    :cond_2
    move v0, v2

    .line 108
    goto :goto_2

    :cond_3
    move v0, v2

    .line 109
    goto :goto_3

    :cond_4
    move v0, v2

    .line 110
    goto :goto_4

    :cond_5
    move v0, v2

    .line 111
    goto :goto_5

    :cond_6
    move v0, v2

    .line 112
    goto :goto_6

    :cond_7
    move v0, v2

    .line 118
    goto :goto_7

    .line 122
    :cond_8
    iput-object v3, p0, Lfm/douban/service/RadioState;->song:Lfm/douban/model/Song;

    goto :goto_8

    :cond_9
    move v1, v2

    .line 125
    goto :goto_9

    .line 129
    :cond_a
    iput-object v3, p0, Lfm/douban/service/RadioState;->token:Lfm/douban/model/Token;

    goto :goto_a
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "canOp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lfm/douban/service/RadioState;->canOp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isOffline:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lfm/douban/service/RadioState;->isOffline:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isPaused:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lfm/douban/service/RadioState;->isPaused:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isLike:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lfm/douban/service/RadioState;->isLike:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isLogin:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lfm/douban/service/RadioState;->isLogin:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " hasSong:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lfm/douban/service/RadioState;->hasSong:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " channelId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lfm/douban/service/RadioState;->channelId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " hasPicture:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lfm/douban/service/RadioState;->hasPicture:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isResumed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lfm/douban/service/RadioState;->isResumed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "out"
    .parameter "i"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 75
    iget-boolean v0, p0, Lfm/douban/service/RadioState;->canOp:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 76
    iget-boolean v0, p0, Lfm/douban/service/RadioState;->isStoped:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_1
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 77
    iget-boolean v0, p0, Lfm/douban/service/RadioState;->isOffline:Z

    if-eqz v0, :cond_5

    move v0, v1

    :goto_2
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 78
    iget-boolean v0, p0, Lfm/douban/service/RadioState;->isPaused:Z

    if-eqz v0, :cond_6

    move v0, v1

    :goto_3
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 79
    iget-boolean v0, p0, Lfm/douban/service/RadioState;->isResumed:Z

    if-eqz v0, :cond_7

    move v0, v1

    :goto_4
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 80
    iget-boolean v0, p0, Lfm/douban/service/RadioState;->isLike:Z

    if-eqz v0, :cond_8

    move v0, v1

    :goto_5
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 81
    iget-boolean v0, p0, Lfm/douban/service/RadioState;->hasPicture:Z

    if-eqz v0, :cond_9

    move v0, v1

    :goto_6
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 83
    iget-object v0, p0, Lfm/douban/service/RadioState;->channelId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    iget v0, p0, Lfm/douban/service/RadioState;->playPosition:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    iget v0, p0, Lfm/douban/service/RadioState;->playDuration:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    iget-boolean v0, p0, Lfm/douban/service/RadioState;->hasSong:Z

    if-eqz v0, :cond_a

    move v0, v1

    :goto_7
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 88
    iget-object v0, p0, Lfm/douban/service/RadioState;->song:Lfm/douban/model/Song;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lfm/douban/service/RadioState;->song:Lfm/douban/model/Song;

    invoke-virtual {v0, p1, p2}, Lfm/douban/model/Song;->writeToParcel(Landroid/os/Parcel;I)V

    .line 92
    :cond_0
    iget-boolean v0, p0, Lfm/douban/service/RadioState;->isLogin:Z

    if-eqz v0, :cond_b

    :goto_8
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 93
    iget-object v0, p0, Lfm/douban/service/RadioState;->token:Lfm/douban/model/Token;

    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p0, Lfm/douban/service/RadioState;->token:Lfm/douban/model/Token;

    invoke-virtual {v0, p1, p2}, Lfm/douban/model/Token;->writeToParcel(Landroid/os/Parcel;I)V

    .line 97
    :cond_1
    iget-object v0, p0, Lfm/douban/service/RadioState;->channel:Lfm/douban/model/Channel;

    if-eqz v0, :cond_2

    .line 98
    iget-object v0, p0, Lfm/douban/service/RadioState;->channel:Lfm/douban/model/Channel;

    invoke-virtual {v0, p1, p2}, Lfm/douban/model/Channel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 101
    :cond_2
    iget v0, p0, Lfm/douban/service/RadioState;->errorState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    return-void

    :cond_3
    move v0, v2

    .line 75
    goto :goto_0

    :cond_4
    move v0, v2

    .line 76
    goto :goto_1

    :cond_5
    move v0, v2

    .line 77
    goto :goto_2

    :cond_6
    move v0, v2

    .line 78
    goto :goto_3

    :cond_7
    move v0, v2

    .line 79
    goto :goto_4

    :cond_8
    move v0, v2

    .line 80
    goto :goto_5

    :cond_9
    move v0, v2

    .line 81
    goto :goto_6

    :cond_a
    move v0, v2

    .line 87
    goto :goto_7

    :cond_b
    move v1, v2

    .line 92
    goto :goto_8
.end method
