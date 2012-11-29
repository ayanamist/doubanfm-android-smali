.class public Lcom/feedback/ui/FeedbackConversation;
.super Landroid/app/ListActivity;


# static fields
.field static a:Landroid/content/Context;

.field static final c:Ljava/lang/String;

.field static d:Z

.field public static executorService:Ljava/util/concurrent/ExecutorService;


# instance fields
.field b:Z

.field private e:Lcom/feedback/a/d;

.field private f:Lcom/feedback/ui/c;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/EditText;

.field private i:Landroid/widget/Button;

.field private j:Lcom/feedback/ui/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/feedback/ui/FeedbackConversation;->a:Landroid/content/Context;

    const-class v0, Lcom/feedback/ui/FeedbackConversation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/feedback/ui/FeedbackConversation;->c:Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/feedback/ui/FeedbackConversation;->d:Z

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/feedback/ui/FeedbackConversation;->executorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/feedback/ui/FeedbackConversation;->b:Z

    return-void
.end method

.method static synthetic a(Lcom/feedback/ui/FeedbackConversation;)Lcom/feedback/a/d;
    .locals 1

    iget-object v0, p0, Lcom/feedback/ui/FeedbackConversation;->e:Lcom/feedback/a/d;

    return-object v0
.end method

.method private a()V
    .locals 3

    iget-object v0, p0, Lcom/feedback/ui/FeedbackConversation;->g:Landroid/widget/TextView;

    const-string v1, "string"

    const-string v2, "UMFeedbackConversationTitle"

    invoke-static {p0, v1, v2}, Lcom/mobclick/android/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/feedback/ui/FeedbackConversation;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/feedback/ui/FeedbackConversation;->i:Landroid/widget/Button;

    const-string v1, "string"

    const-string v2, "UMFeedbackSummit"

    invoke-static {p0, v1, v2}, Lcom/mobclick/android/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/feedback/ui/FeedbackConversation;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic a(Lcom/feedback/ui/FeedbackConversation;Lcom/feedback/a/d;)V
    .locals 0

    iput-object p1, p0, Lcom/feedback/ui/FeedbackConversation;->e:Lcom/feedback/a/d;

    return-void
.end method

.method static synthetic b(Lcom/feedback/ui/FeedbackConversation;)Lcom/feedback/ui/c;
    .locals 1

    iget-object v0, p0, Lcom/feedback/ui/FeedbackConversation;->f:Lcom/feedback/ui/c;

    return-object v0
.end method

