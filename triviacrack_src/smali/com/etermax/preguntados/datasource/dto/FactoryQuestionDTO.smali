.class public Lcom/etermax/preguntados/datasource/dto/FactoryQuestionDTO;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private category:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

.field private countries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/enums/Country;",
            ">;"
        }
    .end annotation
.end field

.field private id:J

.field private translations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/TranslationDTO;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setCategory(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/etermax/preguntados/datasource/dto/FactoryQuestionDTO;->category:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    .line 32
    return-void
.end method

.method public setCountries(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/enums/Country;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    iput-object p1, p0, Lcom/etermax/preguntados/datasource/dto/FactoryQuestionDTO;->countries:Ljava/util/List;

    .line 40
    return-void
.end method

.method public setId(J)V
    .locals 0
    .parameter

    .prologue
    .line 23
    iput-wide p1, p0, Lcom/etermax/preguntados/datasource/dto/FactoryQuestionDTO;->id:J

    .line 24
    return-void
.end method

.method public setTranslations(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/TranslationDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    iput-object p1, p0, Lcom/etermax/preguntados/datasource/dto/FactoryQuestionDTO;->translations:Ljava/util/List;

    .line 48
    return-void
.end method
