.class Lcom/loopj/android/http/AsyncHttpClient$MySSLSocketFactory$1;
.super Ljava/lang/Object;
.source "AsyncHttpClient.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loopj/android/http/AsyncHttpClient$MySSLSocketFactory;-><init>(Lcom/loopj/android/http/AsyncHttpClient;Ljava/security/KeyStore;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/loopj/android/http/AsyncHttpClient$MySSLSocketFactory;

.field final synthetic val$this$0:Lcom/loopj/android/http/AsyncHttpClient;


# direct methods
.method constructor <init>(Lcom/loopj/android/http/AsyncHttpClient$MySSLSocketFactory;Lcom/loopj/android/http/AsyncHttpClient;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/loopj/android/http/AsyncHttpClient$MySSLSocketFactory$1;->this$1:Lcom/loopj/android/http/AsyncHttpClient$MySSLSocketFactory;

    iput-object p2, p0, Lcom/loopj/android/http/AsyncHttpClient$MySSLSocketFactory$1;->val$this$0:Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0
    .parameter "chain"
    .parameter "authType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 129
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0
    .parameter "chain"
    .parameter "authType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 132
    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x0

    return-object v0
.end method
