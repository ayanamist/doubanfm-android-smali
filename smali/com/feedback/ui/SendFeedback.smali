.class public Lcom/feedback/ui/SendFeedback;
.super Landroid/app/Activity;


# static fields
.field static a:Z


# instance fields
.field private b:Landroid/widget/Spinner;

.field private c:Landroid/widget/Spinner;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/ImageButton;

.field private h:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/feedback/ui/SendFeedback;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/feedback/ui/SendFeedback;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/feedback/ui/SendFeedback;->d:Landroid/widget/EditText;

    return-object v0
.end method

.method private a()V
    .locals 6

    const v5, 0x1090009

    const v4, 0x1090008

    const-string v0, "id"

    const-string v1, "umeng_analyse_feedback_age_spinner"

    invoke-static {p0, v0, v1}, Lcom/mobclick/android/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/feedback/ui/SendFeedback;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/feedback/ui/SendFeedback;->b:Landroid/widget/Spinner;

    const-string v0, "id"

    const-string v1, "umeng_analyse_feedback_gender_spinner"

    invoke-static {p0, v0, v1}, Lcom/mobclick/android/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/feedback/ui/SendFeedback;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/feedback/ui/SendFeedback;->c:Landroid/widget/Spinner;

    const-string v0, "id"

    const-string v1, "umeng_analyse_feedback_submit"

    invoke-static {p0, v0, v1}, Lcom/mobclick/android/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/feedback/ui/SendFeedback;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/feedback/ui/SendFeedback;->e:Landroid/widget/TextView;

    const-string v0, "id"

    const-string v1, "umeng_analyse_feedback_content"

    invoke-static {p0, v0, v1}, Lcom/mobclick/android/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/feedback/ui/SendFeedback;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/feedback/ui/SendFeedback;->d:Landroid/widget/EditText;

    const-string v0, "id"

    const-string v1, "umeng_analyse_feedback_umeng_title"

    invoke-static {p0, v0, v1}, Lcom/mobclick/android/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/feedback/ui/SendFeedback;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/feedback/ui/SendFeedback;->f:Landroid/widget/TextView;

    const-string v0, "id"

    const-string v1, "umeng_analyse_feedback_see_list_btn"

    invoke-static {p0, v0, v1}, Lcom/mobclick/android/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/feedback/ui/SendFeedback;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/feedback/ui/SendFeedback;->g:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/feedback/ui/SendFeedback;->b:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/feedback/ui/SendFeedback;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "array"

    const-string v3, "UMageList"

    invoke-static {p0, v2, v3}, Lcom/mobclick/android/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v4, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v0, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v1, p0, Lcom/feedback/ui/SendFeedback;->b:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    :cond_0
    iget-object v0, p0, Lcom/feedback/ui/SendFeedback;->c:Landroid/widget/Spinner;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/feedback/ui/SendFeedback;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "array"

    const-string v3, "UMgenderList"

    invoke-static {p0, v2, v3}, Lcom/mobclick/android/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v4, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v0, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v1, p0, Lcom/feedback/ui/SendFeedback;->c:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    :cond_1
    iget-object v0, p0, Lcom/feedback/ui/SendFeedback;->g:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/feedback/ui/SendFeedback;->g:Landroid/widget/ImageButton;

    new-instance v1, Lcom/feedback/ui/i;

    invoke-direct {v1, p0}, Lcom/feedback/ui/i;-><init>(Lcom/feedback/ui/SendFeedback;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    invoke-direct {p0}, Lcom/feedback/ui/SendFeedback;->b()V

    invoke-direct {p0}, Lcom/feedback/ui/SendFeedback;->c()V

    return-void
.end method

.method static synthetic a(Lcom/feedback/ui/SendFeedback;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/feedback/ui/SendFeedback;->h:Lorg/json/JSONObject;

    return-void
.end method

.method static synthetic b(Lcom/feedback/ui/SendFeedback;)Landroid/widget/Spinner;
    .locals 1

    iget-object v0, p0, Lcom/feedback/ui/SendFeedback;->b:Landroid/widget/Spinner;

    return-object v0
.end method

.method private b()V
    .locals 3

    iget-object v0, p0, Lcom/feedback/ui/SendFeedback;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/feedback/ui/SendFeedback;->f:Landroid/widget/TextView;

    const-string v1, "string"

    const-string v2, "UMFeedbackUmengTitle"

    invoke-static {p0, v1, v2}, Lcom/mobclick/android/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/feedback/ui/SendFeedback;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/feedback/ui/SendFeedback;->d:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/feedback/ui/SendFeedback;->d:Landroid/widget/EditText;

    const-string v1, "string"

    const-string v2, "UMFeedbackContent"

    invoke-static {p0, v1, v2}, Lcom/mobclick/android/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/feedback/ui/SendFeedback;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/feedback/ui/SendFeedback;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/feedback/ui/SendFeedback;->e:Landroid/widget/TextView;

    const-string v1, "string"

    const-string v2, "UMFeedbackSummit"

    invoke-static {p0, v1, v2}, Lcom/mobclick/android/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/feedback/ui/SendFeedback;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method static synthetic c(Lcom/feedback/ui/SendFeedback;)Landroid/widget/Spinner;
    .locals 1

    iget-object v0, p0, Lcom/feedback/ui/SendFeedback;->c:Landroid/widget/Spinner;

    return-object v0
.end method

.method private c()V
    .locals 4

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {p0}, Lcom/feedback/ui/SendFeedback;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "feedback_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/feedback/ui/SendFeedback;->d:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    const-string v1, "feedback"

    invoke-virtual {p0, v1, v2}, Lcom/feedback/ui/SendFeedback;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/feedback/b/d;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v2, Lcom/feedback/a/a;

    invoke-direct {v2, v1}, Lcom/feedback/a/a;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v2}, Lcom/feedback/a/a;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/feedback/ui/SendFeedback;->d:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "feedback"

    invoke-static {p0, v1, v0}, Lcom/feedback/b/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/feedback/ui/SendFeedback;->b:Landroid/widget/Spinner;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/feedback/ui/SendFeedback;->d()I

    move-result v0

    if-eq v0, v3, :cond_1

    iget-object v1, p0, Lcom/feedback/ui/SendFeedback;->b:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    :cond_1
    iget-object v0, p0, Lcom/feedback/ui/SendFeedback;->c:Landroid/widget/Spinner;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/feedback/ui/SendFeedback;->e()I

    move-result v0

    if-eq v0, v3, :cond_2

    iget-object v1, p0, Lcom/feedback/ui/SendFeedback;->c:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    :cond_2
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private d()I
    .locals 3

    const-string v0, "UmengFb_Nums"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/feedback/ui/SendFeedback;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "ageGroup"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/feedback/ui/SendFeedback;)Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/feedback/ui/SendFeedback;->h:Lorg/json/JSONObject;

    return-object v0
.end method

.method private e()I
    .locals 3

    const-string v0, "UmengFb_Nums"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/feedback/ui/SendFeedback;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "sex"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/feedback/ui/SendFeedback;->requestWindowFeature(I)Z

    const-string v0, "layout"

    const-string v1, "umeng_analyse_send_feedback"

    invoke-static {p0, v0, v1}, Lcom/mobclick/android/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/feedback/ui/SendFeedback;->setContentView(I)V

    invoke-direct {p0}, Lcom/feedback/ui/SendFeedback;->a()V

    iget-object v0, p0, Lcom/feedback/ui/SendFeedback;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/feedback/ui/SendFeedback;->e:Landroid/widget/TextView;

    new-instance v1, Lcom/feedback/ui/j;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/feedback/ui/j;-><init>(Lcom/feedback/ui/SendFeedback;Lcom/feedback/ui/j;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/feedback/ui/SendFeedback;->d:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/feedback/ui/SendFeedback;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    :cond_0
    return-void
.end method
