.class public Lfm/douban/util/ShakeMonitor;
.super Ljava/lang/Object;
.source "ShakeMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfm/douban/util/ShakeMonitor$ShakeHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ShakeMonitor"


# instance fields
.field private context:Landroid/content/Context;

.field private handler:Lfm/douban/util/ShakeMonitor$ShakeHandler;

.field private sensorEventListener:Landroid/hardware/SensorEventListener;

.field private sensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lfm/douban/util/ShakeMonitor$ShakeHandler;)V
    .locals 2
    .parameter "c"
    .parameter "h"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lfm/douban/util/ShakeMonitor;->context:Landroid/content/Context;

    .line 23
    iput-object p2, p0, Lfm/douban/util/ShakeMonitor;->handler:Lfm/douban/util/ShakeMonitor$ShakeHandler;

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lfm/douban/util/ShakeMonitor;->sensorEventListener:Landroid/hardware/SensorEventListener;

    .line 25
    iget-object v0, p0, Lfm/douban/util/ShakeMonitor;->context:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lfm/douban/util/ShakeMonitor;->sensorManager:Landroid/hardware/SensorManager;

    .line 26
    return-void
.end method

.method private makeSensorEventListener()V
    .locals 2

    .prologue
    .line 49
    const-string v0, "ShakeMonitor"

    const-string v1, "makeSensorEventListener"

    invoke-static {v0, v1}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    new-instance v0, Lfm/douban/util/ShakeMonitor$1;

    invoke-direct {v0, p0}, Lfm/douban/util/ShakeMonitor$1;-><init>(Lfm/douban/util/ShakeMonitor;)V

    iput-object v0, p0, Lfm/douban/util/ShakeMonitor;->sensorEventListener:Landroid/hardware/SensorEventListener;

    .line 88
    return-void
.end method


# virtual methods
.method public disable()V
    .locals 2

    .prologue
    .line 36
    const-string v0, "ShakeMonitor"

    const-string v1, "shakeDisable"

    invoke-static {v0, v1}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    iget-object v0, p0, Lfm/douban/util/ShakeMonitor;->sensorEventListener:Landroid/hardware/SensorEventListener;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lfm/douban/util/ShakeMonitor;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lfm/douban/util/ShakeMonitor;->sensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lfm/douban/util/ShakeMonitor;->sensorEventListener:Landroid/hardware/SensorEventListener;

    .line 41
    :cond_0
    return-void
.end method

.method public enable()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 29
    const-string v1, "ShakeMonitor"

    const-string v2, "shakeEnable"

    invoke-static {v1, v2}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    iget-object v1, p0, Lfm/douban/util/ShakeMonitor;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 31
    .local v0, sensor:Landroid/hardware/Sensor;
    invoke-direct {p0}, Lfm/douban/util/ShakeMonitor;->makeSensorEventListener()V

    .line 32
    iget-object v1, p0, Lfm/douban/util/ShakeMonitor;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lfm/douban/util/ShakeMonitor;->sensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v1, v2, v0, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 33
    return-void
.end method

.method public onShake()V
    .locals 2

    .prologue
    .line 44
    const-string v0, "ShakeMonitor"

    const-string v1, "onShake"

    invoke-static {v0, v1}, Lfm/douban/util/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iget-object v0, p0, Lfm/douban/util/ShakeMonitor;->handler:Lfm/douban/util/ShakeMonitor$ShakeHandler;

    invoke-interface {v0}, Lfm/douban/util/ShakeMonitor$ShakeHandler;->onShake()V

    .line 46
    return-void
.end method
