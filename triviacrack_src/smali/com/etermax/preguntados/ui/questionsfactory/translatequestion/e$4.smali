.class Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e$4;
.super Lcom/etermax/tools/i/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->a(Lcom/etermax/gamescommon/language/Language;Lcom/etermax/gamescommon/language/Language;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/i/a",
        "<",
        "Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;",
        "Lcom/etermax/preguntados/datasource/dto/QuestionDTO;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/language/Language;

.field final synthetic b:Lcom/etermax/gamescommon/language/Language;

.field final synthetic c:Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;Ljava/lang/String;Lcom/etermax/gamescommon/language/Language;Lcom/etermax/gamescommon/language/Language;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 283
    iput-object p1, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e$4;->c:Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;

    iput-object p3, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e$4;->a:Lcom/etermax/gamescommon/language/Language;

    iput-object p4, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e$4;->b:Lcom/etermax/gamescommon/language/Language;

    invoke-direct {p0, p2}, Lcom/etermax/tools/i/a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 283
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e$4;->b()Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;Lcom/etermax/preguntados/datasource/dto/QuestionDTO;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 292
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 293
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e$4;->c:Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;

    invoke-virtual {v0, p2}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->a(Lcom/etermax/preguntados/datasource/dto/QuestionDTO;)V

    .line 294
    return-void
.end method

.method public a(Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;Ljava/lang/Exception;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 298
    instance-of v0, p2, Lcom/etermax/preguntados/datasource/a/b;

    if-eqz v0, :cond_0

    move-object v0, p2

    .line 299
    check-cast v0, Lcom/etermax/preguntados/datasource/a/b;

    .line 300
    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/a/b;->c()I

    move-result v0

    const/16 v1, 0x1a0

    if-ne v0, v1, :cond_0

    .line 301
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e$4;->c:Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->f(Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e$4;->c:Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;

    sget v2, Lcom/etermax/o;->no_more_questions_translate:I

    invoke-virtual {v1, v2}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 302
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e$4;->c:Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->translation_scroll:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 303
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e$4;->b(Z)V

    .line 306
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/a;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 307
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 283
    check-cast p1, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e$4;->a(Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;Ljava/lang/Exception;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 283
    check-cast p1, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;

    check-cast p2, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e$4;->a(Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;Lcom/etermax/preguntados/datasource/dto/QuestionDTO;)V

    return-void
.end method

.method public b()Lcom/etermax/preguntados/datasource/dto/QuestionDTO;
    .locals 3

    .prologue
    .line 287
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e$4;->c:Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e;->a:Lcom/etermax/preguntados/datasource/d;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e$4;->a:Lcom/etermax/gamescommon/language/Language;

    iget-object v2, p0, Lcom/etermax/preguntados/ui/questionsfactory/translatequestion/e$4;->b:Lcom/etermax/gamescommon/language/Language;

    invoke-virtual {v0, v1, v2}, Lcom/etermax/preguntados/datasource/d;->a(Lcom/etermax/gamescommon/language/Language;Lcom/etermax/gamescommon/language/Language;)Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    move-result-object v0

    return-object v0
.end method
