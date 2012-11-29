.class Lcom/douban/radio/app/SettingActivity$16;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/douban/radio/app/SettingActivity;->makeListener(I)V
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
    .line 546
    iput-object p1, p0, Lcom/douban/radio/app/SettingActivity$16;->this$0:Lcom/douban/radio/app/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 550
    if-eqz p2, :cond_2

    .line 551
    iget-object v1, p0, Lcom/douban/radio/app/SettingActivity$16;->this$0:Lcom/douban/radio/app/SettingActivity;

    #getter for: Lcom/douban/radio/app/SettingActivity;->rm:Lfm/douban/controller/RadioManager;
    invoke-static {v1}, Lcom/douban/radio/app/SettingActivity;->access$100(Lcom/douban/radio/app/SettingActivity;)Lfm/douban/controller/RadioManager;

    move-result-object v1

    invoke-static {v1}, Lfm/douban/model/Token;->isLogin(Lfm/douban/controller/RadioManager;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 552
    iget-object v1, p0, Lcom/douban/radio/app/SettingActivity$16;->this$0:Lcom/douban/radio/app/SettingActivity;

    #getter for: Lcom/douban/radio/app/SettingActivity;->fmsp:Lfm/douban/model/FMSharedPreferences;
    invoke-static {v1}, Lcom/douban/radio/app/SettingActivity;->access$700(Lcom/douban/radio/app/SettingActivity;)Lfm/douban/model/FMSharedPreferences;

    move-result-object v1

    const-string v2, "can_share_to_douban"

    invoke-virtual {v1, v2, v3}, Lfm/douban/model/FMSharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 573
    :goto_0
    return-void

    .line 555
    :cond_0
    iget-object v1, p0, Lcom/douban/radio/app/SettingActivity$16;->this$0:Lcom/douban/radio/app/SettingActivity;

    #getter for: Lcom/douban/radio/app/SettingActivity;->checkBoxes:[Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/douban/radio/app/SettingActivity;->access$000(Lcom/douban/radio/app/SettingActivity;)[Landroid/widget/CheckBox;

    move-result-object v1

    aget-object v1, v1, v3

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 556
    iget-object v1, p0, Lcom/douban/radio/app/SettingActivity$16;->this$0:Lcom/douban/radio/app/SettingActivity;

    #getter for: Lcom/douban/radio/app/SettingActivity;->checkBoxes:[Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/douban/radio/app/SettingActivity;->access$000(Lcom/douban/radio/app/SettingActivity;)[Landroid/widget/CheckBox;

    move-result-object v1

    aget-object v1, v1, v3

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 557
    iget-object v1, p0, Lcom/douban/radio/app/SettingActivity$16;->this$0:Lcom/douban/radio/app/SettingActivity;

    #getter for: Lcom/douban/radio/app/SettingActivity;->checkBoxes:[Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/douban/radio/app/SettingActivity;->access$000(Lcom/douban/radio/app/SettingActivity;)[Landroid/widget/CheckBox;

    move-result-object v1

    aget-object v1, v1, v3

    iget-object v2, p0, Lcom/douban/radio/app/SettingActivity$16;->this$0:Lcom/douban/radio/app/SettingActivity;

    #getter for: Lcom/douban/radio/app/SettingActivity;->checkListeners:[Landroid/widget/CompoundButton$OnCheckedChangeListener;
    invoke-static {v2}, Lcom/douban/radio/app/SettingActivity;->access$300(Lcom/douban/radio/app/SettingActivity;)[Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-result-object v2

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 560
    iget-object v1, p0, Lcom/douban/radio/app/SettingActivity$16;->this$0:Lcom/douban/radio/app/SettingActivity;

    const v2, 0x7f0900e4

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 561
    iget-object v1, p0, Lcom/douban/radio/app/SettingActivity$16;->this$0:Lcom/douban/radio/app/SettingActivity;

    invoke-static {v1}, Lcom/douban/radio/app/Warning;->showBindEmail(Landroid/content/Context;)V

    goto :goto_0

    .line 566
    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/douban/radio/app/SettingActivity$16;->this$0:Lcom/douban/radio/app/SettingActivity;

    const-class v2, Lcom/douban/radio/app/LoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 567
    .local v0, in:Landroid/content/Intent;
    iget-object v1, p0, Lcom/douban/radio/app/SettingActivity$16;->this$0:Lcom/douban/radio/app/SettingActivity;

    invoke-virtual {v1, v0}, Lcom/douban/radio/app/SettingActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 571
    .end local v0           #in:Landroid/content/Intent;
    :cond_2
    iget-object v1, p0, Lcom/douban/radio/app/SettingActivity$16;->this$0:Lcom/douban/radio/app/SettingActivity;

    #calls: Lcom/douban/radio/app/SettingActivity;->showLogout(Z)V
    invoke-static {v1, v4}, Lcom/douban/radio/app/SettingActivity;->access$500(Lcom/douban/radio/app/SettingActivity;Z)V

    goto :goto_0
.end method
