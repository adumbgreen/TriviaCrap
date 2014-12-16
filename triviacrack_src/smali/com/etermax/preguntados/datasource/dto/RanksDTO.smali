.class public Lcom/etermax/preguntados/datasource/dto/RanksDTO;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private time_remaining:J

.field private user_ranks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/UserRankDTO;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRemainingTime()J
    .locals 2

    .prologue
    .line 18
    iget-wide v0, p0, Lcom/etermax/preguntados/datasource/dto/RanksDTO;->time_remaining:J

    return-wide v0
.end method

.method public getUserRanks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/UserRankDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 14
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/RanksDTO;->user_ranks:Ljava/util/List;

    return-object v0
.end method
