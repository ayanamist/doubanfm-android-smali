.class public Lcom/douban/radio/app/Warning;
.super Lcom/douban/radio/app/FMActivity;
.source "Warning.java"


# static fields
.field public static final DIALOG_PLAYER:I = 0x7d2

.field public static final DIALOG_SUBMIT:I = 0x3e9

.field public static final HEADSET_FLAG:Ljava/lang/String; = "head_plug_flag"

.field public static final INTENT_QUIT_WARNING:Ljava/lang/String; = "com.douban.intent.QUIT_WARNIG"

.field public static final KEYCODE_FLAG:Ljava/lang/String; = "keycode_flag"

.field public static final OTHER_KEYCODE:I = 0x3ea

.field public static final POSITIVE_KEYCODE:I = 0x3e9

.field public static final WARNING_CODE:Ljava/lang/String; = "code"

.field public static final WARNING_TO_CHANNEL:Ljava/lang/String; = "to_channel"

.field private static dia:Landroid/app/AlertDialog;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private app:Lcom/douban/radio/RadioApp;

.field private builder:Landroid/app/AlertDialog$Builder;

.field private channelTo:Ljava/lang/String;

.field private code:I

.field private dialog:Landroid/app/AlertDialog;

.field private quit:Z

.field private rm:Lfm/douban/controller/RadioManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/douban/radio/app/FMActivity;-><init>()V

    .line 53
    const-string v0, "DB_Waring"

    iput-object v0, p0, Lcom/douban/radio/app/Warning;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/douban/radio/app/Warning;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Lcom/douban/radio/app/Warning;->code:I

    return v0
.end method

