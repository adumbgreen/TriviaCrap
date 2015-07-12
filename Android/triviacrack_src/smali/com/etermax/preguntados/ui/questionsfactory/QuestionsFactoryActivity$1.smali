.class Lcom/etermax/preguntados/ui/questionsfactory/QuestionsFactoryActivity$1;
.super Lcom/etermax/tools/i/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/questionsfactory/QuestionsFactoryActivity;->k()V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/i/a",
        "<",
        "Lcom/etermax/preguntados/ui/questionsfactory/QuestionsFactoryActivity;",
        "Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/ui/questionsfactory/QuestionsFactoryActivity;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/questionsfactory/QuestionsFactoryActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/etermax/preguntados/ui/questionsfactory/QuestionsFactoryActivity$1;->a:Lcom/etermax/preguntados/ui/questionsfactory/QuestionsFactoryActivity;

    invoke-direct {p0, p2}, Lcom/etermax/tools/i/a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/QuestionsFactoryActivity$1;->b()Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/etermax/preguntados/ui/questionsfactory/QuestionsFactoryActivity;Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 91
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 92
    invoke-static {p1, p2}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/RateQuestionActivity;->a(Landroid/content/Context;Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;)Landroid/content/Intent;

    move-result-object v0

    .line 93
    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/QuestionsFactoryActivity$1;->a:Lcom/etermax/preguntados/ui/questionsfactory/QuestionsFactoryActivity;

    invoke-virtual {v1, v0}, Lcom/etermax/preguntados/ui/questionsfactory/QuestionsFactoryActivity;->startActivity(Landroid/content/Intent;)V

    .line 94
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 82
    check-cast p1, Lcom/etermax/preguntados/ui/questionsfactory/QuestionsFactoryActivity;

    check-cast p2, Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/preguntados/ui/questionsfactory/QuestionsFactoryActivity$1;->a(Lcom/etermax/preguntados/ui/questionsfactory/QuestionsFactoryActivity;Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;)V

    return-void
.end method

.method public b()Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/QuestionsFactoryActivity$1;->a:Lcom/etermax/preguntados/ui/questionsfactory/QuestionsFactoryActivity;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/questionsfactory/QuestionsFactoryActivity;->a:Lcom/etermax/preguntados/datasource/d;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/d;->n()Lcom/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO;

    move-result-object v0

    return-object v0
.end method
