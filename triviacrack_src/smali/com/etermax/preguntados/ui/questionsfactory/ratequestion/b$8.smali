.class Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->a(I)Landroid/view/View$OnClickListener;
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 374
    iput-object p1, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b$8;->b:Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;

    iput p2, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b$8;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 380
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b$8;->b:Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->g:Z

    .line 382
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b$8;->b:Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->g(Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;)V

    .line 383
    iget v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b$8;->a:I

    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b$8;->b:Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;

    iget-object v1, v1, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->h:Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getCorrectAnswer()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 384
    sget v1, Lcom/etermax/i;->answer_correct_textview:I

    .line 385
    sget v0, Lcom/etermax/preguntados/g/a;->c:I

    .line 391
    :goto_0
    iget-object v2, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b$8;->b:Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;

    iget-object v3, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b$8;->b:Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;

    iget-object v3, v3, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->h:Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    invoke-virtual {v3}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getCorrectAnswer()I

    move-result v3

    invoke-static {v2, v3}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->b(Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;I)V

    .line 392
    iget-object v2, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b$8;->b:Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;

    iget-object v2, v2, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->b:Lcom/etermax/preguntados/g/a;

    invoke-virtual {v2, v0}, Lcom/etermax/preguntados/g/a;->a(I)V

    .line 393
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b$8;->b:Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;

    invoke-static {v0, v1}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->c(Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;I)V

    .line 394
    return-void

    .line 387
    :cond_0
    sget v1, Lcom/etermax/i;->answer_incorrect_textview:I

    .line 388
    sget v0, Lcom/etermax/preguntados/g/a;->d:I

    .line 389
    iget-object v2, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b$8;->b:Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;

    iget v3, p0, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b$8;->a:I

    invoke-static {v2, v3}, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;->a(Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/b;I)V

    goto :goto_0
.end method
