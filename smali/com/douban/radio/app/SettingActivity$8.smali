.class Lcom/douban/radio/app/SettingActivity$8;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/douban/radio/app/SettingActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/douban/radio/app/SettingActivity;


# direct methods
.method constructor <init>(Lcom/douban/radio/app/SettingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 352
    iput-object p1, p0, Lcom/douban/radio/app/SettingActivity$8;->this$0:Lcom/douban/radio/app/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v4, 0x0

    .line 354
    move v0, p3

    .line 355
    .local v0, selected:I
    const-string v1, "SettingActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "on click sleep: id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    if-nez v0, :cond_1

    .line 357
    iget-object v1, p0, Lcom/douban/radio/app/SettingActivity$8;->this$0:Lcom/douban/radio/app/SettingActivity;

    invoke-static {v1}, Lfm/douban/util/AlarmSet;->disableTimedQuitAlarm(Landroid/content/Context;)V

    .line 358
    iget-object v1, p0, Lcom/douban/radio/app/SettingActivity$8;->this$0:Lcom/douban/radio/app/SettingActivity;

    #getter for: Lcom/douban/radio/app/SettingActivity;->fmsp:Lfm/douban/model/FMSharedPreferences;
    invoke-static {v1}, Lcom/douban/radio/app/SettingActivity;->access$700(Lcom/douban/radio/app/SettingActivity;)Lfm/douban/model/FMSharedPreferences;

    move-result-object v1

    const-string v2, "sleep_clock"

    invoke-virtual {v1, v2, v4}, Lfm/douban/model/FMSharedPreferences;->putInt(Ljava/lang/String;I)Z

    .line 364
    :cond_0
    :goto_0
    return-void

    .line 359
    :cond_1
    iget-object v1, p0, Lcom/douban/radio/app/SettingActivity$8;->this$0:Lcom/douban/radio/app/SettingActivity;

    #getter for: Lcom/douban/radio/app/SettingActivity;->fmsp:Lfm/douban/model/FMSharedPreferences;
    invoke-static {v1}, Lcom/douban/radio/app/SettingActivity;->access$700(Lcom/douban/radio/app/SettingActivity;)Lfm/douban/model/FMSharedPreferences;

    move-result-object v1

    const-string v2, "sleep_clock"

    invoke-virtual {v1, v2, v4}, Lfm/douban/model/FMSharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 360
    iget-object v1, p0, Lcom/douban/radio/app/SettingActivity$8;->this$0:Lcom/douban/radio/app/SettingActivity;

    invoke-static {v1}, Lfm/douban/util/AlarmSet;->disableTimedQuitAlarm(Landroid/content/Context;)V

    .line 361
    iget-object v1, p0, Lcom/douban/radio/app/SettingActivity$8;->this$0:Lcom/douban/radio/app/SettingActivity;

    invoke-static {}, Lcom/douban/radio/app/SettingActivity;->access$800()[I

    move-result-object v2

    aget v2, v2, v0

    invoke-static {v1, v2}, Lfm/douban/util/AlarmSet;->enableTimedQuitAlarm(Landroid/content/Context;I)V

    .line 362
    iget-object v1, p0, Lcom/douban/radio/app/SettingActivity$8;->this$0:Lcom/douban/radio/app/SettingActivity;

    #getter for: Lcom/douban/radio/app/SettingActivity;->fmsp:Lfm/douban/model/FMSharedPreferences;
    invoke-static {v1}, Lcom/douban/radio/app/SettingActivity;->access$700(Lcom/douban/radio/app/SettingActivity;)Lfm/douban/model/FMSharedPreferences;

    move-result-object v1

    const-string v2, "sleep_clock"

    invoke-virtual {v1, v2, v0}, Lfm/douban/model/FMSharedPreferences;->putInt(Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 367
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const-string v0, "SettingActivity"

    const-string v1, "nothing selected"

    invoke-static {v0, v1}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    return-void
.end method