.method static synthetic c(Lcom/feedback/ui/FeedbackConversation;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/feedback/ui/FeedbackConversation;->h:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic d(Lcom/feedback/ui/FeedbackConversation;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/feedback/ui/FeedbackConversation;->i:Landroid/widget/Button;

    return-object v0
.end method

.method public static setUserContext(Landroid/content/Context;)V
    .locals 0

    sput-object p0, Lcom/feedback/ui/FeedbackConversation;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/feedback/ui/FeedbackConversation;->requestWindowFeature(I)Z

    const-string v0, "layout"

    const-string v1, "umeng_analyse_feedback_conversation"

    invoke-static {p0, v0, v1}, Lcom/mobclick/android/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/feedback/ui/FeedbackConversation;->setContentView(I)V

    invoke-virtual {p0}, Lcom/feedback/ui/FeedbackConversation;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "feedback_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0, v0}, Lcom/feedback/b/c;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/feedback/a/d;

    move-result-object v0

    iput-object v0, p0, Lcom/feedback/ui/FeedbackConversation;->e:Lcom/feedback/a/d;

    :cond_0
    :try_start_0
    new-instance v0, Lcom/feedback/ui/c;

    iget-object v1, p0, Lcom/feedback/ui/FeedbackConversation;->e:Lcom/feedback/a/d;

    invoke-direct {v0, p0, v1}, Lcom/feedback/ui/c;-><init>(Landroid/content/Context;Lcom/feedback/a/d;)V

    iput-object v0, p0, Lcom/feedback/ui/FeedbackConversation;->f:Lcom/feedback/ui/c;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/feedback/ui/FeedbackConversation;->f:Lcom/feedback/ui/c;

    invoke-virtual {p0, v0}, Lcom/feedback/ui/FeedbackConversation;->setListAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/feedback/ui/FeedbackConversation;->f:Lcom/feedback/ui/c;

    invoke-virtual {v0}, Lcom/feedback/ui/c;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/feedback/ui/FeedbackConversation;->setSelection(I)V

    const-string v0, "id"

    const-string v1, "umeng_analyse_feedback_conversation_title"

    invoke-static {p0, v0, v1}, Lcom/mobclick/android/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/feedback/ui/FeedbackConversation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/feedback/ui/FeedbackConversation;->g:Landroid/widget/TextView;

    const-string v0, "id"

    const-string v1, "umeng_analyse_editTxtFb"

    invoke-static {p0, v0, v1}, Lcom/mobclick/android/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/feedback/ui/FeedbackConversation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/feedback/ui/FeedbackConversation;->h:Landroid/widget/EditText;

    const-string v0, "id"

    const-string v1, "umeng_analyse_btnSendFb"

    invoke-static {p0, v0, v1}, Lcom/mobclick/android/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/feedback/ui/FeedbackConversation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/feedback/ui/FeedbackConversation;->i:Landroid/widget/Button;

    iget-object v0, p0, Lcom/feedback/ui/FeedbackConversation;->i:Landroid/widget/Button;

    new-instance v1, Lcom/feedback/ui/a;

    invoke-direct {v1, p0}, Lcom/feedback/ui/a;-><init>(Lcom/feedback/ui/FeedbackConversation;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/feedback/ui/FeedbackConversation;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    invoke-virtual {p0}, Lcom/feedback/ui/FeedbackConversation;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/feedback/ui/FeedbackConversation;->registerForContextMenu(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/feedback/ui/FeedbackConversation;->a()V

    iget-object v0, p0, Lcom/feedback/ui/FeedbackConversation;->e:Lcom/feedback/a/d;

    iget-object v0, v0, Lcom/feedback/a/d;->b:Lcom/feedback/a/e;

    sget-object v1, Lcom/feedback/a/e;->c:Lcom/feedback/a/e;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/feedback/ui/FeedbackConversation;->h:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/feedback/ui/FeedbackConversation;->i:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-object v0, Lcom/feedback/ui/FeedbackConversation;->c:Ljava/lang/String;

    const-string v1, "In Feedback class,fail to initialize feedback adapter."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/feedback/ui/FeedbackConversation;->finish()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/feedback/ui/FeedbackConversation;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/feedback/ui/FeedbackConversation;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/feedback/b/a;->b(Landroid/content/Context;)V

    :goto_0
    invoke-virtual {p0}, Lcom/feedback/ui/FeedbackConversation;->finish()V

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    invoke-static {p0}, Lcom/feedback/b/a;->b(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 3

    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    iget-object v0, p0, Lcom/feedback/ui/FeedbackConversation;->e:Lcom/feedback/a/d;

    invoke-virtual {v0, p3}, Lcom/feedback/a/d;->a(I)Lcom/feedback/a/a;

    move-result-object v0

    iget-object v1, v0, Lcom/feedback/a/a;->g:Lcom/feedback/a/b;

    sget-object v2, Lcom/feedback/a/b;->b:Lcom/feedback/a/b;

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Lcom/feedback/a/a;->f:Lcom/feedback/a/c;

    sget-object v2, Lcom/feedback/a/c;->a:Lcom/feedback/a/c;

    if-ne v1, v2, :cond_1

    iget-object v0, p0, Lcom/feedback/ui/FeedbackConversation;->e:Lcom/feedback/a/d;

    invoke-static {p0, v0}, Lcom/feedback/b/a;->a(Landroid/content/Context;Lcom/feedback/a/d;)V

    invoke-virtual {p0}, Lcom/feedback/ui/FeedbackConversation;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/feedback/a/a;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/feedback/ui/FeedbackConversation;->h:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/feedback/ui/FeedbackConversation;->e:Lcom/feedback/a/d;

    invoke-static {p0, v0, p3}, Lcom/feedback/b/c;->a(Landroid/content/Context;Lcom/feedback/a/d;I)V

    iget-object v0, p0, Lcom/feedback/ui/FeedbackConversation;->f:Lcom/feedback/ui/c;

    iget-object v1, p0, Lcom/feedback/ui/FeedbackConversation;->e:Lcom/feedback/a/d;

    invoke-virtual {v0, v1}, Lcom/feedback/ui/c;->a(Lcom/feedback/a/d;)V

    iget-object v0, p0, Lcom/feedback/ui/FeedbackConversation;->f:Lcom/feedback/ui/c;

    invoke-virtual {v0}, Lcom/feedback/ui/c;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 2

    invoke-super {p0}, Landroid/app/ListActivity;->onStart()V

    new-instance v0, Lcom/feedback/ui/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/feedback/ui/b;-><init>(Lcom/feedback/ui/FeedbackConversation;Lcom/feedback/ui/b;)V

    iput-object v0, p0, Lcom/feedback/ui/FeedbackConversation;->j:Lcom/feedback/ui/b;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "postFeedbackFinished"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "RetrieveReplyBroadcast"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/feedback/ui/FeedbackConversation;->j:Lcom/feedback/ui/b;

    invoke-virtual {p0, v1, v0}, Lcom/feedback/ui/FeedbackConversation;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    iget-object v0, p0, Lcom/feedback/ui/FeedbackConversation;->j:Lcom/feedback/ui/b;

    invoke-virtual {p0, v0}, Lcom/feedback/ui/FeedbackConversation;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
