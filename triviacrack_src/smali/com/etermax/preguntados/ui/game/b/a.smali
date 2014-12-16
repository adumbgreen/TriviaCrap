.class public Lcom/etermax/preguntados/ui/game/b/a;
.super Lcom/etermax/tools/navigation/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/navigation/b",
        "<",
        "Lcom/etermax/preguntados/ui/game/b/b;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/etermax/preguntados/datasource/dto/StatisticsDTO;

.field b:I

.field c:Lcom/etermax/preguntados/c/a/b;

.field protected d:Ljava/util/HashMap;
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

.field private e:Lcom/etermax/preguntados/datasource/dto/PlayerStatisticsDTO;

.field private f:Lcom/etermax/preguntados/datasource/dto/PlayerStatisticsDTO;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/etermax/tools/navigation/b;-><init>()V

    .line 43
    return-void
.end method

.method public static a(Lcom/etermax/preguntados/datasource/dto/StatisticsDTO;I)Landroid/support/v4/app/Fragment;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-static {}, Lcom/etermax/preguntados/ui/game/b/c;->c()Lcom/etermax/preguntados/ui/game/b/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/etermax/preguntados/ui/game/b/d;->a(Lcom/etermax/preguntados/datasource/dto/StatisticsDTO;)Lcom/etermax/preguntados/ui/game/b/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/etermax/preguntados/ui/game/b/d;->a(I)Lcom/etermax/preguntados/ui/game/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/game/b/d;->a()Lcom/etermax/preguntados/ui/game/b/a;

    move-result-object v0

    .line 57
    return-object v0
.end method

.method private a(Ljava/util/List;I)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/CategoryQuestionDTO;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 139
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/CategoryQuestionDTO;

    .line 140
    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/b/a;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/CategoryQuestionDTO;->getCategory()Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 142
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/b/a;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 143
    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/CategoryQuestionDTO;->getCorrect()I

    move-result v3

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/CategoryQuestionDTO;->getIncorrect()I

    move-result v4

    add-int/2addr v3, v4

    .line 144
    if-lez v3, :cond_0

    .line 145
    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/CategoryQuestionDTO;->getCorrect()I

    move-result v0

    mul-int/lit8 v0, v0, 0x64

    div-int/2addr v0, v3

    .line 146
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 148
    :cond_0
    const-string v0, "-"

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 152
    :cond_1
    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 95
    iget v0, p0, Lcom/etermax/preguntados/ui/game/b/a;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 96
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/b/a;->a:Lcom/etermax/preguntados/datasource/dto/StatisticsDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/StatisticsDTO;->getPlayerOneStatistics()Lcom/etermax/preguntados/datasource/dto/PlayerStatisticsDTO;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/b/a;->e:Lcom/etermax/preguntados/datasource/dto/PlayerStatisticsDTO;

    .line 97
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/b/a;->a:Lcom/etermax/preguntados/datasource/dto/StatisticsDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/StatisticsDTO;->getPlayerTwoStatistics()Lcom/etermax/preguntados/datasource/dto/PlayerStatisticsDTO;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/b/a;->f:Lcom/etermax/preguntados/datasource/dto/PlayerStatisticsDTO;

    .line 103
    :goto_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/b/a;->e:Lcom/etermax/preguntados/datasource/dto/PlayerStatisticsDTO;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/b/a;->e:Lcom/etermax/preguntados/datasource/dto/PlayerStatisticsDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/PlayerStatisticsDTO;->getCategoryQuestions()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/b/a;->e:Lcom/etermax/preguntados/datasource/dto/PlayerStatisticsDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/PlayerStatisticsDTO;->getCategoryQuestions()Ljava/util/List;

    move-result-object v0

    sget v1, Lcom/etermax/i;->item_you_count:I

    invoke-direct {p0, v0, v1}, Lcom/etermax/preguntados/ui/game/b/a;->a(Ljava/util/List;I)V

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/b/a;->f:Lcom/etermax/preguntados/datasource/dto/PlayerStatisticsDTO;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/b/a;->f:Lcom/etermax/preguntados/datasource/dto/PlayerStatisticsDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/PlayerStatisticsDTO;->getCategoryQuestions()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/b/a;->f:Lcom/etermax/preguntados/datasource/dto/PlayerStatisticsDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/PlayerStatisticsDTO;->getCategoryQuestions()Ljava/util/List;

    move-result-object v0

    sget v1, Lcom/etermax/i;->item_opponent_count:I

    invoke-direct {p0, v0, v1}, Lcom/etermax/preguntados/ui/game/b/a;->a(Ljava/util/List;I)V

    .line 110
    :cond_1
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/game/b/a;->d()V

    .line 111
    return-void

    .line 99
    :cond_2
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/b/a;->a:Lcom/etermax/preguntados/datasource/dto/StatisticsDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/StatisticsDTO;->getPlayerTwoStatistics()Lcom/etermax/preguntados/datasource/dto/PlayerStatisticsDTO;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/b/a;->e:Lcom/etermax/preguntados/datasource/dto/PlayerStatisticsDTO;

    .line 100
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/b/a;->a:Lcom/etermax/preguntados/datasource/dto/StatisticsDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/StatisticsDTO;->getPlayerOneStatistics()Lcom/etermax/preguntados/datasource/dto/PlayerStatisticsDTO;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/b/a;->f:Lcom/etermax/preguntados/datasource/dto/PlayerStatisticsDTO;

    goto :goto_0
