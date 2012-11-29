.class Lcom/douban/radio/app/RegisterActivity$4;
.super Ljava/lang/Object;
.source "RegisterActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/douban/radio/app/RegisterActivity;->register(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/douban/radio/app/RegisterActivity;


# direct methods
.method constructor <init>(Lcom/douban/radio/app/RegisterActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, Lcom/douban/radio/app/RegisterActivity$4;->this$0:Lcom/douban/radio/app/RegisterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/douban/radio/app/RegisterActivity$4;->this$0:Lcom/douban/radio/app/RegisterActivity;

    invoke-virtual {v0}, Lcom/douban/radio/app/RegisterActivity;->finish()V

    .line 157
    return-void
.end method
