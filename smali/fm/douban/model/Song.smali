.class public Lfm/douban/model/Song;
.super Ljava/lang/Object;
.source "Song.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final ALBUM:Ljava/lang/String; = "album"

.field public static final ALBUMTITLE:Ljava/lang/String; = "albumtitle"

.field public static final ALBUM_ID:Ljava/lang/String; = "aid"

.field public static final ARTIST:Ljava/lang/String; = "artist"

.field public static final COMPANY:Ljava/lang/String; = "company"

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lfm/douban/model/Song;",
            ">;"
        }
    .end annotation
.end field

.field public static final DJ_NAME:Ljava/lang/String; = "dj_name"

.field public static final LENGTH:Ljava/lang/String; = "length"

.field public static final LIKE:Ljava/lang/String; = "like"

.field public static final LPIC:I = 0x2

.field public static final MPIC:I = 0x1

.field public static final PICTURE:Ljava/lang/String; = "picture"

.field public static final PROGRAM_URL:Ljava/lang/String; = "program_url"

.field public static final PUBLIC_TIME:Ljava/lang/String; = "public_time"

.field public static final RATING:Ljava/lang/String; = "rating_avg"

.field public static final SONG_ID:Ljava/lang/String; = "sid"

.field public static final SPIC:I = 0x0

.field public static final SSID:Ljava/lang/String; = "ssid"

.field public static final SUBTYPE:Ljava/lang/String; = "subtype"

.field public static final TITLE:Ljava/lang/String; = "title"

.field public static final URL:Ljava/lang/String; = "url"


# instance fields
.field public album:Ljava/lang/String;

.field public album_id:Ljava/lang/String;

.field public album_path:Ljava/lang/String;

.field public artist:Ljava/lang/String;

.field public dj_name:Ljava/lang/String;

.field public like:Z

.field public offline:I

.field public picture:Ljava/lang/String;

.field public program_url:Ljava/lang/String;

.field public public_time:Ljava/lang/String;

.field public rating_avg:D

.field public song_id:Ljava/lang/String;

.field public ssid:Ljava/lang/String;

.field public subtype:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 118
    new-instance v0, Lfm/douban/model/Song$1;

    invoke-direct {v0}, Lfm/douban/model/Song$1;-><init>()V

    sput-object v0, Lfm/douban/model/Song;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-boolean v2, p0, Lfm/douban/model/Song;->like:Z

    .line 64
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lfm/douban/model/Song;->rating_avg:D

    .line 65
    iput v2, p0, Lfm/douban/model/Song;->offline:I

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "in"

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    invoke-virtual {p0, p1}, Lfm/douban/model/Song;->readFromParcel(Landroid/os/Parcel;)V

    .line 130
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "song_id"
    .parameter "album_id"
    .parameter "url"
    .parameter "title"
    .parameter "artist"
    .parameter "album"
    .parameter "album_path"
    .parameter "picture"
    .parameter "like"
    .parameter "rating_avg"
    .parameter "public_time"
    .parameter "ssid"
    .parameter "subtype"
    .parameter "dj_name"
    .parameter "program_url"

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lfm/douban/model/Song;->song_id:Ljava/lang/String;

    .line 72
    iput-object p2, p0, Lfm/douban/model/Song;->album_id:Ljava/lang/String;

    .line 73
    iput-object p3, p0, Lfm/douban/model/Song;->url:Ljava/lang/String;

    .line 74
    iput-object p4, p0, Lfm/douban/model/Song;->title:Ljava/lang/String;

    .line 75
    iput-object p5, p0, Lfm/douban/model/Song;->artist:Ljava/lang/String;

    .line 76
    iput-object p6, p0, Lfm/douban/model/Song;->album:Ljava/lang/String;

    .line 77
    iput-object p7, p0, Lfm/douban/model/Song;->album_path:Ljava/lang/String;

    .line 78
    iput-object p8, p0, Lfm/douban/model/Song;->picture:Ljava/lang/String;

    .line 79
    const-string v1, "1"

    invoke-virtual {p9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lfm/douban/model/Song;->like:Z

    .line 80
    iput-wide p10, p0, Lfm/douban/model/Song;->rating_avg:D

    .line 81
    iput-object p12, p0, Lfm/douban/model/Song;->public_time:Ljava/lang/String;

    .line 82
    const/4 v1, 0x0

    iput v1, p0, Lfm/douban/model/Song;->offline:I

    .line 84
    iput-object p13, p0, Lfm/douban/model/Song;->ssid:Ljava/lang/String;

    .line 85
    move-object/from16 v0, p14

    iput-object v0, p0, Lfm/douban/model/Song;->subtype:Ljava/lang/String;

    .line 86
    move-object/from16 v0, p15

    iput-object v0, p0, Lfm/douban/model/Song;->dj_name:Ljava/lang/String;

    .line 87
    move-object/from16 v0, p16

    iput-object v0, p0, Lfm/douban/model/Song;->program_url:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 18
    .parameter "song"

    .prologue
    .line 56
    const-string v1, "sid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "aid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "url"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "title"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "artist"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v1, "albumtitle"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v1, "album"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v1, "picture"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v1, "like"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v1, "rating_avg"

    const-wide/16 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v11, v12}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v11

    const-string v1, "public_time"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v1, "ssid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v1, "subtype"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v1, "dj_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v1, "program_url"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v17}, Lfm/douban/model/Song;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x3

    return v0
