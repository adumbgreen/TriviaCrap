.class public Lcom/amazon/device/ads/AdLoader$AdFetchException;
.super Ljava/lang/Exception;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final adError:Lcom/amazon/device/ads/AdError;

.field final synthetic this$0:Lcom/amazon/device/ads/AdLoader;


# direct methods
.method public constructor <init>(Lcom/amazon/device/ads/AdLoader;Lcom/amazon/device/ads/AdError;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 465
    iput-object p1, p0, Lcom/amazon/device/ads/AdLoader$AdFetchException;->this$0:Lcom/amazon/device/ads/AdLoader;

    .line 466
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 467
    iput-object p2, p0, Lcom/amazon/device/ads/AdLoader$AdFetchException;->adError:Lcom/amazon/device/ads/AdError;

    .line 468
    return-void
.end method

.method public constructor <init>(Lcom/amazon/device/ads/AdLoader;Lcom/amazon/device/ads/AdError;Ljava/lang/Throwable;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 471
    iput-object p1, p0, Lcom/amazon/device/ads/AdLoader$AdFetchException;->this$0:Lcom/amazon/device/ads/AdLoader;

    .line 472
    invoke-direct {p0, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 473
    iput-object p2, p0, Lcom/amazon/device/ads/AdLoader$AdFetchException;->adError:Lcom/amazon/device/ads/AdError;

    .line 474
    return-void
.end method


# virtual methods
.method public getAdError()Lcom/amazon/device/ads/AdError;
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lcom/amazon/device/ads/AdLoader$AdFetchException;->adError:Lcom/amazon/device/ads/AdError;

    return-object v0
.end method
