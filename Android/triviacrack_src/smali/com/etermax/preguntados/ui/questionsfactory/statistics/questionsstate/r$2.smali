.class Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/r$2;
.super Lcom/etermax/tools/i/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/r;->d(Lcom/etermax/preguntados/datasource/dto/UserFactoryTranslationStatDTO;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/i/a",
        "<",
        "Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/r;",
        "Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/datasource/dto/UserFactoryTranslationStatDTO;

.field final synthetic b:Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/r;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/r;Ljava/lang/String;Lcom/etermax/preguntados/datasource/dto/UserFactoryTranslationStatDTO;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/r$2;->b:Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/r;

    iput-object p3, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/r$2;->a:Lcom/etermax/preguntados/datasource/dto/UserFactoryTranslationStatDTO;

    invoke-direct {p0, p2}, Lcom/etermax/tools/i/a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/r$2;->b()Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/r;Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 76
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 77
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/r$2;->b:Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/r;

    iput-object p2, v0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/r;->e:Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;

    .line 78
    invoke-static {p1}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/r;->a(Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/r;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/s;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/r$2;->b:Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/r;

    iget-object v1, v1, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/r;->e:Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;

    iget-object v2, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/r$2;->a:Lcom/etermax/preguntados/datasource/dto/UserFactoryTranslationStatDTO;

    invoke-interface {v0, v1, v2}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/s;->a(Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;Lcom/etermax/preguntados/datasource/dto/UserFactoryTranslationStatDTO;)V

    .line 79
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    check-cast p1, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/r;

    check-cast p2, Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/r$2;->a(Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/r;Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;)V

    return-void
.end method

.method public b()Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/r$2;->b:Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/r;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/questionsstate/r;->a:Lcom/etermax/preguntados/datasource/d;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/d;->m()Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;

    move-result-object v0

    return-object v0
.end method
