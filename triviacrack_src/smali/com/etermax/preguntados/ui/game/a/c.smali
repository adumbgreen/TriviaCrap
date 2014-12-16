.class public Lcom/etermax/preguntados/ui/game/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:J

.field private b:Lcom/etermax/preguntados/datasource/dto/enums/GameType;

.field private c:J

.field private d:Lcom/etermax/preguntados/datasource/dto/AnswerListDTO;

.field private e:J

.field private f:I

.field private g:I

.field private h:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

.field private i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/etermax/preguntados/datasource/dto/enums/Vote;

.field private k:I

.field private l:Ljava/lang/Long;


# direct methods
.method public constructor <init>(JLcom/etermax/preguntados/datasource/dto/enums/GameType;JI)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-wide p1, p0, Lcom/etermax/preguntados/ui/game/a/c;->a:J

    .line 39
    iput-object p3, p0, Lcom/etermax/preguntados/ui/game/a/c;->b:Lcom/etermax/preguntados/datasource/dto/enums/GameType;

    .line 40
    iput-wide p4, p0, Lcom/etermax/preguntados/ui/game/a/c;->c:J

    .line 41
    iput p6, p0, Lcom/etermax/preguntados/ui/game/a/c;->k:I

    .line 42
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/a/c;->l:Ljava/lang/Long;

    .line 44
    new-instance v0, Lcom/etermax/preguntados/datasource/dto/AnswerListDTO;

    invoke-direct {v0}, Lcom/etermax/preguntados/datasource/dto/AnswerListDTO;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/a/c;->d:Lcom/etermax/preguntados/datasource/dto/AnswerListDTO;

    .line 45
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/a/c;->d:Lcom/etermax/preguntados/datasource/dto/AnswerListDTO;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/datasource/dto/AnswerListDTO;->setAnswers(Ljava/util/List;)V

    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/etermax/preguntados/ui/game/a/c;->b(I)V

    .line 48
    return-void
.end method

.method private b(I)V
    .locals 2
    .parameter

    .prologue
    .line 76
    iput p1, p0, Lcom/etermax/preguntados/ui/game/a/c;->f:I

    .line 77
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/etermax/preguntados/ui/game/a/c;->e:J

    .line 78
    const/4 v0, -0x2

    iput v0, p0, Lcom/etermax/preguntados/ui/game/a/c;->g:I

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/a/c;->i:Ljava/util/ArrayList;

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/a/c;->j:Lcom/etermax/preguntados/datasource/dto/enums/Vote;

    .line 81
    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 87
    iget-wide v0, p0, Lcom/etermax/preguntados/ui/game/a/c;->a:J

    return-wide v0
.end method

.method public a(I)V
    .locals 0
    .parameter

    .prologue
    .line 124
    iput p1, p0, Lcom/etermax/preguntados/ui/game/a/c;->g:I

    .line 125
    return-void
.end method

