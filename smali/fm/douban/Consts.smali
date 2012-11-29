.class public Lfm/douban/Consts;
.super Ljava/lang/Object;
.source "Consts.java"


# static fields
.field public static final ACTION_SHARE_DONE:Ljava/lang/String; = "fm.douban.action_share_done"

.field public static final API_HOST:Ljava/lang/String; = "www.douban.com"

.field public static final APP_NAME:Ljava/lang/String; = "radio_android"

.field public static final AVAILABLE_SDCARD_STORAGE_LIMIT:I = 0x6

.field public static final CHANNEL_NOW:Ljava/lang/String; = "channel_now"

.field public static final CHANNEL_TO:Ljava/lang/String; = "channel_to"

.field public static final CHECK_DAY_OFFSET:I = 0x0

.field public static final DIALOG_SUBMIT:I = 0x3e9

.field public static final DOUBAN:Ljava/lang/String; = "http://www.douban.com"

.field public static final DOUBAN_COOKIE:Ljava/lang/String; = "dbcl2"

.field public static final ERROR_DEADLY:I = 0xe

.field public static final ERROR_EXPIRED:I = 0x5

.field public static final ERROR_HAS_UPDATE:I = 0x8

.field public static final ERROR_HEADSET_UNPLUG:I = 0xa

.field public static final ERROR_INVALID_TOKEN:I = 0x7

.field public static final ERROR_NET_CONNECT:I = 0xf

.field public static final ERROR_NO_HOST:I = 0x2

.field public static final ERROR_NO_NETWORK:I = 0x4

.field public static final ERROR_NO_OFFLINE_SONG:I = 0xb

.field public static final ERROR_NO_ONLINE_SONG:I = 0xc

.field public static final ERROR_NO_WIFI:I = 0x3

.field public static final ERROR_OFFLINE_FORBIDDEN:I = 0x13

.field public static final ERROR_OFFLINE_SWITCH_CHANNEL:I = 0xd

.field public static final ERROR_OK:I = 0x0

.field public static final ERROR_PARSE_JSON:I = 0x9

.field public static final ERROR_SWITCH_OFFLINE:I = 0x12

.field public static final ERROR_TIME_OUT:I = 0x1

.field public static final ERROR_UNKNOWN:I = -0x1

.field public static final ERROR_USING_WAP:I = 0x14

.field public static final ERROR_VERSION_LOW:I = 0x6

.field public static final FM_HOST:Ljava/lang/String; = "www.douban.fm"

.field public static final HELP_PATH:Ljava/lang/String; = "/j/app/help"

.field public static final HELP_URL:Ljava/lang/String; = "http://douban.fm/support/"

.field public static final HOST:Ljava/lang/String; = "www.douban.com"

.field public static final INTENT_EXTRA_URL:Ljava/lang/String; = "url"

.field public static final INTENT_RADIO_COMMAND:Ljava/lang/String; = null

.field public static final INTENT_RADIO_ERROR:Ljava/lang/String; = null

.field public static final INTENT_RADIO_SERVICE:Ljava/lang/String; = null

.field public static final INTENT_RADIO_STATE:Ljava/lang/String; = null

.field public static final INTENT_TASK_STATE:Ljava/lang/String; = null

.field public static final JSON_ERR:Ljava/lang/String; = "err"

.field public static final JSON_R:Ljava/lang/String; = "r"

.field public static final KEY_CHANNEL:Ljava/lang/String; = "channel"

.field public static final KEY_CMD:Ljava/lang/String; = "cmd"

.field public static final KEY_ERROR:Ljava/lang/String; = "err"

.field public static final KEY_PICTURE:Ljava/lang/String; = "picture"

.field public static final KEY_RESOURCE_ID:Ljava/lang/String; = "resource_id"

.field public static final KEY_SHARE_CONTENT:Ljava/lang/String; = "share_content"

.field public static final KEY_SHARE_SOURCE:Ljava/lang/String; = "share_source"

.field public static final KEY_START_ALARM:Ljava/lang/String; = "start_alarm"

.field public static final KEY_START_URL:Ljava/lang/String; = "start_url"

.field public static final KEY_STATE:Ljava/lang/String; = "state"

.field public static final MAX_MP3_SIZE:I = 0x600000

.field public static final NETWORK_STATE:Ljava/lang/String; = "online_or_not"

.field public static final OFFLINE_STATE:I = 0x3ea

.field public static final REGISTER_ARGS:Ljava/lang/String; = null

.field public static final REGISTER_ARGS_EN:Ljava/lang/String; = null

.field public static final REGISTER_PATH:Ljava/lang/String; = "/j/app/register"

.field public static final REQUEST_BIND_EMAIL:I = 0xbbb

.field public static final REQUEST_LOGIN:I = 0x3e9

.field public static final REQUEST_LOGIN_HEART:I = 0x3ea

.field public static final REQUEST_SELECT_CHANNEL:I = 0x3eb

.field public static final RESULT_CHANNEL_SWTICHED:I = 0x7d2

.field public static final RESULT_LOGIN:I = 0x7d1

.field public static final RESULT_OFFLINE_PLAY:I = 0x7d3

.field public static final SONG_STORE_SIZE:I = 0x64

.field public static final VERSION:Ljava/lang/String; = null

.field public static final VERSION_CODE:I = 0x261

.field public static final version:Landroid/os/Build$VERSION;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 7
    new-instance v0, Landroid/os/Build$VERSION;

    invoke-direct {v0}, Landroid/os/Build$VERSION;-><init>()V

    sput-object v0, Lfm/douban/Consts;->version:Landroid/os/Build$VERSION;

    .line 10
    const/16 v0, 0x261

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfm/douban/Consts;->VERSION:Ljava/lang/String;

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "?app_name=radio_android&version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lfm/douban/Consts;->VERSION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfm/douban/Consts;->REGISTER_ARGS:Ljava/lang/String;

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "?app_name=radio_android&version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lfm/douban/Consts;->VERSION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&lang=en"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfm/douban/Consts;->REGISTER_ARGS_EN:Ljava/lang/String;

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lfm/douban/FmApp;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".intent.RADIO_SERVICE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfm/douban/Consts;->INTENT_RADIO_SERVICE:Ljava/lang/String;

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lfm/douban/FmApp;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".intent.RADIO_COMMAND"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfm/douban/Consts;->INTENT_RADIO_COMMAND:Ljava/lang/String;

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lfm/douban/FmApp;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".intent.RADIO_ERROR"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfm/douban/Consts;->INTENT_RADIO_ERROR:Ljava/lang/String;

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lfm/douban/FmApp;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".intent.RADIO_STATE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfm/douban/Consts;->INTENT_RADIO_STATE:Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lfm/douban/FmApp;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".intent.TASK_STATE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfm/douban/Consts;->INTENT_TASK_STATE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
