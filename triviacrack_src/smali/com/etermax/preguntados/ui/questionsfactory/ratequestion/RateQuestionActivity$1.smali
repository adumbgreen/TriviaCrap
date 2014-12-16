.class Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/RateQuestionActivity$1;
.super Lcom/etermax/tools/i/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/RateQuestionActivity;->b(Lcom/etermax/preguntados/datasource/dto/QuestionRatingDTO;Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/a;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/i/a",
        "<",
        "Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/RateQuestionActivity;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/datasource/dto/QuestionRatingDTO;

.field final synthetic b:Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/a;

.field final synthetic c:Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/RateQuestionActivity;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/RateQuestionActivity;Ljava/lang/String;Lcom/etermax/preguntados/datasource/dto/QuestionRatingDTO;Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/a;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/RateQuestionActivity$1;->c:Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/RateQuestionActivity;

    iput-object p3, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/RateQuestionActivity$1;->a:Lcom/etermax/preguntados/datasource/dto/QuestionRatingDTO;

    iput-object p4, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/RateQuestionActivity$1;->b:Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/a;

    invoke-direct {p0, p2}, Lcom/etermax/tools/i/a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/RateQuestionActivity$1;->b()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/RateQuestionActivity;Ljava/lang/Exception;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 72
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/a;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 73
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/RateQuestionActivity$1;->b:Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/a;

    invoke-interface {v0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/a;->c()V

    .line 74
    return-void
.end method

.method protected a(Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/RateQuestionActivity;Ljava/lang/Void;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 66
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 67
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/RateQuestionActivity$1;->b:Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/a;

    invoke-interface {v0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/a;->b()V

    .line 68
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 57
    check-cast p1, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/RateQuestionActivity;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/RateQuestionActivity$1;->a(Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/RateQuestionActivity;Ljava/lang/Exception;)V

    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 57
    check-cast p1, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/RateQuestionActivity;

    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/RateQuestionActivity$1;->a(Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/RateQuestionActivity;Ljava/lang/Void;)V

    return-void
.end method

.method public b()Ljava/lang/Void;
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/RateQuestionActivity$1;->c:Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/RateQuestionActivity;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/RateQuestionActivity;->a:Lcom/etermax/preguntados/datasource/d;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/RateQuestionActivity$1;->a:Lcom/etermax/preguntados/datasource/dto/QuestionRatingDTO;

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/datasource/d;->a(Lcom/etermax/preguntados/datasource/dto/QuestionRatingDTO;)V

    .line 61
    const/4 v0, 0x0

    return-object v0
.end method
