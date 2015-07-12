.class public Lcom/mopub/mobileads/factories/CustomEventBannerAdapterFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static a:Lcom/mopub/mobileads/factories/CustomEventBannerAdapterFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    new-instance v0, Lcom/mopub/mobileads/factories/CustomEventBannerAdapterFactory;

    invoke-direct {v0}, Lcom/mopub/mobileads/factories/CustomEventBannerAdapterFactory;-><init>()V

    sput-object v0, Lcom/mopub/mobileads/factories/CustomEventBannerAdapterFactory;->a:Lcom/mopub/mobileads/factories/CustomEventBannerAdapterFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lcom/mopub/mobileads/MoPubView;Ljava/lang/String;Ljava/lang/String;)Lcom/mopub/mobileads/CustomEventBannerAdapter;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 15
    sget-object v0, Lcom/mopub/mobileads/factories/CustomEventBannerAdapterFactory;->a:Lcom/mopub/mobileads/factories/CustomEventBannerAdapterFactory;

    invoke-virtual {v0, p0, p1, p2}, Lcom/mopub/mobileads/factories/CustomEventBannerAdapterFactory;->a(Lcom/mopub/mobileads/MoPubView;Ljava/lang/String;Ljava/lang/String;)Lcom/mopub/mobileads/CustomEventBannerAdapter;

    move-result-object v0

    return-object v0
.end method

.method public static setInstance(Lcom/mopub/mobileads/factories/CustomEventBannerAdapterFactory;)V
    .locals 0
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 11
    sput-object p0, Lcom/mopub/mobileads/factories/CustomEventBannerAdapterFactory;->a:Lcom/mopub/mobileads/factories/CustomEventBannerAdapterFactory;

    .line 12
    return-void
.end method


# virtual methods
.method protected a(Lcom/mopub/mobileads/MoPubView;Ljava/lang/String;Ljava/lang/String;)Lcom/mopub/mobileads/CustomEventBannerAdapter;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 19
    new-instance v0, Lcom/mopub/mobileads/CustomEventBannerAdapter;

    invoke-direct {v0, p1, p2, p3}, Lcom/mopub/mobileads/CustomEventBannerAdapter;-><init>(Lcom/mopub/mobileads/MoPubView;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
