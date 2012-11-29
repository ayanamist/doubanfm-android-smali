.class public Lnatalya/net/HttpException400;
.super Ljava/io/IOException;


# static fields
.field public static final CODE_ACCESS_TOKEN_HAS_EXPIRED:I = 0x6a

.field public static final CODE_ACCESS_TOKEN_HAS_EXPIRED_SINCE_PASSWORD_CHANGED:I = 0x7b

.field public static final CODE_INVALID_ACCESS_TOKEN:I = 0x67

.field public static final CODE_INVALID_REFRESH_TOKEN:I = 0x77

.field public static final CODE_INVALID_USER:I = 0x79

.field public static final CODE_TOKEN_REFRESHED:I = -0x1

.field public static final CODE_UNKNOWN:I = 0x3e7

.field public static final CODE_USERNAME_PASSWORD_MISMATCH:I = 0x78

.field public static final CODE_USER_HAS_BLOCKED:I = 0x7a

.field public static final ERR_USER_DESC_FORBIDDEN:I = 0x450

.field public static final ERR_USER_NAME_BANNED:I = 0x44c

.field public static final ERR_USER_NAME_CHANGE_LIMIT:I = 0x44e

.field public static final ERR_USER_NAME_FORMAT:I = 0x44f

.field public static final ERR_USER_UID_FORMAT:I = 0x451

.field public static final ERR_USER_UID_TOKEN:I = 0x452


# instance fields
.field public code:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    iput p1, p0, Lnatalya/net/HttpException400;->code:I

    return-void
.end method
