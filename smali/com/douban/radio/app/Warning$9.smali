.class Lcom/douban/radio/app/Warning$9;
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
    .line 204
    iput-object p1, p0, Lcom/douban/radio/app/Warning$9;->this$0:Lcom/douban/radio/app/Warning;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x0

    .line 206
    iget-object v0, p0, Lcom/douban/radio/app/Warning$9;->this$0:Lcom/douban/radio/app/Warning;

    #getter for: Lcom/douban/radio/app/Warning;->rm:Lfm/douban/controller/RadioManager;
    invoke-static {v0}, Lcom/douban/radio/app/Warning;->access$400(Lcom/douban/radio/app/Warning;)Lfm/douban/controller/RadioManager;

    move-result-object v0

    invoke-virtual {v0}, Lfm/douban/controller/RadioManager;->getSharedPreferences()Lfm/douban/model/FMSharedPreferences;

    move-result-object v0

    const-string v1, "offline_switch"

    invoke-virtual {v0, v1, v2}, Lfm/douban/model/FMSharedPreferences;->putInt(Ljava/lang/String;I)Z

    .line 207
    iget-object v0, p0, Lcom/douban/radio/app/Warning$9;->this$0:Lcom/douban/radio/app/Warning;

    #calls: Lcom/douban/radio/app/Warning;->sendSwitchOffline()V
    invoke-static {v0}, Lcom/douban/radio/app/Warning;->access$700(Lcom/douban/radio/app/Warning;)V

    .line 208
    iget-object v0, p0, Lcom/douban/radio/app/Warning$9;->this$0:Lcom/douban/radio/app/Warning;

    #setter for: Lcom/douban/radio/app/Warning;->quit:Z
    invoke-static {v0, v2}, Lcom/douban/radio/app/Warning;->access$102(Lcom/douban/radio/app/Warning;Z)Z

    .line 209
    iget-object v0, p0, Lcom/douban/radio/app/Warning$9;->this$0:Lcom/douban/radio/app/Warning;

    invoke-virtual {v0}, Lcom/douban/radio/app/Warning;->finish()V

    .line 210
    return-void
.end method
