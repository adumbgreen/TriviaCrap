.class Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity$4;
.super Lcom/etermax/tools/i/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;->a(ILcom/etermax/preguntados/datasource/dto/AnswerDTO;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/i/a",
        "<",
        "Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/etermax/preguntados/datasource/dto/AnswerDTO;

.field final synthetic c:Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;Ljava/lang/String;ILcom/etermax/preguntados/datasource/dto/AnswerDTO;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 239
    iput-object p1, p0, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity$4;->c:Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;

    iput p3, p0, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity$4;->a:I

    iput-object p4, p0, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity$4;->b:Lcom/etermax/preguntados/datasource/dto/AnswerDTO;

    invoke-direct {p0, p2}, Lcom/etermax/tools/i/a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 242
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity$4;->c:Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;->b:Lcom/etermax/preguntados/datasource/d;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity$4;->c:Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;

    iget-object v1, v1, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;->c:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/login/datasource/a;->e()J

    move-result-wide v1

    iget v3, p0, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity$4;->a:I

    iget-object v4, p0, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity$4;->b:Lcom/etermax/preguntados/datasource/dto/AnswerDTO;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/etermax/preguntados/datasource/d;->a(JILcom/etermax/preguntados/datasource/dto/AnswerDTO;)V

    .line 243
    const/4 v0, 0x0

    return-object v0
.end method

.method protected a(Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;Ljava/lang/Exception;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 255
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity$4;->b(Z)V

    .line 256
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/a;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 257
    invoke-static {p1}, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;->b(Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;)V

    .line 258
    return-void
.end method

.method protected a(Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;Ljava/lang/Void;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 248
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 249
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity$4;->c:Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity$4;->b:Lcom/etermax/preguntados/datasource/dto/AnswerDTO;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/AnswerDTO;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;->b(J)V

    .line 250
    invoke-static {p1}, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;->b(Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;)V

    .line 251
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 239
    check-cast p1, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity$4;->a(Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;Ljava/lang/Exception;)V

    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 239
    check-cast p1, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;

    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity$4;->a(Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;Ljava/lang/Void;)V

    return-void
.end method
