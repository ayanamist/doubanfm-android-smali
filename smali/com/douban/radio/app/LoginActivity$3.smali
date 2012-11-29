.class Lcom/douban/radio/app/LoginActivity$3;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    .line 129
    iput-object p1, p0, Lcom/douban/radio/app/LoginActivity$3;->this$0:Lcom/douban/radio/app/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 146
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 142
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/douban/radio/app/LoginActivity$3;->this$0:Lcom/douban/radio/app/LoginActivity;

    #getter for: Lcom/douban/radio/app/LoginActivity;->pwdView:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/douban/radio/app/LoginActivity;->access$200(Lcom/douban/radio/app/LoginActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/douban/radio/app/LoginActivity$3;->this$0:Lcom/douban/radio/app/LoginActivity;

    #getter for: Lcom/douban/radio/app/LoginActivity;->pwdClear:Landroid/view/View;
    invoke-static {v0}, Lcom/douban/radio/app/LoginActivity;->access$400(Lcom/douban/radio/app/LoginActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 138
    :goto_0
    return-void

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/douban/radio/app/LoginActivity$3;->this$0:Lcom/douban/radio/app/LoginActivity;

    #getter for: Lcom/douban/radio/app/LoginActivity;->pwdClear:Landroid/view/View;
    invoke-static {v0}, Lcom/douban/radio/app/LoginActivity;->access$400(Lcom/douban/radio/app/LoginActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
