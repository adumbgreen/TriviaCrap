.class Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/e;

.field private b:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;


# direct methods
.method public constructor <init>(Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/e;Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/g;->a:Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-object p2, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/g;->b:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    .line 128
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 132
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/g;->a:Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/e;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/e;->b(Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/f;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/g;->b:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    invoke-interface {v0, v1}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/f;->a(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)V

    .line 133
    return-void
.end method
