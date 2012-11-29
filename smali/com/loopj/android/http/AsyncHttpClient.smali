.class public Lcom/loopj/android/http/AsyncHttpClient;
.super Ljava/lang/Object;
.source "AsyncHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loopj/android/http/AsyncHttpClient$InflatingEntity;,
        Lcom/loopj/android/http/AsyncHttpClient$MySSLSocketFactory;
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_CONNECTIONS:I = 0xa

.field private static final DEFAULT_MAX_RETRIES:I = 0x5

.field private static final DEFAULT_SOCKET_BUFFER_SIZE:I = 0x2000

.field private static final DEFAULT_SOCKET_TIMEOUT:I = 0x2710

.field private static final ENCODING_GZIP:Ljava/lang/String; = "gzip"

.field private static final HEADER_ACCEPT_ENCODING:Ljava/lang/String; = "Accept-Encoding"

.field private static final VERSION:Ljava/lang/String; = "1.3.1"

.field private static maxConnections:I

.field private static socketTimeout:I


# instance fields
.field private final clientHeaderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

.field private final httpContext:Lorg/apache/http/protocol/HttpContext;

.field private final requestMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/util/concurrent/Future",
            "<*>;>;>;>;"
        }
    .end annotation
.end field

.field private threadPool:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 112
    const/16 v0, 0xa

    sput v0, Lcom/loopj/android/http/AsyncHttpClient;->maxConnections:I

    .line 113
    const/16 v0, 0x2710

    sput v0, Lcom/loopj/android/http/AsyncHttpClient;->socketTimeout:I

    return-void
.end method

