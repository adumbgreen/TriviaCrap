.class Lcom/etermax/preguntados/ui/game/category/a$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/game/category/a;->g()V
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewTreeObserver;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/etermax/preguntados/ui/game/category/a;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/game/category/a;Landroid/view/ViewTreeObserver;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 216
    iput-object p1, p0, Lcom/etermax/preguntados/ui/game/category/a$3;->c:Lcom/etermax/preguntados/ui/game/category/a;

    iput-object p2, p0, Lcom/etermax/preguntados/ui/game/category/a$3;->a:Landroid/view/ViewTreeObserver;

    iput-object p3, p0, Lcom/etermax/preguntados/ui/game/category/a$3;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 220
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-ge v0, v3, :cond_0

    .line 221
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/a$3;->a:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 226
    :goto_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/a$3;->c:Lcom/etermax/preguntados/ui/game/category/a;

    new-instance v3, Lcom/etermax/gamescommon/k/a;

    iget-object v4, p0, Lcom/etermax/preguntados/ui/game/category/a$3;->c:Lcom/etermax/preguntados/ui/game/category/a;

    invoke-virtual {v4}, Lcom/etermax/preguntados/ui/game/category/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/etermax/preguntados/ui/game/category/a$3;->b:Landroid/view/View;

    invoke-direct {v3, v4, v5}, Lcom/etermax/gamescommon/k/a;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v3, v0, Lcom/etermax/preguntados/ui/game/category/a;->k:Lcom/etermax/gamescommon/k/a;

    .line 228
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/a$3;->c:Lcom/etermax/preguntados/ui/game/category/a;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/game/category/a;->b:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getSpins_data()Lcom/etermax/preguntados/datasource/dto/SpinsDataDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/SpinsDataDTO;->getSpins()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/SpinDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/SpinDTO;->getQuestions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/SpinQuestionDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/SpinQuestionDTO;->getQuestion()Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getCategory()Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v0

    .line 229
    iget-object v3, p0, Lcom/etermax/preguntados/ui/game/category/a$3;->c:Lcom/etermax/preguntados/ui/game/category/a;

    iget-object v3, v3, Lcom/etermax/preguntados/ui/game/category/a;->f:Lcom/etermax/preguntados/c/a/b;

    invoke-virtual {v3, v0}, Lcom/etermax/preguntados/c/a/b;->a(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)Lcom/etermax/preguntados/c/a/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/etermax/preguntados/c/a/g;->getNameResource()I

    move-result v0

    .line 230
    iget-object v3, p0, Lcom/etermax/preguntados/ui/game/category/a$3;->c:Lcom/etermax/preguntados/ui/game/category/a;

    invoke-virtual {v3}, Lcom/etermax/preguntados/ui/game/category/a;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 232
    iget-object v3, p0, Lcom/etermax/preguntados/ui/game/category/a$3;->c:Lcom/etermax/preguntados/ui/game/category/a;

    iget-object v3, v3, Lcom/etermax/preguntados/ui/game/category/a;->k:Lcom/etermax/gamescommon/k/a;

    invoke-virtual {v3}, Lcom/etermax/gamescommon/k/a;->a()V

    .line 233
    iget-object v3, p0, Lcom/etermax/preguntados/ui/game/category/a$3;->c:Lcom/etermax/preguntados/ui/game/category/a;

    iget-object v3, v3, Lcom/etermax/preguntados/ui/game/category/a;->k:Lcom/etermax/gamescommon/k/a;

    iget-object v4, p0, Lcom/etermax/preguntados/ui/game/category/a$3;->c:Lcom/etermax/preguntados/ui/game/category/a;

    invoke-virtual {v4}, Lcom/etermax/preguntados/ui/game/category/a;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/etermax/o;->tutotial_tooltip_play:I

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v0, v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/etermax/gamescommon/k/a;->a(Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/a$3;->c:Lcom/etermax/preguntados/ui/game/category/a;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/game/category/a;->k:Lcom/etermax/gamescommon/k/a;

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/etermax/gamescommon/k/a;->a(IIZZZ)V

    .line 236
    return-void

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/a$3;->a:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method
