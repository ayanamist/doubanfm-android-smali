.class Lcom/douban/radio/app/Warning$4;
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
    .line 158
    iput-object p1, p0, Lcom/douban/radio/app/Warning$4;->this$0:Lcom/douban/radio/app/Warning;

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

    .line 160
    iget-object v0, p0, Lcom/douban/radio/app/Warning$4;->this$0:Lcom/douban/radio/app/Warning;

    #getter for: Lcom/douban/radio/app/Warning;->rm:Lfm/douban/controller/RadioManager;
    invoke-static {v0}, Lcom/douban/radio/app/Warning;->access$400(Lcom/douban/radio/app/Warning;)Lfm/douban/controller/RadioManager;

    move-result-object v0

    invoke-virtual {v0}, Lfm/douban/controller/RadioManager;->getSharedPreferences()Lfm/douban/model/FMSharedPreferences;

    move-result-object v0

    const-string v1, "offline_switch_channel"

    invoke-virtual {v0, v1, v2}, Lfm/douban/model/FMSharedPreferences;->putBoolean(Ljava/lang/String;Z)Z

    .line 162
    iget-object v0, p0, Lcom/douban/radio/app/Warning$4;->this$0:Lcom/douban/radio/app/Warning;

    #getter for: Lcom/douban/radio/app/Warning;->rm:Lfm/douban/controller/RadioManager;
    invoke-static {v0}, Lcom/douban/radio/app/Warning;->access$400(Lcom/douban/radio/app/Warning;)Lfm/douban/controller/RadioManager;

    move-result-object v0

    invoke-virtual {v0}, Lfm/douban/controller/RadioManager;->getSharedPreferences()Lfm/douban/model/FMSharedPreferences;

    move-result-object v0

    const-string v1, "is_logined"

    invoke-virtual {v0, v1, v2}, Lfm/douban/model/FMSharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/douban/radio/app/Warning$4;->this$0:Lcom/douban/radio/app/Warning;

    #setter for: Lcom/douban/radio/app/Warning;->quit:Z
    invoke-static {v0, v2}, Lcom/douban/radio/app/Warning;->access$102(Lcom/douban/radio/app/Warning;Z)Z

    .line 167
    :goto_0
    iget-object v0, p0, Lcom/douban/radio/app/Warning$4;->this$0:Lcom/douban/radio/app/Warning;

    invoke-virtual {v0}, Lcom/douban/radio/app/Warning;->finish()V

    .line 168
    return-void

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/douban/radio/app/Warning$4;->this$0:Lcom/douban/radio/app/Warning;

    const/4 v1, 0x1

    #setter for: Lcom/douban/radio/app/Warning;->quit:Z
    invoke-static {v0, v1}, Lcom/douban/radio/app/Warning;->access$102(Lcom/douban/radio/app/Warning;Z)Z

    goto :goto_0
.end method
