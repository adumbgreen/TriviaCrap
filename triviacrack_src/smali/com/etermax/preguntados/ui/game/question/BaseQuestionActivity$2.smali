.class Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity$2;
.super Lcom/etermax/tools/i/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;->a(JLjava/lang/Exception;)Z
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/i/a",
        "<",
        "Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;",
        "Lcom/etermax/preguntados/datasource/dto/GameDTO;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Ljava/lang/Exception;

.field final synthetic c:Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;Ljava/lang/String;JLjava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 255
    iput-object p1, p0, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity$2;->c:Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;

    iput-wide p3, p0, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity$2;->a:J

    iput-object p5, p0, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity$2;->b:Ljava/lang/Exception;

    invoke-direct {p0, p2}, Lcom/etermax/tools/i/a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 255
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity$2;->b()Lcom/etermax/preguntados/datasource/dto/GameDTO;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;Lcom/etermax/preguntados/datasource/dto/GameDTO;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 263
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 264
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getStatusVersion()J

    move-result-wide v0

    iget-object v2, p0, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity$2;->c:Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;

    iget-object v2, v2, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;->c:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v2}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getStatusVersion()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 265
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity$2;->c:Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;->j:Lcom/etermax/preguntados/ui/game/a/a;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/game/a/a;->t()V

    .line 266
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity$2;->c:Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;->j:Lcom/etermax/preguntados/ui/game/a/a;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/game/a/a;->s()V

    .line 267
    const-string v0, "BaseQuestionActivity"

    const-string v1, "Estado corrupto, borrando..."

    invoke-static {v0, v1}, Lcom/etermax/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity$2;->c:Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;->d(Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/etermax/preguntados/ui/game/question/k;

    if-eqz v0, :cond_1

    .line 269
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity$2;->c:Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;->e(Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/ui/game/question/k;

    invoke-virtual {v0, p2}, Lcom/etermax/preguntados/ui/game/question/k;->a(Lcom/etermax/preguntados/datasource/dto/GameDTO;)V

    .line 276
    :cond_0
    :goto_0
    return-void

    .line 270
    :cond_1
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity$2;->c:Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;->f(Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/etermax/preguntados/ui/game/question/c;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity$2;->c:Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;

    invoke-virtual {v0, p2}, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;->a(Lcom/etermax/preguntados/datasource/dto/GameDTO;)V

    goto :goto_0

    .line 274
    :cond_2
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity$2;->b:Ljava/lang/Exception;

    invoke-virtual {p0, p1, v0}, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity$2;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 255
    check-cast p1, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;

    check-cast p2, Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity$2;->a(Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;Lcom/etermax/preguntados/datasource/dto/GameDTO;)V

    return-void
.end method

.method public b()Lcom/etermax/preguntados/datasource/dto/GameDTO;
    .locals 3

    .prologue
    .line 258
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity$2;->c:Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity;->g:Lcom/etermax/preguntados/datasource/d;

    iget-wide v1, p0, Lcom/etermax/preguntados/ui/game/question/BaseQuestionActivity$2;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/etermax/preguntados/datasource/d;->d(J)Lcom/etermax/preguntados/datasource/dto/GameDTO;

    move-result-object v0

    return-object v0
.end method
