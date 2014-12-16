.class Lcom/mopub/mobileads/az;
.super Lcom/mopub/mobileads/ba;
.source "SourceFile"


# instance fields
.field private final a:Lcom/mopub/mobileads/MraidView$PlacementType;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/MraidView$PlacementType;)V
    .locals 0
    .parameter

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/mopub/mobileads/ba;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/mopub/mobileads/az;->a:Lcom/mopub/mobileads/MraidView$PlacementType;

    .line 24
    return-void
.end method

.method public static createWithType(Lcom/mopub/mobileads/MraidView$PlacementType;)Lcom/mopub/mobileads/az;
    .locals 1
    .parameter

    .prologue
    .line 28
    new-instance v0, Lcom/mopub/mobileads/az;

    invoke-direct {v0, p0}, Lcom/mopub/mobileads/az;-><init>(Lcom/mopub/mobileads/MraidView$PlacementType;)V

    return-object v0
.end method


# virtual methods
.method public toJsonPair()Ljava/lang/String;
    .locals 2

    .prologue
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "placementType: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/az;->a:Lcom/mopub/mobileads/MraidView$PlacementType;

    invoke-virtual {v1}, Lcom/mopub/mobileads/MraidView$PlacementType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
