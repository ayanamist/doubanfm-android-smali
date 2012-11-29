.class final enum Lfm/douban/service/Player$State;
.super Ljava/lang/Enum;
.source "Player.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfm/douban/service/Player;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lfm/douban/service/Player$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lfm/douban/service/Player$State;

.field public static final enum PAUSE:Lfm/douban/service/Player$State;

.field public static final enum PLAY:Lfm/douban/service/Player$State;

.field public static final enum PREPARE:Lfm/douban/service/Player$State;

.field public static final enum STOP:Lfm/douban/service/Player$State;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 33
    new-instance v0, Lfm/douban/service/Player$State;

    const-string v1, "STOP"

    invoke-direct {v0, v1, v2}, Lfm/douban/service/Player$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfm/douban/service/Player$State;->STOP:Lfm/douban/service/Player$State;

    new-instance v0, Lfm/douban/service/Player$State;

    const-string v1, "PAUSE"

    invoke-direct {v0, v1, v3}, Lfm/douban/service/Player$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfm/douban/service/Player$State;->PAUSE:Lfm/douban/service/Player$State;

    new-instance v0, Lfm/douban/service/Player$State;

    const-string v1, "PREPARE"

    invoke-direct {v0, v1, v4}, Lfm/douban/service/Player$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfm/douban/service/Player$State;->PREPARE:Lfm/douban/service/Player$State;

    new-instance v0, Lfm/douban/service/Player$State;

    const-string v1, "PLAY"

    invoke-direct {v0, v1, v5}, Lfm/douban/service/Player$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfm/douban/service/Player$State;->PLAY:Lfm/douban/service/Player$State;

    .line 32
    const/4 v0, 0x4

    new-array v0, v0, [Lfm/douban/service/Player$State;

    sget-object v1, Lfm/douban/service/Player$State;->STOP:Lfm/douban/service/Player$State;

    aput-object v1, v0, v2

    sget-object v1, Lfm/douban/service/Player$State;->PAUSE:Lfm/douban/service/Player$State;

    aput-object v1, v0, v3

    sget-object v1, Lfm/douban/service/Player$State;->PREPARE:Lfm/douban/service/Player$State;

    aput-object v1, v0, v4

    sget-object v1, Lfm/douban/service/Player$State;->PLAY:Lfm/douban/service/Player$State;

    aput-object v1, v0, v5

    sput-object v0, Lfm/douban/service/Player$State;->$VALUES:[Lfm/douban/service/Player$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lfm/douban/service/Player$State;
    .locals 1
    .parameter "name"

    .prologue
    .line 32
    const-class v0, Lfm/douban/service/Player$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lfm/douban/service/Player$State;

    return-object v0
.end method

.method public static values()[Lfm/douban/service/Player$State;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lfm/douban/service/Player$State;->$VALUES:[Lfm/douban/service/Player$State;

    invoke-virtual {v0}, [Lfm/douban/service/Player$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfm/douban/service/Player$State;

    return-object v0
.end method
