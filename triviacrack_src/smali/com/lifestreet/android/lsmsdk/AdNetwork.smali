.class public final Lcom/lifestreet/android/lsmsdk/AdNetwork;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mAdNetworkController:Lcom/lifestreet/android/lsmsdk/AdNetworkController;

.field private final mAdType:Lcom/lifestreet/android/lsmsdk/AdType;

.field private final mClickUrl:Ljava/lang/String;

.field private final mImpressionUrl:Ljava/lang/String;

.field private final mNetworkType:Ljava/lang/String;

.field private final mNoBidUrl:Ljava/lang/String;

.field private final mParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mRefreshRate:I

.field private final mTransitionAnimation:Lcom/lifestreet/android/lsmsdk/TransitionAnimation;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/lifestreet/android/lsmsdk/AdType;Lcom/lifestreet/android/lsmsdk/TransitionAnimation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/lifestreet/android/lsmsdk/AdType;",
            "Lcom/lifestreet/android/lsmsdk/TransitionAnimation;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lifestreet/android/lsmsdk/AdNetwork;->mNetworkType:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/lifestreet/android/lsmsdk/AdNetwork;->mAdType:Lcom/lifestreet/android/lsmsdk/AdType;

    .line 29
    iput-object p3, p0, Lcom/lifestreet/android/lsmsdk/AdNetwork;->mTransitionAnimation:Lcom/lifestreet/android/lsmsdk/TransitionAnimation;

    .line 30
    iput-object p4, p0, Lcom/lifestreet/android/lsmsdk/AdNetwork;->mImpressionUrl:Ljava/lang/String;

    .line 31
    iput-object p5, p0, Lcom/lifestreet/android/lsmsdk/AdNetwork;->mNoBidUrl:Ljava/lang/String;

    .line 32
    iput-object p6, p0, Lcom/lifestreet/android/lsmsdk/AdNetwork;->mClickUrl:Ljava/lang/String;

    .line 33
    iput-object p7, p0, Lcom/lifestreet/android/lsmsdk/AdNetwork;->mParameters:Ljava/util/Map;

    .line 34
    iput p8, p0, Lcom/lifestreet/android/lsmsdk/AdNetwork;->mRefreshRate:I

    .line 35
    new-instance v0, Lcom/lifestreet/android/lsmsdk/AdNetworkController;

    invoke-direct {v0, p0}, Lcom/lifestreet/android/lsmsdk/AdNetworkController;-><init>(Lcom/lifestreet/android/lsmsdk/AdNetwork;)V

    iput-object v0, p0, Lcom/lifestreet/android/lsmsdk/AdNetwork;->mAdNetworkController:Lcom/lifestreet/android/lsmsdk/AdNetworkController;

    .line 36
    return-void
.end method


# virtual methods
.method public getAdNetworkController()Lcom/lifestreet/android/lsmsdk/AdNetworkController;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/AdNetwork;->mAdNetworkController:Lcom/lifestreet/android/lsmsdk/AdNetworkController;

    return-object v0
.end method

.method public getAdType()Lcom/lifestreet/android/lsmsdk/AdType;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/AdNetwork;->mAdType:Lcom/lifestreet/android/lsmsdk/AdType;

    return-object v0
.end method

.method public getClickUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/AdNetwork;->mClickUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getImpressionUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/AdNetwork;->mImpressionUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/AdNetwork;->mNetworkType:Ljava/lang/String;

    return-object v0
.end method

.method public getNoBidUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/AdNetwork;->mNoBidUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getParameters()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/AdNetwork;->mParameters:Ljava/util/Map;

    return-object v0
.end method

.method public getRefreshRate()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/lifestreet/android/lsmsdk/AdNetwork;->mRefreshRate:I

    return v0
.end method

.method public getTransitionAnimation()Lcom/lifestreet/android/lsmsdk/TransitionAnimation;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/AdNetwork;->mTransitionAnimation:Lcom/lifestreet/android/lsmsdk/TransitionAnimation;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nNetworkType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lifestreet/android/lsmsdk/AdNetwork;->mNetworkType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "AdType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lifestreet/android/lsmsdk/AdNetwork;->mAdType:Lcom/lifestreet/android/lsmsdk/AdType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "TransitionAnimation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lifestreet/android/lsmsdk/AdNetwork;->mTransitionAnimation:Lcom/lifestreet/android/lsmsdk/TransitionAnimation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "RefreshRate = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lifestreet/android/lsmsdk/AdNetwork;->mRefreshRate:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " secs\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ImpressionUrl = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lifestreet/android/lsmsdk/AdNetwork;->mImpressionUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "NoBidUrl = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lifestreet/android/lsmsdk/AdNetwork;->mNoBidUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ClickUrl = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lifestreet/android/lsmsdk/AdNetwork;->mClickUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
