.class Lcom/feedback/ui/b;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/feedback/ui/FeedbackConversation;


# direct methods
.method private constructor <init>(Lcom/feedback/ui/FeedbackConversation;)V
    .locals 0

    iput-object p1, p0, Lcom/feedback/ui/b;->a:Lcom/feedback/ui/FeedbackConversation;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/feedback/ui/FeedbackConversation;Lcom/feedback/ui/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/feedback/ui/b;-><init>(Lcom/feedback/ui/FeedbackConversation;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "feedback_id"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/feedback/ui/b;->a:Lcom/feedback/ui/FeedbackConversation;

    invoke-static {v1}, Lcom/feedback/ui/FeedbackConversation;->a(Lcom/feedback/ui/FeedbackConversation;)Lcom/feedback/a/d;

    move-result-object v1

    iget-object v1, v1, Lcom/feedback/a/d;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/feedback/ui/b;->a:Lcom/feedback/ui/FeedbackConversation;

    iget-object v2, p0, Lcom/feedback/ui/b;->a:Lcom/feedback/ui/FeedbackConversation;

    invoke-static {v2, v0}, Lcom/feedback/b/c;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/feedback/a/d;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/feedback/ui/FeedbackConversation;->a(Lcom/feedback/ui/FeedbackConversation;Lcom/feedback/a/d;)V

    iget-object v0, p0, Lcom/feedback/ui/b;->a:Lcom/feedback/ui/FeedbackConversation;

    invoke-static {v0}, Lcom/feedback/ui/FeedbackConversation;->b(Lcom/feedback/ui/FeedbackConversation;)Lcom/feedback/ui/c;

    move-result-object v0

    iget-object v1, p0, Lcom/feedback/ui/b;->a:Lcom/feedback/ui/FeedbackConversation;

    invoke-static {v1}, Lcom/feedback/ui/FeedbackConversation;->a(Lcom/feedback/ui/FeedbackConversation;)Lcom/feedback/a/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/feedback/ui/c;->a(Lcom/feedback/a/d;)V

    iget-object v0, p0, Lcom/feedback/ui/b;->a:Lcom/feedback/ui/FeedbackConversation;

    invoke-static {v0}, Lcom/feedback/ui/FeedbackConversation;->b(Lcom/feedback/ui/FeedbackConversation;)Lcom/feedback/ui/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/feedback/ui/c;->notifyDataSetChanged()V

    :cond_0
    iget-object v0, p0, Lcom/feedback/ui/b;->a:Lcom/feedback/ui/FeedbackConversation;

    invoke-static {v0}, Lcom/feedback/ui/FeedbackConversation;->a(Lcom/feedback/ui/FeedbackConversation;)Lcom/feedback/a/d;

    move-result-object v0

    iget-object v0, v0, Lcom/feedback/a/d;->b:Lcom/feedback/a/e;

    sget-object v1, Lcom/feedback/a/e;->c:Lcom/feedback/a/e;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/feedback/ui/b;->a:Lcom/feedback/ui/FeedbackConversation;

    invoke-static {v0}, Lcom/feedback/ui/FeedbackConversation;->c(Lcom/feedback/ui/FeedbackConversation;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/feedback/ui/b;->a:Lcom/feedback/ui/FeedbackConversation;

    invoke-static {v0}, Lcom/feedback/ui/FeedbackConversation;->d(Lcom/feedback/ui/FeedbackConversation;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/feedback/ui/b;->a:Lcom/feedback/ui/FeedbackConversation;

    invoke-static {v0}, Lcom/feedback/ui/FeedbackConversation;->c(Lcom/feedback/ui/FeedbackConversation;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/feedback/ui/b;->a:Lcom/feedback/ui/FeedbackConversation;

    invoke-static {v0}, Lcom/feedback/ui/FeedbackConversation;->d(Lcom/feedback/ui/FeedbackConversation;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
