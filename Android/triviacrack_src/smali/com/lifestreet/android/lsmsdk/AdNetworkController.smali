.class public final Lcom/lifestreet/android/lsmsdk/AdNetworkController;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mNetwork:Lcom/lifestreet/android/lsmsdk/AdNetwork;


# direct methods
.method public constructor <init>(Lcom/lifestreet/android/lsmsdk/AdNetwork;)V
    .locals 0
    .parameter

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/lifestreet/android/lsmsdk/AdNetworkController;->mNetwork:Lcom/lifestreet/android/lsmsdk/AdNetwork;

    .line 23
    return-void
.end method

.method private getParamValue(Ljava/util/Map;Lcom/lifestreet/android/lsmsdk/annotations/NetworkParameter;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/lifestreet/android/lsmsdk/annotations/NetworkParameter;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 103
    invoke-interface {p2}, Lcom/lifestreet/android/lsmsdk/annotations/NetworkParameter;->name()Ljava/lang/String;

    move-result-object v0

    .line 104
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_5

    .line 108
    :goto_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p3, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 109
    invoke-interface {p2}, Lcom/lifestreet/android/lsmsdk/annotations/NetworkParameter;->required()Z

    move-result v3

    .line 110
    invoke-interface {p2}, Lcom/lifestreet/android/lsmsdk/annotations/NetworkParameter;->appendSlotParams()Z

    move-result v4

    .line 112
    const/4 v0, 0x0

    .line 113
    if-eqz p1, :cond_4

    .line 114
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 115
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 117
    :goto_1
    if-eqz v3, :cond_2

    if-eqz v1, :cond_2

    .line 118
    new-instance v0, Lcom/lifestreet/android/lsmsdk/exceptions/AdapterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Required parameter missing ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lifestreet/android/lsmsdk/exceptions/AdapterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 121
    :cond_2
    if-eqz v4, :cond_3

    if-nez v1, :cond_3

    if-eqz p4, :cond_3

    .line 122
    invoke-static {v0, p4}, Lcom/lifestreet/android/lsmsdk/commons/Utils;->getUriWithQueryParams(Ljava/lang/String;Ljava/util/Map;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 128
    :cond_3
    return-object v0

    .line 124
    :cond_4
    if-eqz v3, :cond_3

    .line 125
    new-instance v0, Lcom/lifestreet/android/lsmsdk/exceptions/AdapterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Required parameter missing ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lifestreet/android/lsmsdk/exceptions/AdapterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    move-object p3, v0

    goto :goto_0
.end method

.method private setFieldValue(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Field;",
            "TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 95
    :try_start_0
    invoke-virtual {p1, p2, p3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    return-void

    .line 96
    :catch_0
    move-exception v0

    .line 97
    new-instance v1, Lcom/lifestreet/android/lsmsdk/exceptions/AdapterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error setting parameter value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/lifestreet/android/lsmsdk/exceptions/AdapterException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public getNetwork()Lcom/lifestreet/android/lsmsdk/AdNetwork;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/AdNetworkController;->mNetwork:Lcom/lifestreet/android/lsmsdk/AdNetwork;

    return-object v0
.end method

.method public mapParameters(Ljava/lang/Class;Lcom/lifestreet/android/lsmsdk/SlotController;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/lifestreet/android/lsmsdk/SlotController;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 81
    const/4 v0, 0x0

    .line 82
    if-eqz p2, :cond_0

    .line 83
    invoke-virtual {p2}, Lcom/lifestreet/android/lsmsdk/SlotController;->getSlotQueryParams()Ljava/util/Map;

    move-result-object v0

    .line 86
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/lifestreet/android/lsmsdk/AdNetworkController;->mapParameters(Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public mapParameters(Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)TT;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 45
    .line 48
    if-eqz p1, :cond_3

    .line 50
    const/4 v1, 0x0

    :try_start_0
    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 51
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 59
    invoke-virtual {p1}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    .line 62
    :goto_0
    if-nez v3, :cond_0

    .line 76
    :goto_1
    return-object v0

    .line 52
    :catch_0
    move-exception v0

    .line 53
    new-instance v1, Lcom/lifestreet/android/lsmsdk/exceptions/AdapterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No Such Method: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/lifestreet/android/lsmsdk/exceptions/AdapterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 54
    :catch_1
    move-exception v0

    .line 55
    new-instance v1, Lcom/lifestreet/android/lsmsdk/exceptions/AdapterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error instantiating parameters class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/lifestreet/android/lsmsdk/exceptions/AdapterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/AdNetworkController;->mNetwork:Lcom/lifestreet/android/lsmsdk/AdNetwork;

    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/AdNetwork;->getParameters()Ljava/util/Map;

    move-result-object v4

    .line 66
    array-length v5, v3

    :goto_2
    if-ge v2, v5, :cond_2

    aget-object v6, v3, v2

    .line 67
    const-class v0, Lcom/lifestreet/android/lsmsdk/annotations/NetworkParameter;

    invoke-virtual {v6, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/lifestreet/android/lsmsdk/annotations/NetworkParameter;

    .line 68
    if-eqz v0, :cond_1

    .line 69
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v4, v0, v7, p2}, Lcom/lifestreet/android/lsmsdk/AdNetworkController;->getParamValue(Ljava/util/Map;Lcom/lifestreet/android/lsmsdk/annotations/NetworkParameter;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-direct {p0, v6, v1, v0}, Lcom/lifestreet/android/lsmsdk/AdNetworkController;->setFieldValue(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_2
    move-object v0, v1

    goto :goto_1

    :cond_3
    move-object v1, v0

    move-object v3, v0

    goto :goto_0
.end method

.method public trackClick()V
    .locals 4

    .prologue
    .line 32
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/AdNetworkController;->mNetwork:Lcom/lifestreet/android/lsmsdk/AdNetwork;

    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/AdNetwork;->getClickUrl()Ljava/lang/String;

    move-result-object v0

    .line 33
    sget-object v1, Lcom/lifestreet/android/lsmsdk/commons/LSMLogger;->LOGGER:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tracking click = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 34
    sget-object v1, Lcom/lifestreet/android/lsmsdk/SlotController;->USER_AGENT:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/lifestreet/android/lsmsdk/commons/Utils;->httpGetUrl(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public trackImpression()V
    .locals 4

    .prologue
    .line 26
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/AdNetworkController;->mNetwork:Lcom/lifestreet/android/lsmsdk/AdNetwork;

    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/AdNetwork;->getImpressionUrl()Ljava/lang/String;

    move-result-object v0

    .line 27
    sget-object v1, Lcom/lifestreet/android/lsmsdk/commons/LSMLogger;->LOGGER:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tracking impression = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 28
    sget-object v1, Lcom/lifestreet/android/lsmsdk/SlotController;->USER_AGENT:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/lifestreet/android/lsmsdk/commons/Utils;->httpGetUrl(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public trackNoBid()V
    .locals 4

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/AdNetworkController;->mNetwork:Lcom/lifestreet/android/lsmsdk/AdNetwork;

    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/AdNetwork;->getNoBidUrl()Ljava/lang/String;

    move-result-object v0

    .line 39
    sget-object v1, Lcom/lifestreet/android/lsmsdk/commons/LSMLogger;->LOGGER:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tracking nobid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 40
    sget-object v1, Lcom/lifestreet/android/lsmsdk/SlotController;->USER_AGENT:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/lifestreet/android/lsmsdk/commons/Utils;->httpGetUrl(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    return-void
.end method
