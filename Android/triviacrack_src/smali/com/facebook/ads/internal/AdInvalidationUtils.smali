.class public Lcom/facebook/ads/internal/AdInvalidationUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isNativePackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 61
    invoke-static {p1}, Lcom/facebook/ads/internal/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 71
    :goto_0
    return v0

    .line 65
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 67
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 68
    goto :goto_0

    .line 69
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static parseDetectionStrings(Lorg/json/JSONArray;)Ljava/util/Collection;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 77
    :cond_0
    const/4 v0, 0x0

    .line 84
    :goto_0
    return-object v0

    .line 80
    :cond_1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 81
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 82
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 81
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 84
    goto :goto_0
.end method

.method public static shouldInvalidate(Landroid/content/Context;Lcom/facebook/ads/internal/AdDataModel;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 35
    invoke-interface {p1}, Lcom/facebook/ads/internal/AdDataModel;->getInvalidationBehavior()Lcom/facebook/ads/internal/AdInvalidationBehavior;

    move-result-object v3

    .line 36
    if-eqz v3, :cond_0

    sget-object v0, Lcom/facebook/ads/internal/AdInvalidationBehavior;->NONE:Lcom/facebook/ads/internal/AdInvalidationBehavior;

    if-ne v3, v0, :cond_1

    .line 57
    :cond_0
    :goto_0
    return v2

    .line 41
    :cond_1
    invoke-interface {p1}, Lcom/facebook/ads/internal/AdDataModel;->getDetectionStrings()Ljava/util/Collection;

    move-result-object v0

    .line 42
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 46
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 47
    invoke-static {p0, v0}, Lcom/facebook/ads/internal/AdInvalidationUtils;->isNativePackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 52
    :goto_1
    sget-object v4, Lcom/facebook/ads/internal/AdInvalidationBehavior;->INSTALLED:Lcom/facebook/ads/internal/AdInvalidationBehavior;

    if-ne v3, v4, :cond_3

    move v2, v0

    .line 53
    goto :goto_0

    .line 54
    :cond_3
    sget-object v4, Lcom/facebook/ads/internal/AdInvalidationBehavior;->NOT_INSTALLED:Lcom/facebook/ads/internal/AdInvalidationBehavior;

    if-ne v3, v4, :cond_0

    .line 55
    if-nez v0, :cond_4

    :goto_2
    move v2, v1

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_2

    :cond_5
    move v0, v2

    goto :goto_1
.end method
