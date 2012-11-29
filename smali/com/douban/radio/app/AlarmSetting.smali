.class public Lcom/douban/radio/app/AlarmSetting;
.super Lcom/douban/radio/app/FMActivity;
.source "AlarmSetting.java"


# static fields
.field private static final radioIDs:[I


# instance fields
.field private cancelButton:Landroid/widget/Button;

.field private daysRadio:Landroid/widget/RadioGroup;

.field private fmsp:Lfm/douban/model/FMSharedPreferences;

.field private hours:I

.field private minutes:I

.field private okButton:Landroid/widget/Button;

.field private timePicker:Landroid/widget/TimePicker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/douban/radio/app/AlarmSetting;->radioIDs:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x18t 0x0t 0x8t 0x7ft
        0x19t 0x0t 0x8t 0x7ft
        0x1at 0x0t 0x8t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/douban/radio/app/FMActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/douban/radio/app/AlarmSetting;)Landroid/widget/TimePicker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/douban/radio/app/AlarmSetting;->timePicker:Landroid/widget/TimePicker;

    return-object v0
.end method

.method static synthetic access$100(Lcom/douban/radio/app/AlarmSetting;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget v0, p0, Lcom/douban/radio/app/AlarmSetting;->hours:I

    return v0
.end method

.method static synthetic access$102(Lcom/douban/radio/app/AlarmSetting;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput p1, p0, Lcom/douban/radio/app/AlarmSetting;->hours:I

    return p1
.end method

.method static synthetic access$200(Lcom/douban/radio/app/AlarmSetting;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget v0, p0, Lcom/douban/radio/app/AlarmSetting;->minutes:I

    return v0
.end method

.method static synthetic access$202(Lcom/douban/radio/app/AlarmSetting;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput p1, p0, Lcom/douban/radio/app/AlarmSetting;->minutes:I

    return p1
.end method

.method static synthetic access$300(Lcom/douban/radio/app/AlarmSetting;)Lfm/douban/model/FMSharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/douban/radio/app/AlarmSetting;->fmsp:Lfm/douban/model/FMSharedPreferences;

    return-object v0
.end method

.method static synthetic access$400(Lcom/douban/radio/app/AlarmSetting;)Landroid/widget/RadioGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/douban/radio/app/AlarmSetting;->daysRadio:Landroid/widget/RadioGroup;

    return-object v0
.end method

.method static synthetic access$500()[I
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/douban/radio/app/AlarmSetting;->radioIDs:[I

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/douban/radio/app/FMActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/douban/radio/app/AlarmSetting;->setContentView(I)V

    .line 37
    new-instance v0, Lfm/douban/model/FMSharedPreferences;

    invoke-direct {v0, p0}, Lfm/douban/model/FMSharedPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/douban/radio/app/AlarmSetting;->fmsp:Lfm/douban/model/FMSharedPreferences;

    .line 38
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 42
    invoke-super {p0}, Lcom/douban/radio/app/FMActivity;->onDestroy()V

    .line 43
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 46
    invoke-super {p0}, Lcom/douban/radio/app/FMActivity;->onPause()V

    .line 47
    invoke-static {p0}, Lcom/mobclick/android/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 48
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 52
    invoke-super {p0}, Lcom/douban/radio/app/FMActivity;->onResume()V

    .line 53
    invoke-static {p0}, Lcom/mobclick/android/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 55
    const v2, 0x7f080016

    invoke-virtual {p0, v2}, Lcom/douban/radio/app/AlarmSetting;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TimePicker;

    iput-object v2, p0, Lcom/douban/radio/app/AlarmSetting;->timePicker:Landroid/widget/TimePicker;

    .line 56
    iget-object v2, p0, Lcom/douban/radio/app/AlarmSetting;->fmsp:Lfm/douban/model/FMSharedPreferences;

    const-string v3, "wake_alarm_hour"

    invoke-virtual {v2, v3, v4}, Lfm/douban/model/FMSharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/douban/radio/app/AlarmSetting;->hours:I

    .line 57
    iget-object v2, p0, Lcom/douban/radio/app/AlarmSetting;->fmsp:Lfm/douban/model/FMSharedPreferences;

    const-string v3, "wake_alarm_min"

    invoke-virtual {v2, v3, v4}, Lfm/douban/model/FMSharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/douban/radio/app/AlarmSetting;->minutes:I

    .line 58
    iget v2, p0, Lcom/douban/radio/app/AlarmSetting;->hours:I

    if-eq v2, v4, :cond_0

    iget v2, p0, Lcom/douban/radio/app/AlarmSetting;->minutes:I

    if-ne v2, v4, :cond_1

    .line 59
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 60
    .local v0, c:Ljava/util/Calendar;
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lcom/douban/radio/app/AlarmSetting;->hours:I

    .line 61
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lcom/douban/radio/app/AlarmSetting;->minutes:I

    .line 63
    .end local v0           #c:Ljava/util/Calendar;
    :cond_1
    iget-object v2, p0, Lcom/douban/radio/app/AlarmSetting;->timePicker:Landroid/widget/TimePicker;

    iget v3, p0, Lcom/douban/radio/app/AlarmSetting;->hours:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 64
    iget-object v2, p0, Lcom/douban/radio/app/AlarmSetting;->timePicker:Landroid/widget/TimePicker;

    iget v3, p0, Lcom/douban/radio/app/AlarmSetting;->minutes:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 65
    iget-object v2, p0, Lcom/douban/radio/app/AlarmSetting;->timePicker:Landroid/widget/TimePicker;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 66
    const v2, 0x7f080017

    invoke-virtual {p0, v2}, Lcom/douban/radio/app/AlarmSetting;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioGroup;

    iput-object v2, p0, Lcom/douban/radio/app/AlarmSetting;->daysRadio:Landroid/widget/RadioGroup;

    .line 67
    iget-object v2, p0, Lcom/douban/radio/app/AlarmSetting;->fmsp:Lfm/douban/model/FMSharedPreferences;

    const-string v3, "wake_alarm_day"

    invoke-virtual {v2, v3, v4}, Lfm/douban/model/FMSharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 68
    .local v1, days:I
    if-eq v1, v4, :cond_2

    .line 69
    iget-object v2, p0, Lcom/douban/radio/app/AlarmSetting;->daysRadio:Landroid/widget/RadioGroup;

    sget-object v3, Lcom/douban/radio/app/AlarmSetting;->radioIDs:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->check(I)V

    .line 73
    :goto_0
    const v2, 0x7f08001b

    invoke-virtual {p0, v2}, Lcom/douban/radio/app/AlarmSetting;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/douban/radio/app/AlarmSetting;->okButton:Landroid/widget/Button;

    .line 74
    iget-object v2, p0, Lcom/douban/radio/app/AlarmSetting;->okButton:Landroid/widget/Button;

    new-instance v3, Lcom/douban/radio/app/AlarmSetting$1;

    invoke-direct {v3, p0}, Lcom/douban/radio/app/AlarmSetting$1;-><init>(Lcom/douban/radio/app/AlarmSetting;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    const v2, 0x7f08001c

    invoke-virtual {p0, v2}, Lcom/douban/radio/app/AlarmSetting;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/douban/radio/app/AlarmSetting;->cancelButton:Landroid/widget/Button;

    .line 96
    iget-object v2, p0, Lcom/douban/radio/app/AlarmSetting;->cancelButton:Landroid/widget/Button;

    new-instance v3, Lcom/douban/radio/app/AlarmSetting$2;

    invoke-direct {v3, p0}, Lcom/douban/radio/app/AlarmSetting$2;-><init>(Lcom/douban/radio/app/AlarmSetting;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    return-void

    .line 71
    :cond_2
    iget-object v2, p0, Lcom/douban/radio/app/AlarmSetting;->daysRadio:Landroid/widget/RadioGroup;

    sget-object v3, Lcom/douban/radio/app/AlarmSetting;->radioIDs:[I

    aget v3, v3, v5

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0
.end method
