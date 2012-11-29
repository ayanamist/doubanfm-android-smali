.class public Lcom/douban/radio/app/SettingActivity;
.super Lcom/douban/radio/app/FMActivity;
.source "SettingActivity.java"


# static fields
.field private static NO_ABOUT_SET:[Ljava/lang/String; = null

.field public static final SETTING_ALARM_DAYS:Ljava/lang/String; = "wake_alarm_day"

.field public static final SETTING_ALARM_HOUR:Ljava/lang/String; = "wake_alarm_hour"

.field public static final SETTING_ALARM_MIN:Ljava/lang/String; = "wake_alarm_min"

.field public static final SETTING_ALARM_ON:Ljava/lang/String; = "wake_alarm_on"

.field public static final SETTING_ANIM:Ljava/lang/String; = "anim"

.field public static final SETTING_ANONYMOUS_HATE:Ljava/lang/String; = "anonymous_hate"

.field public static final SETTING_ANONYMOUS_LIKE:Ljava/lang/String; = "anonymous_like"

.field public static final SETTING_CAN_USE_MOBILE_NET:Ljava/lang/String; = "setting_can_use_mobile_net"

.field public static final SETTING_HEADPHONE_SKIP:Ljava/lang/String; = "headphone_skip"

.field public static final SETTING_OFFILINE_STOAGE:Ljava/lang/String; = "offline_storage"

.field public static final SETTING_OFFILINE_SWITCH:Ljava/lang/String; = "offline_switch"

.field public static final SETTING_OFFILINE_SYNC:Ljava/lang/String; = "offline_sync_method"

.field public static final SETTING_OFFLINE_CAN_GET_RED:Ljava/lang/String; = "can_get_red"

.field public static final SETTING_OFFLINE_REST_RED_NUM:Ljava/lang/String; = "rest_number"

.field public static final SETTING_OFFLINE_SYNCING:Ljava/lang/String; = "syncing"

.field public static final SETTING_SHAKE_SKIP:Ljava/lang/String; = "shake2"

.field public static final SETTING_SLEEP_CLOCK:Ljava/lang/String; = "sleep_clock"

.field public static final SETTING_USER_HATE:Ljava/lang/String; = "user_hate"

.field public static final SETTING_USER_LIKE:Ljava/lang/String; = "user_like"

.field public static final SYNC_METHOD_3G:I = 0x1

.field public static final SYNC_METHOD_WIFI:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SettingActivity"

.field private static final TIMED_QUIT_INTERVAL:[I


# instance fields
.field private accountButton:Landroid/widget/Button;

.field private accountTitle:Landroid/widget/TextView;

.field private checkBoxes:[Landroid/widget/CheckBox;

.field private checkListeners:[Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private clearCache:Landroid/widget/Button;

.field private fmsp:Lfm/douban/model/FMSharedPreferences;

.field private offlineItem:Landroid/view/View;

.field private offlineTip:Landroid/view/View;

.field private responseHandler:Lcom/loopj/android/http/JsonHttpResponseHandler;

.field private rm:Lfm/douban/controller/RadioManager;

.field private shakeCheckbox:Landroid/widget/CheckBox;

.field private shakeSwitch:Z

.field private shareTitles:[Landroid/widget/TextView;

.field private shareViews:[Landroid/view/View;

.field private spinner:Landroid/widget/Spinner;

.field private spinnerSwitch:Landroid/widget/Spinner;

.field private spinnerSync:Landroid/widget/Spinner;

.field private state:Lfm/douban/service/RadioState;

.field private wakeCheck:Landroid/widget/CheckBox;

.field private wakeTime:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 48
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Retail_samsung"

    aput-object v2, v0, v1

    sput-object v0, Lcom/douban/radio/app/SettingActivity;->NO_ABOUT_SET:[Ljava/lang/String;

    .line 77
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/douban/radio/app/SettingActivity;->TIMED_QUIT_INTERVAL:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x3ct 0x0t 0x0t 0x0t
        0x78t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 45
    invoke-direct {p0}, Lcom/douban/radio/app/FMActivity;-><init>()V

    .line 94
    new-array v0, v1, [Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/douban/radio/app/SettingActivity;->checkBoxes:[Landroid/widget/CheckBox;

    .line 95
    new-array v0, v1, [Landroid/view/View;

    iput-object v0, p0, Lcom/douban/radio/app/SettingActivity;->shareViews:[Landroid/view/View;

    .line 96
    new-array v0, v1, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/douban/radio/app/SettingActivity;->shareTitles:[Landroid/widget/TextView;

    .line 101
    new-instance v0, Lcom/douban/radio/app/SettingActivity$1;

    invoke-direct {v0, p0}, Lcom/douban/radio/app/SettingActivity$1;-><init>(Lcom/douban/radio/app/SettingActivity;)V

    iput-object v0, p0, Lcom/douban/radio/app/SettingActivity;->responseHandler:Lcom/loopj/android/http/JsonHttpResponseHandler;

    .line 146
    new-array v0, v1, [Landroid/widget/CompoundButton$OnCheckedChangeListener;

    iput-object v0, p0, Lcom/douban/radio/app/SettingActivity;->checkListeners:[Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/douban/radio/app/SettingActivity;)[Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/douban/radio/app/SettingActivity;->checkBoxes:[Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$100(Lcom/douban/radio/app/SettingActivity;)Lfm/douban/controller/RadioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/douban/radio/app/SettingActivity;->rm:Lfm/douban/controller/RadioManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/douban/radio/app/SettingActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/douban/radio/app/SettingActivity;->wakeTime:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/douban/radio/app/SettingActivity;)Lfm/douban/service/RadioState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/douban/radio/app/SettingActivity;->state:Lfm/douban/service/RadioState;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/douban/radio/app/SettingActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/douban/radio/app/SettingActivity;->accountButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/douban/radio/app/SettingActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/douban/radio/app/SettingActivity;->accountTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/douban/radio/app/SettingActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/douban/radio/app/SettingActivity;->clearAllShare()V

    return-void
.end method

.method static synthetic access$1500(Lcom/douban/radio/app/SettingActivity;)[Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/douban/radio/app/SettingActivity;->shareTitles:[Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/douban/radio/app/SettingActivity;IZLjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/douban/radio/app/SettingActivity;->applyCheck(IZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/douban/radio/app/SettingActivity;)[Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/douban/radio/app/SettingActivity;->checkListeners:[Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/douban/radio/app/SettingActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/douban/radio/app/SettingActivity;->clearCache:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/douban/radio/app/SettingActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/douban/radio/app/SettingActivity;->showLogout(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/douban/radio/app/SettingActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/douban/radio/app/SettingActivity;->toggleShake()V

    return-void
.end method

.method static synthetic access$700(Lcom/douban/radio/app/SettingActivity;)Lfm/douban/model/FMSharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/douban/radio/app/SettingActivity;->fmsp:Lfm/douban/model/FMSharedPreferences;

    return-object v0
.end method

.method static synthetic access$800()[I
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/douban/radio/app/SettingActivity;->TIMED_QUIT_INTERVAL:[I

    return-object v0
.end method

.method static synthetic access$900(Lcom/douban/radio/app/SettingActivity;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/douban/radio/app/SettingActivity;->wakeCheck:Landroid/widget/CheckBox;

    return-object v0
.end method

.method private applyCheck(IZLjava/lang/String;)V
    .locals 1
    .parameter "source"
    .parameter "check"
    .parameter "name"

    .prologue
    .line 527
    iget-object v0, p0, Lcom/douban/radio/app/SettingActivity;->checkBoxes:[Landroid/widget/CheckBox;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 528
    iget-object v0, p0, Lcom/douban/radio/app/SettingActivity;->shareTitles:[Landroid/widget/TextView;

    aget-object v0, v0, p1

    if-nez p3, :cond_0

    const-string p3, ""

    .end local p3
    :cond_0
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 529
    return-void
.end method

.method private clearAllShare()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 606
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 607
    invoke-static {p0}, Lcom/douban/share/ShareMgr;->getInstance(Landroid/content/Context;)Lcom/douban/share/ShareMgr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/douban/share/ShareMgr;->removeToken(I)V

    .line 608
    iget-object v1, p0, Lcom/douban/radio/app/SettingActivity;->shareTitles:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 609
    iget-object v1, p0, Lcom/douban/radio/app/SettingActivity;->checkBoxes:[Landroid/widget/CheckBox;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 610
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v3}, Lcom/douban/radio/app/SettingActivity;->applyCheck(IZLjava/lang/String;)V

    .line 611
    iget-object v1, p0, Lcom/douban/radio/app/SettingActivity;->checkBoxes:[Landroid/widget/CheckBox;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/douban/radio/app/SettingActivity;->checkListeners:[Landroid/widget/CompoundButton$OnCheckedChangeListener;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 606
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 613
    :cond_0
    return-void
.end method

.method private makeListener(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 544
    iget-object v0, p0, Lcom/douban/radio/app/SettingActivity;->checkListeners:[Landroid/widget/CompoundButton$OnCheckedChangeListener;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    .line 545
    if-nez p1, :cond_1

    .line 546
    iget-object v0, p0, Lcom/douban/radio/app/SettingActivity;->checkListeners:[Landroid/widget/CompoundButton$OnCheckedChangeListener;

    new-instance v1, Lcom/douban/radio/app/SettingActivity$16;

    invoke-direct {v1, p0}, Lcom/douban/radio/app/SettingActivity$16;-><init>(Lcom/douban/radio/app/SettingActivity;)V

    aput-object v1, v0, p1

    .line 596
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/douban/radio/app/SettingActivity;->shareViews:[Landroid/view/View;

    aget-object v0, v0, p1

    new-instance v1, Lcom/douban/radio/app/SettingActivity$18;

    invoke-direct {v1, p0, p1}, Lcom/douban/radio/app/SettingActivity$18;-><init>(Lcom/douban/radio/app/SettingActivity;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 603
    return-void

    .line 576
    :cond_1
    iget-object v0, p0, Lcom/douban/radio/app/SettingActivity;->checkListeners:[Landroid/widget/CompoundButton$OnCheckedChangeListener;

    new-instance v1, Lcom/douban/radio/app/SettingActivity$17;

    invoke-direct {v1, p0, p1}, Lcom/douban/radio/app/SettingActivity$17;-><init>(Lcom/douban/radio/app/SettingActivity;I)V

    aput-object v1, v0, p1

    goto :goto_0
.end method

.method private makeListeners()V
    .locals 2

    .prologue
    .line 538
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 539
    invoke-direct {p0, v0}, Lcom/douban/radio/app/SettingActivity;->makeListener(I)V

    .line 538
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 541
    :cond_0
    return-void
.end method

.method private noAbout(Ljava/lang/String;)Z
    .locals 5
    .parameter "channel"

    .prologue
    .line 460
    sget-object v0, Lcom/douban/radio/app/SettingActivity;->NO_ABOUT_SET:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 461
    .local v3, s:Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 462
    const/4 v4, 0x1

    .line 465
    .end local v3           #s:Ljava/lang/String;
    :goto_1
    return v4

    .line 460
    .restart local v3       #s:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 465
    .end local v3           #s:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private showLogout(Z)V
    .locals 5
    .parameter "rollback"

    .prologue
    .line 484
    iget-object v2, p0, Lcom/douban/radio/app/SettingActivity;->rm:Lfm/douban/controller/RadioManager;

    invoke-static {v2}, Lfm/douban/model/Token;->get(Lfm/douban/controller/RadioManager;)Lfm/douban/model/Token;

    move-result-object v1

    .line 485
    .local v1, t:Lfm/douban/model/Token;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 486
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f090030

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f020075

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f090031

    invoke-virtual {p0, v4}, Lcom/douban/radio/app/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lfm/douban/model/Token;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0900a6

    new-instance v4, Lcom/douban/radio/app/SettingActivity$15;

    invoke-direct {v4, p0, v1}, Lcom/douban/radio/app/SettingActivity$15;-><init>(Lcom/douban/radio/app/SettingActivity;Lfm/douban/model/Token;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0900a9

    new-instance v4, Lcom/douban/radio/app/SettingActivity$14;

    invoke-direct {v4, p0, p1}, Lcom/douban/radio/app/SettingActivity$14;-><init>(Lcom/douban/radio/app/SettingActivity;Z)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 524
    return-void
.end method

.method private toggleShake()V
    .locals 3

    .prologue
    .line 532
    iget-boolean v0, p0, Lcom/douban/radio/app/SettingActivity;->shakeSwitch:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/douban/radio/app/SettingActivity;->shakeSwitch:Z

    .line 533
    iget-object v0, p0, Lcom/douban/radio/app/SettingActivity;->shakeCheckbox:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/douban/radio/app/SettingActivity;->shakeSwitch:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 534
    iget-object v0, p0, Lcom/douban/radio/app/SettingActivity;->fmsp:Lfm/douban/model/FMSharedPreferences;

    const-string v1, "shake2"

    iget-boolean v2, p0, Lcom/douban/radio/app/SettingActivity;->shakeSwitch:Z

    invoke-virtual {v0, v1, v2}, Lfm/douban/model/FMSharedPreferences;->putBoolean(Ljava/lang/String;Z)Z

    .line 535
    return-void

    .line 532
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 470
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 471
    const/16 v0, 0xbbb

    if-ne p1, v0, :cond_0

    .line 475
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/douban/radio/app/FMActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 476
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 150
    invoke-super {p0, p1}, Lcom/douban/radio/app/FMActivity;->onCreate(Landroid/os/Bundle;)V

    .line 151
    invoke-virtual {p0}, Lcom/douban/radio/app/SettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Lfm/douban/Consts;->INTENT_RADIO_STATE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfm/douban/service/RadioState;

    iput-object v0, p0, Lcom/douban/radio/app/SettingActivity;->state:Lfm/douban/service/RadioState;

    .line 152
    const v0, 0x7f030008

    invoke-virtual {p0, v0}, Lcom/douban/radio/app/SettingActivity;->setContentView(I)V

    .line 153
    new-instance v0, Lfm/douban/model/FMSharedPreferences;

    invoke-direct {v0, p0}, Lfm/douban/model/FMSharedPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/douban/radio/app/SettingActivity;->fmsp:Lfm/douban/model/FMSharedPreferences;

    .line 154
    invoke-static {p0}, Lfm/douban/FmApp;->getRadioManager(Landroid/content/Context;)Lfm/douban/controller/RadioManager;

    move-result-object v0

    iput-object v0, p0, Lcom/douban/radio/app/SettingActivity;->rm:Lfm/douban/controller/RadioManager;

    .line 157
    const v0, 0x7f080055

    invoke-virtual {p0, v0}, Lcom/douban/radio/app/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/douban/radio/app/SettingActivity;->accountTitle:Landroid/widget/TextView;

    .line 158
    const v0, 0x7f080056

    invoke-virtual {p0, v0}, Lcom/douban/radio/app/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/douban/radio/app/SettingActivity;->accountButton:Landroid/widget/Button;

    .line 160
    iget-object v0, p0, Lcom/douban/radio/app/SettingActivity;->shareViews:[Landroid/view/View;

    const v1, 0x7f080058

    invoke-virtual {p0, v1}, Lcom/douban/radio/app/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    aput-object v1, v0, v2

    .line 161
    iget-object v1, p0, Lcom/douban/radio/app/SettingActivity;->checkBoxes:[Landroid/widget/CheckBox;

    const v0, 0x7f08005a

    invoke-virtual {p0, v0}, Lcom/douban/radio/app/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    aput-object v0, v1, v2

    .line 162
    iget-object v1, p0, Lcom/douban/radio/app/SettingActivity;->shareTitles:[Landroid/widget/TextView;

    const v0, 0x7f08005b

    invoke-virtual {p0, v0}, Lcom/douban/radio/app/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v2

    .line 164
    iget-object v0, p0, Lcom/douban/radio/app/SettingActivity;->shareViews:[Landroid/view/View;

    const v1, 0x7f08005d

    invoke-virtual {p0, v1}, Lcom/douban/radio/app/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    aput-object v1, v0, v3

    .line 165
    iget-object v1, p0, Lcom/douban/radio/app/SettingActivity;->checkBoxes:[Landroid/widget/CheckBox;

    const v0, 0x7f08005f

    invoke-virtual {p0, v0}, Lcom/douban/radio/app/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    aput-object v0, v1, v3

    .line 166
    iget-object v1, p0, Lcom/douban/radio/app/SettingActivity;->shareTitles:[Landroid/widget/TextView;

    const v0, 0x7f080060

    invoke-virtual {p0, v0}, Lcom/douban/radio/app/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v3

    .line 168
    iget-object v0, p0, Lcom/douban/radio/app/SettingActivity;->shareViews:[Landroid/view/View;

    const v1, 0x7f080062

    invoke-virtual {p0, v1}, Lcom/douban/radio/app/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    aput-object v1, v0, v4

    .line 169
    iget-object v1, p0, Lcom/douban/radio/app/SettingActivity;->checkBoxes:[Landroid/widget/CheckBox;

    const v0, 0x7f080064

    invoke-virtual {p0, v0}, Lcom/douban/radio/app/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    aput-object v0, v1, v4

    .line 170
    iget-object v1, p0, Lcom/douban/radio/app/SettingActivity;->shareTitles:[Landroid/widget/TextView;

    const v0, 0x7f080065

    invoke-virtual {p0, v0}, Lcom/douban/radio/app/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v4

    .line 172
    iget-object v0, p0, Lcom/douban/radio/app/SettingActivity;->shareViews:[Landroid/view/View;

    const v1, 0x7f080067

    invoke-virtual {p0, v1}, Lcom/douban/radio/app/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    aput-object v1, v0, v5

    .line 173
    iget-object v1, p0, Lcom/douban/radio/app/SettingActivity;->checkBoxes:[Landroid/widget/CheckBox;

    const v0, 0x7f080069

    invoke-virtual {p0, v0}, Lcom/douban/radio/app/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    aput-object v0, v1, v5

    .line 174
    iget-object v1, p0, Lcom/douban/radio/app/SettingActivity;->shareTitles:[Landroid/widget/TextView;

    const v0, 0x7f08006a

    invoke-virtual {p0, v0}, Lcom/douban/radio/app/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v5

    .line 177
    const v0, 0x7f080083

    invoke-virtual {p0, v0}, Lcom/douban/radio/app/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/douban/radio/app/SettingActivity;->clearCache:Landroid/widget/Button;

    .line 180
    invoke-direct {p0}, Lcom/douban/radio/app/SettingActivity;->makeListeners()V

    .line 182
    iget-object v0, p0, Lcom/douban/radio/app/SettingActivity;->clearCache:Landroid/widget/Button;

    new-instance v1, Lcom/douban/radio/app/SettingActivity$2;

    invoke-direct {v1, p0}, Lcom/douban/radio/app/SettingActivity$2;-><init>(Lcom/douban/radio/app/SettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    iget-object v0, p0, Lcom/douban/radio/app/SettingActivity;->accountButton:Landroid/widget/Button;

    new-instance v1, Lcom/douban/radio/app/SettingActivity$3;

    invoke-direct {v1, p0}, Lcom/douban/radio/app/SettingActivity$3;-><init>(Lcom/douban/radio/app/SettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 480
    const/4 v0, 0x0

    return v0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 225
    invoke-super {p0}, Lcom/douban/radio/app/FMActivity;->onDestroy()V

    .line 226
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 230
    invoke-super {p0}, Lcom/douban/radio/app/FMActivity;->onPause()V

    .line 231
    invoke-static {p0}, Lcom/mobclick/android/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 232
    return-void
.end method

.method public onResume()V
    .locals 26

    .prologue
    .line 236
    invoke-super/range {p0 .. p0}, Lcom/douban/radio/app/FMActivity;->onResume()V

    .line 237
    invoke-static/range {p0 .. p0}, Lcom/mobclick/android/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/douban/radio/app/SettingActivity;->rm:Lfm/douban/controller/RadioManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lfm/douban/controller/RadioManager;->getSongManager()Lfm/douban/controller/SongManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lfm/douban/controller/SongManager;->isCacheEmpty()Z

    move-result v22

    if-eqz v22, :cond_0

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/douban/radio/app/SettingActivity;->clearCache:Landroid/widget/Button;

    move-object/from16 v22, v0

    const v23, 0x7f09005f

    invoke-virtual/range {v22 .. v23}, Landroid/widget/Button;->setText(I)V

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/douban/radio/app/SettingActivity;->clearCache:Landroid/widget/Button;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/Button;->setEnabled(Z)V

    .line 248
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/douban/radio/app/SettingActivity;->checkBoxes:[Landroid/widget/CheckBox;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/douban/radio/app/SettingActivity;->rm:Lfm/douban/controller/RadioManager;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lfm/douban/model/Token;->get(Lfm/douban/controller/RadioManager;)Lfm/douban/model/Token;

    move-result-object v9

    .line 250
    .local v9, doubanToken:Lfm/douban/model/Token;
    if-nez v9, :cond_1

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/douban/radio/app/SettingActivity;->accountTitle:Landroid/widget/TextView;

    move-object/from16 v22, v0

    const v23, 0x7f0900f7

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setText(I)V

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/douban/radio/app/SettingActivity;->accountButton:Landroid/widget/Button;

    move-object/from16 v22, v0

    const v23, 0x7f0900f8

    invoke-virtual/range {v22 .. v23}, Landroid/widget/Button;->setText(I)V

    .line 253
    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/douban/radio/app/SettingActivity;->applyCheck(IZLjava/lang/String;)V

    .line 259
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/douban/radio/app/SettingActivity;->checkBoxes:[Landroid/widget/CheckBox;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/douban/radio/app/SettingActivity;->checkListeners:[Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    invoke-virtual/range {v22 .. v23}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 261
    const/4 v13, 0x1

    .local v13, i:I
    :goto_2
    const/16 v22, 0x4

    move/from16 v0, v22

    if-ge v13, v0, :cond_3

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/douban/radio/app/SettingActivity;->checkBoxes:[Landroid/widget/CheckBox;

    move-object/from16 v22, v0

    aget-object v22, v22, v13

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 263
    invoke-static/range {p0 .. p0}, Lcom/douban/share/ShareMgr;->getInstance(Landroid/content/Context;)Lcom/douban/share/ShareMgr;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Lcom/douban/share/ShareMgr;->getAccessToken(I)Lcom/douban/share/ShareToken;

    move-result-object v6

    .line 264
    .local v6, at:Lcom/douban/share/ShareToken;
    if-nez v6, :cond_2

    .line 265
    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v13, v1, v2}, Lcom/douban/radio/app/SettingActivity;->applyCheck(IZLjava/lang/String;)V

    .line 269
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/douban/radio/app/SettingActivity;->checkBoxes:[Landroid/widget/CheckBox;

    move-object/from16 v22, v0

    aget-object v22, v22, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/douban/radio/app/SettingActivity;->checkListeners:[Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-object/from16 v23, v0

    aget-object v23, v23, v13

    invoke-virtual/range {v22 .. v23}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 261
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 243
    .end local v6           #at:Lcom/douban/share/ShareToken;
    .end local v9           #doubanToken:Lfm/douban/model/Token;
    .end local v13           #i:I
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/douban/radio/app/SettingActivity;->clearCache:Landroid/widget/Button;

    move-object/from16 v22, v0

    const v23, 0x7f09005d

    invoke-virtual/range {v22 .. v23}, Landroid/widget/Button;->setText(I)V

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/douban/radio/app/SettingActivity;->clearCache:Landroid/widget/Button;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 255
    .restart local v9       #doubanToken:Lfm/douban/model/Token;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/douban/radio/app/SettingActivity;->accountTitle:Landroid/widget/TextView;

    move-object/from16 v22, v0

    iget-object v0, v9, Lfm/douban/model/Token;->name:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/douban/radio/app/SettingActivity;->accountButton:Landroid/widget/Button;

    move-object/from16 v22, v0

    const v23, 0x7f0900f9

    invoke-virtual/range {v22 .. v23}, Landroid/widget/Button;->setText(I)V

    .line 257
    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/douban/radio/app/SettingActivity;->fmsp:Lfm/douban/model/FMSharedPreferences;

    move-object/from16 v23, v0

    const-string v24, "can_share_to_douban"

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v25}, Lfm/douban/model/FMSharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v23

    iget-object v0, v9, Lfm/douban/model/Token;->name:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/douban/radio/app/SettingActivity;->applyCheck(IZLjava/lang/String;)V

    goto/16 :goto_1

    .line 267
    .restart local v6       #at:Lcom/douban/share/ShareToken;
    .restart local v13       #i:I
    :cond_2
    const/16 v22, 0x1

    invoke-virtual {v6}, Lcom/douban/share/ShareToken;->getName()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v13, v1, v2}, Lcom/douban/radio/app/SettingActivity;->applyCheck(IZLjava/lang/String;)V

    goto :goto_3

    .line 272
    .end local v6           #at:Lcom/douban/share/ShareToken;
    :cond_3
    if-eqz v9, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/douban/radio/app/SettingActivity;->fmsp:Lfm/douban/model/FMSharedPreferences;

    move-object/from16 v22, v0

    const-string v23, "can_share_to_douban"

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Lfm/douban/model/FMSharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v22

    if-nez v22, :cond_4

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/douban/radio/app/SettingActivity;->rm:Lfm/douban/controller/RadioManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lfm/douban/controller/RadioManager;->getApi()Lfm/douban/api/Api;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/douban/radio/app/SettingActivity;->responseHandler:Lcom/loopj/android/http/JsonHttpResponseHandler;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lfm/douban/api/Api;->checkShare(Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 276
    :cond_4
    const v22, 0x7f08008c

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/douban/radio/app/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    .line 279
    .local v21, versionView:Landroid/widget/TextView;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/douban/radio/app/SettingActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    .line 280
    .local v16, pm:Landroid/content/pm/PackageManager;
    sget-object v22, Lfm/douban/FmApp;->PACKAGE_NAME:Ljava/lang/String;

    const/16 v23, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v14

    .line 281
    .local v14, info:Landroid/content/pm/PackageInfo;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const v23, 0x7f090075

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/douban/radio/app/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v14, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    .end local v14           #info:Landroid/content/pm/PackageInfo;
    .end local v16           #pm:Landroid/content/pm/PackageManager;
    :goto_4
    const v22, 0x7f08008a

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/douban/radio/app/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 288
    .local v5, appGalleryItem:Landroid/view/View;
    const/4 v8, 0x0

    .line 290
    .local v8, channel:Ljava/lang/String;
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/douban/radio/app/SettingActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v22

    invoke-virtual/range {p0 .. p0}, Lcom/douban/radio/app/SettingActivity;->getPackageName()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x80

    invoke-virtual/range {v22 .. v24}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 292
    .local v7, bundle:Landroid/os/Bundle;
    const-string v22, "UMENG_CHANNEL"

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v8

    .line 296
    .end local v7           #bundle:Landroid/os/Bundle;
    :goto_5
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/douban/radio/app/SettingActivity;->noAbout(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_5

    .line 311
    :goto_6
    const v22, 0x7f080087

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/douban/radio/app/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 312
    .local v12, helpItem:Landroid/view/View;
    new-instance v22, Lcom/douban/radio/app/SettingActivity$5;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/douban/radio/app/SettingActivity$5;-><init>(Lcom/douban/radio/app/SettingActivity;)V

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 325
    const v22, 0x7f080085

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/douban/radio/app/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 326
    .local v11, feedbackItem:Landroid/view/View;
    new-instance v22, Lcom/douban/radio/app/SettingActivity$6;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/douban/radio/app/SettingActivity$6;-><init>(Lcom/douban/radio/app/SettingActivity;)V

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 333
    new-instance v18, Lcom/douban/radio/app/SettingActivity$7;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/douban/radio/app/SettingActivity$7;-><init>(Lcom/douban/radio/app/SettingActivity;)V

    .line 340
    .local v18, shakeListener:Landroid/view/View$OnClickListener;
    const v22, 0x7f080071

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/douban/radio/app/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/CheckBox;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/douban/radio/app/SettingActivity;->shakeCheckbox:Landroid/widget/CheckBox;

    .line 341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/douban/radio/app/SettingActivity;->fmsp:Lfm/douban/model/FMSharedPreferences;

    move-object/from16 v22, v0

    const-string v23, "shake2"

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Lfm/douban/model/FMSharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/douban/radio/app/SettingActivity;->shakeSwitch:Z

    .line 342
    const-string v22, "SettingActivity"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "shakeSwitch="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/douban/radio/app/SettingActivity;->shakeSwitch:Z

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/douban/radio/app/SettingActivity;->shakeCheckbox:Landroid/widget/CheckBox;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/douban/radio/app/SettingActivity;->shakeSwitch:Z

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 345
    const v22, 0x7f08006f

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/douban/radio/app/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    .line 346
    .local v17, shakeItem:Landroid/view/View;
    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/douban/radio/app/SettingActivity;->shakeCheckbox:Landroid/widget/CheckBox;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 349
    const v22, 0x7f080075

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/douban/radio/app/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/Spinner;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/douban/radio/app/SettingActivity;->spinner:Landroid/widget/Spinner;

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/douban/radio/app/SettingActivity;->fmsp:Lfm/douban/model/FMSharedPreferences;

    move-object/from16 v22, v0

    const-string v23, "sleep_clock"

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Lfm/douban/model/FMSharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v19

    .line 351
    .local v19, sleepClock:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/douban/radio/app/SettingActivity;->spinner:Landroid/widget/Spinner;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/douban/radio/app/SettingActivity;->spinner:Landroid/widget/Spinner;

    move-object/from16 v22, v0

    new-instance v23, Lcom/douban/radio/app/SettingActivity$8;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/douban/radio/app/SettingActivity$8;-><init>(Lcom/douban/radio/app/SettingActivity;)V

    invoke-virtual/range {v22 .. v23}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 371
    const v22, 0x7f08007a

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/douban/radio/app/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/CheckBox;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/douban/radio/app/SettingActivity;->wakeCheck:Landroid/widget/CheckBox;

    .line 372
    const v22, 0x7f080079

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/douban/radio/app/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/ImageView;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/douban/radio/app/SettingActivity;->wakeTime:Landroid/widget/ImageView;

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/douban/radio/app/SettingActivity;->fmsp:Lfm/douban/model/FMSharedPreferences;

    move-object/from16 v22, v0

    const-string v23, "wake_alarm_on"

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Lfm/douban/model/FMSharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 374
    .local v4, alarmOn:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/douban/radio/app/SettingActivity;->wakeCheck:Landroid/widget/CheckBox;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 375
    if-eqz v4, :cond_6

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/douban/radio/app/SettingActivity;->wakeTime:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 380
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/douban/radio/app/SettingActivity;->wakeCheck:Landroid/widget/CheckBox;

    move-object/from16 v22, v0

    new-instance v23, Lcom/douban/radio/app/SettingActivity$9;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/douban/radio/app/SettingActivity$9;-><init>(Lcom/douban/radio/app/SettingActivity;)V

    invoke-virtual/range {v22 .. v23}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/douban/radio/app/SettingActivity;->wakeTime:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    new-instance v23, Lcom/douban/radio/app/SettingActivity$10;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/douban/radio/app/SettingActivity$10;-><init>(Lcom/douban/radio/app/SettingActivity;)V

    invoke-virtual/range {v22 .. v23}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 400
    const v22, 0x7f08007c

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/douban/radio/app/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/douban/radio/app/SettingActivity;->offlineTip:Landroid/view/View;

    .line 401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/douban/radio/app/SettingActivity;->offlineTip:Landroid/view/View;

    move-object/from16 v22, v0

    new-instance v23, Lcom/douban/radio/app/SettingActivity$11;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/douban/radio/app/SettingActivity$11;-><init>(Lcom/douban/radio/app/SettingActivity;)V

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 407
    const v22, 0x7f08007d

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/douban/radio/app/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/douban/radio/app/SettingActivity;->offlineItem:Landroid/view/View;

    .line 408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/douban/radio/app/SettingActivity;->rm:Lfm/douban/controller/RadioManager;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lfm/douban/model/Token;->isLogin(Lfm/douban/controller/RadioManager;)Z

    move-result v22

    if-eqz v22, :cond_7

    .line 409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/douban/radio/app/SettingActivity;->offlineTip:Landroid/view/View;

    move-object/from16 v22, v0

    const/16 v23, 0x8

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setVisibility(I)V

    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/douban/radio/app/SettingActivity;->offlineItem:Landroid/view/View;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setVisibility(I)V

    .line 416
    :goto_8
    const v22, 0x7f080081

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/douban/radio/app/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/Spinner;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/douban/radio/app/SettingActivity;->spinnerSwitch:Landroid/widget/Spinner;

    .line 417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/douban/radio/app/SettingActivity;->fmsp:Lfm/douban/model/FMSharedPreferences;

    move-object/from16 v22, v0

    const-string v23, "offline_switch"

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Lfm/douban/model/FMSharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v15

    .line 418
    .local v15, offlineSwitch:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/douban/radio/app/SettingActivity;->spinnerSwitch:Landroid/widget/Spinner;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Landroid/widget/Spinner;->setSelection(I)V

    .line 419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/douban/radio/app/SettingActivity;->spinnerSwitch:Landroid/widget/Spinner;

    move-object/from16 v22, v0

    new-instance v23, Lcom/douban/radio/app/SettingActivity$12;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/douban/radio/app/SettingActivity$12;-><init>(Lcom/douban/radio/app/SettingActivity;)V

    invoke-virtual/range {v22 .. v23}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 436
    const v22, 0x7f08007f

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/douban/radio/app/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/Spinner;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/douban/radio/app/SettingActivity;->spinnerSync:Landroid/widget/Spinner;

    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/douban/radio/app/SettingActivity;->fmsp:Lfm/douban/model/FMSharedPreferences;

    move-object/from16 v22, v0

    const-string v23, "offline_sync_method"

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Lfm/douban/model/FMSharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v20

    .line 438
    .local v20, syncSelection:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/douban/radio/app/SettingActivity;->spinnerSync:Landroid/widget/Spinner;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/douban/radio/app/SettingActivity;->spinnerSync:Landroid/widget/Spinner;

    move-object/from16 v22, v0

    new-instance v23, Lcom/douban/radio/app/SettingActivity$13;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/douban/radio/app/SettingActivity$13;-><init>(Lcom/douban/radio/app/SettingActivity;)V

    invoke-virtual/range {v22 .. v23}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 456
    return-void

    .line 282
    .end local v4           #alarmOn:Z
    .end local v5           #appGalleryItem:Landroid/view/View;
    .end local v8           #channel:Ljava/lang/String;
    .end local v11           #feedbackItem:Landroid/view/View;
    .end local v12           #helpItem:Landroid/view/View;
    .end local v15           #offlineSwitch:I
    .end local v17           #shakeItem:Landroid/view/View;
    .end local v18           #shakeListener:Landroid/view/View$OnClickListener;
    .end local v19           #sleepClock:I
    .end local v20           #syncSelection:I
    :catch_0
    move-exception v10

    .line 283
    .local v10, e:Ljava/lang/Exception;
    const-string v22, "SettingActivity"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "not found "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 293
    .end local v10           #e:Ljava/lang/Exception;
    .restart local v5       #appGalleryItem:Landroid/view/View;
    .restart local v8       #channel:Ljava/lang/String;
    :catch_1
    move-exception v10

    .line 294
    .local v10, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v10}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_5

    .line 299
    .end local v10           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_5
    new-instance v22, Lcom/douban/radio/app/SettingActivity$4;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/douban/radio/app/SettingActivity$4;-><init>(Lcom/douban/radio/app/SettingActivity;)V

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_6

    .line 378
    .restart local v4       #alarmOn:Z
    .restart local v11       #feedbackItem:Landroid/view/View;
    .restart local v12       #helpItem:Landroid/view/View;
    .restart local v17       #shakeItem:Landroid/view/View;
    .restart local v18       #shakeListener:Landroid/view/View$OnClickListener;
    .restart local v19       #sleepClock:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/douban/radio/app/SettingActivity;->wakeTime:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    const/16 v23, 0x4

    invoke-virtual/range {v22 .. v23}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_7

    .line 412
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/douban/radio/app/SettingActivity;->offlineTip:Landroid/view/View;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setVisibility(I)V

    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/douban/radio/app/SettingActivity;->offlineItem:Landroid/view/View;

    move-object/from16 v22, v0

    const/16 v23, 0x8

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_8
.end method
