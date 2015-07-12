.class Lcom/facebook/ads/internal/AdRequest$AdRequestResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field body:Lorg/json/JSONObject;

.field error:Lcom/facebook/ads/AdError;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 339
    iput-object v0, p0, Lcom/facebook/ads/internal/AdRequest$AdRequestResponse;->body:Lorg/json/JSONObject;

    .line 340
    iput-object v0, p0, Lcom/facebook/ads/internal/AdRequest$AdRequestResponse;->error:Lcom/facebook/ads/AdError;

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/ads/internal/AdRequest$1;)V
    .locals 0
    .parameter

    .prologue
    .line 338
    invoke-direct {p0}, Lcom/facebook/ads/internal/AdRequest$AdRequestResponse;-><init>()V

    return-void
.end method
