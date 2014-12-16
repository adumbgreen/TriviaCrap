.class public Lcom/facebook/ads/internal/AdAnalogData;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static accelerometer:Landroid/hardware/Sensor;

.field private static volatile accelerometerValues:[F

.field private static analogInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static gyroscope:Landroid/hardware/Sensor;

.field private static volatile gyroscopeValues:[F

.field private static sensorDimensions:[Ljava/lang/String;

.field private static sensorManager:Landroid/hardware/SensorManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 43
    sput-object v0, Lcom/facebook/ads/internal/AdAnalogData;->sensorManager:Landroid/hardware/SensorManager;

    .line 44
    sput-object v0, Lcom/facebook/ads/internal/AdAnalogData;->accelerometer:Landroid/hardware/Sensor;

    .line 45
    sput-object v0, Lcom/facebook/ads/internal/AdAnalogData;->gyroscope:Landroid/hardware/Sensor;

    .line 48
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/facebook/ads/internal/AdAnalogData;->analogInfo:Ljava/util/Map;

    .line 49
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "x"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "y"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "z"

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/ads/internal/AdAnalogData;->sensorDimensions:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    return-void
.end method

.method static synthetic access$100()Landroid/hardware/Sensor;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/facebook/ads/internal/AdAnalogData;->accelerometer:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$202([F)[F
    .locals 0
    .parameter

    .prologue
    .line 41
    sput-object p0, Lcom/facebook/ads/internal/AdAnalogData;->accelerometerValues:[F

    return-object p0
.end method

.method static synthetic access$300()Landroid/hardware/Sensor;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/facebook/ads/internal/AdAnalogData;->gyroscope:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$402([F)[F
    .locals 0
    .parameter

    .prologue
    .line 41
    sput-object p0, Lcom/facebook/ads/internal/AdAnalogData;->gyroscopeValues:[F

    return-object p0
.end method

.method public static getAnalogInfo()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 85
    sget-object v1, Lcom/facebook/ads/internal/AdAnalogData;->analogInfo:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 86
    invoke-static {v0}, Lcom/facebook/ads/internal/AdAnalogData;->putSensorData(Ljava/util/Map;)V

    .line 88
    return-object v0
.end method

.method private static putBatteryData(Landroid/content/Context;)V
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v6, -0x1

    .line 107
    const/4 v0, 0x0

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 108
    if-nez v0, :cond_0

    .line 125
    :goto_0
    return-void

    .line 112
    :cond_0
    const-string v3, "level"

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 113
    const-string v3, "scale"

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 114
    const-string v3, "status"

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 115
    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x5

    if-ne v0, v3, :cond_3

    :cond_1
    move v3, v1

    .line 118
    :goto_1
    const/4 v0, 0x0

    .line 119
    if-lez v5, :cond_2

    .line 120
    int-to-float v0, v4

    int-to-float v4, v5

    div-float/2addr v0, v4

    const/high16 v4, 0x42c8

    mul-float/2addr v0, v4

    .line 123
    :cond_2
    sget-object v4, Lcom/facebook/ads/internal/AdAnalogData;->analogInfo:Ljava/util/Map;

    const-string v5, "battery"

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v4, Lcom/facebook/ads/internal/AdAnalogData;->analogInfo:Ljava/util/Map;

    const-string v5, "charging"

    if-eqz v3, :cond_4

    move v0, v1

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    move v3, v2

    .line 115
    goto :goto_1

    :cond_4
    move v0, v2

    .line 124
    goto :goto_2
.end method

.method private static putDiskInfo(Landroid/content/Context;)V
    .locals 6
    .parameter

    .prologue
    .line 99
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 100
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v2, v0

    .line 102
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v0, v0

    .line 103
    sget-object v4, Lcom/facebook/ads/internal/AdAnalogData;->analogInfo:Ljava/util/Map;

    const-string v5, "free_space"

    mul-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    return-void
.end method

.method private static putMemoryInfo(Landroid/content/Context;)V
    .locals 5
    .parameter

    .prologue
    .line 92
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 93
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 94
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 95
    sget-object v0, Lcom/facebook/ads/internal/AdAnalogData;->analogInfo:Ljava/util/Map;

    const-string v2, "available_memory"

    iget-wide v3, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    return-void
.end method

.method private static putSensorData(Ljava/util/Map;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 128
    sget-object v2, Lcom/facebook/ads/internal/AdAnalogData;->accelerometerValues:[F

    .line 129
    sget-object v3, Lcom/facebook/ads/internal/AdAnalogData;->gyroscopeValues:[F

    .line 130
    if-eqz v2, :cond_0

    .line 131
    sget-object v1, Lcom/facebook/ads/internal/AdAnalogData;->sensorDimensions:[Ljava/lang/String;

    array-length v1, v1

    array-length v4, v2

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    move v1, v0

    .line 132
    :goto_0
    if-ge v1, v4, :cond_0

    .line 133
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "accelerometer_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/facebook/ads/internal/AdAnalogData;->sensorDimensions:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aget v6, v2, v1

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {p0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 136
    :cond_0
    if-eqz v3, :cond_1

    .line 137
    sget-object v1, Lcom/facebook/ads/internal/AdAnalogData;->sensorDimensions:[Ljava/lang/String;

    array-length v1, v1

    array-length v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 138
    :goto_1
    if-ge v0, v1, :cond_1

    .line 139
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rotation_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcom/facebook/ads/internal/AdAnalogData;->sensorDimensions:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aget v4, v3, v0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {p0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 142
    :cond_1
    return-void
.end method

.method public static declared-synchronized startUpdate(Landroid/content/Context;)V
    .locals 5
    .parameter

    .prologue
    .line 52
    const-class v1, Lcom/facebook/ads/internal/AdAnalogData;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/facebook/ads/internal/AdAnalogData;->putMemoryInfo(Landroid/content/Context;)V

    .line 53
    invoke-static {p0}, Lcom/facebook/ads/internal/AdAnalogData;->putDiskInfo(Landroid/content/Context;)V

    .line 54
    invoke-static {p0}, Lcom/facebook/ads/internal/AdAnalogData;->putBatteryData(Landroid/content/Context;)V

    .line 56
    sget-object v0, Lcom/facebook/ads/internal/AdAnalogData;->sensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_1

    .line 57
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    sput-object v0, Lcom/facebook/ads/internal/AdAnalogData;->sensorManager:Landroid/hardware/SensorManager;

    .line 58
    sget-object v0, Lcom/facebook/ads/internal/AdAnalogData;->sensorManager:Landroid/hardware/SensorManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 74
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 62
    :cond_1
    :try_start_1
    sget-object v0, Lcom/facebook/ads/internal/AdAnalogData;->accelerometer:Landroid/hardware/Sensor;

    if-nez v0, :cond_2

    .line 63
    sget-object v0, Lcom/facebook/ads/internal/AdAnalogData;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/internal/AdAnalogData;->accelerometer:Landroid/hardware/Sensor;

    .line 65
    :cond_2
    sget-object v0, Lcom/facebook/ads/internal/AdAnalogData;->gyroscope:Landroid/hardware/Sensor;

    if-nez v0, :cond_3

    .line 66
    sget-object v0, Lcom/facebook/ads/internal/AdAnalogData;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/internal/AdAnalogData;->gyroscope:Landroid/hardware/Sensor;

    .line 68
    :cond_3
    sget-object v0, Lcom/facebook/ads/internal/AdAnalogData;->accelerometer:Landroid/hardware/Sensor;

    if-eqz v0, :cond_4

    .line 69
    sget-object v0, Lcom/facebook/ads/internal/AdAnalogData;->sensorManager:Landroid/hardware/SensorManager;

    new-instance v2, Lcom/facebook/ads/internal/AdAnalogData$AdSensorEventListener;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/facebook/ads/internal/AdAnalogData$AdSensorEventListener;-><init>(Lcom/facebook/ads/internal/AdAnalogData$1;)V

    sget-object v3, Lcom/facebook/ads/internal/AdAnalogData;->accelerometer:Landroid/hardware/Sensor;

    const/4 v4, 0x3

    invoke-virtual {v0, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 71
    :cond_4
    sget-object v0, Lcom/facebook/ads/internal/AdAnalogData;->gyroscope:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 72
    sget-object v0, Lcom/facebook/ads/internal/AdAnalogData;->sensorManager:Landroid/hardware/SensorManager;

    new-instance v2, Lcom/facebook/ads/internal/AdAnalogData$AdSensorEventListener;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/facebook/ads/internal/AdAnalogData$AdSensorEventListener;-><init>(Lcom/facebook/ads/internal/AdAnalogData$1;)V

    sget-object v3, Lcom/facebook/ads/internal/AdAnalogData;->gyroscope:Landroid/hardware/Sensor;

    const/4 v4, 0x3

    invoke-virtual {v0, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized stopUpdate(Lcom/facebook/ads/internal/AdAnalogData$AdSensorEventListener;)V
    .locals 2
    .parameter

    .prologue
    .line 77
    const-class v1, Lcom/facebook/ads/internal/AdAnalogData;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/facebook/ads/internal/AdAnalogData;->sensorManager:Landroid/hardware/SensorManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 81
    :goto_0
    monitor-exit v1

    return-void

    .line 80
    :cond_0
    :try_start_1
    sget-object v0, Lcom/facebook/ads/internal/AdAnalogData;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