.method public a(JLcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 136
    iput-wide p1, p0, Lcom/etermax/preguntados/ui/game/a/c;->e:J

    .line 137
    iput-object p3, p0, Lcom/etermax/preguntados/ui/game/a/c;->h:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    .line 138
    return-void
.end method

.method public a(Lcom/etermax/preguntados/datasource/dto/enums/Vote;)V
    .locals 0
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/etermax/preguntados/ui/game/a/c;->j:Lcom/etermax/preguntados/datasource/dto/enums/Vote;

    .line 133
    return-void
.end method

.method public a(Ljava/lang/Long;)V
    .locals 4
    .parameter

    .prologue
    .line 174
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/a/c;->l:Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 175
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/a/c;->l:Ljava/lang/Long;

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/a/c;->l:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/a/c;->l:Ljava/lang/Long;

    .line 178
    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 128
    iput-object p1, p0, Lcom/etermax/preguntados/ui/game/a/c;->i:Ljava/util/ArrayList;

    .line 129
    return-void
.end method

.method public b()Lcom/etermax/preguntados/datasource/dto/enums/GameType;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/a/c;->b:Lcom/etermax/preguntados/datasource/dto/enums/GameType;

    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/etermax/preguntados/ui/game/a/c;->f:I

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/etermax/preguntados/ui/game/a/c;->g:I

    return v0
.end method

.method public e()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/a/c;->i:Ljava/util/ArrayList;

    return-object v0
.end method

.method public f()Z
    .locals 2

    .prologue
    .line 107
    iget v0, p0, Lcom/etermax/preguntados/ui/game/a/c;->g:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Lcom/etermax/preguntados/datasource/dto/AnswerListDTO;
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/a/c;->d:Lcom/etermax/preguntados/datasource/dto/AnswerListDTO;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/a/c;->l:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/datasource/dto/AnswerListDTO;->setFinishTime(Ljava/lang/Long;)V

    .line 112
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/a/c;->d:Lcom/etermax/preguntados/datasource/dto/AnswerListDTO;

    return-object v0
.end method

.method public h()J
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/a/c;->l:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public i()J
    .locals 2

    .prologue
    .line 120
    iget-wide v0, p0, Lcom/etermax/preguntados/ui/game/a/c;->c:J

    return-wide v0
.end method

.method public j()V
    .locals 3

    .prologue
    .line 141
    new-instance v0, Lcom/etermax/preguntados/datasource/dto/AnswerDTO;

    invoke-direct {v0}, Lcom/etermax/preguntados/datasource/dto/AnswerDTO;-><init>()V

    .line 142
    iget-wide v1, p0, Lcom/etermax/preguntados/ui/game/a/c;->e:J

    invoke-virtual {v0, v1, v2}, Lcom/etermax/preguntados/datasource/dto/AnswerDTO;->setId(J)V

    .line 143
    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/a/c;->h:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/datasource/dto/AnswerDTO;->setCategory(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)V

    .line 144
    iget v1, p0, Lcom/etermax/preguntados/ui/game/a/c;->g:I

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/datasource/dto/AnswerDTO;->setAnswer(I)V

    .line 145
    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/a/c;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/datasource/dto/AnswerDTO;->setPowerUps(Ljava/util/List;)V

    .line 146
    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/a/c;->j:Lcom/etermax/preguntados/datasource/dto/enums/Vote;

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/datasource/dto/AnswerDTO;->setVote(Lcom/etermax/preguntados/datasource/dto/enums/Vote;)V

    .line 148
    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/a/c;->d:Lcom/etermax/preguntados/datasource/dto/AnswerListDTO;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/AnswerListDTO;->getAnswers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 149
    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/a/c;->d:Lcom/etermax/preguntados/datasource/dto/AnswerListDTO;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/AnswerListDTO;->getAnswers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    :cond_0
    return-void
.end method

.method public k()V
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lcom/etermax/preguntados/ui/game/a/c;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/etermax/preguntados/ui/game/a/c;->f:I

    .line 155
    iget v0, p0, Lcom/etermax/preguntados/ui/game/a/c;->f:I

    invoke-direct {p0, v0}, Lcom/etermax/preguntados/ui/game/a/c;->b(I)V

    .line 156
    return-void
.end method

.method public l()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 159
    sget-object v1, Lcom/etermax/preguntados/ui/game/a/c$1;->a:[I

    iget-object v2, p0, Lcom/etermax/preguntados/ui/game/a/c;->b:Lcom/etermax/preguntados/datasource/dto/enums/GameType;

    invoke-virtual {v2}, Lcom/etermax/preguntados/datasource/dto/enums/GameType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 170
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 161
    :pswitch_1
    iget v1, p0, Lcom/etermax/preguntados/ui/game/a/c;->f:I

    iget v2, p0, Lcom/etermax/preguntados/ui/game/a/c;->k:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 162
    const/4 v0, 0x1

    goto :goto_0

    .line 159
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
