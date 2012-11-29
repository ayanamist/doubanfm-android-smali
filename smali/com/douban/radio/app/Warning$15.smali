.class final Lcom/douban/radio/app/Warning$15;
.super Ljava/lang/Object;
.source "Warning.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/douban/radio/app/Warning;->showBindEmail(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$ctx:Landroid/content/Context;

.field final synthetic val$emailView:Landroid/widget/EditText;

.field final synthetic val$pwdView:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 352
    iput-object p1, p0, Lcom/douban/radio/app/Warning$15;->val$emailView:Landroid/widget/EditText;

    iput-object p2, p0, Lcom/douban/radio/app/Warning$15;->val$pwdView:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/douban/radio/app/Warning$15;->val$ctx:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    .line 356
    iget-object v5, p0, Lcom/douban/radio/app/Warning$15;->val$emailView:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 357
    .local v2, emailtmp:Ljava/lang/String;
    iget-object v5, p0, Lcom/douban/radio/app/Warning$15;->val$pwdView:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 358
    .local v4, pwd:Ljava/lang/String;
    const/4 v3, 0x1

    .line 359
    .local v3, isOk:Z
    iget-object v5, p0, Lcom/douban/radio/app/Warning$15;->val$ctx:Landroid/content/Context;

    const v6, 0x7f09003b

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 361
    .local v0, at:Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 362
    const-string v5, "@"

    invoke-virtual {v2, v0, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 364
    :cond_0
    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 365
    iget-object v5, p0, Lcom/douban/radio/app/Warning$15;->val$ctx:Landroid/content/Context;

    const v6, 0x7f09003d

    invoke-static {v5, v6}, Lfm/douban/util/Utils;->showToast(Landroid/content/Context;I)V

    .line 366
    const/4 v3, 0x0

    .line 377
    :cond_1
    :goto_0
    move-object v1, v2

    .line 378
    .local v1, email:Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 379
    iget-object v5, p0, Lcom/douban/radio/app/Warning$15;->val$ctx:Landroid/content/Context;

    invoke-static {v5}, Lfm/douban/FmApp;->getRadioManager(Landroid/content/Context;)Lfm/douban/controller/RadioManager;

    move-result-object v5

    invoke-virtual {v5}, Lfm/douban/controller/RadioManager;->getApi()Lfm/douban/api/Api;

    move-result-object v5

    new-instance v6, Lcom/douban/radio/app/Warning$15$1;

    invoke-direct {v6, p0, v1}, Lcom/douban/radio/app/Warning$15$1;-><init>(Lcom/douban/radio/app/Warning$15;Ljava/lang/String;)V

    invoke-virtual {v5, v1, v4, v6}, Lfm/douban/api/Api;->verifyEmail(Ljava/lang/String;Ljava/lang/String;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 428
    :cond_2
    return-void

    .line 368
    .end local v1           #email:Ljava/lang/String;
    :cond_3
    const-string v5, "@"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {v2}, Lfm/douban/util/Utils;->validateEmail(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 369
    :cond_4
    iget-object v5, p0, Lcom/douban/radio/app/Warning$15;->val$ctx:Landroid/content/Context;

    const v6, 0x7f09003e

    invoke-static {v5, v6}, Lfm/douban/util/Utils;->showToast(Landroid/content/Context;I)V

    .line 370
    const/4 v3, 0x0

    goto :goto_0

    .line 372
    :cond_5
    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 373
    iget-object v5, p0, Lcom/douban/radio/app/Warning$15;->val$ctx:Landroid/content/Context;

    const v6, 0x7f09003f

    invoke-static {v5, v6}, Lfm/douban/util/Utils;->showToast(Landroid/content/Context;I)V

    .line 374
    const/4 v3, 0x0

    goto :goto_0
.end method
