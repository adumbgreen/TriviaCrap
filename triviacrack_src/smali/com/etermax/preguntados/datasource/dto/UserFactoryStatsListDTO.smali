.class public Lcom/etermax/preguntados/datasource/dto/UserFactoryStatsListDTO;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private rated:Lcom/etermax/preguntados/datasource/dto/UserFactoryStatsCountDTO;

.field private suggested:Lcom/etermax/preguntados/datasource/dto/UserFactoryStatsCountDTO;

.field private translated:Lcom/etermax/preguntados/datasource/dto/UserFactoryStatsCountDTO;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRated()Lcom/etermax/preguntados/datasource/dto/UserFactoryStatsCountDTO;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/UserFactoryStatsListDTO;->rated:Lcom/etermax/preguntados/datasource/dto/UserFactoryStatsCountDTO;

    return-object v0
.end method

.method public getSuggested()Lcom/etermax/preguntados/datasource/dto/UserFactoryStatsCountDTO;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/UserFactoryStatsListDTO;->suggested:Lcom/etermax/preguntados/datasource/dto/UserFactoryStatsCountDTO;

    return-object v0
.end method

.method public getTranslated()Lcom/etermax/preguntados/datasource/dto/UserFactoryStatsCountDTO;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/UserFactoryStatsListDTO;->translated:Lcom/etermax/preguntados/datasource/dto/UserFactoryStatsCountDTO;

    return-object v0
.end method
