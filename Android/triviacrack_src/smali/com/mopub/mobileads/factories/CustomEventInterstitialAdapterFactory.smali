.class public Lcom/mopub/mobileads/factories/CustomEventInterstitialAdapterFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static a:Lcom/mopub/mobileads/factories/CustomEventInterstitialAdapterFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    new-instance v0, Lcom/mopub/mobileads/factories/CustomEventInterstitialAdapterFactory;

    invoke-direct {v0}, Lcom/mopub/mobileads/factories/CustomEventInterstitialAdapterFactory;-><init>()V

    sput-object v0, Lcom/mopub/mobileads/factories/CustomEventInterstitialAdapterFactory;->a:Lcom/mopub/mobileads/factories/CustomEventInterstitialAdapterFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lcom/mopub/mobileads/MoPubInterstitial;Ljava/lang/String;Ljava/lang/String;)Lcom/mopub/mobileads/CustomEventInterstitialAdapter;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 15
    sget-object v0, Lcom/mopub/mobileads/factories/CustomEventInterstitialAdapterFactory;->a:Lcom/mopub/mobileads/factories/CustomEventInterstitialAdapterFactory;

    invoke-virtual {v0, p0, p1, p2}, Lcom/mopub/mobileads/factories/CustomEventInterstitialAdapterFactory;->a(Lcom/mopub/mobileads/MoPubInterstitial;Ljava/lang/String;Ljava/lang/String;)Lcom/mopub/mobileads/CustomEventInterstitialAdapter;

    move-result-object v0

    return-object v0
.end method

.method public static setInstance(Lcom/mopub/mobileads/factories/CustomEventInterstitialAdapterFactory;)V
    .locals 0
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 11
    sput-object p0, Lcom/mopub/mobileads/factories/CustomEventInterstitialAdapterFactory;->a:Lcom/mopub/mobileads/factories/CustomEventInterstitialAdapterFactory;

    .line 12
    return-void
.end method


# virtual methods
.method protected a(Lcom/mopub/mobileads/MoPubInterstitial;Ljava/lang/String;Ljava/lang/String;)Lcom/mopub/mobileads/CustomEventInterstitialAdapter;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 19
    new-instance v0, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;

    invoke-direct {v0, p1, p2, p3}, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;-><init>(Lcom/mopub/mobileads/MoPubInterstitial;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
