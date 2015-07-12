.class Lcom/millennialmedia/android/NVASpeechKit$AudioLevelTracker;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:D

.field b:D

.field c:I

.field d:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    invoke-virtual {p0}, Lcom/millennialmedia/android/NVASpeechKit$AudioLevelTracker;->reset()V

    .line 127
    return-void
.end method

.method static synthetic a(D)D
    .locals 2
    .parameter

    .prologue
    .line 112
    invoke-static {p0, p1}, Lcom/millennialmedia/android/NVASpeechKit$AudioLevelTracker;->b(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private static b(D)D
    .locals 6
    .parameter

    .prologue
    .line 157
    const-wide/high16 v0, 0x4044

    sub-double v0, p0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    const-wide v2, 0x40100419a0290042L

    div-double/2addr v0, v2

    .line 161
    const-wide v2, 0x4023fae147ae147bL

    const-wide/16 v4, 0x0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public isTrackingAudioSample()Z
    .locals 1

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/millennialmedia/android/NVASpeechKit$AudioLevelTracker;->d:Z

    return v0
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 132
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/millennialmedia/android/NVASpeechKit$AudioLevelTracker;->b:D

    .line 133
    iput v2, p0, Lcom/millennialmedia/android/NVASpeechKit$AudioLevelTracker;->c:I

    .line 134
    iput-boolean v2, p0, Lcom/millennialmedia/android/NVASpeechKit$AudioLevelTracker;->d:Z

    .line 135
    return-void
.end method

.method public startTrackingAudioSample()V
    .locals 1

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/millennialmedia/android/NVASpeechKit$AudioLevelTracker;->reset()V

    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/android/NVASpeechKit$AudioLevelTracker;->d:Z

    .line 142
    return-void
.end method

.method public update(D)Z
    .locals 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 172
    iget-wide v1, p0, Lcom/millennialmedia/android/NVASpeechKit$AudioLevelTracker;->b:D

    .line 173
    iget-wide v3, p0, Lcom/millennialmedia/android/NVASpeechKit$AudioLevelTracker;->a:D

    .line 174
    iput-wide p1, p0, Lcom/millennialmedia/android/NVASpeechKit$AudioLevelTracker;->a:D

    .line 175
    iget v5, p0, Lcom/millennialmedia/android/NVASpeechKit$AudioLevelTracker;->c:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/millennialmedia/android/NVASpeechKit$AudioLevelTracker;->c:I

    .line 176
    iget v5, p0, Lcom/millennialmedia/android/NVASpeechKit$AudioLevelTracker;->c:I

    add-int/lit8 v5, v5, -0x1

    int-to-double v5, v5

    mul-double/2addr v1, v5

    add-double/2addr v1, p1

    iget v5, p0, Lcom/millennialmedia/android/NVASpeechKit$AudioLevelTracker;->c:I

    int-to-double v5, v5

    div-double/2addr v1, v5

    iput-wide v1, p0, Lcom/millennialmedia/android/NVASpeechKit$AudioLevelTracker;->b:D

    .line 178
    iget-boolean v1, p0, Lcom/millennialmedia/android/NVASpeechKit$AudioLevelTracker;->d:Z

    if-eqz v1, :cond_1

    .line 182
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-wide v1, p0, Lcom/millennialmedia/android/NVASpeechKit$AudioLevelTracker;->a:D

    cmpl-double v1, v1, v3

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
