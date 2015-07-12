.class public Lcom/etermax/gamescommon/datasource/dto/AdsDTO;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private lastUpdateTime:J

.field private mediationconf:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/etermax/gamescommon/datasource/dto/AdsMediationConfDTO;",
            ">;"
        }
    .end annotation
.end field

.field private ttl:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const v0, 0x15180

    iput v0, p0, Lcom/etermax/gamescommon/datasource/dto/AdsDTO;->ttl:I

    return-void
.end method


# virtual methods
.method public getLastUpdateTime()J
    .locals 2

    .prologue
    .line 22
    iget-wide v0, p0, Lcom/etermax/gamescommon/datasource/dto/AdsDTO;->lastUpdateTime:J

    return-wide v0
.end method

.method public getMediationconf()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/gamescommon/datasource/dto/AdsMediationConfDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    iget-object v0, p0, Lcom/etermax/gamescommon/datasource/dto/AdsDTO;->mediationconf:Ljava/util/List;

    return-object v0
.end method

.method public getTtl()I
    .locals 1

    .prologue
    .line 14
    iget v0, p0, Lcom/etermax/gamescommon/datasource/dto/AdsDTO;->ttl:I

    return v0
.end method

.method public setLastUpdateTime(J)V
    .locals 0
    .parameter

    .prologue
    .line 26
    iput-wide p1, p0, Lcom/etermax/gamescommon/datasource/dto/AdsDTO;->lastUpdateTime:J

    .line 27
    return-void
.end method
