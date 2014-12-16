.class public Lcom/etermax/gamescommon/mediation/MediationManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field mContext:Landroid/content/Context;

.field mDtoPersistanceManager:Lcom/etermax/gamescommon/datasource/j;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    return-void
.end method

.method private getPersistedAdUnits()[Lcom/etermax/gamescommon/datasource/dto/AdUnitDTO;
    .locals 3

    .prologue
    .line 121
    iget-object v0, p0, Lcom/etermax/gamescommon/mediation/MediationManager;->mDtoPersistanceManager:Lcom/etermax/gamescommon/datasource/j;

    const-string v1, "ad_units"

    const-class v2, [Lcom/etermax/gamescommon/datasource/dto/AdUnitDTO;

    invoke-virtual {v0, v1, v2}, Lcom/etermax/gamescommon/datasource/j;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/etermax/gamescommon/datasource/dto/AdUnitDTO;

    return-object v0
.end method

.method private persistAdUnits([Lcom/etermax/gamescommon/datasource/dto/AdUnitDTO;)V
    .locals 2
    .parameter

    .prologue
    .line 117
    iget-object v0, p0, Lcom/etermax/gamescommon/mediation/MediationManager;->mDtoPersistanceManager:Lcom/etermax/gamescommon/datasource/j;

    const-string v1, "ad_units"

    invoke-virtual {v0, v1, p1}, Lcom/etermax/gamescommon/datasource/j;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 118
    return-void
.end method


# virtual methods
.method afterInject()V
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/etermax/gamescommon/mediation/MediationManager;->mContext:Landroid/content/Context;

    instance-of v0, v0, Lcom/etermax/gamescommon/mediation/MediationManager$IApplicationMediation;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Application must implement IApplicationMediation"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_0
    return-void
.end method

.method public getMediationForAdUnitType(Ljava/lang/String;)Lcom/etermax/gamescommon/mediation/MediationManager$AdMediationConfig;
    .locals 1
    .parameter

    .prologue
    .line 62
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/etermax/gamescommon/mediation/MediationManager;->getMediationForAdUnitType(Ljava/lang/String;Z)Lcom/etermax/gamescommon/mediation/MediationManager$AdMediationConfig;

    move-result-object v0

    return-object v0
.end method

.method public getMediationForAdUnitType(Ljava/lang/String;Z)Lcom/etermax/gamescommon/mediation/MediationManager$AdMediationConfig;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 66
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/etermax/gamescommon/mediation/MediationManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/etermax/a/b;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_tablet"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 70
    :cond_0
    invoke-direct {p0}, Lcom/etermax/gamescommon/mediation/MediationManager;->getPersistedAdUnits()[Lcom/etermax/gamescommon/datasource/dto/AdUnitDTO;

    move-result-object v2

    .line 71
    if-eqz v2, :cond_2

    .line 72
    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_2

    aget-object v4, v2, v0

    .line 73
    invoke-virtual {v4}, Lcom/etermax/gamescommon/datasource/dto/AdUnitDTO;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 74
    invoke-virtual {v4}, Lcom/etermax/gamescommon/datasource/dto/AdUnitDTO;->getMediator()Lcom/etermax/gamescommon/mediation/MediationManager$AdMediatorType;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 75
    new-instance v0, Lcom/etermax/gamescommon/mediation/MediationManager$AdMediationConfig;

    invoke-virtual {v4}, Lcom/etermax/gamescommon/datasource/dto/AdUnitDTO;->getMediator()Lcom/etermax/gamescommon/mediation/MediationManager$AdMediatorType;

    move-result-object v1

    invoke-virtual {v4}, Lcom/etermax/gamescommon/datasource/dto/AdUnitDTO;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/etermax/gamescommon/mediation/MediationManager$AdMediationConfig;-><init>(Lcom/etermax/gamescommon/mediation/MediationManager;Lcom/etermax/gamescommon/mediation/MediationManager$AdMediatorType;Ljava/lang/String;)V

    .line 88
    :goto_1
    return-object v0

    .line 72
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 82
    :cond_2
    iget-object v0, p0, Lcom/etermax/gamescommon/mediation/MediationManager;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/etermax/gamescommon/mediation/MediationManager$IApplicationMediation;

    invoke-interface {v0}, Lcom/etermax/gamescommon/mediation/MediationManager$IApplicationMediation;->getDefaultMediation()[Lcom/etermax/gamescommon/datasource/dto/AdUnitDTO;

    move-result-object v2

    .line 83
    array-length v3, v2

    move v0, v1

    :goto_2
    if-ge v0, v3, :cond_4

    aget-object v1, v2, v0

    .line 84
    invoke-virtual {v1}, Lcom/etermax/gamescommon/datasource/dto/AdUnitDTO;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 85
    new-instance v0, Lcom/etermax/gamescommon/mediation/MediationManager$AdMediationConfig;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/datasource/dto/AdUnitDTO;->getMediator()Lcom/etermax/gamescommon/mediation/MediationManager$AdMediatorType;

    move-result-object v2

    invoke-virtual {v1}, Lcom/etermax/gamescommon/datasource/dto/AdUnitDTO;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v2, v1}, Lcom/etermax/gamescommon/mediation/MediationManager$AdMediationConfig;-><init>(Lcom/etermax/gamescommon/mediation/MediationManager;Lcom/etermax/gamescommon/mediation/MediationManager$AdMediatorType;Ljava/lang/String;)V

    goto :goto_1

    .line 83
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 88
    :cond_4
    new-instance v0, Lcom/etermax/gamescommon/mediation/MediationManager$AdMediationConfig;

    sget-object v1, Lcom/etermax/gamescommon/mediation/MediationManager$AdMediatorType;->disabled:Lcom/etermax/gamescommon/mediation/MediationManager$AdMediatorType;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/etermax/gamescommon/mediation/MediationManager$AdMediationConfig;-><init>(Lcom/etermax/gamescommon/mediation/MediationManager;Lcom/etermax/gamescommon/mediation/MediationManager$AdMediatorType;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setMediationConf(Ljava/util/List;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/gamescommon/datasource/dto/AdsMediationConfDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 38
    if-nez p1, :cond_1

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/datasource/dto/AdsMediationConfDTO;

    .line 44
    invoke-virtual {v0}, Lcom/etermax/gamescommon/datasource/dto/AdsMediationConfDTO;->getWeight()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_1

    .line 47
    :cond_2
    if-lez v1, :cond_0

    .line 48
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 51
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/datasource/dto/AdsMediationConfDTO;

    .line 52
    invoke-virtual {v0}, Lcom/etermax/gamescommon/datasource/dto/AdsMediationConfDTO;->getWeight()I

    move-result v4

    add-int/2addr v2, v4

    .line 53
    if-ge v1, v2, :cond_3

    .line 54
    invoke-virtual {v0}, Lcom/etermax/gamescommon/datasource/dto/AdsMediationConfDTO;->getAd_units()[Lcom/etermax/gamescommon/datasource/dto/AdUnitDTO;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/etermax/gamescommon/mediation/MediationManager;->persistAdUnits([Lcom/etermax/gamescommon/datasource/dto/AdUnitDTO;)V

    goto :goto_0
.end method
