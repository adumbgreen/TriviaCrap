.class public Lcom/etermax/gamescommon/datasource/dto/AdsMediationConfDTO;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private ad_units:[Lcom/etermax/gamescommon/datasource/dto/AdUnitDTO;

.field private weight:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAd_units()[Lcom/etermax/gamescommon/datasource/dto/AdUnitDTO;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/etermax/gamescommon/datasource/dto/AdsMediationConfDTO;->ad_units:[Lcom/etermax/gamescommon/datasource/dto/AdUnitDTO;

    return-object v0
.end method

.method public getWeight()I
    .locals 1

    .prologue
    .line 10
    iget v0, p0, Lcom/etermax/gamescommon/datasource/dto/AdsMediationConfDTO;->weight:I

    return v0
.end method
