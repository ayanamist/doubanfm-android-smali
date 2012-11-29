.class Lcom/feedback/ui/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/feedback/ui/FeedbackConversation;


# direct methods
.method constructor <init>(Lcom/feedback/ui/FeedbackConversation;)V
    .locals 0

    iput-object p1, p0, Lcom/feedback/ui/a;->a:Lcom/feedback/ui/FeedbackConversation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/feedback/ui/a;->a:Lcom/feedback/ui/FeedbackConversation;

    invoke-static {v0}, Lcom/feedback/ui/FeedbackConversation;->c(Lcom/feedback/ui/FeedbackConversation;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x8c

    if-le v0, v2, :cond_2

    iget-object v0, p0, Lcom/feedback/ui/a;->a:Lcom/feedback/ui/FeedbackConversation;

    iget-object v1, p0, Lcom/feedback/ui/a;->a:Lcom/feedback/ui/FeedbackConversation;

    iget-object v2, p0, Lcom/feedback/ui/a;->a:Lcom/feedback/ui/FeedbackConversation;

    const-string v3, "string"

    const-string v4, "UMContentTooLong"

    invoke-static {v2, v3, v4}, Lcom/mobclick/android/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/feedback/ui/FeedbackConversation;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/feedback/ui/a;->a:Lcom/feedback/ui/FeedbackConversation;

    iget-object v3, p0, Lcom/feedback/ui/a;->a:Lcom/feedback/ui/FeedbackConversation;

    invoke-static {v3}, Lcom/feedback/ui/FeedbackConversation;->a(Lcom/feedback/ui/FeedbackConversation;)Lcom/feedback/a/d;

    move-result-object v3

    iget-object v3, v3, Lcom/feedback/a/d;->c:Ljava/lang/String;

    invoke-static {v2, v1, v3}, Lcom/feedback/b/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    :goto_1
    iget-object v0, p0, Lcom/feedback/ui/a;->a:Lcom/feedback/ui/FeedbackConversation;

    invoke-static {v0}, Lcom/feedback/ui/FeedbackConversation;->c(Lcom/feedback/ui/FeedbackConversation;)Landroid/widget/EditText;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/feedback/ui/a;->a:Lcom/feedback/ui/FeedbackConversation;

    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Lcom/feedback/ui/FeedbackConversation;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/feedback/ui/a;->a:Lcom/feedback/ui/FeedbackConversation;

    invoke-static {v2}, Lcom/feedback/ui/FeedbackConversation;->c(Lcom/feedback/ui/FeedbackConversation;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v0, p0, Lcom/feedback/ui/a;->a:Lcom/feedback/ui/FeedbackConversation;

    invoke-static {v0, v1}, Lcom/feedback/b/c;->c(Landroid/content/Context;Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/feedback/ui/a;->a:Lcom/feedback/ui/FeedbackConversation;

    iget-object v2, p0, Lcom/feedback/ui/a;->a:Lcom/feedback/ui/FeedbackConversation;

    iget-object v3, p0, Lcom/feedback/ui/a;->a:Lcom/feedback/ui/FeedbackConversation;

    invoke-static {v3}, Lcom/feedback/ui/FeedbackConversation;->a(Lcom/feedback/ui/FeedbackConversation;)Lcom/feedback/a/d;

    move-result-object v3

    iget-object v3, v3, Lcom/feedback/a/d;->c:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/feedback/b/c;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/feedback/a/d;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/feedback/ui/FeedbackConversation;->a(Lcom/feedback/ui/FeedbackConversation;Lcom/feedback/a/d;)V

    iget-object v0, p0, Lcom/feedback/ui/a;->a:Lcom/feedback/ui/FeedbackConversation;

    invoke-static {v0}, Lcom/feedback/ui/FeedbackConversation;->b(Lcom/feedback/ui/FeedbackConversation;)Lcom/feedback/ui/c;

    move-result-object v0

    iget-object v2, p0, Lcom/feedback/ui/a;->a:Lcom/feedback/ui/FeedbackConversation;

    invoke-static {v2}, Lcom/feedback/ui/FeedbackConversation;->a(Lcom/feedback/ui/FeedbackConversation;)Lcom/feedback/a/d;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/feedback/ui/c;->a(Lcom/feedback/a/d;)V

    iget-object v0, p0, Lcom/feedback/ui/a;->a:Lcom/feedback/ui/FeedbackConversation;

    invoke-static {v0}, Lcom/feedback/ui/FeedbackConversation;->b(Lcom/feedback/ui/FeedbackConversation;)Lcom/feedback/ui/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/feedback/ui/c;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/feedback/ui/a;->a:Lcom/feedback/ui/FeedbackConversation;

    iget-object v2, p0, Lcom/feedback/ui/a;->a:Lcom/feedback/ui/FeedbackConversation;

    invoke-static {v2}, Lcom/feedback/ui/FeedbackConversation;->b(Lcom/feedback/ui/FeedbackConversation;)Lcom/feedback/ui/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/feedback/ui/c;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Lcom/feedback/ui/FeedbackConversation;->setSelection(I)V

    new-instance v0, Lcom/feedback/c/c;

    iget-object v2, p0, Lcom/feedback/ui/a;->a:Lcom/feedback/ui/FeedbackConversation;

    invoke-direct {v0, v1, v2}, Lcom/feedback/c/c;-><init>(Lorg/json/JSONObject;Landroid/content/Context;)V

    sget-object v1, Lcom/feedback/ui/FeedbackConversation;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    goto/16 :goto_0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/feedback/ui/a;->a:Lcom/feedback/ui/FeedbackConversation;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    iget-object v2, p0, Lcom/feedback/ui/a;->a:Lcom/feedback/ui/FeedbackConversation;

    invoke-static {v2, v0}, Lcom/feedback/b/c;->d(Landroid/content/Context;Lorg/json/JSONObject;)V

    sget-object v2, Lcom/feedback/ui/FeedbackConversation;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    goto/16 :goto_1
.end method
