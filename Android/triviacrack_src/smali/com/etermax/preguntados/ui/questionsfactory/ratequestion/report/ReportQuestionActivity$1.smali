.class Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/ReportQuestionActivity$1;
.super Lcom/etermax/tools/i/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/ReportQuestionActivity;->a(Lcom/etermax/preguntados/datasource/dto/ReportedQuestionDTO;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/i/a",
        "<",
        "Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/ReportQuestionActivity;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/datasource/dto/ReportedQuestionDTO;

.field final synthetic b:Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/ReportQuestionActivity;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/ReportQuestionActivity;Ljava/lang/String;Lcom/etermax/preguntados/datasource/dto/ReportedQuestionDTO;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/ReportQuestionActivity$1;->b:Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/ReportQuestionActivity;

    iput-object p3, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/ReportQuestionActivity$1;->a:Lcom/etermax/preguntados/datasource/dto/ReportedQuestionDTO;

    invoke-direct {p0, p2}, Lcom/etermax/tools/i/a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/ReportQuestionActivity$1;->b()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/ReportQuestionActivity;Ljava/lang/Void;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 76
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 77
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/ReportQuestionActivity$1;->b:Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/ReportQuestionActivity;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/ReportQuestionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 78
    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/ReportQuestionActivity$1;->b:Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/ReportQuestionActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/ReportQuestionActivity;->setResult(ILandroid/content/Intent;)V

    .line 79
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/ReportQuestionActivity$1;->b:Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/ReportQuestionActivity;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/ReportQuestionActivity;->finish()V

    .line 80
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    check-cast p1, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/ReportQuestionActivity;

    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/ReportQuestionActivity$1;->a(Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/ReportQuestionActivity;Ljava/lang/Void;)V

    return-void
.end method

.method public b()Ljava/lang/Void;
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/ReportQuestionActivity$1;->b:Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/ReportQuestionActivity;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/ReportQuestionActivity;->a:Lcom/etermax/preguntados/datasource/d;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/report/ReportQuestionActivity$1;->a:Lcom/etermax/preguntados/datasource/dto/ReportedQuestionDTO;

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/datasource/d;->a(Lcom/etermax/preguntados/datasource/dto/ReportedQuestionDTO;)V

    .line 71
    const/4 v0, 0x0

    return-object v0
.end method