.end method

.method private d()V
    .locals 5

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/b/a;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->item_crown:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 117
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/b/a;->getView()Landroid/view/View;

    move-result-object v0

    sget v2, Lcom/etermax/i;->item_challenge:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 119
    sget v0, Lcom/etermax/i;->item_you_count:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/etermax/preguntados/ui/game/b/a;->e:Lcom/etermax/preguntados/datasource/dto/PlayerStatisticsDTO;

    invoke-virtual {v3}, Lcom/etermax/preguntados/datasource/dto/PlayerStatisticsDTO;->getCrownsWon()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    sget v0, Lcom/etermax/i;->item_opponent_count:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/etermax/preguntados/ui/game/b/a;->f:Lcom/etermax/preguntados/datasource/dto/PlayerStatisticsDTO;

    invoke-virtual {v3}, Lcom/etermax/preguntados/datasource/dto/PlayerStatisticsDTO;->getCrownsWon()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    sget v0, Lcom/etermax/i;->item_you_count:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/etermax/preguntados/ui/game/b/a;->e:Lcom/etermax/preguntados/datasource/dto/PlayerStatisticsDTO;

    invoke-virtual {v3}, Lcom/etermax/preguntados/datasource/dto/PlayerStatisticsDTO;->getChallengesWon()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    sget v0, Lcom/etermax/i;->item_opponent_count:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/etermax/preguntados/ui/game/b/a;->f:Lcom/etermax/preguntados/datasource/dto/PlayerStatisticsDTO;

    invoke-virtual {v3}, Lcom/etermax/preguntados/datasource/dto/PlayerStatisticsDTO;->getChallengesWon()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    sget v0, Lcom/etermax/i;->item_you_count:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/b/a;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/etermax/f;->crown_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 125
    sget v0, Lcom/etermax/i;->item_opponent_count:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/b/a;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/etermax/f;->crown_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 126
    sget v0, Lcom/etermax/i;->item_you_count:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/b/a;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/etermax/f;->challenge_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 127
    sget v0, Lcom/etermax/i;->item_opponent_count:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/b/a;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/etermax/f;->challenge_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 129
    sget v0, Lcom/etermax/i;->item_description:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v3, Lcom/etermax/o;->crown_plural:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 130
    sget v0, Lcom/etermax/i;->item_description:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v3, Lcom/etermax/o;->trivia_challenge_plural:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 131
    sget v0, Lcom/etermax/i;->item_image:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget v1, Lcom/etermax/h;->crown_score:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 132
    sget v0, Lcom/etermax/i;->item_image:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget v1, Lcom/etermax/h;->challenge_score:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 135
    return-void
.end method


# virtual methods
.method public a()Lcom/etermax/preguntados/ui/game/b/b;
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lcom/etermax/preguntados/ui/game/b/a$1;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/ui/game/b/a$1;-><init>(Lcom/etermax/preguntados/ui/game/b/a;)V

    return-object v0
