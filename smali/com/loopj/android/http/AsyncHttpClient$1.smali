.class Lcom/loopj/android/http/AsyncHttpClient$1;
.super Ljava/lang/Object;
.source "AsyncHttpClient.java"

# interfaces
.implements Lorg/apache/http/HttpRequestInterceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loopj/android/http/AsyncHttpClient;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/loopj/android/http/AsyncHttpClient;


# direct methods
.method constructor <init>(Lcom/loopj/android/http/AsyncHttpClient;)V
    .locals 0
    .parameter

    .prologue
    .line 206
    iput-object p1, p0, Lcom/loopj/android/http/AsyncHttpClient$1;->this$0:Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V
    .locals 4
    .parameter "request"
    .parameter "context"

    .prologue
    .line 208
    const-string v2, "Accept-Encoding"

    invoke-interface {p1, v2}, Lorg/apache/http/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 209
    const-string v2, "Accept-Encoding"

    const-string v3, "gzip"

    invoke-interface {p1, v2, v3}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    :cond_0
    iget-object v2, p0, Lcom/loopj/android/http/AsyncHttpClient$1;->this$0:Lcom/loopj/android/http/AsyncHttpClient;

    #getter for: Lcom/loopj/android/http/AsyncHttpClient;->clientHeaderMap:Ljava/util/Map;
    invoke-static {v2}, Lcom/loopj/android/http/AsyncHttpClient;->access$000(Lcom/loopj/android/http/AsyncHttpClient;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 212
    .local v0, header:Ljava/lang/String;
    iget-object v2, p0, Lcom/loopj/android/http/AsyncHttpClient$1;->this$0:Lcom/loopj/android/http/AsyncHttpClient;

    #getter for: Lcom/loopj/android/http/AsyncHttpClient;->clientHeaderMap:Ljava/util/Map;
    invoke-static {v2}, Lcom/loopj/android/http/AsyncHttpClient;->access$000(Lcom/loopj/android/http/AsyncHttpClient;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1, v0, v2}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 214
    .end local v0           #header:Ljava/lang/String;
    :cond_1
    return-void
.end method
