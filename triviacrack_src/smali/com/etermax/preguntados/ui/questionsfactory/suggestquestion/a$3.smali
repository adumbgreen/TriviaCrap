.class Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a$3;
.super Lcom/etermax/tools/i/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->a(Lcom/etermax/preguntados/datasource/dto/SuggestedQuestionDTO;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/i/a",
        "<",
        "Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/datasource/dto/SuggestedQuestionDTO;

.field final synthetic b:Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;Ljava/lang/String;Lcom/etermax/preguntados/datasource/dto/SuggestedQuestionDTO;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 408
    iput-object p1, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a$3;->b:Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;

    iput-object p3, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a$3;->a:Lcom/etermax/preguntados/datasource/dto/SuggestedQuestionDTO;

    invoke-direct {p0, p2}, Lcom/etermax/tools/i/a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 408
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a$3;->b()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;Ljava/lang/Void;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 418
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 419
    invoke-static {p1}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->e(Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/preguntados/ui/questionsfactory/e;->a(Landroid/content/Context;)Lcom/etermax/preguntados/ui/questionsfactory/e;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a$3;->b:Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;

    iget-object v1, v1, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->f:Lcom/etermax/gamescommon/language/Language;

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/ui/questionsfactory/e;->a(Lcom/etermax/gamescommon/language/Language;)V

    .line 420
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a$3;->b:Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->f(Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;)V

    .line 421
    invoke-static {p1}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->g(Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/b;

    invoke-interface {v0}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/b;->b()V

    .line 422
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 408
    check-cast p1, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;

    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a$3;->a(Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;Ljava/lang/Void;)V

    return-void
.end method

.method public b()Ljava/lang/Void;
    .locals 2

    .prologue
    .line 412
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a$3;->b:Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->c:Lcom/etermax/preguntados/datasource/d;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a$3;->a:Lcom/etermax/preguntados/datasource/dto/SuggestedQuestionDTO;

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/datasource/d;->a(Lcom/etermax/preguntados/datasource/dto/SuggestedQuestionDTO;)V

    .line 413
    const/4 v0, 0x0

    return-object v0
.end method
