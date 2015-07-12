.class Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity$3;
.super Lcom/etermax/tools/i/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;->i()V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/i/a",
        "<",
        "Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;",
        "Lcom/etermax/preguntados/datasource/dto/TvShowQuestionDTO;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity$3;->a:Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;

    invoke-direct {p0}, Lcom/etermax/tools/i/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 145
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity$3;->a:Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;->b:Lcom/etermax/preguntados/datasource/d;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity$3;->a:Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;

    iget-object v1, v1, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;->c:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/login/datasource/a;->e()J

    move-result-wide v1

    iget-object v3, p0, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity$3;->a:Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;

    iget-object v3, v3, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;->b:Lcom/etermax/preguntados/datasource/d;

    invoke-virtual {v3}, Lcom/etermax/preguntados/datasource/d;->j()Lcom/etermax/preguntados/datasource/dto/ShowDTO;

    move-result-object v3

    invoke-virtual {v3}, Lcom/etermax/preguntados/datasource/dto/ShowDTO;->getId()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/etermax/preguntados/datasource/d;->a(JI)Lcom/etermax/preguntados/datasource/dto/TvShowQuestionDTO;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;Lcom/etermax/preguntados/datasource/dto/TvShowQuestionDTO;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 150
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 151
    invoke-virtual {p2}, Lcom/etermax/preguntados/datasource/dto/TvShowQuestionDTO;->getId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity$3;->a:Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;

    invoke-virtual {v2}, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;->h()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity$3;->a:Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;->a(Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;)V

    .line 156
    :goto_0
    return-void

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity$3;->a:Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;

    invoke-static {v0, p2}, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;->a(Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;Lcom/etermax/preguntados/datasource/dto/TvShowQuestionDTO;)V

    goto :goto_0
.end method

.method protected a(Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;Ljava/lang/Exception;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 160
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity$3;->b(Z)V

    .line 161
    instance-of v0, p2, Lcom/etermax/preguntados/datasource/a/b;

    if-eqz v0, :cond_0

    .line 162
    iget-object v1, p0, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity$3;->a:Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;

    move-object v0, p2

    check-cast v0, Lcom/etermax/preguntados/datasource/a/b;

    invoke-static {v1, v0}, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;->a(Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;Lcom/etermax/preguntados/datasource/a/b;)Z

    .line 166
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/a;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 167
    return-void

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity$3;->a:Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;->f()V

    goto :goto_0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 141
    check-cast p1, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity$3;->a(Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;Ljava/lang/Exception;)V

    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 141
    check-cast p1, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;

    check-cast p2, Lcom/etermax/preguntados/datasource/dto/TvShowQuestionDTO;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity$3;->a(Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;Lcom/etermax/preguntados/datasource/dto/TvShowQuestionDTO;)V

    return-void
.end method