.end method

.method public isLike()Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lfm/douban/model/Song;->like:Z

    return v0
.end method

.method public isOffline()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 99
    iget v1, p0, Lfm/douban/model/Song;->offline:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pictureUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 103
    iget-object v0, p0, Lfm/douban/model/Song;->picture:Ljava/lang/String;

    const-string v1, "mpic"

    const-string v2, "lpic"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public pictureUrl(I)Ljava/lang/String;
    .locals 3
    .parameter "size"

    .prologue
    .line 107
    packed-switch p1, :pswitch_data_0

    .line 114
    :pswitch_0
    iget-object v0, p0, Lfm/douban/model/Song;->picture:Ljava/lang/String;

    :goto_0
    return-object v0

    .line 109
    :pswitch_1
    iget-object v0, p0, Lfm/douban/model/Song;->picture:Ljava/lang/String;

    const-string v1, "mpic"

    const-string v2, "spic"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 111
    :pswitch_2
    iget-object v0, p0, Lfm/douban/model/Song;->picture:Ljava/lang/String;

    const-string v1, "mpic"

    const-string v2, "lpic"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 107
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    const/4 v0, 0x1

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lfm/douban/model/Song;->song_id:Ljava/lang/String;

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lfm/douban/model/Song;->album_id:Ljava/lang/String;

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lfm/douban/model/Song;->url:Ljava/lang/String;

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lfm/douban/model/Song;->title:Ljava/lang/String;

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lfm/douban/model/Song;->artist:Ljava/lang/String;

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lfm/douban/model/Song;->album:Ljava/lang/String;

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lfm/douban/model/Song;->album_path:Ljava/lang/String;

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lfm/douban/model/Song;->picture:Ljava/lang/String;

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lfm/douban/model/Song;->like:Z

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lfm/douban/model/Song;->rating_avg:D

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfm/douban/model/Song;->public_time:Ljava/lang/String;

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lfm/douban/model/Song;->offline:I

    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfm/douban/model/Song;->subtype:Ljava/lang/String;

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfm/douban/model/Song;->ssid:Ljava/lang/String;

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfm/douban/model/Song;->dj_name:Ljava/lang/String;

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfm/douban/model/Song;->program_url:Ljava/lang/String;

    .line 172
    return-void

    .line 163
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLike(Z)V
    .locals 0
    .parameter "isLike"

    .prologue
    .line 91
    iput-boolean p1, p0, Lfm/douban/model/Song;->like:Z

    .line 92
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "out"
    .parameter "i"

    .prologue
    .line 135
    iget-object v0, p0, Lfm/douban/model/Song;->song_id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lfm/douban/model/Song;->album_id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lfm/douban/model/Song;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lfm/douban/model/Song;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lfm/douban/model/Song;->artist:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lfm/douban/model/Song;->album:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lfm/douban/model/Song;->album_path:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lfm/douban/model/Song;->picture:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    iget-boolean v0, p0, Lfm/douban/model/Song;->like:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 144
    iget-wide v0, p0, Lfm/douban/model/Song;->rating_avg:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 145
    iget-object v0, p0, Lfm/douban/model/Song;->public_time:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 146
    iget v0, p0, Lfm/douban/model/Song;->offline:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    iget-object v0, p0, Lfm/douban/model/Song;->subtype:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lfm/douban/model/Song;->ssid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lfm/douban/model/Song;->dj_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lfm/douban/model/Song;->program_url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 152
    return-void

    .line 143
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
