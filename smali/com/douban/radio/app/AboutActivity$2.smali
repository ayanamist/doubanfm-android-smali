.class Lcom/douban/radio/app/AboutActivity$2;
.super Ljava/lang/Object;
.source "AboutActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/douban/radio/app/AboutActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/douban/radio/app/AboutActivity;

.field final synthetic val$apps:[Lcom/douban/radio/app/AboutActivity$App;


# direct methods
.method constructor <init>(Lcom/douban/radio/app/AboutActivity;[Lcom/douban/radio/app/AboutActivity$App;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/douban/radio/app/AboutActivity$2;->this$0:Lcom/douban/radio/app/AboutActivity;

    iput-object p2, p0, Lcom/douban/radio/app/AboutActivity$2;->val$apps:[Lcom/douban/radio/app/AboutActivity$App;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const v5, 0x7f090108

    .line 84
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 85
    .local v1, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/douban/radio/app/AboutActivity$2;->val$apps:[Lcom/douban/radio/app/AboutActivity$App;

    aget-object v3, v3, p3

    iget v3, v3, Lcom/douban/radio/app/AboutActivity$App;->title:I

    if-ne v3, v5, :cond_0

    .line 86
    const-string v3, "market://search?q=pub:Douban"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 89
    :goto_0
    iget-object v3, p0, Lcom/douban/radio/app/AboutActivity$2;->this$0:Lcom/douban/radio/app/AboutActivity;

    invoke-virtual {v3, v1}, Lcom/douban/radio/app/AboutActivity;->startActivity(Landroid/content/Intent;)V

    .line 103
    :goto_1
    return-void

    .line 88
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "market://details?id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/douban/radio/app/AboutActivity$2;->val$apps:[Lcom/douban/radio/app/AboutActivity$App;

    aget-object v4, v4, p3

    iget-object v4, v4, Lcom/douban/radio/app/AboutActivity$App;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 90
    .end local v1           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 91
    .local v0, e:Landroid/content/ActivityNotFoundException;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 92
    .restart local v1       #intent:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 93
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    const-string v3, "android.intent.category.BROWSABLE"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://market.android.com/details?id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/douban/radio/app/AboutActivity$2;->val$apps:[Lcom/douban/radio/app/AboutActivity$App;

    aget-object v4, v4, p3

    iget-object v4, v4, Lcom/douban/radio/app/AboutActivity$App;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 97
    .local v2, url:Ljava/lang/String;
    iget-object v3, p0, Lcom/douban/radio/app/AboutActivity$2;->val$apps:[Lcom/douban/radio/app/AboutActivity$App;

    aget-object v3, v3, p3

    iget v3, v3, Lcom/douban/radio/app/AboutActivity$App;->title:I

    if-ne v3, v5, :cond_1

    .line 98
    const-string v2, "https://market.android.com/search?q=pub:Douban"

    .line 100
    :cond_1
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 101
    iget-object v3, p0, Lcom/douban/radio/app/AboutActivity$2;->this$0:Lcom/douban/radio/app/AboutActivity;

    invoke-virtual {v3, v1}, Lcom/douban/radio/app/AboutActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method
