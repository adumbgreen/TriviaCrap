.class public Lcom/facebook/ads/internal/AdUtilities$Fb4aData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected advertisingId:Ljava/lang/String;

.field protected attributionId:Ljava/lang/String;

.field protected limitTrackingEnabled:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    iput-object p1, p0, Lcom/facebook/ads/internal/AdUtilities$Fb4aData;->attributionId:Ljava/lang/String;

    .line 172
    iput-object p2, p0, Lcom/facebook/ads/internal/AdUtilities$Fb4aData;->advertisingId:Ljava/lang/String;

    .line 173
    iput-boolean p3, p0, Lcom/facebook/ads/internal/AdUtilities$Fb4aData;->limitTrackingEnabled:Z

    .line 174
    return-void
.end method
