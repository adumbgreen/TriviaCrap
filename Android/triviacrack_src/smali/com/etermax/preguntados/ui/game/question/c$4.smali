.class Lcom/etermax/preguntados/ui/game/question/c$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/preguntados/e/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/etermax/preguntados/ui/game/question/c;
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/ui/game/question/c;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/game/question/c;)V
    .locals 0
    .parameter

    .prologue
    .line 367
    iput-object p1, p0, Lcom/etermax/preguntados/ui/game/question/c$4;->a:Lcom/etermax/preguntados/ui/game/question/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 378
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/c$4;->a:Lcom/etermax/preguntados/ui/game/question/c;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/game/question/c;->a(Lcom/etermax/preguntados/ui/game/question/c;)V

    .line 379
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/c$4;->a:Lcom/etermax/preguntados/ui/game/question/c;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/game/question/c;->r:Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getQuestionType()Lcom/etermax/preguntados/datasource/dto/enums/QuestionType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/enums/QuestionType;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/QuestionType;->IMAGE:Lcom/etermax/preguntados/datasource/dto/enums/QuestionType;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/enums/QuestionType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/c$4;->a:Lcom/etermax/preguntados/ui/game/question/c;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/c$4;->a:Lcom/etermax/preguntados/ui/game/question/c;

    iget-object v1, v1, Lcom/etermax/preguntados/ui/game/question/c;->r:Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getCategory()Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/etermax/preguntados/ui/game/question/c;->a(Lcom/etermax/preguntados/ui/game/question/c;Ljava/lang/String;)V

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/c$4;->a:Lcom/etermax/preguntados/ui/game/question/c;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/game/question/c;->b(Lcom/etermax/preguntados/ui/game/question/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/ui/game/question/d;

    invoke-interface {v0}, Lcom/etermax/preguntados/ui/game/question/d;->c()V

    .line 383
    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter

    .prologue
    .line 370
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/c$4;->a:Lcom/etermax/preguntados/ui/game/question/c;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/game/question/c;->a(Lcom/etermax/preguntados/ui/game/question/c;)V

    .line 371
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/c$4;->a:Lcom/etermax/preguntados/ui/game/question/c;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/game/question/c;->d()V

    .line 372
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/c$4;->a:Lcom/etermax/preguntados/ui/game/question/c;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/game/question/c;->c:Lcom/etermax/preguntados/ui/game/a/a;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/game/a/a;->r()V

    .line 373
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/c$4;->a:Lcom/etermax/preguntados/ui/game/question/c;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/c$4;->a:Lcom/etermax/preguntados/ui/game/question/c;

    iget-object v1, v1, Lcom/etermax/preguntados/ui/game/question/c;->c:Lcom/etermax/preguntados/ui/game/a/a;

    invoke-virtual {v1}, Lcom/etermax/preguntados/ui/game/a/a;->a()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/etermax/preguntados/ui/game/question/c;->a(J)V

    .line 374
    return-void
.end method
