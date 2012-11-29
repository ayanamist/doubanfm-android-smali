.class Lcom/douban/radio/app/LoginActivity$1;
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
    .line 98
    iput-object p1, p0, Lcom/douban/radio/app/LoginActivity$1;->this$0:Lcom/douban/radio/app/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 115
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 111
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/douban/radio/app/LoginActivity$1;->this$0:Lcom/douban/radio/app/LoginActivity;

    #getter for: Lcom/douban/radio/app/LoginActivity;->nameView:Landroid/widget/AutoCompleteTextView;
    invoke-static {v0}, Lcom/douban/radio/app/LoginActivity;->access$000(Lcom/douban/radio/app/LoginActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/douban/radio/app/LoginActivity$1;->this$0:Lcom/douban/radio/app/LoginActivity;

    #getter for: Lcom/douban/radio/app/LoginActivity;->nameClear:Landroid/view/View;
    invoke-static {v0}, Lcom/douban/radio/app/LoginActivity;->access$100(Lcom/douban/radio/app/LoginActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 107
    :goto_0
    return-void

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/douban/radio/app/LoginActivity$1;->this$0:Lcom/douban/radio/app/LoginActivity;

    #getter for: Lcom/douban/radio/app/LoginActivity;->nameClear:Landroid/view/View;
    invoke-static {v0}, Lcom/douban/radio/app/LoginActivity;->access$100(Lcom/douban/radio/app/LoginActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
