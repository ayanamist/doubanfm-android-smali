.class Lcom/douban/radio/app/AboutActivity$App;
.super Ljava/lang/Object;
.source "AboutActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/douban/radio/app/AboutActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "App"
.end annotation


# instance fields
.field public icon:I

.field public packageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/douban/radio/app/AboutActivity;

.field public title:I


# direct methods
.method public constructor <init>(Lcom/douban/radio/app/AboutActivity;IILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter "i"
    .parameter "t"
    .parameter "p"

    .prologue
    .line 154
    iput-object p1, p0, Lcom/douban/radio/app/AboutActivity$App;->this$0:Lcom/douban/radio/app/AboutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    iput p2, p0, Lcom/douban/radio/app/AboutActivity$App;->icon:I

    .line 156
    iput p3, p0, Lcom/douban/radio/app/AboutActivity$App;->title:I

    .line 157
    iput-object p4, p0, Lcom/douban/radio/app/AboutActivity$App;->packageName:Ljava/lang/String;

    .line 158
    return-void
.end method
