.class public Lcom/etermax/preguntados/ui/game/question/crown/a;
.super Lcom/etermax/tools/navigation/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/navigation/b",
        "<",
        "Lcom/etermax/preguntados/ui/game/question/crown/b;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field b:Lcom/etermax/gamescommon/login/datasource/a;

.field c:Lcom/etermax/preguntados/datasource/d;

.field d:Lcom/etermax/preguntados/c/a/b;

.field e:Lcom/etermax/preguntados/datasource/dto/GameDTO;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/etermax/tools/navigation/b;-><init>()V

    .line 45
    return-void
.end method

.method public static a(Lcom/etermax/preguntados/datasource/dto/GameDTO;)Landroid/support/v4/app/Fragment;
    .locals 1
    .parameter

    .prologue
    .line 38
    invoke-static {}, Lcom/etermax/preguntados/ui/game/question/crown/c;->c()Lcom/etermax/preguntados/ui/game/question/crown/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/etermax/preguntados/ui/game/question/crown/d;->a(Lcom/etermax/preguntados/datasource/dto/GameDTO;)Lcom/etermax/preguntados/ui/game/question/crown/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/game/question/crown/d;->a()Lcom/etermax/preguntados/ui/game/question/crown/a;

    move-result-object v0

    .line 41
    return-object v0
.end method

.method private a(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter

    .prologue
    .line 88
    new-instance v0, Lcom/etermax/preguntados/ui/game/question/crown/a$2;

    invoke-direct {v0, p0, p1}, Lcom/etermax/preguntados/ui/game/question/crown/a$2;-><init>(Lcom/etermax/preguntados/ui/game/question/crown/a;Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)V

    return-object v0
.end method

.method static synthetic a(Lcom/etermax/preguntados/ui/game/question/crown/a;Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/game/question/crown/a;->b(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)V

    return-void
.end method

.method private b(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)V
    .locals 2
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/crown/a;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/preguntados/ui/game/question/crown/b;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/crown/a;->e:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-interface {v0, v1, p1}, Lcom/etermax/preguntados/ui/game/question/crown/b;->a(Lcom/etermax/preguntados/datasource/dto/GameDTO;Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)V

    .line 98
    return-void
.end method


# virtual methods
.method public a()Lcom/etermax/preguntados/ui/game/question/crown/b;
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lcom/etermax/preguntados/ui/game/question/crown/a$1;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/ui/game/question/crown/a$1;-><init>(Lcom/etermax/preguntados/ui/game/question/crown/a;)V

    return-object v0
.end method

.method b()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/crown/a;->a:Ljava/util/HashMap;

    .line 60
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/crown/a;->a:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/crown/a;->d:Lcom/etermax/preguntados/c/a/b;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/etermax/preguntados/c/a/b;->a(I)Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v1

    sget v2, Lcom/etermax/i;->category_crown_button_01:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/crown/a;->a:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/crown/a;->d:Lcom/etermax/preguntados/c/a/b;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/etermax/preguntados/c/a/b;->a(I)Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v1

    sget v2, Lcom/etermax/i;->category_crown_button_02:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/crown/a;->a:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/crown/a;->d:Lcom/etermax/preguntados/c/a/b;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/etermax/preguntados/c/a/b;->a(I)Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v1

    sget v2, Lcom/etermax/i;->category_crown_button_03:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/crown/a;->a:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/crown/a;->d:Lcom/etermax/preguntados/c/a/b;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/etermax/preguntados/c/a/b;->a(I)Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v1

    sget v2, Lcom/etermax/i;->category_crown_button_04:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/crown/a;->a:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/crown/a;->d:Lcom/etermax/preguntados/c/a/b;

    invoke-virtual {v1, v3}, Lcom/etermax/preguntados/c/a/b;->a(I)Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v1

    sget v2, Lcom/etermax/i;->category_crown_button_05:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/crown/a;->a:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/crown/a;->d:Lcom/etermax/preguntados/c/a/b;

    invoke-virtual {v1, v5}, Lcom/etermax/preguntados/c/a/b;->a(I)Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v1

    sget v2, Lcom/etermax/i;->category_crown_button_06:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/etermax/o;->round:I

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/etermax/preguntados/ui/game/question/crown/a;->e:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v3}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getRound_number()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/etermax/preguntados/ui/game/question/crown/a;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/crown/a;->c:Lcom/etermax/preguntados/datasource/d;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/d;->s()Lcom/etermax/preguntados/datasource/dto/PreguntadosAppConfigDTO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/PreguntadosAppConfigDTO;->getFinalDuelRounds()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 68
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/crown/a;->getView()Landroid/view/View;

    move-result-object v0

    sget v2, Lcom/etermax/i;->category_crown_header_text_view:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    new-instance v0, Lcom/etermax/preguntados/ui/dashboard/i;

    invoke-direct {v0}, Lcom/etermax/preguntados/ui/dashboard/i;-><init>()V

    .line 71
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/crown/a;->getView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/etermax/preguntados/ui/game/question/crown/a;->b:Lcom/etermax/gamescommon/login/datasource/a;

    iget-object v3, p0, Lcom/etermax/preguntados/ui/game/question/crown/a;->e:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v0, v1, v2, v3}, Lcom/etermax/preguntados/ui/dashboard/i;->a(Landroid/view/View;Lcom/etermax/gamescommon/login/datasource/a;Lcom/etermax/preguntados/datasource/dto/GameDTO;)V

    .line 73
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/crown/a;->e:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getAvailableCrowns()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    .line 74
    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/crown/a;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 75
    if-eqz v1, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/crown/a;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 77
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 78
    iget-object v4, p0, Lcom/etermax/preguntados/ui/game/question/crown/a;->d:Lcom/etermax/preguntados/c/a/b;

    invoke-virtual {v4, v0}, Lcom/etermax/preguntados/c/a/b;->d(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)Lcom/etermax/preguntados/c/a/f;

    move-result-object v4

    invoke-interface {v4}, Lcom/etermax/preguntados/c/a/f;->a()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 79
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 80
    invoke-direct {p0, v0}, Lcom/etermax/preguntados/ui/game/question/crown/a;->a(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 85
    :cond_1
    return-void
.end method

.method public synthetic getDummyCallbacks()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/crown/a;->a()Lcom/etermax/preguntados/ui/game/question/crown/b;

    move-result-object v0

    return-object v0
.end method
