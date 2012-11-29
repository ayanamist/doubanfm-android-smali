.class Lfm/douban/util/ShakeMonitor$1;
.super Ljava/lang/Object;
.source "ShakeMonitor.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfm/douban/util/ShakeMonitor;->makeSensorEventListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final SHAKE_THRESHOLD:I = 0x4e2


# instance fields
.field lastShakeTime:J

.field lastUpdate:J

.field last_x:F

.field last_y:F

.field final synthetic this$0:Lfm/douban/util/ShakeMonitor;

.field x:F

.field y:F


# direct methods
.method constructor <init>(Lfm/douban/util/ShakeMonitor;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 50
    iput-object p1, p0, Lfm/douban/util/ShakeMonitor$1;->this$0:Lfm/douban/util/ShakeMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lfm/douban/util/ShakeMonitor$1;->lastShakeTime:J

    .line 52
    iput v2, p0, Lfm/douban/util/ShakeMonitor$1;->last_x:F

    iput v2, p0, Lfm/douban/util/ShakeMonitor$1;->last_y:F

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 56
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 9
    .parameter "e"

    .prologue
    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 62
    .local v1, curTime:J
    iget-wide v5, p0, Lfm/douban/util/ShakeMonitor$1;->lastUpdate:J

    sub-long v5, v1, v5

    const-wide/16 v7, 0x64

    cmp-long v5, v5, v7

    if-lez v5, :cond_2

    .line 63
    iget-wide v5, p0, Lfm/douban/util/ShakeMonitor$1;->lastUpdate:J

    sub-long v3, v1, v5

    .line 64
    .local v3, diffTime:J
    iput-wide v1, p0, Lfm/douban/util/ShakeMonitor$1;->lastUpdate:J

    .line 66
    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    iput v5, p0, Lfm/douban/util/ShakeMonitor$1;->x:F

    .line 67
    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    iput v5, p0, Lfm/douban/util/ShakeMonitor$1;->y:F

    .line 70
    const/4 v0, 0x0

    .line 72
    .local v0, acceChangeRate:F
    iget v5, p0, Lfm/douban/util/ShakeMonitor$1;->last_x:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_0

    .line 73
    iget v5, p0, Lfm/douban/util/ShakeMonitor$1;->x:F

    iget v6, p0, Lfm/douban/util/ShakeMonitor$1;->y:F

    add-float/2addr v5, v6

    iget v6, p0, Lfm/douban/util/ShakeMonitor$1;->last_x:F

    sub-float/2addr v5, v6

    iget v6, p0, Lfm/douban/util/ShakeMonitor$1;->last_y:F

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    long-to-float v6, v3

    div-float/2addr v5, v6

    const v6, 0x461c4000

    mul-float v0, v5, v6

    .line 78
    :cond_0
    const v5, 0x449c4000

    cmpl-float v5, v0, v5

    if-lez v5, :cond_1

    iget-wide v5, p0, Lfm/douban/util/ShakeMonitor$1;->lastShakeTime:J

    sub-long v5, v1, v5

    const-wide/16 v7, 0x7d0

    cmp-long v5, v5, v7

    if-lez v5, :cond_1

    .line 80
    iput-wide v1, p0, Lfm/douban/util/ShakeMonitor$1;->lastShakeTime:J

    .line 81
    iget-object v5, p0, Lfm/douban/util/ShakeMonitor$1;->this$0:Lfm/douban/util/ShakeMonitor;

    invoke-virtual {v5}, Lfm/douban/util/ShakeMonitor;->onShake()V

    .line 83
    :cond_1
    iget v5, p0, Lfm/douban/util/ShakeMonitor$1;->x:F

    iput v5, p0, Lfm/douban/util/ShakeMonitor$1;->last_x:F

    .line 84
    iget v5, p0, Lfm/douban/util/ShakeMonitor$1;->y:F

    iput v5, p0, Lfm/douban/util/ShakeMonitor$1;->last_y:F

    .line 86
    .end local v0           #acceChangeRate:F
    .end local v3           #diffTime:J
    :cond_2
    return-void
.end method
