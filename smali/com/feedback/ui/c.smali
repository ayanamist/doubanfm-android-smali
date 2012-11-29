.class public Lcom/feedback/ui/c;
.super Landroid/widget/BaseAdapter;


# static fields
.field private static synthetic f:[I


# instance fields
.field a:Landroid/content/Context;

.field b:Landroid/view/LayoutInflater;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Lcom/feedback/a/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/feedback/a/d;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const-string v0, "FeedbackAdapter"

    iput-object v0, p0, Lcom/feedback/ui/c;->d:Ljava/lang/String;

    iput-object p1, p0, Lcom/feedback/ui/c;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/feedback/ui/c;->e:Lcom/feedback/a/d;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/feedback/ui/c;->b:Landroid/view/LayoutInflater;

    return-void
.end method

.method private a(Lcom/feedback/a/a;Landroid/widget/TextView;)V
    .locals 5

    const v4, -0x777778

    iget-object v0, p1, Lcom/feedback/a/a;->g:Lcom/feedback/a/b;

    invoke-static {}, Lcom/feedback/ui/c;->a()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/feedback/a/b;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p1, Lcom/feedback/a/a;->e:Ljava/util/Date;

    iget-object v1, p0, Lcom/feedback/ui/c;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/feedback/b/d;->b(Ljava/util/Date;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, ""

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/feedback/ui/c;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/feedback/ui/c;->a:Landroid/content/Context;

    const-string v2, "string"

    const-string v3, "UMFb_Atom_State_Sending"

    invoke-static {v1, v2, v3}, Lcom/mobclick/android/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/feedback/ui/c;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/feedback/ui/c;->a:Landroid/content/Context;

    const-string v2, "string"

    const-string v3, "UMFb_Atom_State_Resend"

    invoke-static {v1, v2, v3}, Lcom/mobclick/android/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v0, -0x1

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a()[I
    .locals 3

    sget-object v0, Lcom/feedback/ui/c;->f:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/feedback/a/b;->values()[Lcom/feedback/a/b;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/feedback/a/b;->b:Lcom/feedback/a/b;

    invoke-virtual {v1}, Lcom/feedback/a/b;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/feedback/a/b;->c:Lcom/feedback/a/b;

    invoke-virtual {v1}, Lcom/feedback/a/b;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/feedback/a/b;->a:Lcom/feedback/a/b;

    invoke-virtual {v1}, Lcom/feedback/a/b;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/feedback/ui/c;->f:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public a(Lcom/feedback/a/d;)V
    .locals 0

    iput-object p1, p0, Lcom/feedback/ui/c;->e:Lcom/feedback/a/d;

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/feedback/ui/c;->e:Lcom/feedback/a/d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/feedback/ui/c;->e:Lcom/feedback/a/d;

    iget-object v0, v0, Lcom/feedback/a/d;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const/16 v6, 0x8

    const/4 v5, 0x0

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/feedback/ui/c;->b:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/feedback/ui/c;->a:Landroid/content/Context;

    const-string v2, "layout"

    const-string v3, "umeng_analyse_feedback_conversation_item"

    invoke-static {v1, v2, v3}, Lcom/mobclick/android/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/feedback/ui/d;

    invoke-direct {v1, p0}, Lcom/feedback/ui/d;-><init>(Lcom/feedback/ui/c;)V

    iget-object v0, p0, Lcom/feedback/ui/c;->a:Landroid/content/Context;

    const-string v2, "id"

    const-string v3, "umeng_analyse_atomLinearLayout"

    invoke-static {v0, v2, v3}, Lcom/mobclick/android/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lcom/feedback/ui/d;->a:Landroid/widget/LinearLayout;

    iget-object v0, v1, Lcom/feedback/ui/d;->a:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/feedback/ui/c;->a:Landroid/content/Context;

    const-string v3, "id"

    const-string v4, "umeng_analyse_bubble"

    invoke-static {v2, v3, v4}, Lcom/mobclick/android/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v1, Lcom/feedback/ui/d;->b:Landroid/widget/RelativeLayout;

    iget-object v0, v1, Lcom/feedback/ui/d;->a:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/feedback/ui/c;->a:Landroid/content/Context;

    const-string v3, "id"

    const-string v4, "umeng_analyse_atomtxt"

    invoke-static {v2, v3, v4}, Lcom/mobclick/android/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/feedback/ui/d;->c:Landroid/widget/TextView;

    iget-object v0, v1, Lcom/feedback/ui/d;->a:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/feedback/ui/c;->a:Landroid/content/Context;

    const-string v3, "id"

    const-string v4, "umeng_analyse_stateOrTime"

    invoke-static {v2, v3, v4}, Lcom/mobclick/android/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/feedback/ui/d;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/feedback/ui/c;->a:Landroid/content/Context;

    const-string v2, "id"

    const-string v3, "umeng_analyse_atom_left_margin"

    invoke-static {v0, v2, v3}, Lcom/mobclick/android/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/feedback/ui/d;->e:Landroid/view/View;

    iget-object v0, p0, Lcom/feedback/ui/c;->a:Landroid/content/Context;

    const-string v2, "id"

    const-string v3, "umeng_analyse_atom_right_margin"

    invoke-static {v0, v2, v3}, Lcom/mobclick/android/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/feedback/ui/d;->f:Landroid/view/View;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    :goto_0
    iget-object v1, p0, Lcom/feedback/ui/c;->e:Lcom/feedback/a/d;

    invoke-virtual {v1, p1}, Lcom/feedback/a/d;->a(I)Lcom/feedback/a/a;

    move-result-object v1

    iget-object v2, v0, Lcom/feedback/ui/d;->d:Landroid/widget/TextView;

    invoke-direct {p0, v1, v2}, Lcom/feedback/ui/c;->a(Lcom/feedback/a/a;Landroid/widget/TextView;)V

    iget-object v2, v0, Lcom/feedback/ui/d;->c:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/feedback/a/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v1, Lcom/feedback/a/a;->f:Lcom/feedback/a/c;

    sget-object v2, Lcom/feedback/a/c;->c:Lcom/feedback/a/c;

    if-ne v1, v2, :cond_1

    iget-object v1, v0, Lcom/feedback/ui/d;->a:Landroid/widget/LinearLayout;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v1, v0, Lcom/feedback/ui/d;->b:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/feedback/ui/c;->a:Landroid/content/Context;

    const-string v3, "drawable"

    const-string v4, "umeng_analyse_dev_bubble"

    invoke-static {v2, v3, v4}, Lcom/mobclick/android/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    iget-object v1, v0, Lcom/feedback/ui/d;->f:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v0, Lcom/feedback/ui/d;->e:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/feedback/ui/d;

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcom/feedback/ui/d;->a:Landroid/widget/LinearLayout;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v1, v0, Lcom/feedback/ui/d;->b:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/feedback/ui/c;->a:Landroid/content/Context;

    const-string v3, "drawable"

    const-string v4, "umeng_analyse_user_bubble"

    invoke-static {v2, v3, v4}, Lcom/mobclick/android/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    iget-object v1, v0, Lcom/feedback/ui/d;->f:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v0, Lcom/feedback/ui/d;->e:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method
