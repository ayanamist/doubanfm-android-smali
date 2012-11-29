.class public Lcom/douban/radio/app/AboutActivity;
.super Lcom/douban/radio/app/FMActivity;
.source "AboutActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/douban/radio/app/AboutActivity$App;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AboutActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/douban/radio/app/FMActivity;-><init>()V

    .line 153
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v10, 0x0

    .line 36
    invoke-super {p0, p1}, Lcom/douban/radio/app/FMActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const/high16 v6, 0x7f03

    invoke-virtual {p0, v6}, Lcom/douban/radio/app/AboutActivity;->setContentView(I)V

    .line 39
    const v6, 0x7f08000f

    invoke-virtual {p0, v6}, Lcom/douban/radio/app/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 41
    .local v5, version:Landroid/widget/TextView;
    :try_start_0
    invoke-virtual {p0}, Lcom/douban/radio/app/AboutActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 42
    .local v4, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Lcom/douban/radio/app/AboutActivity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 43
    .local v3, info:Landroid/content/pm/PackageInfo;
    iget-object v6, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .end local v3           #info:Landroid/content/pm/PackageInfo;
    .end local v4           #pm:Landroid/content/pm/PackageManager;
    :goto_0
    const v6, 0x7f080011

    invoke-virtual {p0, v6}, Lcom/douban/radio/app/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 48
    .local v1, button:Landroid/widget/Button;
    new-instance v6, Lcom/douban/radio/app/AboutActivity$1;

    invoke-direct {v6, p0}, Lcom/douban/radio/app/AboutActivity$1;-><init>(Lcom/douban/radio/app/AboutActivity;)V

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    const/4 v6, 0x7

    new-array v0, v6, [Lcom/douban/radio/app/AboutActivity$App;

    new-instance v6, Lcom/douban/radio/app/AboutActivity$App;

    const v7, 0x7f020001

    const v8, 0x7f090102

    const-string v9, "com.douban.bookcart"

    invoke-direct {v6, p0, v7, v8, v9}, Lcom/douban/radio/app/AboutActivity$App;-><init>(Lcom/douban/radio/app/AboutActivity;IILjava/lang/String;)V

    aput-object v6, v0, v10

    const/4 v6, 0x1

    new-instance v7, Lcom/douban/radio/app/AboutActivity$App;

    const v8, 0x7f020005

    const v9, 0x7f090103

    const-string v10, "com.douban.movie"

    invoke-direct {v7, p0, v8, v9, v10}, Lcom/douban/radio/app/AboutActivity$App;-><init>(Lcom/douban/radio/app/AboutActivity;IILjava/lang/String;)V

    aput-object v7, v0, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/douban/radio/app/AboutActivity$App;

    const v8, 0x7f020003

    const v9, 0x7f090105

    const-string v10, "com.douban.event"

    invoke-direct {v7, p0, v8, v9, v10}, Lcom/douban/radio/app/AboutActivity$App;-><init>(Lcom/douban/radio/app/AboutActivity;IILjava/lang/String;)V

    aput-object v7, v0, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/douban/radio/app/AboutActivity$App;

    const v8, 0x7f020002

    const v9, 0x7f090106

    const-string v10, "com.douban.hobbiton"

    invoke-direct {v7, p0, v8, v9, v10}, Lcom/douban/radio/app/AboutActivity$App;-><init>(Lcom/douban/radio/app/AboutActivity;IILjava/lang/String;)V

    aput-object v7, v0, v6

    const/4 v6, 0x4

    new-instance v7, Lcom/douban/radio/app/AboutActivity$App;

    const v8, 0x7f020007

    const v9, 0x7f090107

    const-string v10, "com.douban.shuo"

    invoke-direct {v7, p0, v8, v9, v10}, Lcom/douban/radio/app/AboutActivity$App;-><init>(Lcom/douban/radio/app/AboutActivity;IILjava/lang/String;)V

    aput-object v7, v0, v6

    const/4 v6, 0x5

    new-instance v7, Lcom/douban/radio/app/AboutActivity$App;

    const/high16 v8, 0x7f02

    const v9, 0x7f090104

    const-string v10, "com.douban.artist"

    invoke-direct {v7, p0, v8, v9, v10}, Lcom/douban/radio/app/AboutActivity$App;-><init>(Lcom/douban/radio/app/AboutActivity;IILjava/lang/String;)V

    aput-object v7, v0, v6

    const/4 v6, 0x6

    new-instance v7, Lcom/douban/radio/app/AboutActivity$App;

    const v8, 0x7f020006

    const v9, 0x7f090108

    const-string v10, "Douban"

    invoke-direct {v7, p0, v8, v9, v10}, Lcom/douban/radio/app/AboutActivity$App;-><init>(Lcom/douban/radio/app/AboutActivity;IILjava/lang/String;)V

    aput-object v7, v0, v6

    .line 77
    .local v0, apps:[Lcom/douban/radio/app/AboutActivity$App;
    const v6, 0x7f080013

    invoke-virtual {p0, v6}, Lcom/douban/radio/app/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/GridView;

    .line 78
    .local v2, gv:Landroid/widget/GridView;
    new-instance v6, Lcom/douban/radio/app/AboutActivity$2;

    invoke-direct {v6, p0, v0}, Lcom/douban/radio/app/AboutActivity$2;-><init>(Lcom/douban/radio/app/AboutActivity;[Lcom/douban/radio/app/AboutActivity$App;)V

    invoke-virtual {v2, v6}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 105
    new-instance v6, Lcom/douban/radio/app/AboutActivity$3;

    invoke-direct {v6, p0, v0}, Lcom/douban/radio/app/AboutActivity$3;-><init>(Lcom/douban/radio/app/AboutActivity;[Lcom/douban/radio/app/AboutActivity$App;)V

    invoke-virtual {v2, v6}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 139
    return-void

    .line 44
    .end local v0           #apps:[Lcom/douban/radio/app/AboutActivity$App;
    .end local v1           #button:Landroid/widget/Button;
    .end local v2           #gv:Landroid/widget/GridView;
    :catch_0
    move-exception v6

    goto/16 :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 149
    invoke-super {p0}, Lcom/douban/radio/app/FMActivity;->onPause()V

    .line 150
    invoke-static {p0}, Lcom/mobclick/android/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 151
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 143
    invoke-super {p0}, Lcom/douban/radio/app/FMActivity;->onResume()V

    .line 144
    invoke-static {p0}, Lcom/mobclick/android/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 145
    return-void
.end method
