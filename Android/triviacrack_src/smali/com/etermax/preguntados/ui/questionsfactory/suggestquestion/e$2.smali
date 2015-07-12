.class Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/e$2;
.super Lcom/etermax/tools/i/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/e;->d()V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/i/a",
        "<",
        "Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/e;",
        "Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/e;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/e;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/e$2;->a:Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/e;

    invoke-direct {p0, p2}, Lcom/etermax/tools/i/a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/e$2;->b()Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/e;Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 97
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 98
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/e$2;->a:Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/e;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/e;->a(Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/f;

    invoke-interface {v0, p2}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/f;->a(Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;)V

    .line 99
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/e$2;->a:Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/e;

    invoke-virtual {p2}, Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;->getCategories()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/e;->c:Ljava/util/ArrayList;

    .line 100
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/e$2;->a:Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/e;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/e$2;->a:Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/e;

    iget-object v1, v1, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/e;->c:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/e;->a(Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/e;Ljava/util/List;)V

    .line 101
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 88
    check-cast p1, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/e;

    check-cast p2, Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/e$2;->a(Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/e;Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;)V

    return-void
.end method

.method public b()Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/e$2;->a:Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/e;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/e;->b:Lcom/etermax/preguntados/datasource/d;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/d;->m()Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;

    move-result-object v0

    return-object v0
.end method
