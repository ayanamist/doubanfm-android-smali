.class Lcom/douban/radio/app/WelcomeActivity$2;
.super Landroid/os/Handler;
.source "WelcomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/douban/radio/app/WelcomeActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/douban/radio/app/WelcomeActivity;


# direct methods
.method constructor <init>(Lcom/douban/radio/app/WelcomeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/douban/radio/app/WelcomeActivity$2;->this$0:Lcom/douban/radio/app/WelcomeActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const v8, 0xa8cb

    .line 98
    iget v6, p1, Landroid/os/Message;->what:I

    const v7, 0xa8cc

    if-ne v6, v7, :cond_2

    .line 99
    iget-object v6, p0, Lcom/douban/radio/app/WelcomeActivity$2;->this$0:Lcom/douban/radio/app/WelcomeActivity;

    invoke-static {v6}, Lfm/douban/util/NetworkHelper;->isActiveNetworkMobile(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 101
    iget-object v6, p0, Lcom/douban/radio/app/WelcomeActivity$2;->this$0:Lcom/douban/radio/app/WelcomeActivity;

    #calls: Lcom/douban/radio/app/WelcomeActivity;->sendMsg(I)V
    invoke-static {v6, v8}, Lcom/douban/radio/app/WelcomeActivity;->access$100(Lcom/douban/radio/app/WelcomeActivity;I)V

    .line 128
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 129
    return-void

    .line 103
    :cond_1
    iget-object v6, p0, Lcom/douban/radio/app/WelcomeActivity$2;->this$0:Lcom/douban/radio/app/WelcomeActivity;

    #calls: Lcom/douban/radio/app/WelcomeActivity;->updateChannelList()V
    invoke-static {v6}, Lcom/douban/radio/app/WelcomeActivity;->access$200(Lcom/douban/radio/app/WelcomeActivity;)V

    goto :goto_0

    .line 105
    :cond_2
    iget v6, p1, Landroid/os/Message;->what:I

    const v7, 0xa8ca

    if-ne v6, v7, :cond_6

    .line 106
    const/4 v5, 0x0

    .line 107
    .local v5, startUrl:Ljava/lang/String;
    const/4 v4, 0x1

    .line 108
    .local v4, start:Z
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 110
    .local v1, path:Ljava/lang/String;
    if-nez v1, :cond_4

    .line 120
    :cond_3
    :goto_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 121
    .local v0, msg1:Landroid/os/Message;
    iput v8, v0, Landroid/os/Message;->what:I

    .line 122
    iput-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 123
    if-eqz v4, :cond_0

    iget-object v6, p0, Lcom/douban/radio/app/WelcomeActivity$2;->this$0:Lcom/douban/radio/app/WelcomeActivity;

    #getter for: Lcom/douban/radio/app/WelcomeActivity;->handler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/douban/radio/app/WelcomeActivity;->access$400(Lcom/douban/radio/app/WelcomeActivity;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 112
    .end local v0           #msg1:Landroid/os/Message;
    :cond_4
    const-string v6, "http://weibo.cn"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 113
    const/4 v4, 0x0

    .line 114
    iget-object v6, p0, Lcom/douban/radio/app/WelcomeActivity$2;->this$0:Lcom/douban/radio/app/WelcomeActivity;

    const-string v7, "WeiboLink"

    invoke-static {v6, v7}, Lcom/mobclick/android/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 115
    iget-object v6, p0, Lcom/douban/radio/app/WelcomeActivity$2;->this$0:Lcom/douban/radio/app/WelcomeActivity;

    invoke-virtual {v6, v1}, Lcom/douban/radio/app/WelcomeActivity;->exactWeiboUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 116
    .local v3, shortUrl:Ljava/lang/String;
    iget-object v6, p0, Lcom/douban/radio/app/WelcomeActivity$2;->this$0:Lcom/douban/radio/app/WelcomeActivity;

    invoke-static {v6}, Lfm/douban/FmApp;->getRadioManager(Landroid/content/Context;)Lfm/douban/controller/RadioManager;

    move-result-object v6

    invoke-virtual {v6}, Lfm/douban/controller/RadioManager;->getApi()Lfm/douban/api/Api;

    move-result-object v6

    iget-object v7, p0, Lcom/douban/radio/app/WelcomeActivity$2;->this$0:Lcom/douban/radio/app/WelcomeActivity;

    #getter for: Lcom/douban/radio/app/WelcomeActivity;->expandSinaUrlHandler:Lcom/loopj/android/http/AsyncHttpResponseHandler;
    invoke-static {v7}, Lcom/douban/radio/app/WelcomeActivity;->access$300(Lcom/douban/radio/app/WelcomeActivity;)Lcom/loopj/android/http/AsyncHttpResponseHandler;

    move-result-object v7

    invoke-virtual {v6, v3, v7}, Lfm/douban/api/Api;->expandSinaUrl(Ljava/lang/String;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    goto :goto_1

    .line 117
    .end local v3           #shortUrl:Ljava/lang/String;
    :cond_5
    const-string v6, "http://douban.fm"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 118
    move-object v5, v1

    goto :goto_1

    .line 124
    .end local v1           #path:Ljava/lang/String;
    .end local v4           #start:Z
    .end local v5           #startUrl:Ljava/lang/String;
    :cond_6
    iget v6, p1, Landroid/os/Message;->what:I

    if-ne v6, v8, :cond_0

    .line 125
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 126
    .local v2, playUrl:Ljava/lang/String;
    iget-object v6, p0, Lcom/douban/radio/app/WelcomeActivity$2;->this$0:Lcom/douban/radio/app/WelcomeActivity;

    #calls: Lcom/douban/radio/app/WelcomeActivity;->startPlayer(Ljava/lang/String;)V
    invoke-static {v6, v2}, Lcom/douban/radio/app/WelcomeActivity;->access$000(Lcom/douban/radio/app/WelcomeActivity;Ljava/lang/String;)V

    goto :goto_0
.end method
