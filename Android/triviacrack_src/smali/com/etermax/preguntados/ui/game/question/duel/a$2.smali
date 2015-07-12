.class Lcom/etermax/preguntados/ui/game/question/duel/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/game/question/duel/a;->a(ILcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;ILandroid/view/View;)Landroid/view/View$OnClickListener;
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Lcom/etermax/preguntados/ui/game/question/duel/a;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/game/question/duel/a;Landroid/view/View;Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/etermax/preguntados/ui/game/question/duel/a$2;->e:Lcom/etermax/preguntados/ui/game/question/duel/a;

    iput-object p2, p0, Lcom/etermax/preguntados/ui/game/question/duel/a$2;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/etermax/preguntados/ui/game/question/duel/a$2;->b:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    iput p4, p0, Lcom/etermax/preguntados/ui/game/question/duel/a$2;->c:I

    iput p5, p0, Lcom/etermax/preguntados/ui/game/question/duel/a$2;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 132
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/a$2;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/duel/a$2;->e:Lcom/etermax/preguntados/ui/game/question/duel/a;

    iget-object v1, v1, Lcom/etermax/preguntados/ui/game/question/duel/a;->c:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/etermax/preguntados/ui/game/question/duel/a$2;->b:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/etermax/tools/widget/CustomLinearButton;

    .line 133
    invoke-virtual {v0}, Lcom/etermax/tools/widget/CustomLinearButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 136
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/a$2;->a:Landroid/view/View;

    sget v1, Lcom/etermax/i;->title_category_selected_textview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 137
    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/duel/a$2;->e:Lcom/etermax/preguntados/ui/game/question/duel/a;

    iget-object v1, v1, Lcom/etermax/preguntados/ui/game/question/duel/a;->b:Lcom/etermax/preguntados/c/a/b;

    iget-object v2, p0, Lcom/etermax/preguntados/ui/game/question/duel/a$2;->b:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    invoke-virtual {v1, v2}, Lcom/etermax/preguntados/c/a/b;->a(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)Lcom/etermax/preguntados/c/a/g;

    move-result-object v1

    invoke-interface {v1}, Lcom/etermax/preguntados/c/a/g;->getNameResource()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 138
    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/duel/a$2;->e:Lcom/etermax/preguntados/ui/game/question/duel/a;

    invoke-virtual {v1}, Lcom/etermax/preguntados/ui/game/question/duel/a;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/etermax/preguntados/ui/game/question/duel/a$2;->e:Lcom/etermax/preguntados/ui/game/question/duel/a;

    iget-object v2, v2, Lcom/etermax/preguntados/ui/game/question/duel/a;->b:Lcom/etermax/preguntados/c/a/b;

    iget-object v3, p0, Lcom/etermax/preguntados/ui/game/question/duel/a$2;->b:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    invoke-virtual {v2, v3}, Lcom/etermax/preguntados/c/a/b;->a(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)Lcom/etermax/preguntados/c/a/g;

    move-result-object v2

    invoke-interface {v2}, Lcom/etermax/preguntados/c/a/g;->getHeaderColorResource()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 140
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/a$2;->e:Lcom/etermax/preguntados/ui/game/question/duel/a;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/game/question/duel/a;->a(Lcom/etermax/preguntados/ui/game/question/duel/a;)[Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v0

    iget v1, p0, Lcom/etermax/preguntados/ui/game/question/duel/a$2;->c:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/a$2;->e:Lcom/etermax/preguntados/ui/game/question/duel/a;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/game/question/duel/a;->a(Lcom/etermax/preguntados/ui/game/question/duel/a;)[Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v0

    iget v1, p0, Lcom/etermax/preguntados/ui/game/question/duel/a$2;->c:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/duel/a$2;->b:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    if-eq v0, v1, :cond_0

    .line 141
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/a$2;->e:Lcom/etermax/preguntados/ui/game/question/duel/a;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/game/question/duel/a;->c:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/duel/a$2;->e:Lcom/etermax/preguntados/ui/game/question/duel/a;

    invoke-static {v1}, Lcom/etermax/preguntados/ui/game/question/duel/a;->a(Lcom/etermax/preguntados/ui/game/question/duel/a;)[Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v1

    iget v2, p0, Lcom/etermax/preguntados/ui/game/question/duel/a$2;->c:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 144
    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/duel/a$2;->a:Landroid/view/View;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/etermax/tools/widget/CustomLinearButton;

    .line 145
    invoke-virtual {v0}, Lcom/etermax/tools/widget/CustomLinearButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/a$2;->e:Lcom/etermax/preguntados/ui/game/question/duel/a;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/game/question/duel/a;->a(Lcom/etermax/preguntados/ui/game/question/duel/a;)[Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v0

    iget v1, p0, Lcom/etermax/preguntados/ui/game/question/duel/a$2;->d:I

    iget-object v2, p0, Lcom/etermax/preguntados/ui/game/question/duel/a$2;->b:Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    aput-object v2, v0, v1

    .line 149
    return-void
.end method
