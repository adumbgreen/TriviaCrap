.class public Lcom/etermax/preguntados/datasource/dto/QuestionRatingDTO;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private id:J

.field private language:Lcom/etermax/gamescommon/language/Language;

.field private vote:Lcom/etermax/preguntados/datasource/dto/enums/Vote;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method


# virtual methods
.method public setLanguage(Lcom/etermax/gamescommon/language/Language;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/etermax/preguntados/datasource/dto/QuestionRatingDTO;->language:Lcom/etermax/gamescommon/language/Language;

    .line 32
    return-void
.end method

.method public setQuestionId(J)V
    .locals 0
    .parameter

    .prologue
    .line 27
    iput-wide p1, p0, Lcom/etermax/preguntados/datasource/dto/QuestionRatingDTO;->id:J

    .line 28
    return-void
.end method

.method public setVote(Lcom/etermax/preguntados/datasource/dto/enums/Vote;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/etermax/preguntados/datasource/dto/QuestionRatingDTO;->vote:Lcom/etermax/preguntados/datasource/dto/enums/Vote;

    .line 36
    return-void
.end method
