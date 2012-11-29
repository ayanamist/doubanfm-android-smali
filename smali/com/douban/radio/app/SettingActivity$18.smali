.class Lcom/douban/radio/app/SettingActivity$18;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 596
    iput-object p1, p0, Lcom/douban/radio/app/SettingActivity$18;->this$0:Lcom/douban/radio/app/SettingActivity;

    iput p2, p0, Lcom/douban/radio/app/SettingActivity$18;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 599
    iget-object v0, p0, Lcom/douban/radio/app/SettingActivity$18;->this$0:Lcom/douban/radio/app/SettingActivity;

    #getter for: Lcom/douban/radio/app/SettingActivity;->checkBoxes:[Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/douban/radio/app/SettingActivity;->access$000(Lcom/douban/radio/app/SettingActivity;)[Landroid/widget/CheckBox;

    move-result-object v0

    iget v1, p0, Lcom/douban/radio/app/SettingActivity$18;->val$index:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 600
    iget-object v0, p0, Lcom/douban/radio/app/SettingActivity$18;->this$0:Lcom/douban/radio/app/SettingActivity;

    #getter for: Lcom/douban/radio/app/SettingActivity;->checkBoxes:[Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/douban/radio/app/SettingActivity;->access$000(Lcom/douban/radio/app/SettingActivity;)[Landroid/widget/CheckBox;

    move-result-object v0

    iget v1, p0, Lcom/douban/radio/app/SettingActivity$18;->val$index:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    .line 601
    :cond_0
    return-void
.end method
