.class Lcom/douban/radio/app/ShareActivity$4;
.super Landroid/content/BroadcastReceiver;
.source "ShareActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/douban/radio/app/ShareActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/douban/radio/app/ShareActivity;


# direct methods
.method constructor <init>(Lcom/douban/radio/app/ShareActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 213
    iput-object p1, p0, Lcom/douban/radio/app/ShareActivity$4;->this$0:Lcom/douban/radio/app/ShareActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 217
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, action:Ljava/lang/String;
    const-string v6, "fm.douban.action_share_done"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 219
    iget-object v6, p0, Lcom/douban/radio/app/ShareActivity$4;->this$0:Lcom/douban/radio/app/ShareActivity;

    #getter for: Lcom/douban/radio/app/ShareActivity;->shareMask:Landroid/view/View;
    invoke-static {v6}, Lcom/douban/radio/app/ShareActivity;->access$600(Lcom/douban/radio/app/ShareActivity;)Landroid/view/View;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 220
    iget-object v6, p0, Lcom/douban/radio/app/ShareActivity$4;->this$0:Lcom/douban/radio/app/ShareActivity;

    #getter for: Lcom/douban/radio/app/ShareActivity;->shareContent:Landroid/widget/EditText;
    invoke-static {v6}, Lcom/douban/radio/app/ShareActivity;->access$700(Lcom/douban/radio/app/ShareActivity;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 221
    iget-object v6, p0, Lcom/douban/radio/app/ShareActivity$4;->this$0:Lcom/douban/radio/app/ShareActivity;

    #getter for: Lcom/douban/radio/app/ShareActivity;->shareButton:Landroid/widget/Button;
    invoke-static {v6}, Lcom/douban/radio/app/ShareActivity;->access$200(Lcom/douban/radio/app/ShareActivity;)Landroid/widget/Button;

    move-result-object v6

    const v7, 0x7f0900d0

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(I)V

    .line 222
    iget-object v6, p0, Lcom/douban/radio/app/ShareActivity$4;->this$0:Lcom/douban/radio/app/ShareActivity;

    #getter for: Lcom/douban/radio/app/ShareActivity;->shareButton:Landroid/widget/Button;
    invoke-static {v6}, Lcom/douban/radio/app/ShareActivity;->access$200(Lcom/douban/radio/app/ShareActivity;)Landroid/widget/Button;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 223
    const-string v6, "err"

    invoke-virtual {p2, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 224
    .local v4, result:I
    const-string v6, "resource_id"

    invoke-virtual {p2, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 226
    .local v3, resId:I
    if-nez v4, :cond_1

    .line 227
    const v6, 0x7f0900dc

    invoke-static {p1, v6, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 228
    iget-object v6, p0, Lcom/douban/radio/app/ShareActivity$4;->this$0:Lcom/douban/radio/app/ShareActivity;

    invoke-virtual {v6}, Lcom/douban/radio/app/ShareActivity;->finish()V

    .line 245
    .end local v3           #resId:I
    .end local v4           #result:I
    :cond_0
    :goto_0
    return-void

    .line 230
    .restart local v3       #resId:I
    .restart local v4       #result:I
    :cond_1
    const-string v1, ""

    .line 231
    .local v1, failstr:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 232
    .local v5, sb:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    const/4 v6, 0x4

    if-ge v2, v6, :cond_3

    .line 233
    ushr-int v6, v4, v2

    rem-int/lit8 v6, v6, 0x2

    if-ne v6, v8, :cond_2

    .line 234
    iget-object v6, p0, Lcom/douban/radio/app/ShareActivity$4;->this$0:Lcom/douban/radio/app/ShareActivity;

    invoke-virtual {v6}, Lcom/douban/radio/app/ShareActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget-object v7, Lcom/douban/radio/app/ShareActivity;->SHARE_FAIL_STR_RESID:[I

    aget v7, v7, v2

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 235
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 239
    :cond_3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 242
    iget-object v6, p0, Lcom/douban/radio/app/ShareActivity$4;->this$0:Lcom/douban/radio/app/ShareActivity;

    #calls: Lcom/douban/radio/app/ShareActivity;->setShareButtonState()V
    invoke-static {v6}, Lcom/douban/radio/app/ShareActivity;->access$800(Lcom/douban/radio/app/ShareActivity;)V

    goto :goto_0
.end method
