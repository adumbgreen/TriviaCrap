.class public final Lcom/lifestreet/android/lsmsdk/AdNetworkBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mAdType:Lcom/lifestreet/android/lsmsdk/AdType;

.field private mClickUrl:Ljava/lang/String;

.field private mImpressionUrl:Ljava/lang/String;

.field private mNetworkType:Ljava/lang/String;

.field private mNoBidUrl:Ljava/lang/String;

.field private mParameters:Ljava/util/Map;
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

.field private mRefreshRate:I

.field private mTransitionAnimation:Lcom/lifestreet/android/lsmsdk/TransitionAnimation;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adType(Lcom/lifestreet/android/lsmsdk/AdType;)Lcom/lifestreet/android/lsmsdk/AdNetworkBuilder;
    .locals 0
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/lifestreet/android/lsmsdk/AdNetworkBuilder;->mAdType:Lcom/lifestreet/android/lsmsdk/AdType;

    .line 38
    return-object p0
.end method

.method public build()Lcom/lifestreet/android/lsmsdk/AdNetwork;
    .locals 9

    .prologue
    .line 27
    new-instance v0, Lcom/lifestreet/android/lsmsdk/AdNetwork;

    iget-object v1, p0, Lcom/lifestreet/android/lsmsdk/AdNetworkBuilder;->mNetworkType:Ljava/lang/String;

    iget-object v2, p0, Lcom/lifestreet/android/lsmsdk/AdNetworkBuilder;->mAdType:Lcom/lifestreet/android/lsmsdk/AdType;

    iget-object v3, p0, Lcom/lifestreet/android/lsmsdk/AdNetworkBuilder;->mTransitionAnimation:Lcom/lifestreet/android/lsmsdk/TransitionAnimation;

    iget-object v4, p0, Lcom/lifestreet/android/lsmsdk/AdNetworkBuilder;->mImpressionUrl:Ljava/lang/String;

    iget-object v5, p0, Lcom/lifestreet/android/lsmsdk/AdNetworkBuilder;->mNoBidUrl:Ljava/lang/String;

    iget-object v6, p0, Lcom/lifestreet/android/lsmsdk/AdNetworkBuilder;->mClickUrl:Ljava/lang/String;

    iget-object v7, p0, Lcom/lifestreet/android/lsmsdk/AdNetworkBuilder;->mParameters:Ljava/util/Map;

    iget v8, p0, Lcom/lifestreet/android/lsmsdk/AdNetworkBuilder;->mRefreshRate:I

    invoke-direct/range {v0 .. v8}, Lcom/lifestreet/android/lsmsdk/AdNetwork;-><init>(Ljava/lang/String;Lcom/lifestreet/android/lsmsdk/AdType;Lcom/lifestreet/android/lsmsdk/TransitionAnimation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V

    return-object v0
.end method

.method public clickUrl(Ljava/lang/String;)Lcom/lifestreet/android/lsmsdk/AdNetworkBuilder;
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/lifestreet/android/lsmsdk/AdNetworkBuilder;->mClickUrl:Ljava/lang/String;

    .line 58
    return-object p0
.end method

.method public impressionUrl(Ljava/lang/String;)Lcom/lifestreet/android/lsmsdk/AdNetworkBuilder;
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/lifestreet/android/lsmsdk/AdNetworkBuilder;->mImpressionUrl:Ljava/lang/String;

    .line 48
    return-object p0
.end method

.method public networkType(Ljava/lang/String;)Lcom/lifestreet/android/lsmsdk/AdNetworkBuilder;
    .locals 0
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/lifestreet/android/lsmsdk/AdNetworkBuilder;->mNetworkType:Ljava/lang/String;

    .line 33
    return-object p0
.end method

.method public noBidUrl(Ljava/lang/String;)Lcom/lifestreet/android/lsmsdk/AdNetworkBuilder;
    .locals 0
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/lifestreet/android/lsmsdk/AdNetworkBuilder;->mNoBidUrl:Ljava/lang/String;

    .line 53
    return-object p0
.end method

.method public parameters(Ljava/util/Map;)Lcom/lifestreet/android/lsmsdk/AdNetworkBuilder;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/lifestreet/android/lsmsdk/AdNetworkBuilder;"
        }
    .end annotation

    .prologue
    .line 62
    iput-object p1, p0, Lcom/lifestreet/android/lsmsdk/AdNetworkBuilder;->mParameters:Ljava/util/Map;

    .line 63
    return-object p0
.end method

.method public refreshRate(I)Lcom/lifestreet/android/lsmsdk/AdNetworkBuilder;
    .locals 0
    .parameter

    .prologue
    .line 67
    iput p1, p0, Lcom/lifestreet/android/lsmsdk/AdNetworkBuilder;->mRefreshRate:I

    .line 68
    return-object p0
.end method

.method public transitionAnimation(Lcom/lifestreet/android/lsmsdk/TransitionAnimation;)Lcom/lifestreet/android/lsmsdk/AdNetworkBuilder;
    .locals 0
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/lifestreet/android/lsmsdk/AdNetworkBuilder;->mTransitionAnimation:Lcom/lifestreet/android/lsmsdk/TransitionAnimation;

    .line 43
    return-object p0
.end method
