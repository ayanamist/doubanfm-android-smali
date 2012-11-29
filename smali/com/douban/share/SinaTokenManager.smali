.class public Lcom/douban/share/SinaTokenManager;
.super Lcom/douban/share/ShareToken;
.source "SinaTokenManager.java"


# static fields
.field public static APP_KEY:Ljava/lang/String; = null

.field public static APP_SECRET:Ljava/lang/String; = null

.field public static final CONST_HMAC_SHA1:Ljava/lang/String; = "HmacSHA1"

.field public static final CONST_OAUTH_VERSION:Ljava/lang/String; = "1.0"

.field public static final CONST_SIGNATURE_METHOD:Ljava/lang/String; = "HMAC-SHA1"

.field public static SERVER:Ljava/lang/String; = null

.field private static final SP_SINA_OAUTH1_SECRET:Ljava/lang/String; = "SP_SINA_OAUTH1_SECRET"

.field private static final SP_SINA_OAUTH1_TOKEN:Ljava/lang/String; = "SP_SINA_OAUTH1_TOKEN"

.field private static final SP_SINA_SHARE:Ljava/lang/String; = "SP_SINA_SHARE"

.field private static final SP_SINA_SHARE_ACCESS_TOKEN:Ljava/lang/String; = "SP_SINA_SHARE_ACCESS_TOKEN"

.field private static final SP_SINA_SHARE_EXPIRE:Ljava/lang/String; = "SP_SINA_SHARE_EXPIRE"

.field private static final SP_SINA_SHARE_NAME:Ljava/lang/String; = "SP_SINA_SHARE_NAME"

.field public static URL_ACCESS_TOKEN:Ljava/lang/String; = null

.field public static final URL_ACTIVITY_CALLBACK:Ljava/lang/String; = "http://douban.fm/"

.field public static URL_AUTHENTICATION:Ljava/lang/String; = null

.field public static URL_AUTHORIZE:Ljava/lang/String; = null

.field public static final URL_OAUTH2_ACCESS_TOKEN:Ljava/lang/String; = "http://api.weibo.com/oauth2/get_oauth2_token"

.field public static final URL_OAUTH2_AUTHORIZE:Ljava/lang/String; = "https://api.weibo.com/oauth2/authorize"

.field public static final URL_OAUTH2_REQUEST:Ljava/lang/String; = "https://api.weibo.com/2/users/show.json"

.field public static final URL_OAUTH2_SHARE:Ljava/lang/String; = "https://api.weibo.com/2/statuses/upload_url_text.json"

.field public static URL_OAUTH_TOKEN:Ljava/lang/String;


# instance fields
.field private oldSecret:Ljava/lang/String;

.field private oldToken:Ljava/lang/String;

.field private sp:Landroid/content/SharedPreferences;

.field public uid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "http://api.t.sina.com.cn/"

    sput-object v0, Lcom/douban/share/SinaTokenManager;->SERVER:Ljava/lang/String;

    .line 21
    const-string v0, "http://api.t.sina.com.cn/oauth/request_token"

    sput-object v0, Lcom/douban/share/SinaTokenManager;->URL_OAUTH_TOKEN:Ljava/lang/String;

    .line 22
    const-string v0, "http://api.t.sina.com.cn/oauth/authorize"

    sput-object v0, Lcom/douban/share/SinaTokenManager;->URL_AUTHORIZE:Ljava/lang/String;

    .line 23
    const-string v0, "http://api.t.sina.com.cn/oauth/access_token"

    sput-object v0, Lcom/douban/share/SinaTokenManager;->URL_ACCESS_TOKEN:Ljava/lang/String;

    .line 24
    const-string v0, "https://api.t.sina.com.cn/oauth/authenticate"

    sput-object v0, Lcom/douban/share/SinaTokenManager;->URL_AUTHENTICATION:Ljava/lang/String;

    .line 32
    const-string v0, "3163308509"

    sput-object v0, Lcom/douban/share/SinaTokenManager;->APP_KEY:Ljava/lang/String;

    .line 34
    const-string v0, "71d5c2c8c3e5a507558d78fabc34e096"

    sput-object v0, Lcom/douban/share/SinaTokenManager;->APP_SECRET:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/douban/share/ShareToken;-><init>()V

    .line 63
    const-string v0, "SP_SINA_SHARE"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/douban/share/SinaTokenManager;->sp:Landroid/content/SharedPreferences;

    .line 64
    invoke-direct {p0}, Lcom/douban/share/SinaTokenManager;->initFromSP()V

    .line 65
    return-void
