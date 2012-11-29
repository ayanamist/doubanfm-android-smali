.class public final enum Lcom/feedback/NotificationType;
.super Ljava/lang/Enum;


# static fields
.field public static final enum AlertDialog:Lcom/feedback/NotificationType;

.field public static final enum NotificationBar:Lcom/feedback/NotificationType;

.field private static final synthetic a:[Lcom/feedback/NotificationType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/feedback/NotificationType;

    const-string v1, "AlertDialog"

    invoke-direct {v0, v1, v2}, Lcom/feedback/NotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/feedback/NotificationType;->AlertDialog:Lcom/feedback/NotificationType;

    new-instance v0, Lcom/feedback/NotificationType;

    const-string v1, "NotificationBar"

    invoke-direct {v0, v1, v3}, Lcom/feedback/NotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/feedback/NotificationType;->NotificationBar:Lcom/feedback/NotificationType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/feedback/NotificationType;

    sget-object v1, Lcom/feedback/NotificationType;->AlertDialog:Lcom/feedback/NotificationType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/feedback/NotificationType;->NotificationBar:Lcom/feedback/NotificationType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/feedback/NotificationType;->a:[Lcom/feedback/NotificationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/feedback/NotificationType;
    .locals 1

    const-class v0, Lcom/feedback/NotificationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/feedback/NotificationType;

    return-object v0
.end method

.method public static values()[Lcom/feedback/NotificationType;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/feedback/NotificationType;->a:[Lcom/feedback/NotificationType;

    array-length v1, v0

    new-array v2, v1, [Lcom/feedback/NotificationType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
