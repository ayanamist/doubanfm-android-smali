.class Lcom/douban/radio/app/ChannelSelector$1;
.super Ljava/lang/Object;
.source "ChannelSelector.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/douban/radio/app/ChannelSelector;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/douban/radio/app/ChannelSelector;


# direct methods
.method constructor <init>(Lcom/douban/radio/app/ChannelSelector;)V
    .locals 0
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, Lcom/douban/radio/app/ChannelSelector$1;->this$0:Lcom/douban/radio/app/ChannelSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "v"
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
    .line 165
    .local p1, listview:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/douban/radio/app/ChannelSelector$1;->this$0:Lcom/douban/radio/app/ChannelSelector;

    iget-object v1, p0, Lcom/douban/radio/app/ChannelSelector$1;->this$0:Lcom/douban/radio/app/ChannelSelector;

    #getter for: Lcom/douban/radio/app/ChannelSelector;->channels:[Lfm/douban/model/Channel;
    invoke-static {v1}, Lcom/douban/radio/app/ChannelSelector;->access$000(Lcom/douban/radio/app/ChannelSelector;)[Lfm/douban/model/Channel;

    move-result-object v1

    long-to-int v2, p4

    aget-object v1, v1, v2

    iget-object v1, v1, Lfm/douban/model/Channel;->channel_id:Ljava/lang/String;

    #calls: Lcom/douban/radio/app/ChannelSelector;->select(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/douban/radio/app/ChannelSelector;->access$100(Lcom/douban/radio/app/ChannelSelector;Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/douban/radio/app/ChannelSelector$1;->this$0:Lcom/douban/radio/app/ChannelSelector;

    #calls: Lcom/douban/radio/app/ChannelSelector;->back()V
    invoke-static {v0}, Lcom/douban/radio/app/ChannelSelector;->access$200(Lcom/douban/radio/app/ChannelSelector;)V

    .line 167
    return-void
.end method
