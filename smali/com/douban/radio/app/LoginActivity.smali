.class public Lcom/douban/radio/app/LoginActivity;
.super Lcom/douban/radio/app/FMActivity;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final SINA_AUTH:I


# instance fields
.field private api:Lfm/douban/api/Api;

.field private db:Lfm/douban/model/RadioDB;

.field private fmsp:Lfm/douban/model/FMSharedPreferences;

.field private loadingDialog:Landroid/app/ProgressDialog;

.field private loginDoubanButton:Landroid/view/View;

.field private loginDoubanHandler:Lcom/loopj/android/http/AsyncHttpResponseHandler;

.field private loginSinaButton:Landroid/view/View;

.field private name:Ljava/lang/String;

.field private nameClear:Landroid/view/View;

.field private nameContainer:Landroid/view/View;

.field private nameView:Landroid/widget/AutoCompleteTextView;

.field private password:Ljava/lang/String;

.field private pwdClear:Landroid/view/View;

.field private pwdContainer:Landroid/view/View;

.field private pwdView:Landroid/widget/EditText;

.field private radioManager:Lfm/douban/controller/RadioManager;

.field private registerButton:Landroid/view/View;

.field private toBeFinished:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/douban/radio/app/FMActivity;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/douban/radio/app/LoginActivity;->toBeFinished:Z

    return-void
.end method

.method static synthetic access$000(Lcom/douban/radio/app/LoginActivity;)Landroid/widget/AutoCompleteTextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/douban/radio/app/LoginActivity;->nameView:Landroid/widget/AutoCompleteTextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/douban/radio/app/LoginActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/douban/radio/app/LoginActivity;->nameClear:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/douban/radio/app/LoginActivity;)Lfm/douban/model/RadioDB;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/douban/radio/app/LoginActivity;->db:Lfm/douban/model/RadioDB;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/douban/radio/app/LoginActivity;)Lfm/douban/model/FMSharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/douban/radio/app/LoginActivity;->fmsp:Lfm/douban/model/FMSharedPreferences;

    return-object v0
.end method

