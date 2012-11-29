.class Lcom/douban/radio/app/SettingActivity$2$1;
.super Landroid/os/AsyncTask;
.source "SettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/douban/radio/app/SettingActivity$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/douban/radio/app/SettingActivity$2;


# direct methods
.method constructor <init>(Lcom/douban/radio/app/SettingActivity$2;)V
    .locals 0
    .parameter

    .prologue
    .line 186
    iput-object p1, p0, Lcom/douban/radio/app/SettingActivity$2$1;->this$1:Lcom/douban/radio/app/SettingActivity$2;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 186
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/douban/radio/app/SettingActivity$2$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .parameter "params"

    .prologue
    .line 194
    iget-object v0, p0, Lcom/douban/radio/app/SettingActivity$2$1;->this$1:Lcom/douban/radio/app/SettingActivity$2;

    iget-object v0, v0, Lcom/douban/radio/app/SettingActivity$2;->this$0:Lcom/douban/radio/app/SettingActivity;

    #getter for: Lcom/douban/radio/app/SettingActivity;->rm:Lfm/douban/controller/RadioManager;
    invoke-static {v0}, Lcom/douban/radio/app/SettingActivity;->access$100(Lcom/douban/radio/app/SettingActivity;)Lfm/douban/controller/RadioManager;

    move-result-object v0

    invoke-virtual {v0}, Lfm/douban/controller/RadioManager;->getSongManager()Lfm/douban/controller/SongManager;

    move-result-object v0

    invoke-virtual {v0}, Lfm/douban/controller/SongManager;->clearup()V

    .line 195
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 186
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/douban/radio/app/SettingActivity$2$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/douban/radio/app/SettingActivity$2$1;->this$1:Lcom/douban/radio/app/SettingActivity$2;

    iget-object v0, v0, Lcom/douban/radio/app/SettingActivity$2;->this$0:Lcom/douban/radio/app/SettingActivity;

    #getter for: Lcom/douban/radio/app/SettingActivity;->clearCache:Landroid/widget/Button;
    invoke-static {v0}, Lcom/douban/radio/app/SettingActivity;->access$400(Lcom/douban/radio/app/SettingActivity;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f09005f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 201
    iget-object v0, p0, Lcom/douban/radio/app/SettingActivity$2$1;->this$1:Lcom/douban/radio/app/SettingActivity$2;

    iget-object v0, v0, Lcom/douban/radio/app/SettingActivity$2;->this$0:Lcom/douban/radio/app/SettingActivity;

    #getter for: Lcom/douban/radio/app/SettingActivity;->clearCache:Landroid/widget/Button;
    invoke-static {v0}, Lcom/douban/radio/app/SettingActivity;->access$400(Lcom/douban/radio/app/SettingActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 202
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/douban/radio/app/SettingActivity$2$1;->this$1:Lcom/douban/radio/app/SettingActivity$2;

    iget-object v0, v0, Lcom/douban/radio/app/SettingActivity$2;->this$0:Lcom/douban/radio/app/SettingActivity;

    #getter for: Lcom/douban/radio/app/SettingActivity;->clearCache:Landroid/widget/Button;
    invoke-static {v0}, Lcom/douban/radio/app/SettingActivity;->access$400(Lcom/douban/radio/app/SettingActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 190
    return-void
.end method
