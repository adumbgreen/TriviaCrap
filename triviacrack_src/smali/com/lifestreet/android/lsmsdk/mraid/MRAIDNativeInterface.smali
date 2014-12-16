.class public final Lcom/lifestreet/android/lsmsdk/mraid/MRAIDNativeInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final sHandler:Landroid/os/Handler;


# instance fields
.field private final mMraidControllerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;",
            ">;"
        }
    .end annotation
.end field

.field private final mTwoPartCreative:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDNativeInterface;->sHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(ZLcom/lifestreet/android/lsmsdk/mraid/MRAIDController;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-boolean p1, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDNativeInterface;->mTwoPartCreative:Z

    .line 36
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDNativeInterface;->mMraidControllerRef:Ljava/lang/ref/WeakReference;

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/lifestreet/android/lsmsdk/mraid/MRAIDNativeInterface;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDNativeInterface;->runMethod(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/lifestreet/android/lsmsdk/mraid/MRAIDNativeInterface;)Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;
    .locals 1
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDNativeInterface;->getMraidController()Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;

    move-result-object v0

    return-object v0
.end method

.method private expandToSizeWithUrl(Ljava/lang/String;II)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 200
    const/4 v3, 0x0

    .line 201
    invoke-direct {p0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDNativeInterface;->getMraidView()Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;

    move-result-object v0

    .line 202
    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v3

    .line 208
    :cond_0
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDNativeInterface$2;

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDNativeInterface$2;-><init>(Lcom/lifestreet/android/lsmsdk/mraid/MRAIDNativeInterface;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 217
    return-void
.end method

.method private getListener()Lcom/lifestreet/android/lsmsdk/mraid/MRAIDViewListener;
    .locals 2

    .prologue
    .line 235
    const/4 v0, 0x0

    .line 237
    invoke-direct {p0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDNativeInterface;->getMraidView()Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;

    move-result-object v1

    .line 238
    if-eqz v1, :cond_0

    .line 239
    invoke-virtual {v1}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;->getListener()Lcom/lifestreet/android/lsmsdk/mraid/MRAIDViewListener;

    move-result-object v0

    .line 242
    :cond_0
    return-object v0
.end method

.method private getMraidController()Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDNativeInterface;->mMraidControllerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;

    return-object v0
.end method

.method private getMraidView()Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;
    .locals 2

    .prologue
    .line 224
    const/4 v0, 0x0

    .line 226
    invoke-direct {p0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDNativeInterface;->getMraidController()Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;

    move-result-object v1

    .line 227
    if-eqz v1, :cond_0

    .line 228
    invoke-virtual {v1}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;->getMraidView()Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;

    move-result-object v0

    .line 231
    :cond_0
    return-object v0
.end method

.method private runMethod(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 56
    const/4 v0, 0x0

    .line 57
    if-eqz p2, :cond_0

    .line 58
    :try_start_0
    new-instance v0, Lorg/json/JSONTokener;

    invoke-direct {v0, p2}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 61
    :cond_0
    const-class v1, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDNativeInterface;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lorg/json/JSONObject;

    aput-object v4, v2, v3

    invoke-virtual {v1, p1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 62
    if-eqz v1, :cond_1

    .line 63
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    .line 82
    :cond_1
    :goto_0
    return-void

    .line 65
    :catch_0
    move-exception v0

    .line 66
    sget-object v1, Lcom/lifestreet/android/lsmsdk/commons/LSMLogger;->LOGGER:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "Error parsing JSON object"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 67
    :catch_1
    move-exception v0

    .line 68
    sget-object v1, Lcom/lifestreet/android/lsmsdk/commons/LSMLogger;->LOGGER:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Native method \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' does not exist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 69
    invoke-direct {p0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDNativeInterface;->getMraidController()Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;

    move-result-object v0

    .line 70
    if-eqz v0, :cond_1

    .line 71
    const-string v1, "Native method not found"

    invoke-virtual {v0, v1, p1}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 73
    :catch_2
    move-exception v0

    .line 74
    sget-object v1, Lcom/lifestreet/android/lsmsdk/commons/LSMLogger;->LOGGER:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "Error invoking native method"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 75
    :catch_3
    move-exception v0

    move-object v1, v0

    .line 76
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 78
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 80
    :cond_2
    sget-object v2, Lcom/lifestreet/android/lsmsdk/commons/LSMLogger;->LOGGER:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error invoking native method: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public callMethod(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 41
    sget-object v0, Lcom/lifestreet/android/lsmsdk/commons/LSMLogger;->LOGGER:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callMethod: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 46
    sget-object v0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDNativeInterface;->sHandler:Landroid/os/Handler;

    new-instance v1, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDNativeInterface$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDNativeInterface$1;-><init>(Lcom/lifestreet/android/lsmsdk/mraid/MRAIDNativeInterface;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 52
    return-void
.end method

.method public close(Lorg/json/JSONObject;)V
    .locals 4
    .parameter

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDNativeInterface;->getMraidController()Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;

    move-result-object v0

    .line 141
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 142
    invoke-direct {p0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDNativeInterface;->getMraidView()Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;

    move-result-object v1

    .line 143
    invoke-direct {p0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDNativeInterface;->getListener()Lcom/lifestreet/android/lsmsdk/mraid/MRAIDViewListener;

    move-result-object v2

    .line 145
    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;->isInterstitial()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 146
    invoke-interface {v2, v1}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDViewListener;->onClose(Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;)V

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    if-eqz v1, :cond_0

    .line 148
    const-string v2, "state"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 149
    const-string v3, "default"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 150
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;->setVisibility(I)V

    .line 151
    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;->hiddenState()V

    goto :goto_0

    .line 152
    :cond_2
    const-string v1, "expanded"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;->closeExpandedView()V

    goto :goto_0
.end method

.method public expand(Lorg/json/JSONObject;)V
    .locals 7
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 107
    .line 112
    if-eqz p1, :cond_4

    .line 113
    const-string v2, "url"

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 114
    const-string v0, "width"

    const-string v3, "0"

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 115
    const-string v0, "height"

    const-string v3, "0"

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 116
    const-string v0, "useCustomClose"

    const-string v5, "false"

    invoke-virtual {p1, v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 119
    :goto_0
    invoke-direct {p0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDNativeInterface;->getMraidController()Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;

    move-result-object v5

    .line 120
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;->isInterstitial()Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v1, 0x1

    .line 122
    :cond_0
    if-lez v4, :cond_2

    if-lez v3, :cond_2

    iget-boolean v6, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDNativeInterface;->mTwoPartCreative:Z

    if-nez v6, :cond_2

    if-eqz v1, :cond_2

    .line 123
    invoke-virtual {v5, v0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;->setUseCustomClose(Z)V

    .line 125
    invoke-direct {p0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDNativeInterface;->getMraidView()Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;

    move-result-object v0

    .line 126
    invoke-direct {p0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDNativeInterface;->getListener()Lcom/lifestreet/android/lsmsdk/mraid/MRAIDViewListener;

    move-result-object v1

    .line 127
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 128
    invoke-interface {v1, v0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDViewListener;->onExpand(Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;)V

    .line 131
    :cond_1
    if-nez v2, :cond_3

    if-eqz v0, :cond_3

    .line 132
    invoke-virtual {v0, v4, v3}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;->expandToSize(II)V

    .line 137
    :cond_2
    :goto_1
    return-void

    .line 134
    :cond_3
    invoke-direct {p0, v2, v4, v3}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDNativeInterface;->expandToSizeWithUrl(Ljava/lang/String;II)V

    goto :goto_1

    :cond_4
    move-object v2, v0

    move v3, v1

    move v4, v1

    move v0, v1

    goto :goto_0
.end method

.method public onLoad(Lorg/json/JSONObject;)V
    .locals 2
    .parameter

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDNativeInterface;->getMraidController()Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;

    move-result-object v0

    .line 86
    if-eqz v0, :cond_1

    .line 87
    iget-boolean v1, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDNativeInterface;->mTwoPartCreative:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;->isInterstitial()Z

    move-result v1

    if-nez v1, :cond_0

    .line 88
    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;->setDefaultExpandProperties()V

    .line 91
    :cond_0
    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;->setPlacementType()V

    .line 92
    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;->ready()V

    .line 93
    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;->viewable()V

    .line 95
    iget-boolean v1, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDNativeInterface;->mTwoPartCreative:Z

    if-nez v1, :cond_2

    .line 96
    invoke-direct {p0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDNativeInterface;->getListener()Lcom/lifestreet/android/lsmsdk/mraid/MRAIDViewListener;

    move-result-object v0

    .line 97
    if-eqz v0, :cond_1

    .line 98
    invoke-direct {p0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDNativeInterface;->getMraidView()Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDViewListener;->onReceiveAd(Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;)V

    .line 104
    :cond_1
    :goto_0
    return-void

    .line 101
    :cond_2
    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;->expandedState()V

    goto :goto_0
.end method

.method public open(Lorg/json/JSONObject;)V
    .locals 6
    .parameter

    .prologue
    .line 160
    invoke-direct {p0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDNativeInterface;->getMraidController()Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;

    move-result-object v0

    .line 161
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 164
    invoke-direct {p0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDNativeInterface;->getMraidView()Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;

    move-result-object v1

    .line 165
    invoke-direct {p0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDNativeInterface;->getListener()Lcom/lifestreet/android/lsmsdk/mraid/MRAIDViewListener;

    move-result-object v2

    .line 166
    if-eqz v2, :cond_0

    .line 167
    invoke-interface {v2, v1}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDViewListener;->onClick(Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;)V

    .line 170
    :cond_0
    const-string v3, "url"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 171
    if-eqz v3, :cond_1

    .line 173
    :try_start_0
    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;->closeExpandedView()V

    .line 174
    invoke-virtual {v0, v3}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;->startActivityWithUrl(Ljava/lang/String;)V

    .line 175
    if-eqz v2, :cond_1

    .line 176
    invoke-interface {v2, v1}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDViewListener;->onLeaveApplication(Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :cond_1
    :goto_0
    return-void

    .line 178
    :catch_0
    move-exception v0

    .line 179
    sget-object v1, Lcom/lifestreet/android/lsmsdk/commons/LSMLogger;->LOGGER:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Activity not found for URL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public useCustomClose(Lorg/json/JSONObject;)V
    .locals 3
    .parameter

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDNativeInterface;->getMraidController()Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;

    move-result-object v0

    .line 187
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 188
    const-string v1, "customClose"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 189
    if-eqz v1, :cond_0

    .line 190
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 191
    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;->isUseCustomClose()Z

    move-result v2

    if-eq v1, v2, :cond_0

    .line 192
    invoke-virtual {v0, v1}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;->setUseCustomClose(Z)V

    .line 193
    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;->showHideCloseButton()V

    .line 197
    :cond_0
    return-void
.end method
