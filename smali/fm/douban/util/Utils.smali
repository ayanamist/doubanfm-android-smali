.class public Lfm/douban/util/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static final CONST_HMAC_SHA1:Ljava/lang/String; = "HmacSHA1"

.field public static final CONST_SIGNATURE_METHOD:Ljava/lang/String; = "HMAC-SHA1"

.field private static final EmailRegEx:Ljava/lang/String; = "^[_\\.0-9a-zA-Z+-]+@([0-9a-zA-Z]+[0-9a-zA-Z-]*\\.)+[a-zA-Z]{2,4}$"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static base64Encode([B)[C
    .locals 10
    .parameter "data"

    .prologue
    const/16 v8, 0x40

    .line 130
    const-string v7, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/="

    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 131
    .local v0, alphabet:[C
    array-length v7, p0

    add-int/lit8 v7, v7, 0x2

    div-int/lit8 v7, v7, 0x3

    mul-int/lit8 v7, v7, 0x4

    new-array v3, v7, [C

    .line 132
    .local v3, out:[C
    const/4 v1, 0x0

    .local v1, i:I
    const/4 v2, 0x0

    .local v2, index:I
    :goto_0
    array-length v7, p0

    if-ge v1, v7, :cond_4

    .line 133
    const/4 v4, 0x0

    .line 134
    .local v4, quad:Z
    const/4 v5, 0x0

    .line 135
    .local v5, trip:Z
    aget-byte v7, p0, v1

    and-int/lit16 v6, v7, 0xff

    .line 136
    .local v6, val:I
    shl-int/lit8 v6, v6, 0x8

    .line 137
    add-int/lit8 v7, v1, 0x1

    array-length v9, p0

    if-ge v7, v9, :cond_0

    .line 138
    add-int/lit8 v7, v1, 0x1

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v6, v7

    .line 139
    const/4 v5, 0x1

    .line 141
    :cond_0
    shl-int/lit8 v6, v6, 0x8

    .line 142
    add-int/lit8 v7, v1, 0x2

    array-length v9, p0

    if-ge v7, v9, :cond_1

    .line 143
    add-int/lit8 v7, v1, 0x2

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v6, v7

    .line 144
    const/4 v4, 0x1

    .line 146
    :cond_1
    add-int/lit8 v9, v2, 0x3

    if-eqz v4, :cond_2

    and-int/lit8 v7, v6, 0x3f

    :goto_1
    aget-char v7, v0, v7

    aput-char v7, v3, v9

    .line 147
    shr-int/lit8 v6, v6, 0x6

    .line 148
    add-int/lit8 v9, v2, 0x2

    if-eqz v5, :cond_3

    and-int/lit8 v7, v6, 0x3f

    :goto_2
    aget-char v7, v0, v7

    aput-char v7, v3, v9

    .line 149
    shr-int/lit8 v6, v6, 0x6

    .line 150
    add-int/lit8 v7, v2, 0x1

    and-int/lit8 v9, v6, 0x3f

    aget-char v9, v0, v9

    aput-char v9, v3, v7

    .line 151
    shr-int/lit8 v6, v6, 0x6

    .line 152
    add-int/lit8 v7, v2, 0x0

    and-int/lit8 v9, v6, 0x3f

    aget-char v9, v0, v9

    aput-char v9, v3, v7

    .line 132
    add-int/lit8 v1, v1, 0x3

    add-int/lit8 v2, v2, 0x4

    goto :goto_0

    :cond_2
    move v7, v8

    .line 146
    goto :goto_1

    :cond_3
    move v7, v8

    .line 148
    goto :goto_2

    .line 154
    .end local v4           #quad:Z
    .end local v5           #trip:Z
    .end local v6           #val:I
    :cond_4
    return-object v3
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "value"

    .prologue
    .line 100
    const/4 v1, 0x0

    .line 102
    .local v1, encoded:Ljava/lang/String;
    :try_start_0
    const-string v4, "UTF-8"

    invoke-static {p0, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 105
    :goto_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 107
    .local v0, buf:Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 108
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 109
    .local v2, focus:C
    const/16 v4, 0x2a

    if-ne v2, v4, :cond_0

    .line 110
    const-string v4, "%2A"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 107
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 111
    :cond_0
    const/16 v4, 0x2b

    if-ne v2, v4, :cond_1

    .line 112
    const-string v4, "%20"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 113
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

    .line 115
    const/16 v4, 0x7e

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 116
    add-int/lit8 v3, v3, 0x2

    goto :goto_2

    .line 118
    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 121
    .end local v2           #focus:C
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 103
    .end local v0           #buf:Ljava/lang/StringBuffer;
    .end local v3           #i:I
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public static encodeUrl(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 6
    .parameter "parameters"

    .prologue
    .line 61
    if-nez p0, :cond_0

    .line 62
    const-string v4, ""

    .line 75
    :goto_0
    return-object v4

    .line 64
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .local v3, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 66
    .local v0, first:Z
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 67
    .local v2, key:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 68
    const/4 v0, 0x0

    .line 72
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 70
    :cond_1
    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 75
    .end local v2           #key:Ljava/lang/String;
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private static getMD5([B)Ljava/lang/String;
    .locals 7
    .parameter "source"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 86
    const-string v6, "MD5"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 87
    .local v4, md5:Ljava/security/MessageDigest;
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 88
    .local v5, result:Ljava/lang/StringBuffer;
    invoke-virtual {v4, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .local v0, arr$:[B
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-byte v1, v0, v2

    .line 89
    .local v1, b:B
    and-int/lit16 v6, v1, 0xf0

    ushr-int/lit8 v6, v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 90
    and-int/lit8 v6, v1, 0xf

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 88
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 92
    .end local v1           #b:B
    :cond_0
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static makeGoingDialog(Landroid/content/Context;I)Landroid/app/ProgressDialog;
    .locals 3
    .parameter "context"
    .parameter "msg"

    .prologue
    const/4 v2, 0x1

    .line 29
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 30
    .local v0, dialog:Landroid/app/ProgressDialog;
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 31
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 32
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 33
    return-object v0
.end method

.method public static makeTimeString(I)Ljava/lang/CharSequence;
    .locals 3
    .parameter "milisecs"

    .prologue
    .line 57
    const-string v0, "mm:ss"

    int-to-long v1, p0

    invoke-static {v0, v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "string"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 79
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 80
    :cond_0
    const/4 v0, 0x0

    .line 82
    :goto_0
    return-object v0

    :cond_1
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lfm/douban/util/Utils;->getMD5([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static showToast(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "error"

    .prologue
    .line 37
    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 38
    .local v0, toast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 39
    return-void
.end method

.method public static showToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "text"

    .prologue
    .line 47
    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 48
    .local v0, toast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 49
    return-void
.end method

.method public static showToastLonger(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "error"

    .prologue
    .line 42
    const/4 v1, 0x1

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 43
    .local v0, toast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 44
    return-void
.end method

.method public static showToastLonger(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "text"

    .prologue
    .line 52
    const/4 v1, 0x1

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 53
    .local v0, toast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 54
    return-void
.end method

.method public static validateEmail(Ljava/lang/String;)Z
    .locals 2
    .parameter "email"

    .prologue
    .line 24
    const-string v1, "^[_\\.0-9a-zA-Z+-]+@([0-9a-zA-Z]+[0-9a-zA-Z-]*\\.)+[a-zA-Z]{2,4}$"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 25
    .local v0, pattern:Ljava/util/regex/Pattern;
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    return v1
.end method
