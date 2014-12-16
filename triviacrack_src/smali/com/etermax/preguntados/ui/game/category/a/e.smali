.class public Lcom/etermax/preguntados/ui/game/category/a/e;
.super Lcom/etermax/tools/navigation/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/navigation/b",
        "<",
        "Lcom/etermax/preguntados/ui/game/category/a/f;",
        ">;"
    }
.end annotation


# static fields
.field public static b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field a:Lcom/etermax/preguntados/datasource/dto/GameDTO;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 31
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/etermax/preguntados/ui/game/category/a/e;->b:Landroid/util/SparseArray;

    .line 33
    sget-object v0, Lcom/etermax/preguntados/ui/game/category/a/e;->b:Landroid/util/SparseArray;

    sget v1, Lcom/etermax/i;->item_challenge:I

    new-instance v2, Ljava/util/ArrayList;

    new-array v3, v8, [Ljava/lang/Integer;

    sget v4, Lcom/etermax/h;->challenge_score:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    sget v4, Lcom/etermax/o;->trivia_challenge_plural:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    sget v4, Lcom/etermax/f;->challenge_color:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 34
    sget-object v0, Lcom/etermax/preguntados/ui/game/category/a/e;->b:Landroid/util/SparseArray;

    sget v1, Lcom/etermax/i;->item_crown:I

    new-instance v2, Ljava/util/ArrayList;

    new-array v3, v8, [Ljava/lang/Integer;

    sget v4, Lcom/etermax/h;->crown_score:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    sget v4, Lcom/etermax/o;->crown_plural:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    sget v4, Lcom/etermax/f;->crown_color:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 35
    sget-object v0, Lcom/etermax/preguntados/ui/game/category/a/e;->b:Landroid/util/SparseArray;

    sget v1, Lcom/etermax/i;->item_correct_answers:I

    new-instance v2, Ljava/util/ArrayList;

    new-array v3, v8, [Ljava/lang/Integer;

    sget v4, Lcom/etermax/h;->answer_score:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    sget v4, Lcom/etermax/o;->answers_correct:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    sget v4, Lcom/etermax/f;->greenLight:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 36
    sget-object v0, Lcom/etermax/preguntados/ui/game/category/a/e;->b:Landroid/util/SparseArray;

    sget v1, Lcom/etermax/i;->item_incorrect_answers:I

    new-instance v2, Ljava/util/ArrayList;

    new-array v3, v8, [Ljava/lang/Integer;

    sget v4, Lcom/etermax/h;->x_score:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    sget v4, Lcom/etermax/o;->answers_incorrect:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    sget v4, Lcom/etermax/f;->redLight:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 37
    sget-object v0, Lcom/etermax/preguntados/ui/game/category/a/e;->b:Landroid/util/SparseArray;

    sget v1, Lcom/etermax/i;->item_questions_answered:I

    new-instance v2, Ljava/util/ArrayList;

    new-array v3, v8, [Ljava/lang/Integer;

    sget v4, Lcom/etermax/h;->questions_score:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    sget v4, Lcom/etermax/o;->questions_total:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    sget v4, Lcom/etermax/f;->orangeLight:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/etermax/tools/navigation/b;-><init>()V

    .line 47
    return-void
.end method

.method public static a(Lcom/etermax/preguntados/datasource/dto/GameDTO;)Landroid/support/v4/app/Fragment;
    .locals 1
    .parameter

    .prologue
    .line 41
    invoke-static {}, Lcom/etermax/preguntados/ui/game/category/a/g;->d()Lcom/etermax/preguntados/ui/game/category/a/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/etermax/preguntados/ui/game/category/a/h;->a(Lcom/etermax/preguntados/datasource/dto/GameDTO;)Lcom/etermax/preguntados/ui/game/category/a/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/game/category/a/h;->a()Lcom/etermax/preguntados/ui/game/category/a/e;

    move-result-object v0

    .line 44
    return-object v0
.end method

.method private a(Lcom/etermax/preguntados/datasource/dto/PlayerStatisticsDTO;)V
    .locals 2
    .parameter

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/a/e;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->item_challenge:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->item_you_count:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/PlayerStatisticsDTO;->getChallengesWon()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/a/e;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->item_crown:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->item_you_count:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/PlayerStatisticsDTO;->getCrownsWon()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/a/e;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->item_correct_answers:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->item_you_count:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/PlayerStatisticsDTO;->getCorrectAnswers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/a/e;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->item_incorrect_answers:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->item_you_count:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/PlayerStatisticsDTO;->getIncorrectAnswers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/a/e;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->item_questions_answered:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->item_you_count:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/PlayerStatisticsDTO;->getQuestionsAnswered()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    return-void
.end method

.method private b(Lcom/etermax/preguntados/datasource/dto/PlayerStatisticsDTO;)V
    .locals 2
    .parameter

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/a/e;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->item_challenge:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->item_opponent_count:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/PlayerStatisticsDTO;->getChallengesWon()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/a/e;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->item_crown:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->item_opponent_count:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/PlayerStatisticsDTO;->getCrownsWon()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/a/e;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->item_correct_answers:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->item_opponent_count:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/PlayerStatisticsDTO;->getCorrectAnswers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/a/e;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->item_incorrect_answers:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->item_opponent_count:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/PlayerStatisticsDTO;->getIncorrectAnswers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/a/e;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->item_questions_answered:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->item_opponent_count:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/PlayerStatisticsDTO;->getQuestionsAnswered()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    return-void
.end method


# virtual methods
.method public a()Lcom/etermax/preguntados/ui/game/category/a/f;
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lcom/etermax/preguntados/ui/game/category/a/e$1;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/ui/game/category/a/e$1;-><init>(Lcom/etermax/preguntados/ui/game/category/a/e;)V

    return-object v0
.end method

.method public b()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 67
    move v3, v4

    :goto_0
    sget-object v0, Lcom/etermax/preguntados/ui/game/category/a/e;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v3, v0, :cond_0

    .line 68
    sget-object v0, Lcom/etermax/preguntados/ui/game/category/a/e;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 69
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/a/e;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 70
    sget-object v1, Lcom/etermax/preguntados/ui/game/category/a/e;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 71
    sget v1, Lcom/etermax/i;->item_image:I

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 72
    sget v1, Lcom/etermax/i;->item_description:I

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/game/category/a/e;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/a/e;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getMyPlayerNumber()I

    move-result v0

    if-ne v0, v6, :cond_1

    .line 77
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/a/e;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getStatistics()Lcom/etermax/preguntados/datasource/dto/StatisticsDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/StatisticsDTO;->getPlayerOneStatistics()Lcom/etermax/preguntados/datasource/dto/PlayerStatisticsDTO;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/etermax/preguntados/ui/game/category/a/e;->a(Lcom/etermax/preguntados/datasource/dto/PlayerStatisticsDTO;)V

    .line 78
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/a/e;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getStatistics()Lcom/etermax/preguntados/datasource/dto/StatisticsDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/StatisticsDTO;->getPlayerTwoStatistics()Lcom/etermax/preguntados/datasource/dto/PlayerStatisticsDTO;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/etermax/preguntados/ui/game/category/a/e;->b(Lcom/etermax/preguntados/datasource/dto/PlayerStatisticsDTO;)V

    .line 87
    :goto_1
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/a/e;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->isWin()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 88
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/a/e;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->game_end_match_scores_character:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget v1, Lcom/etermax/h;->character_spin_won:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 96
    :goto_2
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/a/e;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getOpponent()Lcom/etermax/gamescommon/k;

    move-result-object v0

    invoke-interface {v0}, Lcom/etermax/gamescommon/k;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 97
    sget v0, Lcom/etermax/o;->button_random_opponent:I

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/game/category/a/e;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 102
    :goto_3
    sget-object v1, Lcom/etermax/preguntados/ui/game/category/a/e$2;->a:[I

    iget-object v2, p0, Lcom/etermax/preguntados/ui/game/category/a/e;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v2}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getEnded_reason()Lcom/etermax/preguntados/datasource/dto/enums/EndedReason;

    move-result-object v2

    invoke-virtual {v2}, Lcom/etermax/preguntados/datasource/dto/enums/EndedReason;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 139
    const-string v0, ""

    move-object v1, v0

    .line 142
    :goto_4
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/a/e;->getView()Landroid/view/View;

    move-result-object v0

    sget v2, Lcom/etermax/i;->game_end_match_scores_description:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    return-void

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/a/e;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getStatistics()Lcom/etermax/preguntados/datasource/dto/StatisticsDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/StatisticsDTO;->getPlayerTwoStatistics()Lcom/etermax/preguntados/datasource/dto/PlayerStatisticsDTO;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/etermax/preguntados/ui/game/category/a/e;->a(Lcom/etermax/preguntados/datasource/dto/PlayerStatisticsDTO;)V

    .line 82
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/a/e;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getStatistics()Lcom/etermax/preguntados/datasource/dto/StatisticsDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/StatisticsDTO;->getPlayerOneStatistics()Lcom/etermax/preguntados/datasource/dto/PlayerStatisticsDTO;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/etermax/preguntados/ui/game/category/a/e;->b(Lcom/etermax/preguntados/datasource/dto/PlayerStatisticsDTO;)V

    goto :goto_1

    .line 91
    :cond_2
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/a/e;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->game_end_match_scores_character:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget v1, Lcom/etermax/h;->character_spin_loss:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 99
    :cond_3
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/a/e;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getOpponent()Lcom/etermax/gamescommon/k;

    move-result-object v0

    invoke-interface {v0}, Lcom/etermax/gamescommon/k;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 104
    :pswitch_0
    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/category/a/e;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->isWin()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 105
    sget v1, Lcom/etermax/o;->notification_user_no_time:I

    new-array v2, v6, [Ljava/lang/Object;

    aput-object v0, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/etermax/preguntados/ui/game/category/a/e;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_4

    .line 108
    :cond_4
    sget v0, Lcom/etermax/o;->notification_you_no_time:I

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/game/category/a/e;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 110
    goto :goto_4

    .line 112
    :pswitch_1
    sget v0, Lcom/etermax/o;->tie_break:I

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/game/category/a/e;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 113
    goto :goto_4

    .line 115
    :pswitch_2
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/a/e;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->isWin()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 116
    sget v0, Lcom/etermax/o;->you_won_the_game:I

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/game/category/a/e;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_4

    .line 119
    :cond_5
    sget v0, Lcom/etermax/o;->you_lost_the_game:I

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/game/category/a/e;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 121
    goto/16 :goto_4

    .line 123
    :pswitch_3
    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/category/a/e;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->isWin()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 124
    sget v1, Lcom/etermax/o;->notification_user_reject:I

    new-array v2, v6, [Ljava/lang/Object;

    aput-object v0, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/etermax/preguntados/ui/game/category/a/e;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_4

    .line 127
    :cond_6
    sget v0, Lcom/etermax/o;->rejected_you:I

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/game/category/a/e;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 129
    goto/16 :goto_4

    .line 131
    :pswitch_4
    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/category/a/e;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->isWin()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 132
    sget v1, Lcom/etermax/o;->notification_user_resign:I

    new-array v2, v6, [Ljava/lang/Object;

    aput-object v0, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/etermax/preguntados/ui/game/category/a/e;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_4

    .line 135
    :cond_7
    sget v0, Lcom/etermax/o;->chat_you_resign:I

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/game/category/a/e;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 137
    goto/16 :goto_4

    .line 102
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public c()V
    .locals 1

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/a/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 164
    return-void
.end method

.method public synthetic getDummyCallbacks()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/a/e;->a()Lcom/etermax/preguntados/ui/game/category/a/f;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 58
    sget v0, Lcom/etermax/k;->game_end_match_scores_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
