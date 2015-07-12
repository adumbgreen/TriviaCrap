.class public final Lcom/mopub/nativeads/MoPubNativeAdPositioning$Builder;
.super Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;-><init>()V

    return-void
.end method


# virtual methods
.method public addFixedPosition(I)Lcom/mopub/nativeads/MoPubNativeAdPositioning$Builder;
    .locals 0
    .parameter

    .prologue
    .line 148
    invoke-super {p0, p1}, Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;->addFixedPosition(I)Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;

    .line 149
    return-object p0
.end method

.method public bridge synthetic addFixedPosition(I)Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;
    .locals 1
    .parameter

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/mopub/nativeads/MoPubNativeAdPositioning$Builder;->addFixedPosition(I)Lcom/mopub/nativeads/MoPubNativeAdPositioning$Builder;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 165
    return-object p0
.end method

.method public enableRepeatingPositions(I)Lcom/mopub/nativeads/MoPubNativeAdPositioning$Builder;
    .locals 0
    .parameter

    .prologue
    .line 154
    invoke-super {p0, p1}, Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;->enableRepeatingPositions(I)Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;

    .line 155
    return-object p0
.end method

.method public bridge synthetic enableRepeatingPositions(I)Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;
    .locals 1
    .parameter

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/mopub/nativeads/MoPubNativeAdPositioning$Builder;->enableRepeatingPositions(I)Lcom/mopub/nativeads/MoPubNativeAdPositioning$Builder;

    move-result-object v0

    return-object v0
.end method
