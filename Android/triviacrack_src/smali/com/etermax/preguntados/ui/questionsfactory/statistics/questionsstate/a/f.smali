.class public abstract Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/f;
.super Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/a;
.source "SourceFile"


# instance fields
.field protected c:Lcom/etermax/preguntados/datasource/dto/UserFactoryTranslationStatDTO;


# direct methods
.method public constructor <init>(Lcom/etermax/preguntados/datasource/dto/UserFactoryTranslationStatDTO;)V
    .locals 2
    .parameter

    .prologue
    .line 10
    sget-object v0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/n;->b:Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/n;

    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/UserFactoryTranslationStatDTO;->getCategory()Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/a;-><init>(Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/n;Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)V

    .line 11
    iput-object p1, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/f;->c:Lcom/etermax/preguntados/datasource/dto/UserFactoryTranslationStatDTO;

    .line 12
    return-void
.end method


# virtual methods
.method public c()Lcom/etermax/preguntados/datasource/dto/UserFactoryTranslationStatDTO;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/a/f;->c:Lcom/etermax/preguntados/datasource/dto/UserFactoryTranslationStatDTO;

    return-object v0
.end method
