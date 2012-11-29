.class public Lnatalya/net/oauth2/OAuth2;
.super Ljava/lang/Object;


# static fields
.field public static final HTTP_AUTHORIZATION_HEADER:Ljava/lang/String; = "Authorization"

.field public static final OAUTH:Ljava/lang/String; = "Bearer"

.field public static final OAUTH_ACCESS_TOKEN:Ljava/lang/String; = "access_token"

.field public static final OAUTH_CLIENT_ID:Ljava/lang/String; = "client_id"

.field public static final OAUTH_CLIENT_SECRET:Ljava/lang/String; = "client_secret"

.field public static final OAUTH_EXPIRES_IN:Ljava/lang/String; = "expires_in"

.field public static final OAUTH_GRANT_TYPE:Ljava/lang/String; = "grant_type"

.field public static final OAUTH_GRANT_TYPE_AUTHORIZATION_CODE:Ljava/lang/String; = "authorization_code"

.field public static final OAUTH_GRANT_TYPE_PASSWORD:Ljava/lang/String; = "password"

.field public static final OAUTH_GRANT_TYPE_REFRESH_TOKEN:Ljava/lang/String; = "refresh_token"

.field public static final OAUTH_REDIRECT_URI:Ljava/lang/String; = "redirect_uri"

.field public static final OAUTH_REFRESH_TOKEN:Ljava/lang/String; = "refresh_token"

.field public static final OAUTH_RESPONSE_TYPE:Ljava/lang/String; = "response_type"

.field public static final OAUTH_RESPONSE_TYPE_CODE:Ljava/lang/String; = "code"

.field public static final OAUTH_RESPONSE_TYPE_TOKEN:Ljava/lang/String; = "token"

.field public static final OAUTH_SCOPE:Ljava/lang/String; = "scope"

.field public static final OAUTH_STATE:Ljava/lang/String; = "state"

.field public static final OAUTH_USERNAME:Ljava/lang/String; = "username"

.field public static final OAUTH_USER_ID:Ljava/lang/String; = "douban_user_id"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeJson(Ljava/io/InputStream;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnatalya/net/oauth2/OAuth2;->decodeJson(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    throw v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private static decodeJson(Ljava/lang/String;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "debug"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v1
.end method
