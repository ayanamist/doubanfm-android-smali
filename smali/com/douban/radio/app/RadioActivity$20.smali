.class Lcom/douban/radio/app/RadioActivity$20;
.super Ljava/lang/Object;
.source "RadioActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/douban/radio/app/RadioActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/douban/radio/app/RadioActivity;


# direct methods
.method constructor <init>(Lcom/douban/radio/app/RadioActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1055
    iput-object p1, p0, Lcom/douban/radio/app/RadioActivity$20;->this$0:Lcom/douban/radio/app/RadioActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    .line 1059
    iget-object v0, p0, Lcom/douban/radio/app/RadioActivity$20;->this$0:Lcom/douban/radio/app/RadioActivity;

    #getter for: Lcom/douban/radio/app/RadioActivity;->fmsp:Lfm/douban/model/FMSharedPreferences;
    invoke-static {v0}, Lcom/douban/radio/app/RadioActivity;->access$1800(Lcom/douban/radio/app/RadioActivity;)Lfm/douban/model/FMSharedPreferences;

    move-result-object v0

    const-string v1, "new_user_guidance"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lfm/douban/model/FMSharedPreferences;->putBoolean(Ljava/lang/String;Z)Z

    .line 1060
    return-void
.end method
