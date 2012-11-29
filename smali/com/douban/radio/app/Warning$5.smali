.class Lcom/douban/radio/app/Warning$5;
.super Ljava/lang/Object;
.source "Warning.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/douban/radio/app/Warning;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/douban/radio/app/Warning;


# direct methods
.method constructor <init>(Lcom/douban/radio/app/Warning;)V
    .locals 0
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lcom/douban/radio/app/Warning$5;->this$0:Lcom/douban/radio/app/Warning;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 151
    const-string v0, "DB_Waring"

    const-string v1, "onClick"

    invoke-static {v0, v1}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v0, p0, Lcom/douban/radio/app/Warning$5;->this$0:Lcom/douban/radio/app/Warning;

    #getter for: Lcom/douban/radio/app/Warning;->rm:Lfm/douban/controller/RadioManager;
    invoke-static {v0}, Lcom/douban/radio/app/Warning;->access$400(Lcom/douban/radio/app/Warning;)Lfm/douban/controller/RadioManager;

    move-result-object v0

    invoke-virtual {v0}, Lfm/douban/controller/RadioManager;->getSharedPreferences()Lfm/douban/model/FMSharedPreferences;

    move-result-object v0

    const-string v1, "offline_switch_channel"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lfm/douban/model/FMSharedPreferences;->putBoolean(Ljava/lang/String;Z)Z

    .line 154
    iget-object v0, p0, Lcom/douban/radio/app/Warning$5;->this$0:Lcom/douban/radio/app/Warning;

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/douban/radio/app/Warning$5;->this$0:Lcom/douban/radio/app/Warning;

    #getter for: Lcom/douban/radio/app/Warning;->channelTo:Ljava/lang/String;
    invoke-static {v2}, Lcom/douban/radio/app/Warning;->access$500(Lcom/douban/radio/app/Warning;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lfm/douban/service/RadioService;->sendCommand(Landroid/content/Context;ILjava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/douban/radio/app/Warning$5;->this$0:Lcom/douban/radio/app/Warning;

    const/4 v1, 0x0

    #setter for: Lcom/douban/radio/app/Warning;->quit:Z
    invoke-static {v0, v1}, Lcom/douban/radio/app/Warning;->access$102(Lcom/douban/radio/app/Warning;Z)Z

    .line 156
    iget-object v0, p0, Lcom/douban/radio/app/Warning$5;->this$0:Lcom/douban/radio/app/Warning;

    invoke-virtual {v0}, Lcom/douban/radio/app/Warning;->finish()V

    .line 157
    return-void
.end method
