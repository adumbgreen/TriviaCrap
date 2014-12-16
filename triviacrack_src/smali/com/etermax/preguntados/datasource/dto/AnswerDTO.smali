.class public Lcom/etermax/preguntados/datasource/dto/AnswerDTO;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private answer:I

.field private category:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

.field private id:J

.field private power_ups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;",
            ">;"
        }
    .end annotation
.end field

.field private vote:Lcom/etermax/preguntados/datasource/dto/enums/Vote;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 72
    if-ne p0, p1, :cond_1

    .line 83
    :cond_0
    :goto_0
    return v0

    .line 74
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 75
    goto :goto_0

    .line 76
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 77
    goto :goto_0

    .line 78
    :cond_3
    check-cast p1, Lcom/etermax/preguntados/datasource/dto/AnswerDTO;

    .line 79
    iget-object v2, p0, Lcom/etermax/preguntados/datasource/dto/AnswerDTO;->category:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    iget-object v3, p1, Lcom/etermax/preguntados/datasource/dto/AnswerDTO;->category:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    if-eq v2, v3, :cond_4

    move v0, v1

    .line 80
    goto :goto_0

    .line 81
    :cond_4
    iget-wide v2, p0, Lcom/etermax/preguntados/datasource/dto/AnswerDTO;->id:J

    iget-wide v4, p1, Lcom/etermax/preguntados/datasource/dto/AnswerDTO;->id:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    .line 82
    goto :goto_0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 21
    iget-wide v0, p0, Lcom/etermax/preguntados/datasource/dto/AnswerDTO;->id:J

    return-wide v0
.end method

.method public getPowerUps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/AnswerDTO;->power_ups:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 62
    .line 64
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/AnswerDTO;->category:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 66
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/etermax/preguntados/datasource/dto/AnswerDTO;->id:J

    iget-wide v3, p0, Lcom/etermax/preguntados/datasource/dto/AnswerDTO;->id:J

    const/16 v5, 0x20

    ushr-long/2addr v3, v5

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    .line 67
    return v0

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/AnswerDTO;->category:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public setAnswer(I)V
    .locals 0
    .parameter

    .prologue
    .line 41
    iput p1, p0, Lcom/etermax/preguntados/datasource/dto/AnswerDTO;->answer:I

    .line 42
    return-void
.end method

.method public setCategory(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/etermax/preguntados/datasource/dto/AnswerDTO;->category:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    .line 34
    return-void
.end method

.method public setId(J)V
    .locals 0
    .parameter

    .prologue
    .line 25
    iput-wide p1, p0, Lcom/etermax/preguntados/datasource/dto/AnswerDTO;->id:J

    .line 26
    return-void
.end method

.method public setPowerUps(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 57
    iput-object p1, p0, Lcom/etermax/preguntados/datasource/dto/AnswerDTO;->power_ups:Ljava/util/List;

    .line 58
    return-void
.end method

.method public setVote(Lcom/etermax/preguntados/datasource/dto/enums/Vote;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/etermax/preguntados/datasource/dto/AnswerDTO;->vote:Lcom/etermax/preguntados/datasource/dto/enums/Vote;

    .line 50
    return-void
.end method
