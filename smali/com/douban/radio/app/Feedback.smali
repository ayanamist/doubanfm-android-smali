.class public Lcom/douban/radio/app/Feedback;
.super Lcom/douban/radio/app/FMActivity;
.source "Feedback.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DOUBAN_Feedback"


# instance fields
.field private emailText:Landroid/widget/EditText;

.field private isLogin:Z

.field private loadingDialog:Landroid/app/ProgressDialog;

.field private postHandler:Lcom/loopj/android/http/AsyncHttpResponseHandler;

.field private questionText:Landroid/widget/EditText;

.field private submitButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/douban/radio/app/FMActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/douban/radio/app/Feedback;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/douban/radio/app/Feedback;->questionText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/douban/radio/app/Feedback;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/douban/radio/app/Feedback;->isLogin:Z

    return v0
.end method

.method static synthetic access$200(Lcom/douban/radio/app/Feedback;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/douban/radio/app/Feedback;->emailText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/douban/radio/app/Feedback;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/douban/radio/app/Feedback;->showLoading()V

    return-void
.end method

.method static synthetic access$400(Lcom/douban/radio/app/Feedback;)Lcom/loopj/android/http/AsyncHttpResponseHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/douban/radio/app/Feedback;->postHandler:Lcom/loopj/android/http/AsyncHttpResponseHandler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/douban/radio/app/Feedback;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/douban/radio/app/Feedback;->dismissLoading()V

    return-void
.end method

.method private dismissLoading()V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/douban/radio/app/Feedback;->loadingDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/douban/radio/app/Feedback;->loadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/douban/radio/app/Feedback;->loadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 179
    :cond_0
    return-void
.end method

.method private makeResponseHandler()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/douban/radio/app/Feedback;->postHandler:Lcom/loopj/android/http/AsyncHttpResponseHandler;

    if-nez v0, :cond_0

    .line 119
    new-instance v0, Lcom/douban/radio/app/Feedback$2;

    invoke-direct {v0, p0}, Lcom/douban/radio/app/Feedback$2;-><init>(Lcom/douban/radio/app/Feedback;)V

    iput-object v0, p0, Lcom/douban/radio/app/Feedback;->postHandler:Lcom/loopj/android/http/AsyncHttpResponseHandler;

    .line 163
    :cond_0
    return-void
.end method

.method private showLoading()V
    .locals 3

    .prologue
    .line 167
    iget-object v0, p0, Lcom/douban/radio/app/Feedback;->loadingDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 168
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/douban/radio/app/Feedback;->loadingDialog:Landroid/app/ProgressDialog;

    .line 169
    iget-object v0, p0, Lcom/douban/radio/app/Feedback;->loadingDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 170
    iget-object v0, p0, Lcom/douban/radio/app/Feedback;->loadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/douban/radio/app/Feedback;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090092

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/douban/radio/app/Feedback;->loadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 173
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/douban/radio/app/FMActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-static {p0}, Lfm/douban/FmApp;->getRadioManager(Landroid/content/Context;)Lfm/douban/controller/RadioManager;

    move-result-object v0

    .line 43
    .local v0, rm:Lfm/douban/controller/RadioManager;
    invoke-static {v0}, Lfm/douban/model/Token;->get(Lfm/douban/controller/RadioManager;)Lfm/douban/model/Token;

    move-result-object v1

    .line 44
    .local v1, token:Lfm/douban/model/Token;
    if-eqz v1, :cond_0

    .line 45
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/douban/radio/app/Feedback;->isLogin:Z

    .line 49
    :goto_0
    const v2, 0x7f030004

    invoke-virtual {p0, v2}, Lcom/douban/radio/app/Feedback;->setContentView(I)V

    .line 50
    return-void

    .line 47
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/douban/radio/app/Feedback;->isLogin:Z

    goto :goto_0
.end method

.method protected onStart()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 54
    invoke-super {p0}, Lcom/douban/radio/app/FMActivity;->onStart()V

    .line 55
    invoke-direct {p0}, Lcom/douban/radio/app/Feedback;->makeResponseHandler()V

    .line 56
    const v1, 0x7f080029

    invoke-virtual {p0, v1}, Lcom/douban/radio/app/Feedback;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/douban/radio/app/Feedback;->emailText:Landroid/widget/EditText;

    .line 57
    const v1, 0x7f08002b

    invoke-virtual {p0, v1}, Lcom/douban/radio/app/Feedback;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/douban/radio/app/Feedback;->questionText:Landroid/widget/EditText;

    .line 59
    iget-boolean v1, p0, Lcom/douban/radio/app/Feedback;->isLogin:Z

    if-eqz v1, :cond_0

    .line 60
    iget-object v1, p0, Lcom/douban/radio/app/Feedback;->emailText:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 61
    const v1, 0x7f080028

    invoke-virtual {p0, v1}, Lcom/douban/radio/app/Feedback;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 62
    .local v0, emailTip:Landroid/widget/TextView;
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 66
    .end local v0           #emailTip:Landroid/widget/TextView;
    :cond_0
    const v1, 0x7f08002c

    invoke-virtual {p0, v1}, Lcom/douban/radio/app/Feedback;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/douban/radio/app/Feedback;->submitButton:Landroid/widget/Button;

    .line 67
    iget-object v1, p0, Lcom/douban/radio/app/Feedback;->submitButton:Landroid/widget/Button;

    new-instance v2, Lcom/douban/radio/app/Feedback$1;

    invoke-direct {v2, p0}, Lcom/douban/radio/app/Feedback$1;-><init>(Lcom/douban/radio/app/Feedback;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    return-void
.end method
