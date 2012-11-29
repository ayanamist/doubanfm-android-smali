.class Lcom/douban/radio/app/AboutActivity$3;
.super Landroid/widget/BaseAdapter;
.source "AboutActivity.java"


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
    .line 105
    iput-object p1, p0, Lcom/douban/radio/app/AboutActivity$3;->this$0:Lcom/douban/radio/app/AboutActivity;

    iput-object p2, p0, Lcom/douban/radio/app/AboutActivity$3;->val$apps:[Lcom/douban/radio/app/AboutActivity$App;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/douban/radio/app/AboutActivity$3;->val$apps:[Lcom/douban/radio/app/AboutActivity$App;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/douban/radio/app/AboutActivity$3;->val$apps:[Lcom/douban/radio/app/AboutActivity$App;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/douban/radio/app/AboutActivity$3;->val$apps:[Lcom/douban/radio/app/AboutActivity$App;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/douban/radio/app/AboutActivity$App;->icon:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v8, -0x2

    .line 109
    iget-object v5, p0, Lcom/douban/radio/app/AboutActivity$3;->this$0:Lcom/douban/radio/app/AboutActivity;

    invoke-virtual {v5}, Lcom/douban/radio/app/AboutActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f03000e

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 111
    .local v4, v:Landroid/view/View;
    const v5, 0x1020006

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 112
    .local v0, iv:Landroid/widget/ImageView;
    const/4 v2, 0x5

    .line 114
    .local v2, radius:I
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 116
    .local v1, lp:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 117
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    iget-object v5, p0, Lcom/douban/radio/app/AboutActivity$3;->val$apps:[Lcom/douban/radio/app/AboutActivity$App;

    aget-object v5, v5, p1

    iget v5, v5, Lcom/douban/radio/app/AboutActivity$App;->icon:I

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 119
    const v5, 0x1020016

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 120
    .local v3, tv:Landroid/widget/TextView;
    iget-object v5, p0, Lcom/douban/radio/app/AboutActivity$3;->val$apps:[Lcom/douban/radio/app/AboutActivity$App;

    aget-object v5, v5, p1

    iget v5, v5, Lcom/douban/radio/app/AboutActivity$App;->title:I

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 121
    return-object v4
.end method
