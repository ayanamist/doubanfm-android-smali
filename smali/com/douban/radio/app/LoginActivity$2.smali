.class Lcom/douban/radio/app/LoginActivity$2;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/douban/radio/app/LoginActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/douban/radio/app/LoginActivity;


# direct methods
.method constructor <init>(Lcom/douban/radio/app/LoginActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lcom/douban/radio/app/LoginActivity$2;->this$0:Lcom/douban/radio/app/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 121
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x42

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/douban/radio/app/LoginActivity$2;->this$0:Lcom/douban/radio/app/LoginActivity;

    #getter for: Lcom/douban/radio/app/LoginActivity;->pwdView:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/douban/radio/app/LoginActivity;->access$200(Lcom/douban/radio/app/LoginActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/douban/radio/app/LoginActivity$2;->this$0:Lcom/douban/radio/app/LoginActivity;

    #calls: Lcom/douban/radio/app/LoginActivity;->loginDouban()V
    invoke-static {v0}, Lcom/douban/radio/app/LoginActivity;->access$300(Lcom/douban/radio/app/LoginActivity;)V

    .line 123
    const/4 v0, 0x1

    .line 125
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
