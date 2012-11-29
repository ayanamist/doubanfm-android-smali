.class Lcom/feedback/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic a:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Landroid/app/AlertDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/feedback/b;->a:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-static {}, Lcom/feedback/UMFeedbackService;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/feedback/b/a;->b(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/feedback/b;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method
