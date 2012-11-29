.class Lcom/douban/radio/app/Feedback$1;
.super Ljava/lang/Object;
.source "Feedback.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/douban/radio/app/Feedback;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/douban/radio/app/Feedback;


# direct methods
.method constructor <init>(Lcom/douban/radio/app/Feedback;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/douban/radio/app/Feedback$1;->this$0:Lcom/douban/radio/app/Feedback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    const/4 v8, 0x1

    .line 69
    const/4 v4, 0x0

    .line 70
    .local v4, error:Z
    const/4 v3, 0x0

    .line 71
    .local v3, email:Ljava/lang/String;
    iget-object v6, p0, Lcom/douban/radio/app/Feedback$1;->this$0:Lcom/douban/radio/app/Feedback;

    #getter for: Lcom/douban/radio/app/Feedback;->questionText:Landroid/widget/EditText;
    invoke-static {v6}, Lcom/douban/radio/app/Feedback;->access$000(Lcom/douban/radio/app/Feedback;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 72
    .local v5, question:Ljava/lang/String;
    iget-object v6, p0, Lcom/douban/radio/app/Feedback$1;->this$0:Lcom/douban/radio/app/Feedback;

    #getter for: Lcom/douban/radio/app/Feedback;->isLogin:Z
    invoke-static {v6}, Lcom/douban/radio/app/Feedback;->access$100(Lcom/douban/radio/app/Feedback;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 73
    iget-object v6, p0, Lcom/douban/radio/app/Feedback$1;->this$0:Lcom/douban/radio/app/Feedback;

    #getter for: Lcom/douban/radio/app/Feedback;->emailText:Landroid/widget/EditText;
    invoke-static {v6}, Lcom/douban/radio/app/Feedback;->access$200(Lcom/douban/radio/app/Feedback;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 74
    iget-object v6, p0, Lcom/douban/radio/app/Feedback$1;->this$0:Lcom/douban/radio/app/Feedback;

    const v7, 0x7f09003b

    invoke-virtual {v6, v7}, Lcom/douban/radio/app/Feedback;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, at:Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 76
    const-string v6, "@"

    invoke-virtual {v3, v0, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 78
    :cond_0
    const-string v6, ""

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 79
    iget-object v6, p0, Lcom/douban/radio/app/Feedback$1;->this$0:Lcom/douban/radio/app/Feedback;

    const v7, 0x7f09003d

    invoke-static {v6, v7}, Lfm/douban/util/Utils;->showToast(Landroid/content/Context;I)V

    .line 80
    const/4 v4, 0x1

    .line 87
    .end local v0           #at:Ljava/lang/String;
    :cond_1
    :goto_0
    if-nez v4, :cond_2

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 88
    iget-object v6, p0, Lcom/douban/radio/app/Feedback$1;->this$0:Lcom/douban/radio/app/Feedback;

    const v7, 0x7f090091

    invoke-static {v6, v7}, Lfm/douban/util/Utils;->showToast(Landroid/content/Context;I)V

    .line 89
    const/4 v4, 0x1

    .line 92
    :cond_2
    if-nez v4, :cond_4

    .line 93
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 94
    .local v1, bundle:Landroid/os/Bundle;
    const-string v6, "question"

    invoke-virtual {v1, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    if-eqz v3, :cond_3

    .line 96
    const-string v6, "email"

    invoke-virtual {v1, v6, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :cond_3
    iget-object v6, p0, Lcom/douban/radio/app/Feedback$1;->this$0:Lcom/douban/radio/app/Feedback;

    invoke-virtual {v6}, Lcom/douban/radio/app/Feedback;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_6

    .line 99
    iget-object v6, p0, Lcom/douban/radio/app/Feedback$1;->this$0:Lcom/douban/radio/app/Feedback;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/douban/radio/app/Feedback;->setRequestedOrientation(I)V

    .line 107
    :goto_1
    :try_start_0
    iget-object v6, p0, Lcom/douban/radio/app/Feedback$1;->this$0:Lcom/douban/radio/app/Feedback;

    #calls: Lcom/douban/radio/app/Feedback;->showLoading()V
    invoke-static {v6}, Lcom/douban/radio/app/Feedback;->access$300(Lcom/douban/radio/app/Feedback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :goto_2
    iget-object v6, p0, Lcom/douban/radio/app/Feedback$1;->this$0:Lcom/douban/radio/app/Feedback;

    invoke-static {v6}, Lfm/douban/FmApp;->getRadioManager(Landroid/content/Context;)Lfm/douban/controller/RadioManager;

    move-result-object v6

    invoke-virtual {v6}, Lfm/douban/controller/RadioManager;->getApi()Lfm/douban/api/Api;

    move-result-object v6

    iget-object v7, p0, Lcom/douban/radio/app/Feedback$1;->this$0:Lcom/douban/radio/app/Feedback;

    #getter for: Lcom/douban/radio/app/Feedback;->postHandler:Lcom/loopj/android/http/AsyncHttpResponseHandler;
    invoke-static {v7}, Lcom/douban/radio/app/Feedback;->access$400(Lcom/douban/radio/app/Feedback;)Lcom/loopj/android/http/AsyncHttpResponseHandler;

    move-result-object v7

    invoke-virtual {v6, v3, v5, v7}, Lfm/douban/api/Api;->postFeedback(Ljava/lang/String;Ljava/lang/String;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 113
    .end local v1           #bundle:Landroid/os/Bundle;
    :cond_4
    return-void

    .line 81
    .restart local v0       #at:Ljava/lang/String;
    :cond_5
    invoke-static {v3}, Lfm/douban/util/Utils;->validateEmail(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 82
    iget-object v6, p0, Lcom/douban/radio/app/Feedback$1;->this$0:Lcom/douban/radio/app/Feedback;

    const v7, 0x7f09003e

    invoke-static {v6, v7}, Lfm/douban/util/Utils;->showToast(Landroid/content/Context;I)V

    .line 83
    const/4 v4, 0x1

    goto :goto_0

    .line 100
    .end local v0           #at:Ljava/lang/String;
    .restart local v1       #bundle:Landroid/os/Bundle;
    :cond_6
    iget-object v6, p0, Lcom/douban/radio/app/Feedback$1;->this$0:Lcom/douban/radio/app/Feedback;

    invoke-virtual {v6}, Lcom/douban/radio/app/Feedback;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    if-ne v6, v8, :cond_7

    .line 101
    iget-object v6, p0, Lcom/douban/radio/app/Feedback$1;->this$0:Lcom/douban/radio/app/Feedback;

    invoke-virtual {v6, v8}, Lcom/douban/radio/app/Feedback;->setRequestedOrientation(I)V

    goto :goto_1

    .line 103
    :cond_7
    iget-object v6, p0, Lcom/douban/radio/app/Feedback$1;->this$0:Lcom/douban/radio/app/Feedback;

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Lcom/douban/radio/app/Feedback;->setRequestedOrientation(I)V

    goto :goto_1

    .line 108
    :catch_0
    move-exception v2

    .line 109
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method