.method public constructor <init>()V
    .locals 10

    .prologue
    const/4 v8, 0x1

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 159
    .local v2, httpParams:Lorg/apache/http/params/BasicHttpParams;
    sget v6, Lcom/loopj/android/http/AsyncHttpClient;->socketTimeout:I

    int-to-long v6, v6

    invoke-static {v2, v6, v7}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    .line 160
    new-instance v6, Lorg/apache/http/conn/params/ConnPerRouteBean;

    sget v7, Lcom/loopj/android/http/AsyncHttpClient;->maxConnections:I

    invoke-direct {v6, v7}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    invoke-static {v2, v6}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    .line 161
    const/16 v6, 0xa

    invoke-static {v2, v6}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxTotalConnections(Lorg/apache/http/params/HttpParams;I)V

    .line 163
    sget v6, Lcom/loopj/android/http/AsyncHttpClient;->socketTimeout:I

    invoke-static {v2, v6}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 164
    sget v6, Lcom/loopj/android/http/AsyncHttpClient;->socketTimeout:I

    invoke-static {v2, v6}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 165
    invoke-static {v2, v8}, Lorg/apache/http/params/HttpConnectionParams;->setTcpNoDelay(Lorg/apache/http/params/HttpParams;Z)V

    .line 166
    const/16 v6, 0x2000

    invoke-static {v2, v6}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 168
    sget-object v6, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v2, v6}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 169
    const-string v6, "android-async-http/%s (http://loopj.com/android-async-http)"

    new-array v7, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "1.3.1"

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 171
    new-instance v3, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 172
    .local v3, schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v6, Lorg/apache/http/conn/scheme/Scheme;

    const-string v7, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v8

    const/16 v9, 0x50

    invoke-direct {v6, v7, v8, v9}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v3, v6}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 175
    :try_start_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v5

    .line 176
    .local v5, trustStore:Ljava/security/KeyStore;
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 178
    new-instance v4, Lcom/loopj/android/http/AsyncHttpClient$MySSLSocketFactory;

    invoke-direct {v4, p0, v5}, Lcom/loopj/android/http/AsyncHttpClient$MySSLSocketFactory;-><init>(Lcom/loopj/android/http/AsyncHttpClient;Ljava/security/KeyStore;)V

    .line 179
    .local v4, sf:Lorg/apache/http/conn/ssl/SSLSocketFactory;
    sget-object v6, Lorg/apache/http/conn/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v4, v6}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 181
    new-instance v6, Lorg/apache/http/conn/scheme/Scheme;

    const-string v7, "https"

    const/16 v8, 0x1bb

    invoke-direct {v6, v7, v4, v8}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v3, v6}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;
    :try_end_0
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    .line 202
    .end local v4           #sf:Lorg/apache/http/conn/ssl/SSLSocketFactory;
    .end local v5           #trustStore:Ljava/security/KeyStore;
    :goto_0
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v0, v2, v3}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 204
    .local v0, cm:Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;
    new-instance v6, Lorg/apache/http/protocol/SyncBasicHttpContext;

    new-instance v7, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v7}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    invoke-direct {v6, v7}, Lorg/apache/http/protocol/SyncBasicHttpContext;-><init>(Lorg/apache/http/protocol/HttpContext;)V

    iput-object v6, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    .line 205
    new-instance v6, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v6, v0, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    iput-object v6, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 206
    iget-object v6, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v7, Lcom/loopj/android/http/AsyncHttpClient$1;

    invoke-direct {v7, p0}, Lcom/loopj/android/http/AsyncHttpClient$1;-><init>(Lcom/loopj/android/http/AsyncHttpClient;)V

    invoke-virtual {v6, v7}, Lorg/apache/http/impl/client/DefaultHttpClient;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 217
    iget-object v6, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v7, Lcom/loopj/android/http/AsyncHttpClient$2;

    invoke-direct {v7, p0}, Lcom/loopj/android/http/AsyncHttpClient$2;-><init>(Lcom/loopj/android/http/AsyncHttpClient;)V

    invoke-virtual {v6, v7}, Lorg/apache/http/impl/client/DefaultHttpClient;->addResponseInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    .line 232
    iget-object v6, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v7, Lcom/loopj/android/http/RetryHandler;

    const/4 v8, 0x5

    invoke-direct {v7, v8}, Lcom/loopj/android/http/RetryHandler;-><init>(I)V

    invoke-virtual {v6, v7}, Lorg/apache/http/impl/client/DefaultHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V

    .line 234
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v6

    check-cast v6, Ljava/util/concurrent/ThreadPoolExecutor;

    iput-object v6, p0, Lcom/loopj/android/http/AsyncHttpClient;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 236
    new-instance v6, Ljava/util/WeakHashMap;

    invoke-direct {v6}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v6, p0, Lcom/loopj/android/http/AsyncHttpClient;->requestMap:Ljava/util/Map;

    .line 237
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/loopj/android/http/AsyncHttpClient;->clientHeaderMap:Ljava/util/Map;

    .line 238
    return-void

    .line 182
    .end local v0           #cm:Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;
    :catch_0
    move-exception v1

    .line 184
    .local v1, e:Ljava/security/KeyManagementException;
    invoke-virtual {v1}, Ljava/security/KeyManagementException;->printStackTrace()V

    goto :goto_0

    .line 185
    .end local v1           #e:Ljava/security/KeyManagementException;
    :catch_1
    move-exception v1

    .line 187
    .local v1, e:Ljava/security/UnrecoverableKeyException;
    invoke-virtual {v1}, Ljava/security/UnrecoverableKeyException;->printStackTrace()V

    goto :goto_0

    .line 188
    .end local v1           #e:Ljava/security/UnrecoverableKeyException;
    :catch_2
    move-exception v1

    .line 190
    .local v1, e:Ljava/security/KeyStoreException;
    invoke-virtual {v1}, Ljava/security/KeyStoreException;->printStackTrace()V

    goto :goto_0

    .line 191
    .end local v1           #e:Ljava/security/KeyStoreException;
    :catch_3
    move-exception v1

    .line 193
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0

    .line 194
    .end local v1           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_4
    move-exception v1

    .line 196
    .local v1, e:Ljava/security/cert/CertificateException;
    invoke-virtual {v1}, Ljava/security/cert/CertificateException;->printStackTrace()V

    goto :goto_0

    .line 197
    .end local v1           #e:Ljava/security/cert/CertificateException;
    :catch_5
    move-exception v1

    .line 199
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/loopj/android/http/AsyncHttpClient;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->clientHeaderMap:Ljava/util/Map;

    return-object v0
.end method

.method private addEntityToRequestBase(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lorg/apache/http/HttpEntity;)Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;
    .locals 0
    .parameter "requestBase"
    .parameter "entity"

    .prologue
    .line 594
    if-eqz p2, :cond_0

    .line 595
    invoke-virtual {p1, p2}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 598
    :cond_0
    return-object p1
.end method

.method private getUrlWithQueryString(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;)Ljava/lang/String;
    .locals 3
    .parameter "url"
    .parameter "params"

    .prologue
    .line 575
    if-eqz p2, :cond_0

    .line 576
    invoke-virtual {p2}, Lcom/loopj/android/http/RequestParams;->getParamString()Ljava/lang/String;

    move-result-object v0

    .line 577
    .local v0, paramString:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 580
    .end local v0           #paramString:Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method private paramsToEntity(Lcom/loopj/android/http/RequestParams;)Lorg/apache/http/HttpEntity;
    .locals 1
    .parameter "params"

    .prologue
    .line 584
    const/4 v0, 0x0

    .line 586
    .local v0, entity:Lorg/apache/http/HttpEntity;
    if-eqz p1, :cond_0

    .line 587
    invoke-virtual {p1}, Lcom/loopj/android/http/RequestParams;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 590
    :cond_0
    return-object v0
