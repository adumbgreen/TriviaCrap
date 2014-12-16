.class public Lcom/etermax/preguntados/datasource/dto/EventDTO;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field challenged_score:I

.field challenger_score:I

.field coins_reward:I

.field me:Lcom/etermax/preguntados/datasource/dto/enums/DuelPlayerStatus;

.field offered_crown:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

.field requested_crown:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

.field type:Lcom/etermax/preguntados/datasource/dto/enums/GameEvent;

.field win:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChallengedScore()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/etermax/preguntados/datasource/dto/EventDTO;->challenged_score:I

    return v0
.end method

.method public getChallengerScore()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/etermax/preguntados/datasource/dto/EventDTO;->challenger_score:I

    return v0
.end method

.method public getCoinsReward()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/etermax/preguntados/datasource/dto/EventDTO;->coins_reward:I

    return v0
.end method

.method public getMe()Lcom/etermax/preguntados/datasource/dto/enums/DuelPlayerStatus;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/EventDTO;->me:Lcom/etermax/preguntados/datasource/dto/enums/DuelPlayerStatus;

    return-object v0
.end method

.method public getOfferedCrown()Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/EventDTO;->offered_crown:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    return-object v0
.end method

.method public getRequestedCrown()Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/EventDTO;->requested_crown:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    return-object v0
.end method

.method public getType()Lcom/etermax/preguntados/datasource/dto/enums/GameEvent;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/EventDTO;->type:Lcom/etermax/preguntados/datasource/dto/enums/GameEvent;

    return-object v0
.end method

.method public isWin()Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/etermax/preguntados/datasource/dto/EventDTO;->win:Z

    return v0
.end method
