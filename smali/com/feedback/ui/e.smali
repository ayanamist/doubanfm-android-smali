.class Lcom/feedback/ui/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/feedback/ui/FeedbackConversations;


# direct methods
.method constructor <init>(Lcom/feedback/ui/FeedbackConversations;)V
    .locals 0

    iput-object p1, p0, Lcom/feedback/ui/e;->a:Lcom/feedback/ui/FeedbackConversations;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/feedback/ui/e;->a:Lcom/feedback/ui/FeedbackConversations;

    invoke-static {v0}, Lcom/feedback/b/a;->a(Landroid/content/Context;)V

    return-void
.end method
