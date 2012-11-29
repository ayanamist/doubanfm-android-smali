.class Lcom/douban/radio/app/SettingActivity$13;
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
    .line 439
    iput-object p1, p0, Lcom/douban/radio/app/SettingActivity$13;->this$0:Lcom/douban/radio/app/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
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
    .line 443
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const-string v2, "SettingActivity"

    const-string v3, "spinnerSync"

    invoke-static {v2, v3}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, p1

    .line 444
    check-cast v1, Landroid/widget/Spinner;

    .line 445
    .local v1, sp:Landroid/widget/Spinner;
    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 446
    .local v0, selected:I
    const-string v2, "SettingActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "on click: id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    iget-object v2, p0, Lcom/douban/radio/app/SettingActivity$13;->this$0:Lcom/douban/radio/app/SettingActivity;

    #getter for: Lcom/douban/radio/app/SettingActivity;->fmsp:Lfm/douban/model/FMSharedPreferences;
    invoke-static {v2}, Lcom/douban/radio/app/SettingActivity;->access$700(Lcom/douban/radio/app/SettingActivity;)Lfm/douban/model/FMSharedPreferences;

    move-result-object v2

    const-string v3, "offline_sync_method"

    invoke-virtual {v2, v3, v0}, Lfm/douban/model/FMSharedPreferences;->putInt(Ljava/lang/String;I)Z

    .line 448
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 453
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
