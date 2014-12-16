.class Lcom/facebook/ads/internal/AdAnalogData$AdSensorEventListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/ads/internal/AdAnalogData$1;)V
    .locals 0
    .parameter

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/facebook/ads/internal/AdAnalogData$AdSensorEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 160
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2
    .parameter

    .prologue
    .line 148
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-static {}, Lcom/facebook/ads/internal/AdAnalogData;->access$100()Landroid/hardware/Sensor;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 149
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-static {v0}, Lcom/facebook/ads/internal/AdAnalogData;->access$202([F)[F

    .line 154
    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/facebook/ads/internal/AdAnalogData;->stopUpdate(Lcom/facebook/ads/internal/AdAnalogData$AdSensorEventListener;)V

    .line 155
    return-void

    .line 150
    :cond_1
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-static {}, Lcom/facebook/ads/internal/AdAnalogData;->access$300()Landroid/hardware/Sensor;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 151
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-static {v0}, Lcom/facebook/ads/internal/AdAnalogData;->access$402([F)[F

    goto :goto_0
.end method
