.class Lcom/feedback/ui/f;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field a:Lcom/feedback/ui/g;

.field final synthetic b:Lcom/feedback/ui/FeedbackConversations;


# direct methods
.method public constructor <init>(Lcom/feedback/ui/FeedbackConversations;Lcom/feedback/ui/g;)V
    .locals 0

    iput-object p1, p0, Lcom/feedback/ui/f;->b:Lcom/feedback/ui/FeedbackConversations;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p2, p0, Lcom/feedback/ui/f;->a:Lcom/feedback/ui/g;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/feedback/ui/f;->b:Lcom/feedback/ui/FeedbackConversations;

    invoke-static {v0}, Lcom/feedback/b/c;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/feedback/ui/f;->a:Lcom/feedback/ui/g;

    invoke-virtual {v1, v0}, Lcom/feedback/ui/g;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/feedback/ui/f;->a:Lcom/feedback/ui/g;

    invoke-virtual {v0}, Lcom/feedback/ui/g;->notifyDataSetChanged()V

    return-void
.end method
