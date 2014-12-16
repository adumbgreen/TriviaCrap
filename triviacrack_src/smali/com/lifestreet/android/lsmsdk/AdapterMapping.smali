.class public final Lcom/lifestreet/android/lsmsdk/AdapterMapping;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sAdapterMapping:Lcom/lifestreet/android/lsmsdk/AdapterMapping;

.field private static final sAdapterPackages:[Ljava/lang/String;


# instance fields
.field private final mBannerAdapterMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/lifestreet/android/lsmsdk/AdapterMappingItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mInterstitialAdapterMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/lifestreet/android/lsmsdk/AdapterMappingItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 20
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.lifestreet.android.lsmsdk.adapters."

    aput-object v2, v0, v1

    sput-object v0, Lcom/lifestreet/android/lsmsdk/AdapterMapping;->sAdapterPackages:[Ljava/lang/String;

    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/lifestreet/android/lsmsdk/AdapterMapping;->sAdapterMapping:Lcom/lifestreet/android/lsmsdk/AdapterMapping;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lifestreet/android/lsmsdk/AdapterMapping;->mBannerAdapterMapping:Ljava/util/Map;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lifestreet/android/lsmsdk/AdapterMapping;->mInterstitialAdapterMapping:Ljava/util/Map;

    .line 30
    :try_start_0
    invoke-static {p1}, Lcom/lifestreet/android/lsmsdk/AdapterMapping;->getApplicationDexFile(Landroid/content/Context;)Ldalvik/system/DexFile;

    move-result-object v0

    .line 31
    invoke-virtual {v0}, Ldalvik/system/DexFile;->entries()Ljava/util/Enumeration;

    move-result-object v1

    .line 33
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 34
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 36
    invoke-static {v0}, Lcom/lifestreet/android/lsmsdk/AdapterMapping;->withinTheAdapterPackage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 37
    iget-object v2, p0, Lcom/lifestreet/android/lsmsdk/AdapterMapping;->mBannerAdapterMapping:Ljava/util/Map;

    iget-object v3, p0, Lcom/lifestreet/android/lsmsdk/AdapterMapping;->mInterstitialAdapterMapping:Ljava/util/Map;

    invoke-static {v2, v3, v0}, Lcom/lifestreet/android/lsmsdk/AdapterMapping;->addToAdapterMapping(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 41
    :catch_0
    move-exception v0

    .line 42
    sget-object v1, Lcom/lifestreet/android/lsmsdk/commons/LSMLogger;->LOGGER:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while mapping adapters: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 44
    :cond_1
    return-void
.end method

.method private static addToAdapterMapping(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/lifestreet/android/lsmsdk/AdapterMappingItem;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/lifestreet/android/lsmsdk/AdapterMappingItem;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 101
    invoke-static {p2}, Lcom/lifestreet/android/lsmsdk/AdapterMapping;->createAdapterMappingItem(Ljava/lang/String;)Lcom/lifestreet/android/lsmsdk/AdapterMappingItem;

    move-result-object v0

    .line 102
    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v0, p0, p1}, Lcom/lifestreet/android/lsmsdk/AdapterMappingItem;->putToAppropriateMapping(Ljava/util/Map;Ljava/util/Map;)V

    .line 105
    :cond_0
    return-void
.end method

.method private static createAdapterMappingItem(Ljava/lang/String;)Lcom/lifestreet/android/lsmsdk/AdapterMappingItem;
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 108
    .line 110
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 111
    if-eqz v2, :cond_0

    .line 112
    const-class v0, Lcom/lifestreet/android/lsmsdk/annotations/NetworkAdapter;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/lifestreet/android/lsmsdk/annotations/NetworkAdapter;

    .line 113
    if-eqz v0, :cond_0

    .line 114
    invoke-interface {v0}, Lcom/lifestreet/android/lsmsdk/annotations/NetworkAdapter;->name()Ljava/lang/String;

    move-result-object v3

    .line 115
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 116
    invoke-static {v2}, Lcom/lifestreet/android/lsmsdk/AdapterMapping;->getAdapterType(Ljava/lang/Class;)Lcom/lifestreet/android/lsmsdk/AdapterMappingItem$Type;

    move-result-object v4

    .line 117
    sget-object v0, Lcom/lifestreet/android/lsmsdk/AdapterMappingItem$Type;->UNKNOWN:Lcom/lifestreet/android/lsmsdk/AdapterMappingItem$Type;

    if-ne v4, v0, :cond_1

    move-object v0, v1

    :goto_0
    move-object v1, v0

    .line 123
    :cond_0
    return-object v1

    .line 117
    :cond_1
    new-instance v0, Lcom/lifestreet/android/lsmsdk/AdapterMappingItem;

    invoke-direct {v0, v3, v4, v2}, Lcom/lifestreet/android/lsmsdk/AdapterMappingItem;-><init>(Ljava/lang/String;Lcom/lifestreet/android/lsmsdk/AdapterMappingItem$Type;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method private static getAdapterType(Ljava/lang/Class;)Lcom/lifestreet/android/lsmsdk/AdapterMappingItem$Type;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/lifestreet/android/lsmsdk/AdapterMappingItem$Type;"
        }
    .end annotation

    .prologue
    .line 127
    sget-object v0, Lcom/lifestreet/android/lsmsdk/AdapterMappingItem$Type;->UNKNOWN:Lcom/lifestreet/android/lsmsdk/AdapterMappingItem$Type;

    .line 129
    const-class v1, Lcom/lifestreet/android/lsmsdk/BannerAdapter;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    .line 130
    const-class v2, Lcom/lifestreet/android/lsmsdk/InterstitialAdapter;

    invoke-virtual {v2, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    .line 132
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 133
    sget-object v0, Lcom/lifestreet/android/lsmsdk/AdapterMappingItem$Type;->BOTH:Lcom/lifestreet/android/lsmsdk/AdapterMappingItem$Type;

    .line 140
    :cond_0
    :goto_0
    return-object v0

    .line 134
    :cond_1
    if-eqz v1, :cond_2

    .line 135
    sget-object v0, Lcom/lifestreet/android/lsmsdk/AdapterMappingItem$Type;->BANNER:Lcom/lifestreet/android/lsmsdk/AdapterMappingItem$Type;

    goto :goto_0

    .line 136
    :cond_2
    if-eqz v2, :cond_0

    .line 137
    sget-object v0, Lcom/lifestreet/android/lsmsdk/AdapterMappingItem$Type;->INTERSTITIAL:Lcom/lifestreet/android/lsmsdk/AdapterMappingItem$Type;

    goto :goto_0
.end method

.method private static getApplicationDexFile(Landroid/content/Context;)Ldalvik/system/DexFile;
    .locals 3
    .parameter

    .prologue
    .line 74
    if-nez p0, :cond_0

    .line 75
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Context can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 81
    new-instance v1, Ldalvik/system/DexFile;

    invoke-direct {v1, v0}, Ldalvik/system/DexFile;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/lifestreet/android/lsmsdk/AdapterMapping;
    .locals 3
    .parameter

    .prologue
    .line 47
    sget-object v0, Lcom/lifestreet/android/lsmsdk/AdapterMapping;->sAdapterMapping:Lcom/lifestreet/android/lsmsdk/AdapterMapping;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/lifestreet/android/lsmsdk/AdapterMapping;

    invoke-direct {v0, p0}, Lcom/lifestreet/android/lsmsdk/AdapterMapping;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lifestreet/android/lsmsdk/AdapterMapping;->sAdapterMapping:Lcom/lifestreet/android/lsmsdk/AdapterMapping;

    .line 49
    sget-object v0, Lcom/lifestreet/android/lsmsdk/commons/LSMLogger;->LOGGER:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adapters found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/lifestreet/android/lsmsdk/AdapterMapping;->sAdapterMapping:Lcom/lifestreet/android/lsmsdk/AdapterMapping;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 52
    :cond_0
    sget-object v0, Lcom/lifestreet/android/lsmsdk/AdapterMapping;->sAdapterMapping:Lcom/lifestreet/android/lsmsdk/AdapterMapping;

    return-object v0
.end method

.method private static withinTheAdapterPackage(Ljava/lang/String;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 85
    .line 87
    if-eqz p0, :cond_0

    .line 88
    sget-object v2, Lcom/lifestreet/android/lsmsdk/AdapterMapping;->sAdapterPackages:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 89
    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 90
    const/4 v0, 0x1

    .line 96
    :cond_0
    return v0

    .line 88
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getAdapterMapping(Lcom/lifestreet/android/lsmsdk/AdType;)Ljava/util/Map;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lifestreet/android/lsmsdk/AdType;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/lifestreet/android/lsmsdk/AdapterMappingItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    sget-object v0, Lcom/lifestreet/android/lsmsdk/AdType;->INTERSTITIAL:Lcom/lifestreet/android/lsmsdk/AdType;

    if-ne p1, v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/AdapterMapping;->mInterstitialAdapterMapping:Ljava/util/Map;

    .line 64
    :goto_0
    return-object v0

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/AdapterMapping;->mBannerAdapterMapping:Ljava/util/Map;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{Banner="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lifestreet/android/lsmsdk/AdapterMapping;->mBannerAdapterMapping:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Interstitial="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lifestreet/android/lsmsdk/AdapterMapping;->mInterstitialAdapterMapping:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
