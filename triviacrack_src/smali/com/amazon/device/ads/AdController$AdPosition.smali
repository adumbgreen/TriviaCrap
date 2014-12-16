.class Lcom/amazon/device/ads/AdController$AdPosition;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final size:Lcom/amazon/device/ads/Size;

.field final synthetic this$0:Lcom/amazon/device/ads/AdController;

.field private final x:I

.field private final y:I


# direct methods
.method public constructor <init>(Lcom/amazon/device/ads/AdController;Lcom/amazon/device/ads/Size;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1416
    iput-object p1, p0, Lcom/amazon/device/ads/AdController$AdPosition;->this$0:Lcom/amazon/device/ads/AdController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1417
    iput-object p2, p0, Lcom/amazon/device/ads/AdController$AdPosition;->size:Lcom/amazon/device/ads/Size;

    .line 1418
    iput p3, p0, Lcom/amazon/device/ads/AdController$AdPosition;->x:I

    .line 1419
    iput p4, p0, Lcom/amazon/device/ads/AdController$AdPosition;->y:I

    .line 1420
    return-void
.end method


# virtual methods
.method public getSize()Lcom/amazon/device/ads/Size;
    .locals 1

    .prologue
    .line 1424
    iget-object v0, p0, Lcom/amazon/device/ads/AdController$AdPosition;->size:Lcom/amazon/device/ads/Size;

    return-object v0
.end method

.method public getX()I
    .locals 1

    .prologue
    .line 1429
    iget v0, p0, Lcom/amazon/device/ads/AdController$AdPosition;->x:I

    return v0
.end method

.method public getY()I
    .locals 1

    .prologue
    .line 1434
    iget v0, p0, Lcom/amazon/device/ads/AdController$AdPosition;->y:I

    return v0
.end method
