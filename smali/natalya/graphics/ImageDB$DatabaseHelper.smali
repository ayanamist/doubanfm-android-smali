.class Lnatalya/graphics/ImageDB$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnatalya/graphics/ImageDB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DatabaseHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lnatalya/graphics/ImageDB;


# direct methods
.method public constructor <init>(Lnatalya/graphics/ImageDB;Landroid/content/Context;)V
    .locals 3

    iput-object p1, p0, Lnatalya/graphics/ImageDB$DatabaseHelper;->this$0:Lnatalya/graphics/ImageDB;

    const-string v0, "image.db"

    const/4 v1, 0x0

    invoke-static {}, Lnatalya/graphics/ImageDB;->access$000()I

    move-result v2

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    iget-object v0, p0, Lnatalya/graphics/ImageDB$DatabaseHelper;->this$0:Lnatalya/graphics/ImageDB;

    const-string v1, "image"

    invoke-virtual {v0, p1, v1}, Lnatalya/graphics/ImageDB;->addDomain(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    return-void
.end method
