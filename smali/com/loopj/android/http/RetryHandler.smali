.class Lcom/loopj/android/http/RetryHandler;
.super Ljava/lang/Object;
.source "RetryHandler.java"

# interfaces
.implements Lorg/apache/http/client/HttpRequestRetryHandler;


# static fields
.field private static final RETRY_SLEEP_TIME_MILLIS:I = 0x5dc

.field private static exceptionBlacklist:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static exceptionWhitelist:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final maxRetries:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 44
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/loopj/android/http/RetryHandler;->exceptionWhitelist:Ljava/util/HashSet;

    .line 45
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/loopj/android/http/RetryHandler;->exceptionBlacklist:Ljava/util/HashSet;

    .line 49
    sget-object v0, Lcom/loopj/android/http/RetryHandler;->exceptionWhitelist:Ljava/util/HashSet;

    const-class v1, Lorg/apache/http/NoHttpResponseException;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 51
    sget-object v0, Lcom/loopj/android/http/RetryHandler;->exceptionWhitelist:Ljava/util/HashSet;

    const-class v1, Ljava/net/UnknownHostException;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object v0, Lcom/loopj/android/http/RetryHandler;->exceptionWhitelist:Ljava/util/HashSet;

    const-class v1, Ljava/net/SocketException;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 56
    sget-object v0, Lcom/loopj/android/http/RetryHandler;->exceptionBlacklist:Ljava/util/HashSet;

    const-class v1, Ljava/io/InterruptedIOException;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 58
    sget-object v0, Lcom/loopj/android/http/RetryHandler;->exceptionBlacklist:Ljava/util/HashSet;

    const-class v1, Ljavax/net/ssl/SSLHandshakeException;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 59
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "maxRetries"

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput p1, p0, Lcom/loopj/android/http/RetryHandler;->maxRetries:I

    .line 65
    return-void
.end method


# virtual methods
.method public retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z
    .locals 7
    .parameter "exception"
    .parameter "executionCount"
    .parameter "context"

    .prologue
    .line 70
    const-string v5, "http.request_sent"

    invoke-interface {p3, v5}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 71
    .local v0, b:Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x1

    .line 73
    .local v4, sent:Z
    :goto_0
    iget v5, p0, Lcom/loopj/android/http/RetryHandler;->maxRetries:I

    if-le p2, v5, :cond_1

    .line 75
    const/4 v3, 0x0

    .line 97
    .local v3, retry:Z
    :goto_1
    if-eqz v3, :cond_6

    .line 98
    const-wide/16 v5, 0x5dc

    invoke-static {v5, v6}, Landroid/os/SystemClock;->sleep(J)V

    .line 103
    :goto_2
    return v3

    .line 71
    .end local v3           #retry:Z
    .end local v4           #sent:Z
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 76
    .restart local v4       #sent:Z
    :cond_1
    sget-object v5, Lcom/loopj/android/http/RetryHandler;->exceptionBlacklist:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 78
    const/4 v3, 0x0

    .restart local v3       #retry:Z
    goto :goto_1

    .line 79
    .end local v3           #retry:Z
    :cond_2
    sget-object v5, Lcom/loopj/android/http/RetryHandler;->exceptionWhitelist:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 81
    const/4 v3, 0x1

    .restart local v3       #retry:Z
    goto :goto_1

    .line 82
    .end local v3           #retry:Z
    :cond_3
    if-nez v4, :cond_4

    .line 84
    const/4 v3, 0x1

    .restart local v3       #retry:Z
    goto :goto_1

    .line 87
    .end local v3           #retry:Z
    :cond_4
    const-string v5, "http.request"

    invoke-interface {p3, v5}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/client/methods/HttpUriRequest;

    .line 88
    .local v1, currentReq:Lorg/apache/http/client/methods/HttpUriRequest;
    invoke-interface {v1}, Lorg/apache/http/client/methods/HttpUriRequest;->getMethod()Ljava/lang/String;

    move-result-object v2

    .line 89
    .local v2, requestType:Ljava/lang/String;
    const-string v5, "POST"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 90
    const/4 v3, 0x1

    .restart local v3       #retry:Z
    goto :goto_1

    .line 93
    .end local v3           #retry:Z
    :cond_5
    const/4 v3, 0x0

    .restart local v3       #retry:Z
    goto :goto_1

    .line 100
    .end local v1           #currentReq:Lorg/apache/http/client/methods/HttpUriRequest;
    .end local v2           #requestType:Ljava/lang/String;
    :cond_6
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method
