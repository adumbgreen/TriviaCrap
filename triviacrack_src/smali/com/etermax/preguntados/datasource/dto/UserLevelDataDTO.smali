.class public Lcom/etermax/preguntados/datasource/dto/UserLevelDataDTO;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private goal_points:I

.field private level:I

.field private level_up:Z

.field private points:I

.field private progress:I

.field private rewards:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/RewardDTO;",
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
.method public getGoalPoints()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/etermax/preguntados/datasource/dto/UserLevelDataDTO;->goal_points:I

    return v0
.end method

.method public getLevel()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/etermax/preguntados/datasource/dto/UserLevelDataDTO;->level:I

    return v0
.end method

.method public getPoints()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/etermax/preguntados/datasource/dto/UserLevelDataDTO;->points:I

    return v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/etermax/preguntados/datasource/dto/UserLevelDataDTO;->progress:I

    return v0
.end method

.method public getRewards()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/RewardDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/UserLevelDataDTO;->rewards:Ljava/util/List;

    return-object v0
.end method

.method public isLevelUp()Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/etermax/preguntados/datasource/dto/UserLevelDataDTO;->level_up:Z

    return v0
.end method

.method public setLevelUp(Z)V
    .locals 0
    .parameter

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/etermax/preguntados/datasource/dto/UserLevelDataDTO;->level_up:Z

    .line 39
    return-void
.end method
