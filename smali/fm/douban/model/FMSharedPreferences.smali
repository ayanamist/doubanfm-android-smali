.class public Lfm/douban/model/FMSharedPreferences;
.super Ljava/lang/Object;
.source "FMSharedPreferences.java"


# static fields
.field public static final ABOUT_IGNORE:Ljava/lang/String; = "about_ignore"

.field public static final ACK_ACCEPTED:Ljava/lang/String; = "ack_accepted"

.field public static final AUDIO_FORMAT:Ljava/lang/String; = "audio_format"

.field public static final CAN_SHARE_TO_DOUBAN:Ljava/lang/String; = "can_share_to_douban"

.field public static final CHANNEL_LAST_CHECK:Ljava/lang/String; = "channel_last_check"

.field public static final CLEARED_SONGS:Ljava/lang/String; = "cleared_songids"

.field public static final COVER_HISTORY_INDEX:Ljava/lang/String; = "coverd_index"

.field public static final DEFAULT_USER:Ljava/lang/String; = ""

.field public static final HEADSET_FLAG:Ljava/lang/String; = "head_plug_flag"

.field public static final HEART_TIP_SHOW:Ljava/lang/String; = "heart_tip_shown"

.field public static final HOME_KEY:Ljava/lang/String; = "home_down"

.field public static final IS_FIRST_RUNNING:Ljava/lang/String; = "first_running_fm"

.field public static final IS_LOGINED:Ljava/lang/String; = "is_logined"

.field public static final IS_SYNCING:Ljava/lang/String; = "is_sync"

.field public static final KEYCODE_FLAG:Ljava/lang/String; = "keycode_flag"

.field public static final LAST_CHANNEL:Ljava/lang/String; = "last_channel"

.field public static final LAST_USER:Ljava/lang/String; = "last_user"

.field public static final NEW_USER_GUIDANCE:Ljava/lang/String; = "new_user_guidance"

.field public static final OFFLINE_SWITCH_CHANNEL:Ljava/lang/String; = "offline_switch_channel"

.field public static final PAUSE_TIP_SHOW:Ljava/lang/String; = "pause_tip_shown"

.field public static final PREFS_NAME:Ljava/lang/String; = "douban_radio"

.field public static final SHARE_TIP:Ljava/lang/String; = "share_tip"

.field public static final SHARE_TOS:[Ljava/lang/String; = null

.field public static final THROUGHPUT_IGNORE:Ljava/lang/String; = "throughput_ignore"

.field public static final WIDGET_LOADING:Ljava/lang/String; = "load_from_widget"


# instance fields
.field private sp:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 45
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "sharetodouban"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "sharetosina"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "sharetorenren"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "sharetotencent"

    aput-object v2, v0, v1

    sput-object v0, Lfm/douban/model/FMSharedPreferences;->SHARE_TOS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "ctx"

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const-string v0, "douban_radio"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lfm/douban/model/FMSharedPreferences;->sp:Landroid/content/SharedPreferences;

    .line 57
    return-void
.end method


# virtual methods
.method public clean()V
    .locals 2

    .prologue
    .line 62
    iget-object v1, p0, Lfm/douban/model/FMSharedPreferences;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 63
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 64
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 65
    return-void
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 2
    .parameter "name"
    .parameter "defaultValue"

    .prologue
    .line 90
    iget-object v1, p0, Lfm/douban/model/FMSharedPreferences;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 91
    .local v0, result:Z
    return v0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 2
    .parameter "name"
    .parameter "defaultValue"

    .prologue
    .line 72
    iget-object v1, p0, Lfm/douban/model/FMSharedPreferences;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 73
    .local v0, result:I
    return v0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 3
    .parameter "name"
    .parameter "defaultValue"

    .prologue
    .line 99
    iget-object v2, p0, Lfm/douban/model/FMSharedPreferences;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v2, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 100
    .local v0, result:J
    return-wide v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "name"
    .parameter "defaultValue"

    .prologue
    .line 81
    iget-object v1, p0, Lfm/douban/model/FMSharedPreferences;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, result:Ljava/lang/String;
    return-object v0
.end method

.method public putBoolean(Ljava/lang/String;Z)Z
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 86
    iget-object v0, p0, Lfm/douban/model/FMSharedPreferences;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method public putInt(Ljava/lang/String;I)Z
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 68
    iget-object v0, p0, Lfm/douban/model/FMSharedPreferences;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method public putLong(Ljava/lang/String;J)Z
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 95
    iget-object v0, p0, Lfm/douban/model/FMSharedPreferences;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 77
    iget-object v0, p0, Lfm/douban/model/FMSharedPreferences;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method
