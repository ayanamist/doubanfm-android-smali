.class Lcom/douban/radio/app/AlarmSetting$1;
.super Ljava/lang/Object;
.source "AlarmSetting.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/douban/radio/app/AlarmSetting;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/douban/radio/app/AlarmSetting;


# direct methods
.method constructor <init>(Lcom/douban/radio/app/AlarmSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/douban/radio/app/AlarmSetting$1;->this$0:Lcom/douban/radio/app/AlarmSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 76
    iget-object v3, p0, Lcom/douban/radio/app/AlarmSetting$1;->this$0:Lcom/douban/radio/app/AlarmSetting;

    #getter for: Lcom/douban/radio/app/AlarmSetting;->timePicker:Landroid/widget/TimePicker;
    invoke-static {v3}, Lcom/douban/radio/app/AlarmSetting;->access$000(Lcom/douban/radio/app/AlarmSetting;)Landroid/widget/TimePicker;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TimePicker;->clearFocus()V

    .line 77
    iget-object v3, p0, Lcom/douban/radio/app/AlarmSetting$1;->this$0:Lcom/douban/radio/app/AlarmSetting;

    iget-object v4, p0, Lcom/douban/radio/app/AlarmSetting$1;->this$0:Lcom/douban/radio/app/AlarmSetting;

    #getter for: Lcom/douban/radio/app/AlarmSetting;->timePicker:Landroid/widget/TimePicker;
    invoke-static {v4}, Lcom/douban/radio/app/AlarmSetting;->access$000(Lcom/douban/radio/app/AlarmSetting;)Landroid/widget/TimePicker;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    #setter for: Lcom/douban/radio/app/AlarmSetting;->hours:I
    invoke-static {v3, v4}, Lcom/douban/radio/app/AlarmSetting;->access$102(Lcom/douban/radio/app/AlarmSetting;I)I

    .line 78
    iget-object v3, p0, Lcom/douban/radio/app/AlarmSetting$1;->this$0:Lcom/douban/radio/app/AlarmSetting;

    iget-object v4, p0, Lcom/douban/radio/app/AlarmSetting$1;->this$0:Lcom/douban/radio/app/AlarmSetting;

    #getter for: Lcom/douban/radio/app/AlarmSetting;->timePicker:Landroid/widget/TimePicker;
    invoke-static {v4}, Lcom/douban/radio/app/AlarmSetting;->access$000(Lcom/douban/radio/app/AlarmSetting;)Landroid/widget/TimePicker;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    #setter for: Lcom/douban/radio/app/AlarmSetting;->minutes:I
    invoke-static {v3, v4}, Lcom/douban/radio/app/AlarmSetting;->access$202(Lcom/douban/radio/app/AlarmSetting;I)I

    .line 79
    const/4 v0, -0x1

    .line 80
    .local v0, d:I
    iget-object v3, p0, Lcom/douban/radio/app/AlarmSetting$1;->this$0:Lcom/douban/radio/app/AlarmSetting;

    #getter for: Lcom/douban/radio/app/AlarmSetting;->fmsp:Lfm/douban/model/FMSharedPreferences;
    invoke-static {v3}, Lcom/douban/radio/app/AlarmSetting;->access$300(Lcom/douban/radio/app/AlarmSetting;)Lfm/douban/model/FMSharedPreferences;

    move-result-object v3

    const-string v4, "wake_alarm_hour"

    iget-object v5, p0, Lcom/douban/radio/app/AlarmSetting$1;->this$0:Lcom/douban/radio/app/AlarmSetting;

    #getter for: Lcom/douban/radio/app/AlarmSetting;->hours:I
    invoke-static {v5}, Lcom/douban/radio/app/AlarmSetting;->access$100(Lcom/douban/radio/app/AlarmSetting;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lfm/douban/model/FMSharedPreferences;->putInt(Ljava/lang/String;I)Z

    .line 81
    iget-object v3, p0, Lcom/douban/radio/app/AlarmSetting$1;->this$0:Lcom/douban/radio/app/AlarmSetting;

    #getter for: Lcom/douban/radio/app/AlarmSetting;->fmsp:Lfm/douban/model/FMSharedPreferences;
    invoke-static {v3}, Lcom/douban/radio/app/AlarmSetting;->access$300(Lcom/douban/radio/app/AlarmSetting;)Lfm/douban/model/FMSharedPreferences;

    move-result-object v3

    const-string v4, "wake_alarm_min"

    iget-object v5, p0, Lcom/douban/radio/app/AlarmSetting$1;->this$0:Lcom/douban/radio/app/AlarmSetting;

    #getter for: Lcom/douban/radio/app/AlarmSetting;->minutes:I
    invoke-static {v5}, Lcom/douban/radio/app/AlarmSetting;->access$200(Lcom/douban/radio/app/AlarmSetting;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lfm/douban/model/FMSharedPreferences;->putInt(Ljava/lang/String;I)Z

    .line 82
    iget-object v3, p0, Lcom/douban/radio/app/AlarmSetting$1;->this$0:Lcom/douban/radio/app/AlarmSetting;

    #getter for: Lcom/douban/radio/app/AlarmSetting;->daysRadio:Landroid/widget/RadioGroup;
    invoke-static {v3}, Lcom/douban/radio/app/AlarmSetting;->access$400(Lcom/douban/radio/app/AlarmSetting;)Landroid/widget/RadioGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v2

    .line 83
    .local v2, id:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v3, 0x3

    if-ge v1, v3, :cond_1

    .line 84
    invoke-static {}, Lcom/douban/radio/app/AlarmSetting;->access$500()[I

    move-result-object v3

    aget v3, v3, v1

    if-ne v3, v2, :cond_0

    .line 85
    move v0, v1

    .line 86
    iget-object v3, p0, Lcom/douban/radio/app/AlarmSetting$1;->this$0:Lcom/douban/radio/app/AlarmSetting;

    #getter for: Lcom/douban/radio/app/AlarmSetting;->fmsp:Lfm/douban/model/FMSharedPreferences;
    invoke-static {v3}, Lcom/douban/radio/app/AlarmSetting;->access$300(Lcom/douban/radio/app/AlarmSetting;)Lfm/douban/model/FMSharedPreferences;

    move-result-object v3

    const-string v4, "wake_alarm_day"

    invoke-virtual {v3, v4, v0}, Lfm/douban/model/FMSharedPreferences;->putInt(Ljava/lang/String;I)Z

    .line 83
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 89
    :cond_1
    iget-object v3, p0, Lcom/douban/radio/app/AlarmSetting$1;->this$0:Lcom/douban/radio/app/AlarmSetting;

    invoke-static {v3}, Lfm/douban/util/AlarmSet;->disableAlarm(Landroid/content/Context;)V

    .line 90
    iget-object v3, p0, Lcom/douban/radio/app/AlarmSetting$1;->this$0:Lcom/douban/radio/app/AlarmSetting;

    invoke-static {v3}, Lfm/douban/util/AlarmSet;->enableAlarm(Landroid/content/Context;)V

    .line 91
    iget-object v3, p0, Lcom/douban/radio/app/AlarmSetting$1;->this$0:Lcom/douban/radio/app/AlarmSetting;

    invoke-virtual {v3}, Lcom/douban/radio/app/AlarmSetting;->finish()V

    .line 92
    return-void
.end method