.end method

.method public b()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 68
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/etermax/preguntados/ui/game/b/a;->d:Ljava/util/HashMap;

    .line 69
    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/b/a;->d:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/etermax/preguntados/ui/game/b/a;->c:Lcom/etermax/preguntados/c/a/b;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/etermax/preguntados/c/a/b;->a(I)Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v2

    sget v3, Lcom/etermax/i;->item_category_01:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/b/a;->d:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/etermax/preguntados/ui/game/b/a;->c:Lcom/etermax/preguntados/c/a/b;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/etermax/preguntados/c/a/b;->a(I)Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v2

    sget v3, Lcom/etermax/i;->item_category_02:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/b/a;->d:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/etermax/preguntados/ui/game/b/a;->c:Lcom/etermax/preguntados/c/a/b;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/etermax/preguntados/c/a/b;->a(I)Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v2

    sget v3, Lcom/etermax/i;->item_category_03:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/b/a;->d:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/etermax/preguntados/ui/game/b/a;->c:Lcom/etermax/preguntados/c/a/b;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/etermax/preguntados/c/a/b;->a(I)Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v2

    sget v3, Lcom/etermax/i;->item_category_04:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/b/a;->d:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/etermax/preguntados/ui/game/b/a;->c:Lcom/etermax/preguntados/c/a/b;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/etermax/preguntados/c/a/b;->a(I)Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v2

    sget v3, Lcom/etermax/i;->item_category_05:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/b/a;->d:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/etermax/preguntados/ui/game/b/a;->c:Lcom/etermax/preguntados/c/a/b;

    invoke-virtual {v2, v0}, Lcom/etermax/preguntados/c/a/b;->a(I)Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v2

    sget v3, Lcom/etermax/i;->item_category_06:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v0

    .line 77
    :goto_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/b/a;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/b/a;->c:Lcom/etermax/preguntados/c/a/b;

    iget-object v2, p0, Lcom/etermax/preguntados/ui/game/b/a;->c:Lcom/etermax/preguntados/c/a/b;

    invoke-virtual {v2, v1}, Lcom/etermax/preguntados/c/a/b;->a(I)Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/etermax/preguntados/c/a/b;->a(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)Lcom/etermax/preguntados/c/a/g;

    move-result-object v2

    .line 79
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/b/a;->c:Lcom/etermax/preguntados/c/a/b;

    iget-object v3, p0, Lcom/etermax/preguntados/ui/game/b/a;->c:Lcom/etermax/preguntados/c/a/b;

    invoke-virtual {v3, v1}, Lcom/etermax/preguntados/c/a/b;->a(I)Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/etermax/preguntados/c/a/b;->d(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)Lcom/etermax/preguntados/c/a/f;

    move-result-object v3

    .line 80
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/b/a;->d:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/etermax/preguntados/ui/game/b/a;->c:Lcom/etermax/preguntados/c/a/b;

    invoke-virtual {v4, v1}, Lcom/etermax/preguntados/c/a/b;->a(I)Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 81
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/b/a;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 82
    sget v0, Lcom/etermax/i;->item_image:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-interface {v3}, Lcom/etermax/preguntados/c/a/f;->c()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 83
    sget v0, Lcom/etermax/i;->item_description:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-interface {v2}, Lcom/etermax/preguntados/c/a/g;->getNameResource()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/etermax/preguntados/ui/game/b/a;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    sget v0, Lcom/etermax/i;->item_you_count:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/b/a;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-interface {v2}, Lcom/etermax/preguntados/c/a/g;->getTextColorResource()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 85
    sget v0, Lcom/etermax/i;->item_opponent_count:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/b/a;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-interface {v2}, Lcom/etermax/preguntados/c/a/g;->getTextColorResource()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 86
    sget v0, Lcom/etermax/i;->item_you_count:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v2, "-"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    sget v0, Lcom/etermax/i;->item_opponent_count:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v2, "-"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    .line 90
    :cond_0
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/game/b/a;->c()V

    .line 92
    return-void
.end method

.method public synthetic getDummyCallbacks()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/b/a;->a()Lcom/etermax/preguntados/ui/game/b/b;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 62
    sget v0, Lcom/etermax/k;->game_statistics_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
