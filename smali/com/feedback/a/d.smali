.class public Lcom/feedback/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lcom/feedback/a/e;

.field public c:Ljava/lang/String;

.field public d:Lcom/feedback/a/a;

.field public e:Lcom/feedback/a/a;

.field public f:Ljava/util/List;


# direct methods
.method public constructor <init>(Lorg/json/JSONArray;)V
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/feedback/a/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/feedback/a/d;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/feedback/a/d;->f:Ljava/util/List;

    sget-object v0, Lcom/feedback/a/e;->c:Lcom/feedback/a/e;

    iput-object v0, p0, Lcom/feedback/a/d;->b:Lcom/feedback/a/e;

    move v0, v1

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lt v0, v2, :cond_1

    iget-object v0, p0, Lcom/feedback/a/d;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/feedback/a/d;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/feedback/a/a;

    iput-object v0, p0, Lcom/feedback/a/d;->d:Lcom/feedback/a/a;

    iget-object v0, p0, Lcom/feedback/a/d;->f:Ljava/util/List;

    iget-object v2, p0, Lcom/feedback/a/d;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/feedback/a/a;

    iput-object v0, p0, Lcom/feedback/a/d;->e:Lcom/feedback/a/a;

    iget-object v0, p0, Lcom/feedback/a/d;->d:Lcom/feedback/a/a;

    iget-object v0, v0, Lcom/feedback/a/a;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/feedback/a/d;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/feedback/a/d;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/feedback/a/d;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/feedback/a/a;

    iget-object v0, v0, Lcom/feedback/a/a;->g:Lcom/feedback/a/b;

    sget-object v2, Lcom/feedback/a/b;->b:Lcom/feedback/a/b;

    if-ne v0, v2, :cond_2

    sget-object v0, Lcom/feedback/a/e;->b:Lcom/feedback/a/e;

    iput-object v0, p0, Lcom/feedback/a/d;->b:Lcom/feedback/a/e;

    :cond_0
    :goto_1
    return-void

    :cond_1
    :try_start_0
    new-instance v2, Lcom/feedback/a/a;

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/feedback/a/a;-><init>(Lorg/json/JSONObject;)V

    iget-object v3, p0, Lcom/feedback/a/d;->f:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/feedback/a/d;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/feedback/a/a;

    iget-object v0, v0, Lcom/feedback/a/a;->g:Lcom/feedback/a/b;

    sget-object v1, Lcom/feedback/a/b;->a:Lcom/feedback/a/b;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/feedback/a/e;->a:Lcom/feedback/a/e;

    iput-object v0, p0, Lcom/feedback/a/d;->b:Lcom/feedback/a/e;

    goto :goto_1
.end method


# virtual methods
.method public a(Lcom/feedback/a/d;)I
    .locals 3

    iget-object v0, p0, Lcom/feedback/a/d;->e:Lcom/feedback/a/a;

    iget-object v0, v0, Lcom/feedback/a/a;->e:Ljava/util/Date;

    iget-object v1, p1, Lcom/feedback/a/d;->e:Lcom/feedback/a/a;

    iget-object v1, v1, Lcom/feedback/a/a;->e:Ljava/util/Date;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public a(I)Lcom/feedback/a/a;
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/feedback/a/d;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/feedback/a/d;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/feedback/a/a;

    goto :goto_0
.end method

.method public b(I)V
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/feedback/a/d;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/feedback/a/d;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/feedback/a/d;

    invoke-virtual {p0, p1}, Lcom/feedback/a/d;->a(Lcom/feedback/a/d;)I

    move-result v0

    return v0
.end method
