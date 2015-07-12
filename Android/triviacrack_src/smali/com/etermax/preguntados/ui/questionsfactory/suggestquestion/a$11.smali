.class Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/preguntados/ui/questionsfactory/widget/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->k()Lcom/etermax/preguntados/ui/questionsfactory/widget/a/c;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/etermax/preguntados/ui/questionsfactory/widget/a/c",
        "<",
        "Lcom/etermax/preguntados/ui/questionsfactory/widget/a/g;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;)V
    .locals 0
    .parameter

    .prologue
    .line 314
    iput-object p1, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a$11;->a:Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/etermax/preguntados/ui/questionsfactory/widget/a/g;)V
    .locals 2
    .parameter

    .prologue
    .line 317
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a$11;->a:Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;

    invoke-virtual {p1}, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/g;->b()Lcom/etermax/gamescommon/language/Language;

    move-result-object v1

    iput-object v1, v0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->f:Lcom/etermax/gamescommon/language/Language;

    .line 318
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a$11;->a:Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/Country;->GX:Lcom/etermax/preguntados/datasource/dto/enums/Country;

    iput-object v1, v0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->g:Lcom/etermax/preguntados/datasource/dto/enums/Country;

    .line 319
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a$11;->a:Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->getView()Landroid/view/View;

    move-result-object v0

    .line 320
    if-eqz v0, :cond_0

    .line 321
    sget v1, Lcom/etermax/i;->statistics_question_edit_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/ui/questionsfactory/widget/SuggestQuestionEditText;

    .line 322
    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a$11;->a:Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;

    iget-object v1, v1, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->f:Lcom/etermax/gamescommon/language/Language;

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/ui/questionsfactory/widget/SuggestQuestionEditText;->setQuestionLanguage(Lcom/etermax/gamescommon/language/Language;)V

    .line 323
    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/questionsfactory/widget/SuggestQuestionEditText;->b()V

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a$11;->a:Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;->d(Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a;)V

    .line 326
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 314
    check-cast p1, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/g;

    invoke-virtual {p0, p1}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/a$11;->a(Lcom/etermax/preguntados/ui/questionsfactory/widget/a/g;)V

    return-void
.end method