.method static synthetic access$102(Lcom/douban/radio/app/Warning;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/douban/radio/app/Warning;->quit:Z

    return p1
.end method

.method static synthetic access$200(Lcom/douban/radio/app/Warning;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/douban/radio/app/Warning;->sendResume()V

    return-void
.end method

.method static synthetic access$300(Lcom/douban/radio/app/Warning;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/douban/radio/app/Warning;->sendQuit()V

    return-void
.end method

.method static synthetic access$400(Lcom/douban/radio/app/Warning;)Lfm/douban/controller/RadioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/douban/radio/app/Warning;->rm:Lfm/douban/controller/RadioManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/douban/radio/app/Warning;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/douban/radio/app/Warning;->channelTo:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/douban/radio/app/Warning;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/douban/radio/app/Warning;->sendSwitchOnline()V

    return-void
.end method

.method static synthetic access$700(Lcom/douban/radio/app/Warning;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/douban/radio/app/Warning;->sendSwitchOffline()V

    return-void
.end method

.method static synthetic access$800()Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/douban/radio/app/Warning;->dia:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private sendQuit()V
    .locals 1

    .prologue
    .line 333
    const/4 v0, 0x3

    invoke-static {p0, v0}, Lfm/douban/service/RadioService;->sendCommand(Landroid/content/Context;I)V

    .line 334
    return-void
.end method

.method private sendResume()V
    .locals 1

    .prologue
    .line 329
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lfm/douban/service/RadioService;->sendCommand(Landroid/content/Context;I)V

    .line 330
    return-void
.end method

.method private sendSwitchOffline()V
    .locals 1

    .prologue
    .line 324
    const/16 v0, 0xd

    invoke-static {p0, v0}, Lfm/douban/service/RadioService;->sendCommand(Landroid/content/Context;I)V

    .line 325
    return-void
.end method

.method private sendSwitchOnline()V
    .locals 1

    .prologue
    .line 320
    const/16 v0, 0xc

    invoke-static {p0, v0}, Lfm/douban/service/RadioService;->sendCommand(Landroid/content/Context;I)V

    .line 321
    return-void
.end method

.method public static showBindEmail(Landroid/content/Context;)V
    .locals 9
    .parameter "ctx"

    .prologue
    .line 342
    const-string v6, "layout_inflater"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    const v7, 0x7f03000c

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 343
    .local v5, view:Landroid/view/View;
    const v6, 0x7f08009f

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 344
    .local v2, emailView:Landroid/widget/EditText;
    const v6, 0x7f0800a1

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 345
    .local v3, pwdView:Landroid/widget/EditText;
    const v6, 0x1020019

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 346
    .local v4, verButton:Landroid/widget/Button;
    const v6, 0x102001a

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 347
    .local v1, cancelButton:Landroid/widget/Button;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 348
    .local v0, b:Landroid/app/AlertDialog$Builder;
    const v6, 0x7f020063

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0900e5

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    sput-object v6, Lcom/douban/radio/app/Warning;->dia:Landroid/app/AlertDialog;

    .line 352
    new-instance v6, Lcom/douban/radio/app/Warning$15;

    invoke-direct {v6, v2, v3, p0}, Lcom/douban/radio/app/Warning$15;-><init>(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/content/Context;)V

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 430
    new-instance v6, Lcom/douban/radio/app/Warning$16;

    invoke-direct {v6}, Lcom/douban/radio/app/Warning$16;-><init>()V

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 437
    sget-object v6, Lcom/douban/radio/app/Warning;->dia:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    .line 439
    return-void
.end method

.method public static showClearConfirm(Landroid/content/Context;Landroid/os/AsyncTask;)V
    .locals 5
    .parameter "ctx"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 442
    .local p1, atask:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 443
    .local v0, b:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f020075

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f09005e

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0900a9

    new-instance v4, Lcom/douban/radio/app/Warning$18;

    invoke-direct {v4}, Lcom/douban/radio/app/Warning$18;-><init>()V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f09001c

    new-instance v4, Lcom/douban/radio/app/Warning$17;

    invoke-direct {v4, p1}, Lcom/douban/radio/app/Warning$17;-><init>(Landroid/os/AsyncTask;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 460
    .local v1, dia:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 461
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 337
    invoke-direct {p0}, Lcom/douban/radio/app/Warning;->sendResume()V

    .line 338
    invoke-virtual {p0}, Lcom/douban/radio/app/Warning;->finish()V

    .line 339
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/douban/radio/app/FMActivity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    invoke-virtual {p0}, Lcom/douban/radio/app/Warning;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/douban/radio/RadioApp;

    iput-object v0, p0, Lcom/douban/radio/app/Warning;->app:Lcom/douban/radio/RadioApp;

    .line 66
    iget-object v0, p0, Lcom/douban/radio/app/Warning;->app:Lcom/douban/radio/RadioApp;

    invoke-virtual {v0}, Lcom/douban/radio/RadioApp;->getRadioManager()Lfm/douban/controller/RadioManager;

    move-result-object v0

    iput-object v0, p0, Lcom/douban/radio/app/Warning;->rm:Lfm/douban/controller/RadioManager;

    .line 67
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/douban/radio/app/Warning;->builder:Landroid/app/AlertDialog$Builder;

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/douban/radio/app/Warning;->dialog:Landroid/app/AlertDialog;

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/douban/radio/app/Warning;->quit:Z

    .line 70
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 296
    invoke-super {p0}, Lcom/douban/radio/app/FMActivity;->onDestroy()V

    .line 297
    const-string v0, "DB_Waring"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 313
    const/4 v0, 0x4

    if-ne v0, p1, :cond_0

    .line 314
    const/4 v0, 0x1

    .line 316
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/douban/radio/app/FMActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 74
    invoke-virtual {p0, p1}, Lcom/douban/radio/app/Warning;->setIntent(Landroid/content/Intent;)V

    .line 75
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 302
    invoke-super {p0}, Lcom/douban/radio/app/FMActivity;->onPause()V

    .line 303
    invoke-static {p0}, Lcom/mobclick/android/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 304
    const-string v0, "DB_Waring"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object v0, p0, Lcom/douban/radio/app/Warning;->dialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/douban/radio/app/Warning;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 307
    :cond_0
    iget-boolean v0, p0, Lcom/douban/radio/app/Warning;->quit:Z

    if-eqz v0, :cond_1

    .line 308
    invoke-direct {p0}, Lcom/douban/radio/app/Warning;->sendQuit()V

    .line 309
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 9

    .prologue
    const v8, 0x7f0900a6

    const v7, 0x7f09001b

    const/high16 v6, 0x7f09

    const v5, 0x7f020075

    const/4 v4, 0x0

    .line 79
    invoke-super {p0}, Lcom/douban/radio/app/FMActivity;->onResume()V

    .line 80
    invoke-static {p0}, Lcom/mobclick/android/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 82
    iput-boolean v4, p0, Lcom/douban/radio/app/Warning;->quit:Z

    .line 84
    invoke-virtual {p0}, Lcom/douban/radio/app/Warning;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 85
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "code"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/douban/radio/app/Warning;->code:I

    .line 86
    const-string v1, "to_channel"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/douban/radio/app/Warning;->channelTo:Ljava/lang/String;

    .line 88
    invoke-virtual {p0, v4}, Lcom/douban/radio/app/Warning;->setVisible(Z)V

    .line 90
    const-string v1, "DB_Waring"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "code="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/douban/radio/app/Warning;->code:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v1, p0, Lcom/douban/radio/app/Warning;->builder:Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/douban/radio/app/Warning$1;

    invoke-direct {v2, p0}, Lcom/douban/radio/app/Warning$1;-><init>(Lcom/douban/radio/app/Warning;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 112
    iget v1, p0, Lcom/douban/radio/app/Warning;->code:I

    sparse-switch v1, :sswitch_data_0

    .line 246
    iget-object v1, p0, Lcom/douban/radio/app/Warning;->builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/douban/radio/app/Warning$13;

    invoke-direct {v2, p0}, Lcom/douban/radio/app/Warning$13;-><init>(Lcom/douban/radio/app/Warning;)V

    invoke-virtual {v1, v8, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/douban/radio/app/Warning;->dialog:Landroid/app/AlertDialog;

    .line 258
    :goto_0
    iget v1, p0, Lcom/douban/radio/app/Warning;->code:I

    packed-switch v1, :pswitch_data_0

    .line 289
    :goto_1
    :pswitch_0
    iget-object v1, p0, Lcom/douban/radio/app/Warning;->dialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 290
    iget-object v1, p0, Lcom/douban/radio/app/Warning;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 291
    iget-object v1, p0, Lcom/douban/radio/app/Warning;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 293
    :cond_0
    return-void

    .line 114
    :sswitch_0
    invoke-virtual {p0}, Lcom/douban/radio/app/Warning;->finish()V

    goto :goto_0

    .line 117
    :sswitch_1
    iget-object v1, p0, Lcom/douban/radio/app/Warning;->builder:Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0900c1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 118
    iget-object v1, p0, Lcom/douban/radio/app/Warning;->builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/douban/radio/app/Warning$2;

    invoke-direct {v2, p0}, Lcom/douban/radio/app/Warning$2;-><init>(Lcom/douban/radio/app/Warning;)V

    invoke-virtual {v1, v7, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 127
    iget-object v1, p0, Lcom/douban/radio/app/Warning;->builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/douban/radio/app/Warning;->dialog:Landroid/app/AlertDialog;

    .line 129
    iget-object v1, p0, Lcom/douban/radio/app/Warning;->dialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/douban/radio/app/Warning$3;

    invoke-direct {v2, p0}, Lcom/douban/radio/app/Warning$3;-><init>(Lcom/douban/radio/app/Warning;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    goto :goto_0

    .line 144
    :sswitch_2
    const-string v1, "DB_Waring"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "to channel "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/douban/radio/app/Warning;->channelTo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-static {p0}, Lfm/douban/util/NetworkHelper;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 146
    iput-boolean v4, p0, Lcom/douban/radio/app/Warning;->quit:Z

    .line 147
    iget-object v1, p0, Lcom/douban/radio/app/Warning;->builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0900a3

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/douban/radio/app/Warning$5;

    invoke-direct {v2, p0}, Lcom/douban/radio/app/Warning$5;-><init>(Lcom/douban/radio/app/Warning;)V

    invoke-virtual {v1, v8, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0900a9

    new-instance v3, Lcom/douban/radio/app/Warning$4;

    invoke-direct {v3, p0}, Lcom/douban/radio/app/Warning$4;-><init>(Lcom/douban/radio/app/Warning;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/douban/radio/app/Warning;->dialog:Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 171
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/douban/radio/app/Warning;->quit:Z

    .line 172
    iget-object v1, p0, Lcom/douban/radio/app/Warning;->builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0900cf

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/douban/radio/app/Warning$7;

    invoke-direct {v2, p0}, Lcom/douban/radio/app/Warning$7;-><init>(Lcom/douban/radio/app/Warning;)V

    invoke-virtual {v1, v8, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/douban/radio/app/Warning$6;

    invoke-direct {v2, p0}, Lcom/douban/radio/app/Warning$6;-><init>(Lcom/douban/radio/app/Warning;)V

    invoke-virtual {v1, v7, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/douban/radio/app/Warning;->dialog:Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 190
    :sswitch_3
    iget-object v1, p0, Lcom/douban/radio/app/Warning;->builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0900a3

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f09001c

    new-instance v3, Lcom/douban/radio/app/Warning$8;

    invoke-direct {v3, p0}, Lcom/douban/radio/app/Warning$8;-><init>(Lcom/douban/radio/app/Warning;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 201
    iget-object v1, p0, Lcom/douban/radio/app/Warning;->rm:Lfm/douban/controller/RadioManager;

    invoke-static {v1}, Lfm/douban/model/Token;->isLogin(Lfm/douban/controller/RadioManager;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/douban/radio/app/Warning;->rm:Lfm/douban/controller/RadioManager;

    invoke-virtual {v1}, Lfm/douban/controller/RadioManager;->getSongManager()Lfm/douban/controller/SongManager;

    move-result-object v1

    invoke-virtual {v1}, Lfm/douban/controller/SongManager;->isCacheEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 203
    iput-boolean v4, p0, Lcom/douban/radio/app/Warning;->quit:Z

    .line 204
    iget-object v1, p0, Lcom/douban/radio/app/Warning;->builder:Landroid/app/AlertDialog$Builder;

    const v2, 0x7f090022

    new-instance v3, Lcom/douban/radio/app/Warning$9;

    invoke-direct {v3, p0}, Lcom/douban/radio/app/Warning$9;-><init>(Lcom/douban/radio/app/Warning;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 222
    :goto_2
    iget-object v1, p0, Lcom/douban/radio/app/Warning;->builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/douban/radio/app/Warning;->dialog:Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 213
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/douban/radio/app/Warning;->quit:Z

    .line 214
    iget-object v1, p0, Lcom/douban/radio/app/Warning;->builder:Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/douban/radio/app/Warning$10;

    invoke-direct {v2, p0}, Lcom/douban/radio/app/Warning$10;-><init>(Lcom/douban/radio/app/Warning;)V

    invoke-virtual {v1, v7, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    .line 227
    :sswitch_4
    iget-object v1, p0, Lcom/douban/radio/app/Warning;->builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0900a5

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/douban/radio/app/Warning$12;

    invoke-direct {v2, p0}, Lcom/douban/radio/app/Warning$12;-><init>(Lcom/douban/radio/app/Warning;)V

    invoke-virtual {v1, v7, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0900a9

    new-instance v3, Lcom/douban/radio/app/Warning$11;

    invoke-direct {v3, p0}, Lcom/douban/radio/app/Warning$11;-><init>(Lcom/douban/radio/app/Warning;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/douban/radio/app/Warning;->dialog:Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 260
    :pswitch_1
    iget-object v1, p0, Lcom/douban/radio/app/Warning;->builder:Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0900a0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/douban/radio/app/Warning;->dialog:Landroid/app/AlertDialog;

    goto/16 :goto_1

    .line 263
    :pswitch_2
    iget-object v1, p0, Lcom/douban/radio/app/Warning;->builder:Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0900a1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/douban/radio/app/Warning;->dialog:Landroid/app/AlertDialog;

    goto/16 :goto_1

    .line 266
    :pswitch_3
    iget-object v1, p0, Lcom/douban/radio/app/Warning;->builder:Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0900a2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/douban/radio/app/Warning$14;

    invoke-direct {v2, p0}, Lcom/douban/radio/app/Warning$14;-><init>(Lcom/douban/radio/app/Warning;)V

    invoke-virtual {v1, v8, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/douban/radio/app/Warning;->dialog:Landroid/app/AlertDialog;

    goto/16 :goto_1

    .line 280
    :pswitch_4
    iget-object v1, p0, Lcom/douban/radio/app/Warning;->builder:Landroid/app/AlertDialog$Builder;

    const v2, 0x7f090041

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/douban/radio/app/Warning;->dialog:Landroid/app/AlertDialog;

    goto/16 :goto_1

    .line 283
    :pswitch_5
    iget-object v1, p0, Lcom/douban/radio/app/Warning;->builder:Landroid/app/AlertDialog$Builder;

    const v2, 0x7f090042

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/douban/radio/app/Warning;->dialog:Landroid/app/AlertDialog;

    goto/16 :goto_1

    .line 286
    :pswitch_6
    iget-object v1, p0, Lcom/douban/radio/app/Warning;->builder:Landroid/app/AlertDialog$Builder;

    const v2, 0x7f090043

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/douban/radio/app/Warning;->dialog:Landroid/app/AlertDialog;

    goto/16 :goto_1

    .line 112
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x3 -> :sswitch_3
        0xd -> :sswitch_2
        0x12 -> :sswitch_1
        0x14 -> :sswitch_4
    .end sparse-switch

    .line 258
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method
