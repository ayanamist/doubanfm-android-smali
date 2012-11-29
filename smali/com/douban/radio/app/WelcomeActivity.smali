.class public Lcom/douban/radio/app/WelcomeActivity;
.super Lcom/douban/radio/app/FMActivity;
.source "WelcomeActivity.java"


# static fields
.field protected static final START_PLAYER:I = 0xa8cb

.field private static final START_WITH_URL:I = 0xa8ca

.field private static final TAG:Ljava/lang/String; = "WelcomeActivity"

.field protected static final UPDATE_CHANNELS:I = 0xa8cc


# instance fields
.field private cm:Lfm/douban/controller/ChannelManager;

.field private expandSinaUrlHandler:Lcom/loopj/android/http/AsyncHttpResponseHandler;

.field private fmsp:Lfm/douban/model/FMSharedPreferences;

.field private handler:Landroid/os/Handler;

.field protected wifi_tip_off:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/douban/radio/app/FMActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/douban/radio/app/WelcomeActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/douban/radio/app/WelcomeActivity;->startPlayer(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/douban/radio/app/WelcomeActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/douban/radio/app/WelcomeActivity;->sendMsg(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/douban/radio/app/WelcomeActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/douban/radio/app/WelcomeActivity;->updateChannelList()V

    return-void
.end method

.method static synthetic access$300(Lcom/douban/radio/app/WelcomeActivity;)Lcom/loopj/android/http/AsyncHttpResponseHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/douban/radio/app/WelcomeActivity;->expandSinaUrlHandler:Lcom/loopj/android/http/AsyncHttpResponseHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/douban/radio/app/WelcomeActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/douban/radio/app/WelcomeActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/douban/radio/app/WelcomeActivity;)Lfm/douban/controller/ChannelManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/douban/radio/app/WelcomeActivity;->cm:Lfm/douban/controller/ChannelManager;

    return-object v0
.end method

.method private sendMsg(I)V
    .locals 2
    .parameter "what"

    .prologue
    .line 245
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 246
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 247
    iget-object v1, p0, Lcom/douban/radio/app/WelcomeActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 248
    return-void
.end method

.method private startPlayer(Ljava/lang/String;)V
    .locals 3
    .parameter "url"

    .prologue
    .line 251
    const-string v1, "WelcomeActivity"

    const-string v2, "startPlayer"

    invoke-static {v1, v2}, Lfm/douban/util/DBLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/douban/radio/app/RadioActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 253
    .local v0, i:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 254
    const-string v1, "start_url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 255
    if-nez p1, :cond_0

    const-string v1, "WelcomeActivity"

    const-string v2, "start url null"

    invoke-static {v1, v2}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_0
    invoke-virtual {p0, v0}, Lcom/douban/radio/app/WelcomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 257
    invoke-virtual {p0}, Lcom/douban/radio/app/WelcomeActivity;->finish()V

    .line 258
    return-void
.end method

.method private updateChannelList()V
    .locals 7

    .prologue
    const v6, 0xa8cb

    .line 211
    iget-object v3, p0, Lcom/douban/radio/app/WelcomeActivity;->fmsp:Lfm/douban/model/FMSharedPreferences;

    const-string v4, "channel_last_check"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lfm/douban/model/FMSharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 212
    .local v2, lastCheck:I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 213
    .local v0, day:I
    if-eqz v2, :cond_0

    add-int/lit8 v3, v2, 0x0

    if-le v0, v3, :cond_1

    .line 215
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/douban/radio/app/WelcomeActivity;->cm:Lfm/douban/controller/ChannelManager;

    new-instance v4, Lcom/douban/radio/app/WelcomeActivity$3;

    invoke-direct {v4, p0}, Lcom/douban/radio/app/WelcomeActivity$3;-><init>(Lcom/douban/radio/app/WelcomeActivity;)V

    invoke-virtual {v3, v4}, Lfm/douban/controller/ChannelManager;->checkChannels(Lcom/loopj/android/http/AsyncHttpResponseHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    :goto_0
    return-void

    .line 235
    :catch_0
    move-exception v1

    .line 236
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 237
    invoke-direct {p0, v6}, Lcom/douban/radio/app/WelcomeActivity;->sendMsg(I)V

    goto :goto_0

    .line 240
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    invoke-direct {p0, v6}, Lcom/douban/radio/app/WelcomeActivity;->sendMsg(I)V

    goto :goto_0
.end method


# virtual methods
.method protected exactWeiboUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "path"

    .prologue
    .line 202
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 203
    .local v1, uri:Landroid/net/Uri;
    const-string v2, "u"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, shortUrl:Ljava/lang/String;
    const-string v2, "WelcomeActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "***** short:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/douban/radio/app/FMActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const-string v6, "WelcomeActivity"

    const-string v7, "onCreate"

    invoke-static {v6, v7}, Lfm/douban/util/DBLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    const-string v6, "phone"

    invoke-virtual {p0, v6}, Lcom/douban/radio/app/WelcomeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 52
    .local v5, tel:Landroid/telephony/TelephonyManager;
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v3

    .line 53
    .local v3, simNO:Ljava/lang/String;
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v4

    .line 54
    .local v4, simName:Ljava/lang/String;
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, netO:Ljava/lang/String;
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, netN:Ljava/lang/String;
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v2

    .line 57
    .local v2, phone:Ljava/lang/String;
    const-string v6, "WelcomeActivity"

    const-string v7, "telephoneManager:*******************"

    invoke-static {v6, v7}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const-string v6, "WelcomeActivity"

    const-string v7, "sim operator:%s\nsim operator name:%s\nnetwork operator:%s\nnetwork operator name:%s\nline number:%s\n"

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    const/4 v9, 0x1

    aput-object v4, v8, v9

    const/4 v9, 0x2

    aput-object v1, v8, v9

    const/4 v9, 0x3

    aput-object v0, v8, v9

    const/4 v9, 0x4

    aput-object v2, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const v6, 0x7f03000a

    invoke-virtual {p0, v6}, Lcom/douban/radio/app/WelcomeActivity;->setContentView(I)V

    .line 62
    new-instance v6, Lcom/douban/radio/app/WelcomeActivity$1;

    invoke-direct {v6, p0}, Lcom/douban/radio/app/WelcomeActivity$1;-><init>(Lcom/douban/radio/app/WelcomeActivity;)V

    iput-object v6, p0, Lcom/douban/radio/app/WelcomeActivity;->expandSinaUrlHandler:Lcom/loopj/android/http/AsyncHttpResponseHandler;

    .line 95
    new-instance v6, Lcom/douban/radio/app/WelcomeActivity$2;

    invoke-direct {v6, p0}, Lcom/douban/radio/app/WelcomeActivity$2;-><init>(Lcom/douban/radio/app/WelcomeActivity;)V

    iput-object v6, p0, Lcom/douban/radio/app/WelcomeActivity;->handler:Landroid/os/Handler;

    .line 132
    invoke-static {p0}, Lfm/douban/FmApp;->getRadioManager(Landroid/content/Context;)Lfm/douban/controller/RadioManager;

    move-result-object v6

    invoke-virtual {v6}, Lfm/douban/controller/RadioManager;->getChannelManager()Lfm/douban/controller/ChannelManager;

    move-result-object v6

    iput-object v6, p0, Lcom/douban/radio/app/WelcomeActivity;->cm:Lfm/douban/controller/ChannelManager;

    .line 133
    invoke-static {p0}, Lfm/douban/FmApp;->getRadioManager(Landroid/content/Context;)Lfm/douban/controller/RadioManager;

    move-result-object v6

    invoke-virtual {v6}, Lfm/douban/controller/RadioManager;->getSharedPreferences()Lfm/douban/model/FMSharedPreferences;

    move-result-object v6

    iput-object v6, p0, Lcom/douban/radio/app/WelcomeActivity;->fmsp:Lfm/douban/model/FMSharedPreferences;

    .line 135
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 197
    const/4 v0, 0x0

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 191
    const-string v0, "WelcomeActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lfm/douban/util/DBLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-super {p0}, Lcom/douban/radio/app/FMActivity;->onDestroy()V

    .line 193
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 184
    invoke-super {p0}, Lcom/douban/radio/app/FMActivity;->onPause()V

    .line 185
    invoke-static {p0}, Lcom/mobclick/android/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 186
    const-string v0, "WelcomeActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lfm/douban/util/DBLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    return-void
.end method

.method public onResume()V
    .locals 10

    .prologue
    .line 139
    invoke-super {p0}, Lcom/douban/radio/app/FMActivity;->onResume()V

    .line 140
    invoke-static {p0}, Lcom/mobclick/android/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 141
    const-string v7, "WelcomeActivity"

    const-string v8, "onResume"

    invoke-static {v7, v8}, Lfm/douban/util/DBLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :try_start_0
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v8, 0x5

    if-ge v7, v8, :cond_0

    .line 145
    iget-object v7, p0, Lcom/douban/radio/app/WelcomeActivity;->fmsp:Lfm/douban/model/FMSharedPreferences;

    const-string v8, "audio_format"

    const-string v9, "mp3"

    invoke-virtual {v7, v8, v9}, Lfm/douban/model/FMSharedPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/douban/radio/app/WelcomeActivity;->getApplication()Landroid/app/Application;

    move-result-object v7

    check-cast v7, Lfm/douban/FmApp;

    iget-boolean v3, v7, Lfm/douban/FmApp;->isServiceRunning:Z

    .line 152
    .local v3, isServiceRunning:Z
    invoke-virtual {p0}, Lcom/douban/radio/app/WelcomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 153
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string v7, "android.intent.action.VIEW"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 158
    const-string v7, "WelcomeActivity"

    const-string v8, "VIEW by browser"

    invoke-static {v7, v8}, Lfm/douban/util/DBLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    .line 160
    .local v6, uri:Landroid/net/Uri;
    if-eqz v6, :cond_1

    .line 161
    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    .line 162
    .local v5, path:Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 163
    const-string v7, "WelcomeActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "URI path:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    .line 165
    .local v4, msg:Landroid/os/Message;
    const v7, 0xa8ca

    iput v7, v4, Landroid/os/Message;->what:I

    .line 166
    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 167
    iget-object v7, p0, Lcom/douban/radio/app/WelcomeActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v7, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 180
    .end local v4           #msg:Landroid/os/Message;
    .end local v5           #path:Ljava/lang/String;
    .end local v6           #uri:Landroid/net/Uri;
    :cond_1
    :goto_1
    return-void

    .line 147
    .end local v0           #action:Ljava/lang/String;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #isServiceRunning:Z
    :catch_0
    move-exception v1

    .line 148
    .local v1, e:Ljava/lang/Exception;
    iget-object v7, p0, Lcom/douban/radio/app/WelcomeActivity;->fmsp:Lfm/douban/model/FMSharedPreferences;

    const-string v8, "audio_format"

    const-string v9, "mp3"

    invoke-virtual {v7, v8, v9}, Lfm/douban/model/FMSharedPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 171
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #action:Ljava/lang/String;
    .restart local v2       #intent:Landroid/content/Intent;
    .restart local v3       #isServiceRunning:Z
    :cond_2
    if-eqz v3, :cond_3

    .line 172
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/douban/radio/app/WelcomeActivity;->startPlayer(Ljava/lang/String;)V

    goto :goto_1

    .line 175
    :cond_3
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    .line 176
    .restart local v4       #msg:Landroid/os/Message;
    const v7, 0xa8cc

    iput v7, v4, Landroid/os/Message;->what:I

    .line 177
    iget-object v7, p0, Lcom/douban/radio/app/WelcomeActivity;->handler:Landroid/os/Handler;

    const-wide/16 v8, 0x1f4

    invoke-virtual {v7, v4, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1
.end method