.end method

.method public static base64Encode([B)[C
    .locals 10
    .parameter "data"

    .prologue
    const/16 v8, 0x40

    .line 341
    const-string v7, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/="

    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 342
    .local v0, alphabet:[C
    array-length v7, p0

    add-int/lit8 v7, v7, 0x2

    div-int/lit8 v7, v7, 0x3

    mul-int/lit8 v7, v7, 0x4

    new-array v3, v7, [C

    .line 343
    .local v3, out:[C
    const/4 v1, 0x0

    .local v1, i:I
    const/4 v2, 0x0

    .local v2, index:I
    :goto_0
    array-length v7, p0

    if-ge v1, v7, :cond_4

    .line 344
    const/4 v4, 0x0

    .line 345
    .local v4, quad:Z
    const/4 v5, 0x0

    .line 346
    .local v5, trip:Z
    aget-byte v7, p0, v1

    and-int/lit16 v6, v7, 0xff

    .line 347
    .local v6, val:I
    shl-int/lit8 v6, v6, 0x8

    .line 348
    add-int/lit8 v7, v1, 0x1

    array-length v9, p0

    if-ge v7, v9, :cond_0

    .line 349
    add-int/lit8 v7, v1, 0x1

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v6, v7

    .line 350
    const/4 v5, 0x1

    .line 352
    :cond_0
    shl-int/lit8 v6, v6, 0x8

    .line 353
    add-int/lit8 v7, v1, 0x2

    array-length v9, p0

    if-ge v7, v9, :cond_1

    .line 354
    add-int/lit8 v7, v1, 0x2

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v6, v7

    .line 355
    const/4 v4, 0x1

    .line 357
    :cond_1
    add-int/lit8 v9, v2, 0x3

    if-eqz v4, :cond_2

    and-int/lit8 v7, v6, 0x3f

    :goto_1
    aget-char v7, v0, v7

    aput-char v7, v3, v9

    .line 358
    shr-int/lit8 v6, v6, 0x6

    .line 359
    add-int/lit8 v9, v2, 0x2

    if-eqz v5, :cond_3

    and-int/lit8 v7, v6, 0x3f

    :goto_2
    aget-char v7, v0, v7

    aput-char v7, v3, v9

    .line 360
    shr-int/lit8 v6, v6, 0x6

    .line 361
    add-int/lit8 v7, v2, 0x1

    and-int/lit8 v9, v6, 0x3f

    aget-char v9, v0, v9

    aput-char v9, v3, v7

    .line 362
    shr-int/lit8 v6, v6, 0x6

    .line 363
    add-int/lit8 v7, v2, 0x0

    and-int/lit8 v9, v6, 0x3f

    aget-char v9, v0, v9

    aput-char v9, v3, v7

    .line 343
    add-int/lit8 v1, v1, 0x3

    add-int/lit8 v2, v2, 0x4

    goto :goto_0

    :cond_2
    move v7, v8

    .line 357
    goto :goto_1

    :cond_3
    move v7, v8

    .line 359
    goto :goto_2

    .line 365
    .end local v4           #quad:Z
    .end local v5           #trip:Z
    .end local v6           #val:I
    :cond_4
    return-object v3
.end method

.method public static constructRequestURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "url"

    .prologue
    const/16 v7, 0x8

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 286
    const-string v4, "?"

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 287
    .local v2, index:I
    if-eq v6, v2, :cond_0

    .line 288
    invoke-virtual {p0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 290
    :cond_0
    const-string v4, "/"

    invoke-virtual {p0, v4, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 291
    .local v3, slashIndex:I
    invoke-virtual {p0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 292
    .local v0, baseURL:Ljava/lang/String;
    const-string v4, ":"

    invoke-virtual {v0, v4, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 293
    .local v1, colonIndex:I
    if-eq v6, v1, :cond_1

    .line 295
    const-string v4, "http://"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, ":80"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 297
    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 303
    :cond_1
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 305
    return-object p0

    .line 298
    :cond_2
    const-string v4, "https://"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, ":443"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 300
    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "value"

    .prologue
    .line 312
    const/4 v1, 0x0

    .line 314
    .local v1, encoded:Ljava/lang/String;
    :try_start_0
    const-string v4, "UTF-8"

    invoke-static {p0, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 317
    :goto_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 319
    .local v0, buf:Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 320
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 321
    .local v2, focus:C
    const/16 v4, 0x2a

    if-ne v2, v4, :cond_0

    .line 322
    const-string v4, "%2A"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 319
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 323
    :cond_0
    const/16 v4, 0x2b

    if-ne v2, v4, :cond_1

    .line 324
    const-string v4, "%20"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 325
    :cond_1
    const/16 v4, 0x25

    if-ne v2, v4, :cond_2

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_2

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x37

    if-ne v4, v5, :cond_2

    add-int/lit8 v4, v3, 0x2

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x45

    if-ne v4, v5, :cond_2

    .line 327
    const/16 v4, 0x7e

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 328
    add-int/lit8 v3, v3, 0x2

    goto :goto_2

    .line 330
    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 333
    .end local v2           #focus:C
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 315
    .end local v0           #buf:Ljava/lang/StringBuffer;
    .end local v3           #i:I
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public static encodeParameters(Lfm/douban/net/ParamBundle;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .parameter "postParams"
    .parameter "splitter"
    .parameter "quot"

    .prologue
    .line 263
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 264
    .local v0, buf:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lfm/douban/net/ParamBundle;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 265
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-eqz v2, :cond_1

    .line 266
    if-eqz p2, :cond_0

    .line 267
    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 269
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 271
    :cond_1
    invoke-virtual {p0, v1}, Lfm/douban/net/ParamBundle;->getKey(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/douban/share/SinaTokenManager;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 272
    if-eqz p2, :cond_2

    .line 273
    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 275
    :cond_2
    invoke-virtual {p0, v1}, Lfm/douban/net/ParamBundle;->getValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/douban/share/SinaTokenManager;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 264
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 277
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-eqz v2, :cond_4

    .line 278
    if-eqz p2, :cond_4

    .line 279
    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 282
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private generateAuthParameters(JJ)Lfm/douban/net/ParamBundle;
    .locals 3
    .parameter "nonce"
    .parameter "timestamp"

    .prologue
    .line 252
    new-instance v0, Lfm/douban/net/ParamBundle;

    invoke-direct {v0}, Lfm/douban/net/ParamBundle;-><init>()V

    .line 253
    .local v0, p:Lfm/douban/net/ParamBundle;
    const-string v1, "oauth_consumer_key"

    sget-object v2, Lcom/douban/share/SinaTokenManager;->APP_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lfm/douban/net/ParamBundle;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const-string v1, "oauth_nonce"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lfm/douban/net/ParamBundle;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    const-string v1, "oauth_signature_method"

    const-string v2, "HMAC-SHA1"

    invoke-virtual {v0, v1, v2}, Lfm/douban/net/ParamBundle;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const-string v1, "oauth_timestamp"

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lfm/douban/net/ParamBundle;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    const-string v1, "oauth_version"

    const-string v2, "1.0"

    invoke-virtual {v0, v1, v2}, Lfm/douban/net/ParamBundle;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    const-string v1, "oauth_token"

    iget-object v2, p0, Lcom/douban/share/SinaTokenManager;->oldToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lfm/douban/net/ParamBundle;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    return-object v0
.end method

.method private generateAuthSignature(Ljava/lang/String;Lfm/douban/net/ParamBundle;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "method"
    .parameter "signatureParams"
    .parameter "url"

    .prologue
    .line 233
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {p3}, Lcom/douban/share/SinaTokenManager;->constructRequestURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/douban/share/SinaTokenManager;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 234
    .local v0, base:Ljava/lang/StringBuffer;
    const-string v2, "&"

    const/4 v3, 0x0

    invoke-static {p2, v2, v3}, Lcom/douban/share/SinaTokenManager;->encodeParameters(Lfm/douban/net/ParamBundle;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/douban/share/SinaTokenManager;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 235
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 236
    .local v1, oauthBaseString:Ljava/lang/String;
    return-object v1
.end method

.method private generateSignature(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 221
    const/4 v0, 0x0

    .line 222
    .local v0, byteHMAC:[B
    const-string v4, "HmacSHA1"

    invoke-static {v4}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    .line 223
    .local v1, mac:Ljavax/crypto/Mac;
    const/4 v3, 0x0

    .line 224
    .local v3, spec:Ljavax/crypto/spec/SecretKeySpec;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/douban/share/SinaTokenManager;->APP_SECRET:Ljava/lang/String;

    invoke-static {v5}, Lcom/douban/share/SinaTokenManager;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/douban/share/SinaTokenManager;->oldSecret:Ljava/lang/String;

    invoke-static {v5}, Lcom/douban/share/SinaTokenManager;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 225
    .local v2, oauthSignature:Ljava/lang/String;
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    .end local v3           #spec:Ljavax/crypto/spec/SecretKeySpec;
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const-string v5, "HmacSHA1"

    invoke-direct {v3, v4, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 226
    .restart local v3       #spec:Ljavax/crypto/spec/SecretKeySpec;
    invoke-virtual {v1, v3}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 227
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v0

    .line 228
    invoke-static {v0}, Lcom/douban/share/SinaTokenManager;->base64Encode([B)[C

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private generateSignatureParameters(JJLfm/douban/net/ParamBundle;Ljava/lang/String;)Lfm/douban/net/ParamBundle;
    .locals 3
    .parameter "nonce"
    .parameter "timestamp"
    .parameter "params"
    .parameter "url"

    .prologue
    .line 240
    new-instance v0, Lfm/douban/net/ParamBundle;

    invoke-direct {v0}, Lfm/douban/net/ParamBundle;-><init>()V

    .line 241
    .local v0, p:Lfm/douban/net/ParamBundle;
    const-string v1, "oauth_consumer_key"

    sget-object v2, Lcom/douban/share/SinaTokenManager;->APP_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lfm/douban/net/ParamBundle;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const-string v1, "oauth_nonce"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lfm/douban/net/ParamBundle;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const-string v1, "oauth_signature_method"

    const-string v2, "HMAC-SHA1"

    invoke-virtual {v0, v1, v2}, Lfm/douban/net/ParamBundle;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const-string v1, "oauth_timestamp"

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lfm/douban/net/ParamBundle;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const-string v1, "oauth_token"

    iget-object v2, p0, Lcom/douban/share/SinaTokenManager;->oldToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lfm/douban/net/ParamBundle;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const-string v1, "oauth_version"

    const-string v2, "1.0"

    invoke-virtual {v0, v1, v2}, Lfm/douban/net/ParamBundle;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const-string v1, "source"

    sget-object v2, Lcom/douban/share/SinaTokenManager;->APP_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lfm/douban/net/ParamBundle;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    return-object v0
.end method

.method private declared-synchronized initFromSP()V
    .locals 4

    .prologue
    .line 173
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/douban/share/SinaTokenManager;->loadToken()V

    .line 175
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 178
    .local v0, current:J
    iget-wide v2, p0, Lcom/douban/share/SinaTokenManager;->expireTime:J

    cmp-long v2, v2, v0

    if-gez v2, :cond_0

    .line 179
    invoke-virtual {p0}, Lcom/douban/share/SinaTokenManager;->removeToken()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    :cond_0
    monitor-exit p0

    return-void

    .line 173
    .end local v0           #current:J
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private loadToken()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 164
    iget-object v0, p0, Lcom/douban/share/SinaTokenManager;->sp:Landroid/content/SharedPreferences;

    const-string v1, "SP_SINA_SHARE_ACCESS_TOKEN"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/douban/share/SinaTokenManager;->accessToken:Ljava/lang/String;

    .line 165
    iget-object v0, p0, Lcom/douban/share/SinaTokenManager;->sp:Landroid/content/SharedPreferences;

    const-string v1, "SP_SINA_SHARE_NAME"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/douban/share/SinaTokenManager;->name:Ljava/lang/String;

    .line 166
    iget-object v0, p0, Lcom/douban/share/SinaTokenManager;->sp:Landroid/content/SharedPreferences;

    const-string v1, "SP_SINA_SHARE_EXPIRE"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/douban/share/SinaTokenManager;->expireTime:J

    .line 167
    return-void
.end method

.method private storeTokens()V
    .locals 4

    .prologue
    .line 188
    iget-object v1, p0, Lcom/douban/share/SinaTokenManager;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 189
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v1, p0, Lcom/douban/share/SinaTokenManager;->accessToken:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 190
    const-string v1, "SP_SINA_SHARE_ACCESS_TOKEN"

    iget-object v2, p0, Lcom/douban/share/SinaTokenManager;->accessToken:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 191
    const-string v1, "SP_SINA_SHARE_EXPIRE"

    iget-wide v2, p0, Lcom/douban/share/SinaTokenManager;->expireTime:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 192
    const-string v1, "SP_SINA_SHARE_NAME"

    iget-object v2, p0, Lcom/douban/share/SinaTokenManager;->name:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 196
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 197
    return-void

    .line 194
    :cond_0
    invoke-virtual {p0}, Lcom/douban/share/SinaTokenManager;->removeToken()V

    goto :goto_0
.end method


# virtual methods
.method public generateAuth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 18
    .parameter "method"
    .parameter "url"
    .parameter "aPP_KEY"
    .parameter "aPP_SECRET"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 202
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    div-long v6, v14, v16

    .line 203
    .local v6, timestamp:J
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    invoke-virtual {v3}, Ljava/util/Random;->nextInt()I

    move-result v3

    int-to-long v14, v3

    add-long v4, v6, v14

    .line 205
    .local v4, nonce:J
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6, v7}, Lcom/douban/share/SinaTokenManager;->generateAuthParameters(JJ)Lfm/douban/net/ParamBundle;

    move-result-object v10

    .line 207
    .local v10, authParams:Lfm/douban/net/ParamBundle;
    new-instance v8, Lfm/douban/net/ParamBundle;

    invoke-direct {v8}, Lfm/douban/net/ParamBundle;-><init>()V

    .line 208
    .local v8, params:Lfm/douban/net/ParamBundle;
    const-string v3, "source"

    sget-object v9, Lcom/douban/share/SinaTokenManager;->APP_KEY:Ljava/lang/String;

    invoke-virtual {v8, v3, v9}, Lfm/douban/net/ParamBundle;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v3, p0

    move-object/from16 v9, p2

    .line 209
    invoke-direct/range {v3 .. v9}, Lcom/douban/share/SinaTokenManager;->generateSignatureParameters(JJLfm/douban/net/ParamBundle;Ljava/lang/String;)Lfm/douban/net/ParamBundle;

    move-result-object v13

    .line 211
    .local v13, signatureParams:Lfm/douban/net/ParamBundle;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v13, v2}, Lcom/douban/share/SinaTokenManager;->generateAuthSignature(Ljava/lang/String;Lfm/douban/net/ParamBundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 213
    .local v11, oauthBaseString:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/douban/share/SinaTokenManager;->generateSignature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 214
    .local v12, signature:Ljava/lang/String;
    const-string v3, "oauth_signature"

    invoke-virtual {v10, v3, v12}, Lfm/douban/net/ParamBundle;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "OAuth "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, ","

    const/4 v14, 0x1

    invoke-static {v10, v9, v14}, Lcom/douban/share/SinaTokenManager;->encodeParameters(Lfm/douban/net/ParamBundle;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/douban/share/SinaTokenManager;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/douban/share/SinaTokenManager;->accessToken:Ljava/lang/String;

    .line 72
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/douban/share/SinaTokenManager;->isAvailable()Z

    .line 110
    iget-object v0, p0, Lcom/douban/share/SinaTokenManager;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOldSecret()Ljava/lang/String;
    .locals 3

    .prologue
    .line 148
    iget-object v0, p0, Lcom/douban/share/SinaTokenManager;->oldSecret:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/douban/share/SinaTokenManager;->sp:Landroid/content/SharedPreferences;

    const-string v1, "SP_SINA_OAUTH1_SECRET"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/douban/share/SinaTokenManager;->oldSecret:Ljava/lang/String;

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/douban/share/SinaTokenManager;->oldSecret:Ljava/lang/String;

    return-object v0
.end method

.method public getOldToken()Ljava/lang/String;
    .locals 3

    .prologue
    .line 141
    iget-object v0, p0, Lcom/douban/share/SinaTokenManager;->oldToken:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/douban/share/SinaTokenManager;->sp:Landroid/content/SharedPreferences;

    const-string v1, "SP_SINA_OAUTH1_TOKEN"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/douban/share/SinaTokenManager;->oldToken:Ljava/lang/String;

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/douban/share/SinaTokenManager;->oldToken:Ljava/lang/String;

    return-object v0
.end method

.method public isAvailable()Z
    .locals 4

    .prologue
    .line 77
    iget-object v0, p0, Lcom/douban/share/SinaTokenManager;->accessToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/douban/share/SinaTokenManager;->accessToken:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/douban/share/SinaTokenManager;->expireTime:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 78
    const/4 v0, 0x1

    .line 81
    :goto_0
    return v0

    .line 80
    :cond_0
    invoke-virtual {p0}, Lcom/douban/share/SinaTokenManager;->removeToken()V

    .line 81
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeToken()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 85
    iput-object v3, p0, Lcom/douban/share/SinaTokenManager;->accessToken:Ljava/lang/String;

    .line 86
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/douban/share/SinaTokenManager;->expireTime:J

    .line 87
    iput-object v3, p0, Lcom/douban/share/SinaTokenManager;->name:Ljava/lang/String;

    .line 89
    iget-object v1, p0, Lcom/douban/share/SinaTokenManager;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 90
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "SP_SINA_SHARE_EXPIRE"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 91
    const-string v1, "SP_SINA_SHARE_ACCESS_TOKEN"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 92
    const-string v1, "SP_SINA_SHARE_NAME"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 93
    const-string v1, "SP_SINA_OAUTH1_TOKEN"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 94
    const-string v1, "SP_SINA_OAUTH1_SECRET"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 95
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 96
    invoke-super {p0}, Lcom/douban/share/ShareToken;->removeToken()V

    .line 97
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 101
    invoke-super {p0, p1}, Lcom/douban/share/ShareToken;->setName(Ljava/lang/String;)V

    .line 102
    iget-object v1, p0, Lcom/douban/share/SinaTokenManager;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 103
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "SP_SINA_SHARE_NAME"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 104
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 105
    return-void
.end method

.method public setOldToken(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "oldtoken"
    .parameter "oldsecret"

    .prologue
    .line 155
    iput-object p1, p0, Lcom/douban/share/SinaTokenManager;->oldToken:Ljava/lang/String;

    .line 156
    iput-object p2, p0, Lcom/douban/share/SinaTokenManager;->oldSecret:Ljava/lang/String;

    .line 157
    iget-object v1, p0, Lcom/douban/share/SinaTokenManager;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 158
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "SP_SINA_OAUTH1_TOKEN"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 159
    const-string v1, "SP_SINA_OAUTH1_SECRET"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 160
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 161
    return-void
.end method

.method public updateExpireTime(J)V
    .locals 0
    .parameter "time"

    .prologue
    .line 115
    invoke-super {p0, p1, p2}, Lcom/douban/share/ShareToken;->updateExpireTime(J)V

    .line 116
    invoke-direct {p0}, Lcom/douban/share/SinaTokenManager;->storeTokens()V

    .line 117
    return-void
.end method

.method public updateTokens(Ljava/lang/String;)V
    .locals 8
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 120
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 121
    .local v3, uri:Landroid/net/Uri;
    const-string v4, "access_token"

    invoke-virtual {v3, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/douban/share/SinaTokenManager;->accessToken:Ljava/lang/String;

    .line 122
    const-string v4, "expires_in"

    invoke-virtual {v3, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 124
    .local v2, expire:Ljava/lang/String;
    const-string v4, "uid"

    invoke-virtual {v3, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/douban/share/SinaTokenManager;->uid:Ljava/lang/String;

    .line 125
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 126
    .local v0, current:J
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/douban/share/SinaTokenManager;->expireTime:J

    .line 128
    invoke-direct {p0}, Lcom/douban/share/SinaTokenManager;->storeTokens()V

    .line 129
    return-void
.end method

.method public updateTokens(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "at"
    .parameter "exp"
    .parameter "nam"

    .prologue
    .line 132
    iput-object p1, p0, Lcom/douban/share/SinaTokenManager;->accessToken:Ljava/lang/String;

    .line 134
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 135
    .local v0, current:J
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/douban/share/SinaTokenManager;->expireTime:J

    .line 136
    iput-object p3, p0, Lcom/douban/share/SinaTokenManager;->name:Ljava/lang/String;

    .line 137
    invoke-direct {p0}, Lcom/douban/share/SinaTokenManager;->storeTokens()V

    .line 138
    return-void
.end method
