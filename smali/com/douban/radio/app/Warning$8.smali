.class Lcom/douban/radio/app/Warning$8;
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
    .line 191
    iput-object p1, p0, Lcom/douban/radio/app/Warning$8;->this$0:Lcom/douban/radio/app/Warning;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 193
    iget-object v0, p0, Lcom/douban/radio/app/Warning$8;->this$0:Lcom/douban/radio/app/Warning;

    #getter for: Lcom/douban/radio/app/Warning;->rm:Lfm/douban/controller/RadioManager;
    invoke-static {v0}, Lcom/douban/radio/app/Warning;->access$400(Lcom/douban/radio/app/Warning;)Lfm/douban/controller/RadioManager;

    move-result-object v0

    invoke-virtual {v0}, Lfm/douban/controller/RadioManager;->getSharedPreferences()Lfm/douban/model/FMSharedPreferences;

    move-result-object v0

    const-string v1, "setting_can_use_mobile_net"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lfm/douban/model/FMSharedPreferences;->putBoolean(Ljava/lang/String;Z)Z

    .line 194
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 196
    iget-object v0, p0, Lcom/douban/radio/app/Warning$8;->this$0:Lcom/douban/radio/app/Warning;

    #calls: Lcom/douban/radio/app/Warning;->sendSwitchOnline()V
    invoke-static {v0}, Lcom/douban/radio/app/Warning;->access$600(Lcom/douban/radio/app/Warning;)V

    .line 197
    iget-object v0, p0, Lcom/douban/radio/app/Warning$8;->this$0:Lcom/douban/radio/app/Warning;

    const/4 v1, 0x0

    #setter for: Lcom/douban/radio/app/Warning;->quit:Z
    invoke-static {v0, v1}, Lcom/douban/radio/app/Warning;->access$102(Lcom/douban/radio/app/Warning;Z)Z

    .line 198
    iget-object v0, p0, Lcom/douban/radio/app/Warning$8;->this$0:Lcom/douban/radio/app/Warning;

    invoke-virtual {v0}, Lcom/douban/radio/app/Warning;->finish()V

    .line 199
    return-void
.end method