.method static synthetic access$200(Lcom/douban/radio/app/LoginActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/douban/radio/app/LoginActivity;->pwdView:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/douban/radio/app/LoginActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/douban/radio/app/LoginActivity;->loginDouban()V

    return-void
.end method

.method static synthetic access$400(Lcom/douban/radio/app/LoginActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/douban/radio/app/LoginActivity;->pwdClear:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/douban/radio/app/LoginActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/douban/radio/app/LoginActivity;->nameContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcom/douban/radio/app/LoginActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/douban/radio/app/LoginActivity;->pwdContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/douban/radio/app/LoginActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/douban/radio/app/LoginActivity;->dismissLoading()V

    return-void
.end method

.method static synthetic access$800(Lcom/douban/radio/app/LoginActivity;)Lfm/douban/controller/RadioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/douban/radio/app/LoginActivity;->radioManager:Lfm/douban/controller/RadioManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/douban/radio/app/LoginActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/douban/radio/app/LoginActivity;->name:Ljava/lang/String;

    return-object v0
.end method

.method private dismissLoading()V
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/douban/radio/app/LoginActivity;->loadingDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/douban/radio/app/LoginActivity;->loadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/douban/radio/app/LoginActivity;->loadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 357
    :cond_0
    return-void
.end method

.method private initViews()V
    .locals 4

    .prologue
    const/4 v2, 0x4

    .line 75
    const v1, 0x7f030005

    invoke-virtual {p0, v1}, Lcom/douban/radio/app/LoginActivity;->setContentView(I)V

    .line 77
    const v1, 0x7f08002f

    invoke-virtual {p0, v1}, Lcom/douban/radio/app/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/douban/radio/app/LoginActivity;->nameContainer:Landroid/view/View;

    .line 78
    const v1, 0x7f080033

    invoke-virtual {p0, v1}, Lcom/douban/radio/app/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/douban/radio/app/LoginActivity;->pwdContainer:Landroid/view/View;

    .line 80
    const v1, 0x7f080037

    invoke-virtual {p0, v1}, Lcom/douban/radio/app/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/douban/radio/app/LoginActivity;->registerButton:Landroid/view/View;

    .line 81
    iget-object v1, p0, Lcom/douban/radio/app/LoginActivity;->registerButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    const v1, 0x7f080030

    invoke-virtual {p0, v1}, Lcom/douban/radio/app/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/douban/radio/app/LoginActivity;->nameClear:Landroid/view/View;

    .line 84
    iget-object v1, p0, Lcom/douban/radio/app/LoginActivity;->nameClear:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object v1, p0, Lcom/douban/radio/app/LoginActivity;->nameClear:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 86
    const v1, 0x7f080034

    invoke-virtual {p0, v1}, Lcom/douban/radio/app/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/douban/radio/app/LoginActivity;->pwdClear:Landroid/view/View;

    .line 87
    iget-object v1, p0, Lcom/douban/radio/app/LoginActivity;->pwdClear:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object v1, p0, Lcom/douban/radio/app/LoginActivity;->pwdClear:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 90
    const v1, 0x7f080031

    invoke-virtual {p0, v1}, Lcom/douban/radio/app/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/AutoCompleteTextView;

    iput-object v1, p0, Lcom/douban/radio/app/LoginActivity;->nameView:Landroid/widget/AutoCompleteTextView;

    .line 92
    iget-object v1, p0, Lcom/douban/radio/app/LoginActivity;->db:Lfm/douban/model/RadioDB;

    invoke-virtual {v1}, Lfm/douban/model/RadioDB;->getEmails()[Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, emails:[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 94
    iget-object v1, p0, Lcom/douban/radio/app/LoginActivity;->nameView:Landroid/widget/AutoCompleteTextView;

    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x7f03000b

    invoke-direct {v2, p0, v3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 98
    :cond_0
    iget-object v1, p0, Lcom/douban/radio/app/LoginActivity;->nameView:Landroid/widget/AutoCompleteTextView;

    new-instance v2, Lcom/douban/radio/app/LoginActivity$1;

    invoke-direct {v2, p0}, Lcom/douban/radio/app/LoginActivity$1;-><init>(Lcom/douban/radio/app/LoginActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 117
    const v1, 0x7f080035

    invoke-virtual {p0, v1}, Lcom/douban/radio/app/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/douban/radio/app/LoginActivity;->pwdView:Landroid/widget/EditText;

    .line 119
    iget-object v1, p0, Lcom/douban/radio/app/LoginActivity;->pwdView:Landroid/widget/EditText;

    new-instance v2, Lcom/douban/radio/app/LoginActivity$2;

    invoke-direct {v2, p0}, Lcom/douban/radio/app/LoginActivity$2;-><init>(Lcom/douban/radio/app/LoginActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 129
    iget-object v1, p0, Lcom/douban/radio/app/LoginActivity;->pwdView:Landroid/widget/EditText;

    new-instance v2, Lcom/douban/radio/app/LoginActivity$3;

    invoke-direct {v2, p0}, Lcom/douban/radio/app/LoginActivity$3;-><init>(Lcom/douban/radio/app/LoginActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 149
    iget-object v1, p0, Lcom/douban/radio/app/LoginActivity;->nameView:Landroid/widget/AutoCompleteTextView;

    new-instance v2, Lcom/douban/radio/app/LoginActivity$4;

    invoke-direct {v2, p0}, Lcom/douban/radio/app/LoginActivity$4;-><init>(Lcom/douban/radio/app/LoginActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 160
    iget-object v1, p0, Lcom/douban/radio/app/LoginActivity;->pwdView:Landroid/widget/EditText;

    new-instance v2, Lcom/douban/radio/app/LoginActivity$5;

    invoke-direct {v2, p0}, Lcom/douban/radio/app/LoginActivity$5;-><init>(Lcom/douban/radio/app/LoginActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 172
    const v1, 0x7f080036

    invoke-virtual {p0, v1}, Lcom/douban/radio/app/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/douban/radio/app/LoginActivity;->loginDoubanButton:Landroid/view/View;

    .line 173
    iget-object v1, p0, Lcom/douban/radio/app/LoginActivity;->loginDoubanButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    const v1, 0x7f080038

    invoke-virtual {p0, v1}, Lcom/douban/radio/app/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/douban/radio/app/LoginActivity;->loginSinaButton:Landroid/view/View;

    .line 175
    iget-object v1, p0, Lcom/douban/radio/app/LoginActivity;->loginSinaButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    return-void
.end method

.method private loginDouban()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    .line 227
    const/4 v2, 0x1

    .line 228
    .local v2, isOk:Z
    iget-object v3, p0, Lcom/douban/radio/app/LoginActivity;->nameView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v3}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/douban/radio/app/LoginActivity;->name:Ljava/lang/String;

    .line 229
    iget-object v3, p0, Lcom/douban/radio/app/LoginActivity;->pwdView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/douban/radio/app/LoginActivity;->password:Ljava/lang/String;

    .line 231
    const v3, 0x7f09003b

    invoke-virtual {p0, v3}, Lcom/douban/radio/app/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 233
    .local v0, at:Ljava/lang/String;
    iget-object v3, p0, Lcom/douban/radio/app/LoginActivity;->name:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 234
    iget-object v3, p0, Lcom/douban/radio/app/LoginActivity;->name:Ljava/lang/String;

    const-string v4, "@"

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/douban/radio/app/LoginActivity;->name:Ljava/lang/String;

    .line 236
    :cond_0
    iget-object v3, p0, Lcom/douban/radio/app/LoginActivity;->name:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 237
    const v3, 0x7f09003d

    invoke-static {p0, v3}, Lfm/douban/util/Utils;->showToast(Landroid/content/Context;I)V

    .line 238
    const/4 v2, 0x0

    .line 249
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 251
    invoke-virtual {p0}, Lcom/douban/radio/app/LoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    .line 252
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/douban/radio/app/LoginActivity;->setRequestedOrientation(I)V

    .line 260
    :goto_1
    :try_start_0
    invoke-direct {p0}, Lcom/douban/radio/app/LoginActivity;->showLoading()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    :goto_2
    iget-object v3, p0, Lcom/douban/radio/app/LoginActivity;->api:Lfm/douban/api/Api;

    iget-object v4, p0, Lcom/douban/radio/app/LoginActivity;->name:Ljava/lang/String;

    iget-object v5, p0, Lcom/douban/radio/app/LoginActivity;->password:Ljava/lang/String;

    iget-object v6, p0, Lcom/douban/radio/app/LoginActivity;->loginDoubanHandler:Lcom/loopj/android/http/AsyncHttpResponseHandler;

    invoke-virtual {v3, v4, v5, v6}, Lfm/douban/api/Api;->loginDouban(Ljava/lang/String;Ljava/lang/String;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 266
    :cond_2
    return-void

    .line 240
    :cond_3
    iget-object v3, p0, Lcom/douban/radio/app/LoginActivity;->name:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/douban/radio/app/LoginActivity;->name:Ljava/lang/String;

    invoke-static {v3}, Lfm/douban/util/Utils;->validateEmail(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 241
    const v3, 0x7f09003e

    invoke-static {p0, v3}, Lfm/douban/util/Utils;->showToast(Landroid/content/Context;I)V

    .line 242
    const/4 v2, 0x0

    goto :goto_0

    .line 244
    :cond_4
    iget-object v3, p0, Lcom/douban/radio/app/LoginActivity;->password:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 245
    const v3, 0x7f09003f

    invoke-static {p0, v3}, Lfm/douban/util/Utils;->showToast(Landroid/content/Context;I)V

    .line 246
    const/4 v2, 0x0

    goto :goto_0

    .line 253
    :cond_5
    invoke-virtual {p0}, Lcom/douban/radio/app/LoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v5, :cond_6

    .line 254
    invoke-virtual {p0, v5}, Lcom/douban/radio/app/LoginActivity;->setRequestedOrientation(I)V

    goto :goto_1

    .line 256
    :cond_6
    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Lcom/douban/radio/app/LoginActivity;->setRequestedOrientation(I)V

    goto :goto_1

    .line 261
    :catch_0
    move-exception v1

    .line 262
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method private loginSina()V
    .locals 3

    .prologue
    .line 280
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/douban/radio/app/FMSinaAuth;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 281
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "url"

    sget-object v2, Lfm/douban/api/Api;->API_LOGIN_SINA:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 282
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/douban/radio/app/LoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 283
    return-void
.end method

.method private makeHandler()V
    .locals 1

    .prologue
    .line 290
    new-instance v0, Lcom/douban/radio/app/LoginActivity$6;

    invoke-direct {v0, p0}, Lcom/douban/radio/app/LoginActivity$6;-><init>(Lcom/douban/radio/app/LoginActivity;)V

    iput-object v0, p0, Lcom/douban/radio/app/LoginActivity;->loginDoubanHandler:Lcom/loopj/android/http/AsyncHttpResponseHandler;

    .line 342
    return-void
.end method

.method private registerFM()V
    .locals 2

    .prologue
    .line 272
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/douban/radio/app/RegisterActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/douban/radio/app/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 273
    return-void
.end method

.method private showLoading()V
    .locals 3

    .prologue
    .line 345
    iget-object v0, p0, Lcom/douban/radio/app/LoginActivity;->loadingDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 346
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/douban/radio/app/LoginActivity;->loadingDialog:Landroid/app/ProgressDialog;

    .line 347
    iget-object v0, p0, Lcom/douban/radio/app/LoginActivity;->loadingDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 348
    iget-object v0, p0, Lcom/douban/radio/app/LoginActivity;->loadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/douban/radio/app/LoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09003c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/douban/radio/app/LoginActivity;->loadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 351
    return-void
.end method


# virtual methods
.method protected checkCurrentUser(Lfm/douban/model/Token;)V
    .locals 6
    .parameter "t"

    .prologue
    .line 366
    iget-object v2, p1, Lfm/douban/model/Token;->user_id:Ljava/lang/String;

    .line 367
    .local v2, uid:Ljava/lang/String;
    const-string v3, "Login"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "check user: current user:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iget-object v3, p0, Lcom/douban/radio/app/LoginActivity;->fmsp:Lfm/douban/model/FMSharedPreferences;

    const-string v4, "last_user"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lfm/douban/model/FMSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 369
    .local v0, lastUid:Ljava/lang/String;
    const-string v3, "Login"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "check user: last user:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 371
    invoke-static {p0}, Lfm/douban/FmApp;->getRadioManager(Landroid/content/Context;)Lfm/douban/controller/RadioManager;

    move-result-object v1

    .line 372
    .local v1, rm:Lfm/douban/controller/RadioManager;
    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 373
    const-string v3, "Login"

    const-string v4, "check user: clear previous songs"

    invoke-static {v3, v4}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    invoke-virtual {v1}, Lfm/douban/controller/RadioManager;->getSongManager()Lfm/douban/controller/SongManager;

    move-result-object v3

    invoke-virtual {v3}, Lfm/douban/controller/SongManager;->clearup()V

    .line 376
    :cond_0
    invoke-virtual {v1}, Lfm/douban/controller/RadioManager;->getSongTaskManager()Lfm/douban/controller/SongTaskManager;

    move-result-object v3

    invoke-virtual {v3}, Lfm/douban/controller/SongTaskManager;->start()V

    .line 378
    .end local v1           #rm:Lfm/douban/controller/RadioManager;
    :cond_1
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v2, 0x1

    .line 383
    const-string v0, "Login onActivityResult"

    const-string v1, "**** onActivityResult"

    invoke-static {v0, v1}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    if-nez p1, :cond_0

    .line 385
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/douban/radio/app/LoginActivity;->fmsp:Lfm/douban/model/FMSharedPreferences;

    const-string v1, "is_logined"

    invoke-virtual {v0, v1, v2}, Lfm/douban/model/FMSharedPreferences;->putBoolean(Ljava/lang/String;Z)Z

    .line 387
    iput-boolean v2, p0, Lcom/douban/radio/app/LoginActivity;->toBeFinished:Z

    .line 388
    const-string v0, "Login"

    const-string v1, "Sina"

    invoke-static {p0, v0, v1}, Lcom/mobclick/android/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x4

    .line 206
    iget-object v0, p0, Lcom/douban/radio/app/LoginActivity;->loginDoubanButton:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 207
    invoke-direct {p0}, Lcom/douban/radio/app/LoginActivity;->loginDouban()V

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/douban/radio/app/LoginActivity;->loginSinaButton:Landroid/view/View;

    if-ne p1, v0, :cond_2

    .line 209
    invoke-direct {p0}, Lcom/douban/radio/app/LoginActivity;->loginSina()V

    goto :goto_0

    .line 210
    :cond_2
    iget-object v0, p0, Lcom/douban/radio/app/LoginActivity;->registerButton:Landroid/view/View;

    if-ne p1, v0, :cond_3

    .line 211
    invoke-direct {p0}, Lcom/douban/radio/app/LoginActivity;->registerFM()V

    goto :goto_0

    .line 212
    :cond_3
    iget-object v0, p0, Lcom/douban/radio/app/LoginActivity;->nameClear:Landroid/view/View;

    if-ne p1, v0, :cond_4

    .line 213
    iget-object v0, p0, Lcom/douban/radio/app/LoginActivity;->nameView:Landroid/widget/AutoCompleteTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    iget-object v0, p0, Lcom/douban/radio/app/LoginActivity;->nameClear:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 215
    :cond_4
    iget-object v0, p0, Lcom/douban/radio/app/LoginActivity;->pwdClear:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/douban/radio/app/LoginActivity;->pwdView:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 217
    iget-object v0, p0, Lcom/douban/radio/app/LoginActivity;->pwdClear:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/douban/radio/app/FMActivity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    invoke-static {p0}, Lfm/douban/FmApp;->getRadioManager(Landroid/content/Context;)Lfm/douban/controller/RadioManager;

    move-result-object v0

    iput-object v0, p0, Lcom/douban/radio/app/LoginActivity;->radioManager:Lfm/douban/controller/RadioManager;

    .line 66
    iget-object v0, p0, Lcom/douban/radio/app/LoginActivity;->radioManager:Lfm/douban/controller/RadioManager;

    invoke-virtual {v0}, Lfm/douban/controller/RadioManager;->getApi()Lfm/douban/api/Api;

    move-result-object v0

    iput-object v0, p0, Lcom/douban/radio/app/LoginActivity;->api:Lfm/douban/api/Api;

    .line 67
    iget-object v0, p0, Lcom/douban/radio/app/LoginActivity;->radioManager:Lfm/douban/controller/RadioManager;

    invoke-virtual {v0}, Lfm/douban/controller/RadioManager;->getDB()Lfm/douban/model/RadioDB;

    move-result-object v0

    iput-object v0, p0, Lcom/douban/radio/app/LoginActivity;->db:Lfm/douban/model/RadioDB;

    .line 68
    iget-object v0, p0, Lcom/douban/radio/app/LoginActivity;->radioManager:Lfm/douban/controller/RadioManager;

    invoke-virtual {v0}, Lfm/douban/controller/RadioManager;->getSharedPreferences()Lfm/douban/model/FMSharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/douban/radio/app/LoginActivity;->fmsp:Lfm/douban/model/FMSharedPreferences;

    .line 69
    invoke-direct {p0}, Lcom/douban/radio/app/LoginActivity;->makeHandler()V

    .line 71
    invoke-direct {p0}, Lcom/douban/radio/app/LoginActivity;->initViews()V

    .line 72
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 201
    const/4 v0, 0x0

    return v0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 195
    invoke-super {p0}, Lcom/douban/radio/app/FMActivity;->onPause()V

    .line 196
    invoke-static {p0}, Lcom/mobclick/android/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 197
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 181
    invoke-super {p0}, Lcom/douban/radio/app/FMActivity;->onResume()V

    .line 182
    invoke-static {p0}, Lcom/mobclick/android/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 183
    iget-object v0, p0, Lcom/douban/radio/app/LoginActivity;->radioManager:Lfm/douban/controller/RadioManager;

    invoke-static {v0}, Lfm/douban/model/Token;->isLogin(Lfm/douban/controller/RadioManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/douban/radio/app/LoginActivity;->toBeFinished:Z

    .line 186
    :cond_0
    iget-boolean v0, p0, Lcom/douban/radio/app/LoginActivity;->toBeFinished:Z

    if-eqz v0, :cond_1

    .line 187
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/douban/radio/app/LoginActivity;->toBeFinished:Z

    .line 188
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/douban/radio/app/LoginActivity;->setResult(I)V

    .line 189
    invoke-virtual {p0}, Lcom/douban/radio/app/LoginActivity;->finish()V

    .line 191
    :cond_1
    return-void
.end method
