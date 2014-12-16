.class Lcom/millennialmedia/android/BridgeMMSpeechkit$SpeechKitHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/millennialmedia/android/NVASpeechKit;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 456
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 457
    return-void
.end method

.method synthetic constructor <init>(Lcom/millennialmedia/android/BridgeMMSpeechkit$1;)V
    .locals 0
    .parameter

    .prologue
    .line 451
    invoke-direct {p0}, Lcom/millennialmedia/android/BridgeMMSpeechkit$SpeechKitHolder;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/millennialmedia/android/BridgeMMSpeechkit$SpeechKitHolder;)Lcom/millennialmedia/android/NVASpeechKit;
    .locals 1
    .parameter

    .prologue
    .line 451
    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMSpeechkit$SpeechKitHolder;->a:Lcom/millennialmedia/android/NVASpeechKit;

    return-object v0
.end method

.method static synthetic a(Lcom/millennialmedia/android/BridgeMMSpeechkit$SpeechKitHolder;Lcom/millennialmedia/android/NVASpeechKit;)Lcom/millennialmedia/android/NVASpeechKit;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 451
    iput-object p1, p0, Lcom/millennialmedia/android/BridgeMMSpeechkit$SpeechKitHolder;->a:Lcom/millennialmedia/android/NVASpeechKit;

    return-object p1
.end method


# virtual methods
.method public getSpeechKit()Lcom/millennialmedia/android/NVASpeechKit;
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMSpeechkit$SpeechKitHolder;->a:Lcom/millennialmedia/android/NVASpeechKit;

    return-object v0
.end method

.method public release()Z
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMSpeechkit$SpeechKitHolder;->a:Lcom/millennialmedia/android/NVASpeechKit;

    if-nez v0, :cond_0

    .line 463
    const/4 v0, 0x0

    .line 480
    :goto_0
    return v0

    .line 465
    :cond_0
    new-instance v0, Lcom/millennialmedia/android/BridgeMMSpeechkit$SpeechKitHolder$1;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/BridgeMMSpeechkit$SpeechKitHolder$1;-><init>(Lcom/millennialmedia/android/BridgeMMSpeechkit$SpeechKitHolder;)V

    invoke-static {v0}, Lcom/millennialmedia/android/Utils$ThreadUtils;->a(Ljava/lang/Runnable;)V

    .line 480
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setSpeechKit(Lcom/millennialmedia/android/NVASpeechKit;)V
    .locals 0
    .parameter

    .prologue
    .line 490
    iput-object p1, p0, Lcom/millennialmedia/android/BridgeMMSpeechkit$SpeechKitHolder;->a:Lcom/millennialmedia/android/NVASpeechKit;

    .line 491
    return-void
.end method
