.class public Lfm/douban/model/Channel;
.super Ljava/lang/Object;
.source "Channel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final ABBR_EN:Ljava/lang/String; = "abbr_en"

.field public static final CATEGORY_DJ:I = 0x3

.field public static final CATEGORY_PRIVATE:I = 0x1

.field public static final CATEGORY_PUBLIC:I = 0x2

.field public static final CHANNEL_ID:Ljava/lang/String; = "channel_id"

.field public static final CHANNEL_PATH:Ljava/lang/String; = "/j/app/radio/channels"

.field public static final DEFAULT_CHANNEL:Ljava/lang/String; = "1"

.field public static final HEART_CHANNEL:Ljava/lang/String; = "-3"

.field public static final LAST_CHANNEL:Ljava/lang/String; = "last_channel"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final NAME_EN:Ljava/lang/String; = "name_en"

.field public static final PERSONAL_CHANNEL:Ljava/lang/String; = "0"

.field public static final PRIVATE_CHANNEL_COUNT:I = 0x2

.field public static final SEQ_ID:Ljava/lang/String; = "seq_id"

.field private static final TAG:Ljava/lang/String; = "DB_Channel"


# instance fields
.field public abbr_en:Ljava/lang/String;

.field public category:I

.field public channel_id:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public name_en:Ljava/lang/String;

.field public seq_id:I


# direct methods
.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "in"

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    invoke-virtual {p0, p1}, Lfm/douban/model/Channel;->readFromParcel(Landroid/os/Parcel;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "channel_id"
    .parameter "seq_id"
    .parameter "name"
    .parameter "name_en"
    .parameter "abbr_en"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lfm/douban/model/Channel;->channel_id:Ljava/lang/String;

    .line 44
    iput p2, p0, Lfm/douban/model/Channel;->seq_id:I

    .line 45
    iput-object p3, p0, Lfm/douban/model/Channel;->name:Ljava/lang/String;

    .line 46
    iput-object p4, p0, Lfm/douban/model/Channel;->name_en:Ljava/lang/String;

    .line 47
    iput-object p5, p0, Lfm/douban/model/Channel;->abbr_en:Ljava/lang/String;

    .line 48
    invoke-direct {p0, p2}, Lfm/douban/model/Channel;->generateCategory(I)I

    move-result v0

    iput v0, p0, Lfm/douban/model/Channel;->category:I

    .line 49
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 6
    .parameter "channel"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 38
    const-string v0, "channel_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "seq_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const-string v0, "name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "name_en"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "abbr_en"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lfm/douban/model/Channel;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method private generateCategory(I)I
    .locals 1
    .parameter "seqid"

    .prologue
    .line 56
    const/4 v0, 0x2

    .line 57
    .local v0, cate:I
    packed-switch p1, :pswitch_data_0

    .line 63
    const/4 v0, 0x2

    .line 67
    :goto_0
    return v0

    .line 60
    :pswitch_0
    const/4 v0, 0x1

    .line 61
    goto :goto_0

    .line 57
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x2

    return v0
.end method

.method public equals(Lfm/douban/model/Channel;)Z
    .locals 2
    .parameter "ch"

    .prologue
    .line 75
    iget-object v0, p0, Lfm/douban/model/Channel;->channel_id:Ljava/lang/String;

    iget-object v1, p1, Lfm/douban/model/Channel;->channel_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isPublic()Z
    .locals 2

    .prologue
    .line 52
    iget v0, p0, Lfm/douban/model/Channel;->category:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfm/douban/model/Channel;->channel_id:Ljava/lang/String;

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lfm/douban/model/Channel;->seq_id:I

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfm/douban/model/Channel;->name:Ljava/lang/String;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfm/douban/model/Channel;->name_en:Ljava/lang/String;

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfm/douban/model/Channel;->abbr_en:Ljava/lang/String;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lfm/douban/model/Channel;->category:I

    .line 100
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Channel: id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lfm/douban/model/Channel;->channel_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lfm/douban/model/Channel;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", seq_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lfm/douban/model/Channel;->seq_id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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
    .line 85
    iget-object v0, p0, Lfm/douban/model/Channel;->channel_id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    iget v0, p0, Lfm/douban/model/Channel;->seq_id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    iget-object v0, p0, Lfm/douban/model/Channel;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lfm/douban/model/Channel;->name_en:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lfm/douban/model/Channel;->abbr_en:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    iget v0, p0, Lfm/douban/model/Channel;->category:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    return-void
.end method
