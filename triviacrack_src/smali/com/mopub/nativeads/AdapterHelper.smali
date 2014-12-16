.class public final Lcom/mopub/nativeads/AdapterHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/content/Context;

.field private final c:I

.field private final d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    if-nez p1, :cond_0

    .line 29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal argument: Context was null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_0
    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal argument: Context must be instance of Activity."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_1
    if-gez p2, :cond_2

    .line 33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal argument: negative starting position."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_2
    const/4 v0, 0x2

    if-ge p3, v0, :cond_3

    .line 35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal argument: interval must be at least 2."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_3
    new-instance v1, Ljava/lang/ref/WeakReference;

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/mopub/nativeads/AdapterHelper;->a:Ljava/lang/ref/WeakReference;

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/nativeads/AdapterHelper;->b:Landroid/content/Context;

    .line 40
    iput p2, p0, Lcom/mopub/nativeads/AdapterHelper;->c:I

    .line 41
    iput p3, p0, Lcom/mopub/nativeads/AdapterHelper;->d:I

    .line 42
    return-void
.end method

.method private a(I)I
    .locals 4
    .parameter

    .prologue
    .line 92
    iget v0, p0, Lcom/mopub/nativeads/AdapterHelper;->c:I

    if-gt p1, v0, :cond_0

    .line 93
    const/4 v0, 0x0

    .line 97
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/mopub/nativeads/AdapterHelper;->c:I

    sub-int v0, p1, v0

    int-to-double v0, v0

    iget v2, p0, Lcom/mopub/nativeads/AdapterHelper;->d:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private b(I)I
    .locals 5
    .parameter

    .prologue
    .line 104
    iget v0, p0, Lcom/mopub/nativeads/AdapterHelper;->c:I

    if-gt p1, v0, :cond_0

    .line 105
    const/4 v0, 0x0

    .line 114
    :goto_0
    return v0

    .line 108
    :cond_0
    iget v0, p0, Lcom/mopub/nativeads/AdapterHelper;->d:I

    add-int/lit8 v0, v0, -0x1

    .line 109
    iget v1, p0, Lcom/mopub/nativeads/AdapterHelper;->c:I

    sub-int v1, p1, v1

    rem-int/2addr v1, v0

    if-nez v1, :cond_1

    .line 111
    iget v1, p0, Lcom/mopub/nativeads/AdapterHelper;->c:I

    sub-int v1, p1, v1

    div-int v0, v1, v0

    goto :goto_0

    .line 114
    :cond_1
    iget v1, p0, Lcom/mopub/nativeads/AdapterHelper;->c:I

    sub-int v1, p1, v1

    int-to-double v1, v1

    int-to-double v3, v0

    div-double v0, v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getAdView(Landroid/view/View;Landroid/view/ViewGroup;Lcom/mopub/nativeads/NativeResponse;Lcom/mopub/nativeads/ViewBinder;Lcom/mopub/nativeads/MoPubNative$MoPubNativeListener;)Landroid/view/View;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/mopub/nativeads/AdapterHelper;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    .line 51
    if-nez v2, :cond_0

    .line 52
    const-string v0, "Weak reference to Activity Context in AdapterHelper became null. Returning empty view."

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 54
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/mopub/nativeads/AdapterHelper;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 57
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p1

    move-object v1, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/mopub/nativeads/w;->a(Landroid/view/View;Landroid/view/ViewGroup;Landroid/content/Context;Lcom/mopub/nativeads/NativeResponse;Lcom/mopub/nativeads/ViewBinder;Lcom/mopub/nativeads/MoPubNative$MoPubNativeListener;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public isAdPosition(I)Z
    .locals 3
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 81
    iget v1, p0, Lcom/mopub/nativeads/AdapterHelper;->c:I

    if-ge p1, v1, :cond_1

    .line 85
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/mopub/nativeads/AdapterHelper;->c:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/mopub/nativeads/AdapterHelper;->d:I

    rem-int/2addr v1, v2

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public shiftedCount(I)I
    .locals 1
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/mopub/nativeads/AdapterHelper;->b(I)I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method public shiftedPosition(I)I
    .locals 1
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/mopub/nativeads/AdapterHelper;->a(I)I

    move-result v0

    sub-int v0, p1, v0

    return v0
.end method
