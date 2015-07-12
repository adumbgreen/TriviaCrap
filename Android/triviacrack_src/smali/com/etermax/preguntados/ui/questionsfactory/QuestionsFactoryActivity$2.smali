.class Lcom/etermax/preguntados/ui/questionsfactory/QuestionsFactoryActivity$2;
.super Lcom/etermax/tools/i/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/questionsfactory/QuestionsFactoryActivity;->l()V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/i/a",
        "<",
        "Lcom/etermax/preguntados/ui/questionsfactory/QuestionsFactoryActivity;",
        "Lcom/etermax/preguntados/datasource/dto/TranslateQuestionConfigDTO;",
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
    .line 99
    iput-object p1, p0, Lcom/etermax/preguntados/ui/questionsfactory/QuestionsFactoryActivity$2;->a:Lcom/etermax/preguntados/ui/questionsfactory/QuestionsFactoryActivity;

    invoke-direct {p0, p2}, Lcom/etermax/tools/i/a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/QuestionsFactoryActivity$2;->b()Lcom/etermax/preguntados/datasource/dto/TranslateQuestionConfigDTO;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/etermax/preguntados/ui/questionsfactory/QuestionsFactoryActivity;Lcom/etermax/preguntados/datasource/dto/TranslateQuestionConfigDTO;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 107
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 108
    invoke-static {p1, p2}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/TranslateQuestionActivity;->a(Landroid/content/Context;Lcom/etermax/preguntados/datasource/dto/TranslateQuestionConfigDTO;)Landroid/content/Intent;

    move-result-object v0

    .line 109
    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/QuestionsFactoryActivity$2;->a:Lcom/etermax/preguntados/ui/questionsfactory/QuestionsFactoryActivity;

    invoke-virtual {v1, v0}, Lcom/etermax/preguntados/ui/questionsfactory/QuestionsFactoryActivity;->startActivity(Landroid/content/Intent;)V

    .line 110
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 99
    check-cast p1, Lcom/etermax/preguntados/ui/questionsfactory/QuestionsFactoryActivity;

    check-cast p2, Lcom/etermax/preguntados/datasource/dto/TranslateQuestionConfigDTO;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/preguntados/ui/questionsfactory/QuestionsFactoryActivity$2;->a(Lcom/etermax/preguntados/ui/questionsfactory/QuestionsFactoryActivity;Lcom/etermax/preguntados/datasource/dto/TranslateQuestionConfigDTO;)V

    return-void
.end method

.method public b()Lcom/etermax/preguntados/datasource/dto/TranslateQuestionConfigDTO;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/QuestionsFactoryActivity$2;->a:Lcom/etermax/preguntados/ui/questionsfactory/QuestionsFactoryActivity;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/questionsfactory/QuestionsFactoryActivity;->a:Lcom/etermax/preguntados/datasource/d;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/d;->o()Lcom/etermax/preguntados/datasource/dto/TranslateQuestionConfigDTO;

    move-result-object v0

    return-object v0
.end method
