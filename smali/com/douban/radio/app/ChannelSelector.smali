.class public Lcom/douban/radio/app/ChannelSelector;
.super Lcom/douban/radio/app/FMActivity;
.source "ChannelSelector.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ChannelSelector"


# instance fields
.field private channelManager:Lfm/douban/controller/ChannelManager;

.field private channels:[Lfm/douban/model/Channel;

.field private checkPrivate:Landroid/widget/CheckedTextView;

.field private checkRed:Landroid/widget/CheckedTextView;

.field private fmsp:Lfm/douban/model/FMSharedPreferences;

.field private isLogin:Z

.field private isSyncing:Z

.field private newId:Ljava/lang/String;

.field private oldId:Ljava/lang/String;

.field private publicListView:Landroid/widget/ListView;

.field private rm:Lfm/douban/controller/RadioManager;

.field private selectedId:Ljava/lang/String;

.field private selectedIdForResult:Ljava/lang/String;

.field private syncProgress:Landroid/view/View;

.field private syncText:Landroid/widget/TextView;

.field private userText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/douban/radio/app/FMActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/douban/radio/app/ChannelSelector;)[Lfm/douban/model/Channel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/douban/radio/app/ChannelSelector;->channels:[Lfm/douban/model/Channel;

    return-object v0
.end method

.method static synthetic access$100(Lcom/douban/radio/app/ChannelSelector;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/douban/radio/app/ChannelSelector;->select(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/douban/radio/app/ChannelSelector;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/douban/radio/app/ChannelSelector;->back()V

    return-void
.end method

.method static synthetic access$300(Lcom/douban/radio/app/ChannelSelector;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/douban/radio/app/ChannelSelector;->isLogin:Z

    return v0
.end method

.method static synthetic access$402(Lcom/douban/radio/app/ChannelSelector;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/douban/radio/app/ChannelSelector;->selectedIdForResult:Ljava/lang/String;

    return-object p1
.end method

.method private back()V
    .locals 3

    .prologue
    .line 120
    iget-object v1, p0, Lcom/douban/radio/app/ChannelSelector;->selectedId:Ljava/lang/String;

    iget-object v2, p0, Lcom/douban/radio/app/ChannelSelector;->oldId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 121
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 122
    .local v0, data:Landroid/content/Intent;
    const-string v1, "channel_now"

    iget-object v2, p0, Lcom/douban/radio/app/ChannelSelector;->selectedId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    const/16 v1, 0x7d2

    invoke-virtual {p0, v1, v0}, Lcom/douban/radio/app/ChannelSelector;->setResult(ILandroid/content/Intent;)V

    .line 124
    invoke-virtual {p0}, Lcom/douban/radio/app/ChannelSelector;->finish()V

    .line 126
    .end local v0           #data:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private initData()V
    .locals 1

    .prologue
    .line 130
    invoke-static {p0}, Lfm/douban/FmApp;->getRadioManager(Landroid/content/Context;)Lfm/douban/controller/RadioManager;

    move-result-object v0

    iput-object v0, p0, Lcom/douban/radio/app/ChannelSelector;->rm:Lfm/douban/controller/RadioManager;

    .line 131
    iget-object v0, p0, Lcom/douban/radio/app/ChannelSelector;->rm:Lfm/douban/controller/RadioManager;

    invoke-virtual {v0}, Lfm/douban/controller/RadioManager;->getSharedPreferences()Lfm/douban/model/FMSharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/douban/radio/app/ChannelSelector;->fmsp:Lfm/douban/model/FMSharedPreferences;

    .line 132
    iget-object v0, p0, Lcom/douban/radio/app/ChannelSelector;->rm:Lfm/douban/controller/RadioManager;

    invoke-virtual {v0}, Lfm/douban/controller/RadioManager;->getChannelManager()Lfm/douban/controller/ChannelManager;

    move-result-object v0

    iput-object v0, p0, Lcom/douban/radio/app/ChannelSelector;->channelManager:Lfm/douban/controller/ChannelManager;

    .line 133
    iget-object v0, p0, Lcom/douban/radio/app/ChannelSelector;->channelManager:Lfm/douban/controller/ChannelManager;

    invoke-virtual {v0}, Lfm/douban/controller/ChannelManager;->getPublicChannels()[Lfm/douban/model/Channel;

    move-result-object v0

    iput-object v0, p0, Lcom/douban/radio/app/ChannelSelector;->channels:[Lfm/douban/model/Channel;

    .line 135
    return-void
.end method

.method private initViews()V
    .locals 6

    .prologue
    .line 138
    const v3, 0x7f030003

    invoke-virtual {p0, v3}, Lcom/douban/radio/app/ChannelSelector;->setContentView(I)V

    .line 140
    const v3, 0x102000a

    invoke-virtual {p0, v3}, Lcom/douban/radio/app/ChannelSelector;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/douban/radio/app/ChannelSelector;->publicListView:Landroid/widget/ListView;

    .line 141
    const v3, 0x7f080021

    invoke-virtual {p0, v3}, Lcom/douban/radio/app/ChannelSelector;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckedTextView;

    iput-object v3, p0, Lcom/douban/radio/app/ChannelSelector;->checkPrivate:Landroid/widget/CheckedTextView;

    .line 142
    const v3, 0x7f080023

    invoke-virtual {p0, v3}, Lcom/douban/radio/app/ChannelSelector;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckedTextView;

    iput-object v3, p0, Lcom/douban/radio/app/ChannelSelector;->checkRed:Landroid/widget/CheckedTextView;

    .line 143
    const v3, 0x7f08001f

    invoke-virtual {p0, v3}, Lcom/douban/radio/app/ChannelSelector;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/douban/radio/app/ChannelSelector;->userText:Landroid/widget/TextView;

    .line 144
    const v3, 0x7f080025

    invoke-virtual {p0, v3}, Lcom/douban/radio/app/ChannelSelector;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/douban/radio/app/ChannelSelector;->syncText:Landroid/widget/TextView;

    .line 145
    const v3, 0x7f080024

    invoke-virtual {p0, v3}, Lcom/douban/radio/app/ChannelSelector;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/douban/radio/app/ChannelSelector;->syncProgress:Landroid/view/View;

    .line 147
    iget-object v3, p0, Lcom/douban/radio/app/ChannelSelector;->publicListView:Landroid/widget/ListView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 148
    iget-object v3, p0, Lcom/douban/radio/app/ChannelSelector;->publicListView:Landroid/widget/ListView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 151
    iget-object v3, p0, Lcom/douban/radio/app/ChannelSelector;->channels:[Lfm/douban/model/Channel;

    array-length v3, v3

    new-array v0, v3, [Ljava/lang/String;

    .line 152
    .local v0, channelNames:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/douban/radio/app/ChannelSelector;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 153
    .local v2, lang:Ljava/lang/String;
    const-string v3, "ChannelSelector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "language:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 155
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/douban/radio/app/ChannelSelector;->channels:[Lfm/douban/model/Channel;

    aget-object v4, v4, v1

    iget-object v4, v4, Lfm/douban/model/Channel;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " MHz"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 154
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 158
    :cond_0
    iget-object v3, p0, Lcom/douban/radio/app/ChannelSelector;->publicListView:Landroid/widget/ListView;

    new-instance v4, Landroid/widget/ArrayAdapter;

    const v5, 0x7f03000f

    invoke-direct {v4, p0, v5, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 161
    iget-object v3, p0, Lcom/douban/radio/app/ChannelSelector;->publicListView:Landroid/widget/ListView;

    new-instance v4, Lcom/douban/radio/app/ChannelSelector$1;

    invoke-direct {v4, p0}, Lcom/douban/radio/app/ChannelSelector$1;-><init>(Lcom/douban/radio/app/ChannelSelector;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 170
    iget-object v3, p0, Lcom/douban/radio/app/ChannelSelector;->checkPrivate:Landroid/widget/CheckedTextView;

    new-instance v4, Lcom/douban/radio/app/ChannelSelector$2;

    invoke-direct {v4, p0}, Lcom/douban/radio/app/ChannelSelector$2;-><init>(Lcom/douban/radio/app/ChannelSelector;)V

    invoke-virtual {v3, v4}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    iget-object v3, p0, Lcom/douban/radio/app/ChannelSelector;->checkRed:Landroid/widget/CheckedTextView;

    new-instance v4, Lcom/douban/radio/app/ChannelSelector$3;

    invoke-direct {v4, p0}, Lcom/douban/radio/app/ChannelSelector$3;-><init>(Lcom/douban/radio/app/ChannelSelector;)V

    invoke-virtual {v3, v4}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    return-void
.end method

.method private select(Ljava/lang/String;)V
    .locals 4
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 203
    iget-object v1, p0, Lcom/douban/radio/app/ChannelSelector;->publicListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->clearChoices()V

    .line 204
    iget-object v1, p0, Lcom/douban/radio/app/ChannelSelector;->publicListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->clearFocus()V

    .line 205
    iget-object v1, p0, Lcom/douban/radio/app/ChannelSelector;->checkPrivate:Landroid/widget/CheckedTextView;

    invoke-virtual {v1, v3}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 206
    iget-object v1, p0, Lcom/douban/radio/app/ChannelSelector;->checkRed:Landroid/widget/CheckedTextView;

    invoke-virtual {v1, v3}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 207
    const-string v1, "0"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 208
    iget-object v1, p0, Lcom/douban/radio/app/ChannelSelector;->checkPrivate:Landroid/widget/CheckedTextView;

    invoke-virtual {v1, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 219
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/douban/radio/app/ChannelSelector;->selectedId:Ljava/lang/String;

    .line 220
    return-void

    .line 209
    :cond_1
    const-string v1, "-3"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 210
    iget-object v1, p0, Lcom/douban/radio/app/ChannelSelector;->checkRed:Landroid/widget/CheckedTextView;

    invoke-virtual {v1, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_0

    .line 212
    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/douban/radio/app/ChannelSelector;->channels:[Lfm/douban/model/Channel;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 213
    iget-object v1, p0, Lcom/douban/radio/app/ChannelSelector;->channels:[Lfm/douban/model/Channel;

    aget-object v1, v1, v0

    iget-object v1, v1, Lfm/douban/model/Channel;->channel_id:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 214
    iget-object v1, p0, Lcom/douban/radio/app/ChannelSelector;->publicListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    goto :goto_0

    .line 212
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 227
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 228
    packed-switch p1, :pswitch_data_0

    .line 236
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/douban/radio/app/FMActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 237
    return-void

    .line 231
    :pswitch_0
    iget-object v0, p0, Lcom/douban/radio/app/ChannelSelector;->selectedIdForResult:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/douban/radio/app/ChannelSelector;->select(Ljava/lang/String;)V

    .line 232
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/douban/radio/app/ChannelSelector;->selectedIdForResult:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lfm/douban/service/RadioService;->sendCommand(Landroid/content/Context;ILjava/lang/String;)V

    .line 233
    invoke-direct {p0}, Lcom/douban/radio/app/ChannelSelector;->back()V

    goto :goto_0

    .line 228
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/douban/radio/app/FMActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 111
    invoke-super {p0}, Lcom/douban/radio/app/FMActivity;->onPause()V

    .line 112
    invoke-static {p0}, Lcom/mobclick/android/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 114
    return-void
.end method

.method protected onResume()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 66
    invoke-super {p0}, Lcom/douban/radio/app/FMActivity;->onResume()V

    .line 67
    invoke-static {p0}, Lcom/mobclick/android/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 69
    invoke-direct {p0}, Lcom/douban/radio/app/ChannelSelector;->initData()V

    .line 70
    invoke-direct {p0}, Lcom/douban/radio/app/ChannelSelector;->initViews()V

    .line 72
    iget-object v2, p0, Lcom/douban/radio/app/ChannelSelector;->rm:Lfm/douban/controller/RadioManager;

    invoke-static {v2}, Lfm/douban/model/Token;->isLogin(Lfm/douban/controller/RadioManager;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/douban/radio/app/ChannelSelector;->isLogin:Z

    .line 74
    iget-boolean v2, p0, Lcom/douban/radio/app/ChannelSelector;->isLogin:Z

    if-eqz v2, :cond_2

    .line 75
    iget-object v2, p0, Lcom/douban/radio/app/ChannelSelector;->rm:Lfm/douban/controller/RadioManager;

    invoke-static {v2}, Lfm/douban/model/Token;->get(Lfm/douban/controller/RadioManager;)Lfm/douban/model/Token;

    move-result-object v1

    .line 76
    .local v1, token:Lfm/douban/model/Token;
    iget-object v2, p0, Lcom/douban/radio/app/ChannelSelector;->userText:Landroid/widget/TextView;

    iget-object v3, v1, Lfm/douban/model/Token;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    .end local v1           #token:Lfm/douban/model/Token;
    :goto_0
    invoke-virtual {p0}, Lcom/douban/radio/app/ChannelSelector;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 82
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "channel_now"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/douban/radio/app/ChannelSelector;->oldId:Ljava/lang/String;

    .line 83
    iget-object v2, p0, Lcom/douban/radio/app/ChannelSelector;->oldId:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 84
    iget-object v2, p0, Lcom/douban/radio/app/ChannelSelector;->oldId:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/douban/radio/app/ChannelSelector;->select(Ljava/lang/String;)V

    .line 85
    iget-object v2, p0, Lcom/douban/radio/app/ChannelSelector;->oldId:Ljava/lang/String;

    iput-object v2, p0, Lcom/douban/radio/app/ChannelSelector;->selectedId:Ljava/lang/String;

    .line 88
    :cond_0
    const-string v2, "ChannelSelector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "select channel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/douban/radio/app/ChannelSelector;->oldId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const-string v2, "channel_to"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/douban/radio/app/ChannelSelector;->newId:Ljava/lang/String;

    .line 91
    iget-object v2, p0, Lcom/douban/radio/app/ChannelSelector;->newId:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/douban/radio/app/ChannelSelector;->newId:Ljava/lang/String;

    const-string v3, "-3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 92
    iget-boolean v2, p0, Lcom/douban/radio/app/ChannelSelector;->isLogin:Z

    if-nez v2, :cond_1

    .line 93
    iget-object v2, p0, Lcom/douban/radio/app/ChannelSelector;->newId:Ljava/lang/String;

    iput-object v2, p0, Lcom/douban/radio/app/ChannelSelector;->selectedIdForResult:Ljava/lang/String;

    .line 94
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/douban/radio/app/LoginActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v3, 0x3e9

    invoke-virtual {p0, v2, v3}, Lcom/douban/radio/app/ChannelSelector;->startActivityForResult(Landroid/content/Intent;I)V

    .line 99
    :cond_1
    iget-object v2, p0, Lcom/douban/radio/app/ChannelSelector;->fmsp:Lfm/douban/model/FMSharedPreferences;

    const-string v3, "is_sync"

    invoke-virtual {v2, v3, v5}, Lfm/douban/model/FMSharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/douban/radio/app/ChannelSelector;->isSyncing:Z

    .line 100
    iget-boolean v2, p0, Lcom/douban/radio/app/ChannelSelector;->isSyncing:Z

    if-eqz v2, :cond_3

    .line 101
    iget-object v2, p0, Lcom/douban/radio/app/ChannelSelector;->syncText:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 102
    iget-object v2, p0, Lcom/douban/radio/app/ChannelSelector;->syncProgress:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 107
    :goto_1
    return-void

    .line 78
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    iget-object v2, p0, Lcom/douban/radio/app/ChannelSelector;->userText:Landroid/widget/TextView;

    const v3, 0x7f090044

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 104
    .restart local v0       #intent:Landroid/content/Intent;
    :cond_3
    iget-object v2, p0, Lcom/douban/radio/app/ChannelSelector;->syncText:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 105
    iget-object v2, p0, Lcom/douban/radio/app/ChannelSelector;->syncProgress:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method
