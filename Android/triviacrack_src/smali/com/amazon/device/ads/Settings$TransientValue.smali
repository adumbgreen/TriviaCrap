.class Lcom/amazon/device/ads/Settings$TransientValue;
.super Lcom/amazon/device/ads/Settings$Value;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/amazon/device/ads/Settings;


# direct methods
.method public constructor <init>(Lcom/amazon/device/ads/Settings;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 464
    iput-object p1, p0, Lcom/amazon/device/ads/Settings$TransientValue;->this$0:Lcom/amazon/device/ads/Settings;

    .line 465
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/device/ads/Settings$Value;-><init>(Lcom/amazon/device/ads/Settings;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 466
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazon/device/ads/Settings$TransientValue;->isTransientData:Z

    .line 467
    return-void
.end method
