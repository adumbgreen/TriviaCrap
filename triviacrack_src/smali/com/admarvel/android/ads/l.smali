.class Lcom/admarvel/android/ads/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/admarvel/android/ads/l;

.field private static b:Lcom/admarvel/android/ads/l$a;

.field private static c:Lcom/admarvel/android/ads/l$a;


# instance fields
.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/admarvel/android/ads/AdMarvelInternalWebView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/admarvel/android/ads/l;->a:Lcom/admarvel/android/ads/l;

    sput-object v0, Lcom/admarvel/android/ads/l;->b:Lcom/admarvel/android/ads/l$a;

    sput-object v0, Lcom/admarvel/android/ads/l;->c:Lcom/admarvel/android/ads/l$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/admarvel/android/ads/l;
    .locals 1

    sget-object v0, Lcom/admarvel/android/ads/l;->a:Lcom/admarvel/android/ads/l;

    if-nez v0, :cond_0

    new-instance v0, Lcom/admarvel/android/ads/l;

    invoke-direct {v0}, Lcom/admarvel/android/ads/l;-><init>()V

    sput-object v0, Lcom/admarvel/android/ads/l;->a:Lcom/admarvel/android/ads/l;

    :cond_0
    sget-object v0, Lcom/admarvel/android/ads/l;->a:Lcom/admarvel/android/ads/l;

    return-object v0
.end method

.method static synthetic a(Lcom/admarvel/android/ads/l;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/admarvel/android/ads/l;->d:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/admarvel/android/ads/l;)Ljava/lang/ref/WeakReference;
    .locals 1

    iget-object v0, p0, Lcom/admarvel/android/ads/l;->f:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    const/4 v2, 0x0

    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    :try_start_0
    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :cond_0
    :goto_1
    return v2

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method static synthetic b(Lcom/admarvel/android/ads/l;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/admarvel/android/ads/l;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/admarvel/android/ads/l;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/admarvel/android/ads/l;->d:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/admarvel/android/ads/AdMarvelInternalWebView;)Landroid/location/Location;
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v0, v2}, Lcom/admarvel/android/ads/ab;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v2}, Lcom/admarvel/android/ads/ab;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "location"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_2

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public a(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    sget-object v1, Lcom/admarvel/android/ads/l;->c:Lcom/admarvel/android/ads/l$a;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/admarvel/android/ads/l;->c:Lcom/admarvel/android/ads/l$a;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    :cond_0
    sget-object v1, Lcom/admarvel/android/ads/l;->b:Lcom/admarvel/android/ads/l$a;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/admarvel/android/ads/l;->b:Lcom/admarvel/android/ads/l$a;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    :cond_1
    sput-object v2, Lcom/admarvel/android/ads/l;->c:Lcom/admarvel/android/ads/l$a;

    sput-object v2, Lcom/admarvel/android/ads/l;->b:Lcom/admarvel/android/ads/l$a;

    return-void
.end method

.method public a(Lcom/admarvel/android/ads/AdMarvelInternalWebView;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v0, v1}, Lcom/admarvel/android/ads/ab;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v1}, Lcom/admarvel/android/ads/ab;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/admarvel/android/ads/l;->f:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/admarvel/android/ads/l;->e:Ljava/lang/String;

    :try_start_0
    invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "gps"

    invoke-direct {p0, v1, v2}, Lcom/admarvel/android/ads/l;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/admarvel/android/ads/l$a;

    const-string v2, "gps"

    invoke-direct {v1, p0, v2, v0}, Lcom/admarvel/android/ads/l$a;-><init>(Lcom/admarvel/android/ads/l;Ljava/lang/String;Landroid/location/LocationManager;)V

    sput-object v1, Lcom/admarvel/android/ads/l;->b:Lcom/admarvel/android/ads/l$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_2
    :goto_1
    :try_start_1
    invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "network"

    invoke-direct {p0, v1, v2}, Lcom/admarvel/android/ads/l;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Lcom/admarvel/android/ads/l$a;

    const-string v2, "network"

    invoke-direct {v1, p0, v2, v0}, Lcom/admarvel/android/ads/l$a;-><init>(Lcom/admarvel/android/ads/l;Ljava/lang/String;Landroid/location/LocationManager;)V

    sput-object v1, Lcom/admarvel/android/ads/l;->c:Lcom/admarvel/android/ads/l$a;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    :goto_2
    sget-object v0, Lcom/admarvel/android/ads/l;->c:Lcom/admarvel/android/ads/l$a;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/admarvel/android/ads/l;->c:Lcom/admarvel/android/ads/l$a;

    invoke-virtual {v0}, Lcom/admarvel/android/ads/l$a;->a()V

    :cond_4
    sget-object v0, Lcom/admarvel/android/ads/l;->b:Lcom/admarvel/android/ads/l$a;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/admarvel/android/ads/l;->b:Lcom/admarvel/android/ads/l$a;

    invoke-virtual {v0}, Lcom/admarvel/android/ads/l$a;->a()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method
