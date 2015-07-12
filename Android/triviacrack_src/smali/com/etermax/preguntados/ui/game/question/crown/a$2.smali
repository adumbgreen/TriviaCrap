.class Lcom/etermax/preguntados/ui/game/question/crown/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/game/question/crown/a;->a(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)Landroid/view/View$OnClickListener;
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

.field final synthetic b:Lcom/etermax/preguntados/ui/game/question/crown/a;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/game/question/crown/a;Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/etermax/preguntados/ui/game/question/crown/a$2;->b:Lcom/etermax/preguntados/ui/game/question/crown/a;

    iput-object p2, p0, Lcom/etermax/preguntados/ui/game/question/crown/a$2;->a:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 91
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/crown/a$2;->b:Lcom/etermax/preguntados/ui/game/question/crown/a;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/crown/a$2;->a:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    invoke-static {v0, v1}, Lcom/etermax/preguntados/ui/game/question/crown/a;->a(Lcom/etermax/preguntados/ui/game/question/crown/a;Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)V

    .line 92
    return-void
.end method
