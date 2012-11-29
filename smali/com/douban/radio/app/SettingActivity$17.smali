.class Lcom/douban/radio/app/SettingActivity$17;
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

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/douban/radio/app/SettingActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 576
    iput-object p1, p0, Lcom/douban/radio/app/SettingActivity$17;->this$0:Lcom/douban/radio/app/SettingActivity;

    iput p2, p0, Lcom/douban/radio/app/SettingActivity$17;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 580
    if-eqz p2, :cond_0

    .line 582
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/douban/radio/app/SettingActivity$17;->this$0:Lcom/douban/radio/app/SettingActivity;

    const-class v2, Lcom/douban/radio/app/FMShareAuth;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 583
    .local v0, in:Landroid/content/Intent;
    const-string v1, "key_auth_source"

    iget v2, p0, Lcom/douban/radio/app/SettingActivity$17;->val$index:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 584
    iget-object v1, p0, Lcom/douban/radio/app/SettingActivity$17;->this$0:Lcom/douban/radio/app/SettingActivity;

    invoke-virtual {v1, v0}, Lcom/douban/radio/app/SettingActivity;->startActivity(Landroid/content/Intent;)V

    .line 591
    .end local v0           #in:Landroid/content/Intent;
    :goto_0
    return-void

    .line 587
    :cond_0
    iget-object v1, p0, Lcom/douban/radio/app/SettingActivity$17;->this$0:Lcom/douban/radio/app/SettingActivity;

    invoke-static {v1}, Lcom/douban/share/ShareMgr;->getInstance(Landroid/content/Context;)Lcom/douban/share/ShareMgr;

    move-result-object v1

    iget v2, p0, Lcom/douban/radio/app/SettingActivity$17;->val$index:I

    invoke-virtual {v1, v2}, Lcom/douban/share/ShareMgr;->removeToken(I)V

    .line 589
    iget-object v1, p0, Lcom/douban/radio/app/SettingActivity$17;->this$0:Lcom/douban/radio/app/SettingActivity;

    #getter for: Lcom/douban/radio/app/SettingActivity;->shareTitles:[Landroid/widget/TextView;
    invoke-static {v1}, Lcom/douban/radio/app/SettingActivity;->access$1500(Lcom/douban/radio/app/SettingActivity;)[Landroid/widget/TextView;

    move-result-object v1

    iget v2, p0, Lcom/douban/radio/app/SettingActivity$17;->val$index:I

    aget-object v1, v1, v2

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
