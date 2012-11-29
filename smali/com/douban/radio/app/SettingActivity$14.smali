.class Lcom/douban/radio/app/SettingActivity$14;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/douban/radio/app/SettingActivity;->showLogout(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/douban/radio/app/SettingActivity;

.field final synthetic val$rollback:Z


# direct methods
.method constructor <init>(Lcom/douban/radio/app/SettingActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 513
    iput-object p1, p0, Lcom/douban/radio/app/SettingActivity$14;->this$0:Lcom/douban/radio/app/SettingActivity;

    iput-boolean p2, p0, Lcom/douban/radio/app/SettingActivity$14;->val$rollback:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x0

    .line 515
    iget-boolean v0, p0, Lcom/douban/radio/app/SettingActivity$14;->val$rollback:Z

    if-eqz v0, :cond_0

    .line 516
    iget-object v0, p0, Lcom/douban/radio/app/SettingActivity$14;->this$0:Lcom/douban/radio/app/SettingActivity;

    #getter for: Lcom/douban/radio/app/SettingActivity;->checkBoxes:[Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/douban/radio/app/SettingActivity;->access$000(Lcom/douban/radio/app/SettingActivity;)[Landroid/widget/CheckBox;

    move-result-object v0

    aget-object v0, v0, v2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 517
    iget-object v0, p0, Lcom/douban/radio/app/SettingActivity$14;->this$0:Lcom/douban/radio/app/SettingActivity;

    #getter for: Lcom/douban/radio/app/SettingActivity;->checkBoxes:[Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/douban/radio/app/SettingActivity;->access$000(Lcom/douban/radio/app/SettingActivity;)[Landroid/widget/CheckBox;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    .line 518
    iget-object v0, p0, Lcom/douban/radio/app/SettingActivity$14;->this$0:Lcom/douban/radio/app/SettingActivity;

    #getter for: Lcom/douban/radio/app/SettingActivity;->checkBoxes:[Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/douban/radio/app/SettingActivity;->access$000(Lcom/douban/radio/app/SettingActivity;)[Landroid/widget/CheckBox;

    move-result-object v0

    aget-object v0, v0, v2

    iget-object v1, p0, Lcom/douban/radio/app/SettingActivity$14;->this$0:Lcom/douban/radio/app/SettingActivity;

    #getter for: Lcom/douban/radio/app/SettingActivity;->checkListeners:[Landroid/widget/CompoundButton$OnCheckedChangeListener;
    invoke-static {v1}, Lcom/douban/radio/app/SettingActivity;->access$300(Lcom/douban/radio/app/SettingActivity;)[Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 521
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 522
    return-void
.end method