.end method

.method private sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/loopj/android/http/AsyncHttpResponseHandler;Landroid/content/Context;)V
    .locals 4
    .parameter "client"
    .parameter "httpContext"
    .parameter "uriRequest"
    .parameter "contentType"
    .parameter "responseHandler"
    .parameter "context"

    .prologue
    .line 554
    if-eqz p4, :cond_0

    .line 555
    const-string v2, "Content-Type"

    invoke-interface {p3, v2, p4}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    :cond_0
    iget-object v2, p0, Lcom/loopj/android/http/AsyncHttpClient;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v3, Lcom/loopj/android/http/AsyncHttpRequest;

    invoke-direct {v3, p1, p2, p3, p5}, Lcom/loopj/android/http/AsyncHttpRequest;-><init>(Lorg/apache/http/impl/client/AbstractHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 560
    .local v0, request:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<*>;"
    if-eqz p6, :cond_2

    .line 562
    iget-object v2, p0, Lcom/loopj/android/http/AsyncHttpClient;->requestMap:Ljava/util/Map;

    invoke-interface {v2, p6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 563
    .local v1, requestList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/ref/WeakReference<Ljava/util/concurrent/Future<*>;>;>;"
    if-nez v1, :cond_1

    .line 564
    new-instance v1, Ljava/util/LinkedList;

    .end local v1           #requestList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/ref/WeakReference<Ljava/util/concurrent/Future<*>;>;>;"
    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 565
    .restart local v1       #requestList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/ref/WeakReference<Ljava/util/concurrent/Future<*>;>;>;"
    iget-object v2, p0, Lcom/loopj/android/http/AsyncHttpClient;->requestMap:Ljava/util/Map;

    invoke-interface {v2, p6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    :cond_1
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 572
    .end local v1           #requestList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/ref/WeakReference<Ljava/util/concurrent/Future<*>;>;>;"
    :cond_2
    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "header"
    .parameter "value"

    .prologue
    .line 290
    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->clientHeaderMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    return-void
.end method

.method public cancelRequests(Landroid/content/Context;Z)V
    .locals 5
    .parameter "context"
    .parameter "mayInterruptIfRunning"

    .prologue
    .line 306
    iget-object v4, p0, Lcom/loopj/android/http/AsyncHttpClient;->requestMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 307
    .local v2, requestList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/ref/WeakReference<Ljava/util/concurrent/Future<*>;>;>;"
    if-eqz v2, :cond_1

    .line 308
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 309
    .local v3, requestRef:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Ljava/util/concurrent/Future<*>;>;"
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;

    .line 310
    .local v1, request:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<*>;"
    if-eqz v1, :cond_0

    .line 311
    invoke-interface {v1, p2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_0

    .line 315
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #request:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<*>;"
    .end local v3           #requestRef:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Ljava/util/concurrent/Future<*>;>;"
    :cond_1
    iget-object v4, p0, Lcom/loopj/android/http/AsyncHttpClient;->requestMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    return-void
.end method

.method public delete(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V
    .locals 7
    .parameter "context"
    .parameter "url"
    .parameter "responseHandler"

    .prologue
    .line 534
    new-instance v3, Lorg/apache/http/client/methods/HttpDelete;

    invoke-direct {v3, p2}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    .line 535
    .local v3, delete:Lorg/apache/http/client/methods/HttpDelete;
    iget-object v1, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p3

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/loopj/android/http/AsyncHttpClient;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/loopj/android/http/AsyncHttpResponseHandler;Landroid/content/Context;)V

    .line 536
    return-void
.end method

.method public delete(Landroid/content/Context;Ljava/lang/String;[Lorg/apache/http/Header;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V
    .locals 7
    .parameter "context"
    .parameter "url"
    .parameter "headers"
    .parameter "responseHandler"

    .prologue
    .line 546
    new-instance v3, Lorg/apache/http/client/methods/HttpDelete;

    invoke-direct {v3, p2}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    .line 547
    .local v3, delete:Lorg/apache/http/client/methods/HttpDelete;
    if-eqz p3, :cond_0

    invoke-virtual {v3, p3}, Lorg/apache/http/client/methods/HttpDelete;->setHeaders([Lorg/apache/http/Header;)V

    .line 548
    :cond_0
    iget-object v1, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p4

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/loopj/android/http/AsyncHttpClient;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/loopj/android/http/AsyncHttpResponseHandler;Landroid/content/Context;)V

    .line 549
    return-void
.end method

.method public delete(Ljava/lang/String;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V
    .locals 1
    .parameter "url"
    .parameter "responseHandler"

    .prologue
    .line 524
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/loopj/android/http/AsyncHttpClient;->delete(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 525
    return-void
.end method

.method public get(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V
    .locals 1
    .parameter "context"
    .parameter "url"
    .parameter "responseHandler"

    .prologue
    .line 349
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/loopj/android/http/AsyncHttpClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 350
    return-void
.end method

.method public get(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V
    .locals 7
    .parameter "context"
    .parameter "url"
    .parameter "params"
    .parameter "responseHandler"

    .prologue
    .line 360
    iget-object v1, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {p0, p2, p3}, Lcom/loopj/android/http/AsyncHttpClient;->getUrlWithQueryString(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p4

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/loopj/android/http/AsyncHttpClient;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/loopj/android/http/AsyncHttpResponseHandler;Landroid/content/Context;)V

    .line 361
    return-void
.end method

.method public get(Landroid/content/Context;Ljava/lang/String;[Lorg/apache/http/Header;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V
    .locals 7
    .parameter "context"
    .parameter "url"
    .parameter "headers"
    .parameter "params"
    .parameter "responseHandler"

    .prologue
    .line 374
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {p0, p2, p4}, Lcom/loopj/android/http/AsyncHttpClient;->getUrlWithQueryString(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 375
    .local v3, request:Lorg/apache/http/client/methods/HttpUriRequest;
    if-eqz p3, :cond_0

    invoke-interface {v3, p3}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeaders([Lorg/apache/http/Header;)V

    .line 376
    :cond_0
    iget-object v1, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p5

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/loopj/android/http/AsyncHttpClient;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/loopj/android/http/AsyncHttpResponseHandler;Landroid/content/Context;)V

    .line 378
    return-void
.end method

.method public get(Ljava/lang/String;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V
    .locals 1
    .parameter "url"
    .parameter "responseHandler"

    .prologue
    const/4 v0, 0x0

    .line 329
    invoke-virtual {p0, v0, p1, v0, p2}, Lcom/loopj/android/http/AsyncHttpClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 330
    return-void
.end method

.method public get(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V
    .locals 1
    .parameter "url"
    .parameter "params"
    .parameter "responseHandler"

    .prologue
    .line 339
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/loopj/android/http/AsyncHttpClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 340
    return-void
.end method

.method public getHttpClient()Lorg/apache/http/client/HttpClient;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    return-object v0
.end method

.method public post(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V
    .locals 6
    .parameter "context"
    .parameter "url"
    .parameter "params"
    .parameter "responseHandler"

    .prologue
    .line 412
    invoke-direct {p0, p3}, Lcom/loopj/android/http/AsyncHttpClient;->paramsToEntity(Lcom/loopj/android/http/RequestParams;)Lorg/apache/http/HttpEntity;

    move-result-object v3

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/loopj/android/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 413
    return-void
.end method

.method public post(Landroid/content/Context;Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V
    .locals 7
    .parameter "context"
    .parameter "url"
    .parameter "entity"
    .parameter "contentType"
    .parameter "responseHandler"

    .prologue
    .line 424
    iget-object v1, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p3}, Lcom/loopj/android/http/AsyncHttpClient;->addEntityToRequestBase(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lorg/apache/http/HttpEntity;)Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    move-result-object v3

    move-object v0, p0

    move-object v4, p4

    move-object v5, p5

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/loopj/android/http/AsyncHttpClient;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/loopj/android/http/AsyncHttpResponseHandler;Landroid/content/Context;)V

    .line 425
    return-void
.end method

.method public post(Landroid/content/Context;Ljava/lang/String;[Lorg/apache/http/Header;Lcom/loopj/android/http/RequestParams;Ljava/lang/String;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V
    .locals 7
    .parameter "context"
    .parameter "url"
    .parameter "headers"
    .parameter "params"
    .parameter "contentType"
    .parameter "responseHandler"

    .prologue
    .line 444
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v3, p2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 445
    .local v3, request:Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;
    if-eqz p4, :cond_0

    invoke-direct {p0, p4}, Lcom/loopj/android/http/AsyncHttpClient;->paramsToEntity(Lcom/loopj/android/http/RequestParams;)Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 446
    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {v3, p3}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setHeaders([Lorg/apache/http/Header;)V

    .line 447
    :cond_1
    iget-object v1, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    move-object v0, p0

    move-object v4, p5

    move-object v5, p6

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/loopj/android/http/AsyncHttpClient;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/loopj/android/http/AsyncHttpResponseHandler;Landroid/content/Context;)V

    .line 449
    return-void
.end method

.method public post(Ljava/lang/String;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V
    .locals 1
    .parameter "url"
    .parameter "responseHandler"

    .prologue
    const/4 v0, 0x0

    .line 391
    invoke-virtual {p0, v0, p1, v0, p2}, Lcom/loopj/android/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 392
    return-void
.end method

.method public post(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V
    .locals 1
    .parameter "url"
    .parameter "params"
    .parameter "responseHandler"

    .prologue
    .line 401
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/loopj/android/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 402
    return-void
.end method

.method public put(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V
    .locals 6
    .parameter "context"
    .parameter "url"
    .parameter "params"
    .parameter "responseHandler"

    .prologue
    .line 482
    invoke-direct {p0, p3}, Lcom/loopj/android/http/AsyncHttpClient;->paramsToEntity(Lcom/loopj/android/http/RequestParams;)Lorg/apache/http/HttpEntity;

    move-result-object v3

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/loopj/android/http/AsyncHttpClient;->put(Landroid/content/Context;Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 483
    return-void
.end method

.method public put(Landroid/content/Context;Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V
    .locals 7
    .parameter "context"
    .parameter "url"
    .parameter "entity"
    .parameter "contentType"
    .parameter "responseHandler"

    .prologue
    .line 495
    iget-object v1, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    new-instance v0, Lorg/apache/http/client/methods/HttpPut;

    invoke-direct {v0, p2}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p3}, Lcom/loopj/android/http/AsyncHttpClient;->addEntityToRequestBase(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lorg/apache/http/HttpEntity;)Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    move-result-object v3

    move-object v0, p0

    move-object v4, p4

    move-object v5, p5

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/loopj/android/http/AsyncHttpClient;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/loopj/android/http/AsyncHttpResponseHandler;Landroid/content/Context;)V

    .line 496
    return-void
.end method

.method public put(Landroid/content/Context;Ljava/lang/String;[Lorg/apache/http/Header;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V
    .locals 7
    .parameter "context"
    .parameter "url"
    .parameter "headers"
    .parameter "entity"
    .parameter "contentType"
    .parameter "responseHandler"

    .prologue
    .line 509
    new-instance v0, Lorg/apache/http/client/methods/HttpPut;

    invoke-direct {v0, p2}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p4}, Lcom/loopj/android/http/AsyncHttpClient;->addEntityToRequestBase(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lorg/apache/http/HttpEntity;)Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    move-result-object v3

    .line 510
    .local v3, request:Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;
    if-eqz p3, :cond_0

    invoke-virtual {v3, p3}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setHeaders([Lorg/apache/http/Header;)V

    .line 511
    :cond_0
    iget-object v1, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    move-object v0, p0

    move-object v4, p5

    move-object v5, p6

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/loopj/android/http/AsyncHttpClient;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/loopj/android/http/AsyncHttpResponseHandler;Landroid/content/Context;)V

    .line 512
    return-void
.end method

.method public put(Ljava/lang/String;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V
    .locals 1
    .parameter "url"
    .parameter "responseHandler"

    .prologue
    const/4 v0, 0x0

    .line 461
    invoke-virtual {p0, v0, p1, v0, p2}, Lcom/loopj/android/http/AsyncHttpClient;->put(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 462
    return-void
.end method

.method public put(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V
    .locals 1
    .parameter "url"
    .parameter "params"
    .parameter "responseHandler"

    .prologue
    .line 471
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/loopj/android/http/AsyncHttpClient;->put(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 472
    return-void
.end method

.method public setCookieStore(Lorg/apache/http/client/CookieStore;)V
    .locals 2
    .parameter "cookieStore"

    .prologue
    .line 254
    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    const-string v1, "http.cookie-store"

    invoke-interface {v0, v1, p1}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 255
    return-void
.end method

.method public setSSLSocketFactory(Lorg/apache/http/conn/ssl/SSLSocketFactory;)V
    .locals 4
    .parameter "sslSocketFactory"

    .prologue
    .line 281
    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v0

    new-instance v1, Lorg/apache/http/conn/scheme/Scheme;

    const-string v2, "https"

    const/16 v3, 0x1bb

    invoke-direct {v1, v2, p1, v3}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 282
    return-void
.end method

.method public setThreadPool(Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 0
    .parameter "threadPool"

    .prologue
    .line 263
    iput-object p1, p0, Lcom/loopj/android/http/AsyncHttpClient;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 264
    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 1
    .parameter "userAgent"

    .prologue
    .line 272
    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 273
    return-void
.end method
