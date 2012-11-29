.class public Lfm/douban/util/NetworkHelper;
.super Ljava/lang/Object;
.source "NetworkHelper.java"


# static fields
.field private static final PREFERRED_APN_URI:Landroid/net/Uri; = null

.field private static final TAG:Ljava/lang/String; = "NetworkHelper"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lfm/douban/util/NetworkHelper;->PREFERRED_APN_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static acquireWifiLock(Landroid/content/Context;Ljava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;
    .locals 3
    .parameter "context"
    .parameter "tag"

    .prologue
    .line 96
    const-string v2, "wifi"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 98
    .local v1, wm:Landroid/net/wifi/WifiManager;
    invoke-virtual {v1, p1}, Landroid/net/wifi/WifiManager;->createWifiLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    .line 99
    .local v0, wl:Landroid/net/wifi/WifiManager$WifiLock;
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 100
    return-object v0
.end method

.method private static getNetworkInfo(Landroid/content/Intent;)Landroid/net/NetworkInfo;
    .locals 1
    .parameter "intent"

    .prologue
    .line 72
    const-string v0, "networkInfo"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    return-object v0
.end method

.method public static isActiveNetWorkWifi(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    .line 37
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 38
    .local v0, connectivity:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 40
    .local v1, info:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 41
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-ne v3, v2, :cond_0

    .line 46
    .end local v1           #info:Landroid/net/NetworkInfo;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isActiveNetworkMobile(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 50
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 51
    .local v0, connectivity:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 53
    .local v1, info:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 54
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-nez v2, :cond_0

    .line 55
    const/4 v2, 0x1

    .line 59
    .end local v1           #info:Landroid/net/NetworkInfo;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .locals 8
    .parameter "context"

    .prologue
    .line 21
    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 22
    .local v1, connectivity:Landroid/net/ConnectivityManager;
    if-eqz v1, :cond_1

    .line 23
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v4

    .line 24
    .local v4, infos:[Landroid/net/NetworkInfo;
    if-eqz v4, :cond_1

    .line 25
    move-object v0, v4

    .local v0, arr$:[Landroid/net/NetworkInfo;
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v3, v0, v2

    .line 26
    .local v3, info:Landroid/net/NetworkInfo;
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v6

    sget-object v7, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v6, v7, :cond_0

    .line 27
    const/4 v6, 0x1

    .line 32
    .end local v0           #arr$:[Landroid/net/NetworkInfo;
    .end local v2           #i$:I
    .end local v3           #info:Landroid/net/NetworkInfo;
    .end local v4           #infos:[Landroid/net/NetworkInfo;
    .end local v5           #len$:I
    :goto_1
    return v6

    .line 25
    .restart local v0       #arr$:[Landroid/net/NetworkInfo;
    .restart local v2       #i$:I
    .restart local v3       #info:Landroid/net/NetworkInfo;
    .restart local v4       #infos:[Landroid/net/NetworkInfo;
    .restart local v5       #len$:I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 32
    .end local v0           #arr$:[Landroid/net/NetworkInfo;
    .end local v2           #i$:I
    .end local v3           #info:Landroid/net/NetworkInfo;
    .end local v4           #infos:[Landroid/net/NetworkInfo;
    .end local v5           #len$:I
    :cond_1
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public static isNetworkAvailable(Landroid/content/Intent;)Z
    .locals 3
    .parameter "intent"

    .prologue
    const/4 v1, 0x0

    .line 64
    const-string v2, "noConnectivity"

    invoke-virtual {p0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 68
    :cond_0
    :goto_0
    return v1

    .line 67
    :cond_1
    invoke-static {p0}, Lfm/douban/util/NetworkHelper;->getNetworkInfo(Landroid/content/Intent;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 68
    .local v0, ni:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isNetworkMobile(Landroid/content/Intent;)Z
    .locals 6
    .parameter "intent"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 84
    invoke-static {p0}, Lfm/douban/util/NetworkHelper;->getNetworkInfo(Landroid/content/Intent;)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 85
    .local v1, ni:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_1

    .line 86
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-nez v4, :cond_0

    move v0, v2

    .line 87
    .local v0, isMobile:Z
    :goto_0
    if-eqz v0, :cond_1

    .line 88
    const-string v3, "NetworkHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Network sub type is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .end local v0           #isMobile:Z
    :goto_1
    return v2

    :cond_0
    move v0, v3

    .line 86
    goto :goto_0

    :cond_1
    move v2, v3

    .line 92
    goto :goto_1
.end method

.method public static isNetworkWifi(Landroid/content/Intent;)Z
    .locals 4
    .parameter "intent"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 76
    invoke-static {p0}, Lfm/douban/util/NetworkHelper;->getNetworkInfo(Landroid/content/Intent;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 77
    .local v0, ni:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_1

    .line 78
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-ne v3, v1, :cond_0

    .line 80
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 78
    goto :goto_0

    :cond_1
    move v1, v2

    .line 80
    goto :goto_0
.end method

.method public static isUsingWap(Landroid/content/Context;)Z
    .locals 18
    .parameter "context"

    .prologue
    .line 104
    const/16 v16, 0x0

    .line 105
    .local v16, isUsingWap:Z
    const/4 v8, 0x0

    .line 106
    .local v8, apnIndex:I
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lfm/douban/util/NetworkHelper;->PREFERRED_APN_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 108
    .local v10, c:Landroid/database/Cursor;
    if-eqz v10, :cond_3

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_3

    .line 110
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 111
    invoke-interface {v10}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v12

    .line 112
    .local v12, columnNames:[Ljava/lang/String;
    const/4 v15, 0x0

    .line 113
    .local v15, index:I
    move-object v9, v12

    .local v9, arr$:[Ljava/lang/String;
    array-length v0, v9

    move/from16 v17, v0

    .local v17, len$:I
    const/4 v14, 0x0

    .local v14, i$:I
    :goto_0
    move/from16 v0, v17

    if-ge v14, v0, :cond_1

    aget-object v11, v9, v14

    .line 114
    .local v11, cn:Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "apn"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    move v8, v15

    .line 117
    :cond_0
    add-int/lit8 v15, v15, 0x1

    .line 113
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 120
    .end local v11           #cn:Ljava/lang/String;
    :cond_1
    invoke-interface {v10, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 121
    .local v7, apn:Ljava/lang/String;
    if-eqz v7, :cond_2

    const-string v1, "wap"

    invoke-virtual {v7, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_2

    .line 122
    const/16 v16, 0x1

    .line 127
    .end local v7           #apn:Ljava/lang/String;
    .end local v9           #arr$:[Ljava/lang/String;
    .end local v12           #columnNames:[Ljava/lang/String;
    .end local v14           #i$:I
    .end local v15           #index:I
    .end local v17           #len$:I
    :cond_2
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 129
    :cond_3
    return v16

    .line 124
    :catch_0
    move-exception v13

    .line 125
    .local v13, e:Ljava/lang/Exception;
    const-string v1, "NetworkHelper"

    invoke-virtual {v13}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
