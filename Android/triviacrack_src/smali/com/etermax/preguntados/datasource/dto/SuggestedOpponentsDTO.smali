.class public Lcom/etermax/preguntados/datasource/dto/SuggestedOpponentsDTO;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private favorites:Lcom/etermax/preguntados/datasource/dto/SuggestedOpponentDTO;

.field private recent_opponents:Lcom/etermax/preguntados/datasource/dto/SuggestedOpponentDTO;

.field private suggested_opponents:Lcom/etermax/preguntados/datasource/dto/SuggestedOpponentDTO;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFavorites()Lcom/etermax/preguntados/datasource/dto/SuggestedOpponentDTO;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/SuggestedOpponentsDTO;->favorites:Lcom/etermax/preguntados/datasource/dto/SuggestedOpponentDTO;

    return-object v0
.end method

.method public getRecent_opponents()Lcom/etermax/preguntados/datasource/dto/SuggestedOpponentDTO;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/SuggestedOpponentsDTO;->recent_opponents:Lcom/etermax/preguntados/datasource/dto/SuggestedOpponentDTO;

    return-object v0
.end method

.method public getSuggested_opponents()Lcom/etermax/preguntados/datasource/dto/SuggestedOpponentDTO;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/SuggestedOpponentsDTO;->suggested_opponents:Lcom/etermax/preguntados/datasource/dto/SuggestedOpponentDTO;

    return-object v0
.end method
