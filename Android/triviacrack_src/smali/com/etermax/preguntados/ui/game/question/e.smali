.class Lcom/etermax/preguntados/ui/game/question/e;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/ui/game/question/c;

.field private b:I

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/ProgressBar;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/view/View;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/etermax/preguntados/ui/game/question/c;JJI)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 801
    iput-object p1, p0, Lcom/etermax/preguntados/ui/game/question/e;->a:Lcom/etermax/preguntados/ui/game/question/c;

    .line 802
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 795
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/e;->a:Lcom/etermax/preguntados/ui/game/question/c;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/game/question/c;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->remaining_time_text_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/e;->c:Landroid/widget/TextView;

    .line 796
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/e;->a:Lcom/etermax/preguntados/ui/game/question/c;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/game/question/c;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->countdown_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/e;->d:Landroid/widget/ProgressBar;

    .line 797
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/e;->a:Lcom/etermax/preguntados/ui/game/question/c;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/game/question/c;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->question_duel_textview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/e;->e:Landroid/widget/TextView;

    .line 803
    iput p6, p0, Lcom/etermax/preguntados/ui/game/question/e;->b:I

    .line 804
    invoke-virtual {p1}, Lcom/etermax/preguntados/ui/game/question/c;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->remaining_time_text_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/e;->f:Landroid/view/View;

    .line 805
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/e;->g:Ljava/util/List;

    .line 806
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/e;->g:Ljava/util/List;

    invoke-virtual {p1}, Lcom/etermax/preguntados/ui/game/question/c;->getView()Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/etermax/i;->power_up_button_extra_time:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/etermax/i;->power_up_image:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 807
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/e;->g:Ljava/util/List;

    invoke-virtual {p1}, Lcom/etermax/preguntados/ui/game/question/c;->getView()Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/etermax/i;->power_up_button_bomb:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/etermax/i;->power_up_image:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 808
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/e;->g:Ljava/util/List;

    invoke-virtual {p1}, Lcom/etermax/preguntados/ui/game/question/c;->getView()Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/etermax/i;->power_up_button_double_chance:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/etermax/i;->power_up_image:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 809
    iget-object v0, p1, Lcom/etermax/preguntados/ui/game/question/c;->o:Lcom/etermax/preguntados/datasource/dto/enums/SpinType;

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/SpinType;->DUEL:Lcom/etermax/preguntados/datasource/dto/enums/SpinType;

    if-eq v0, v1, :cond_0

    iget-object v0, p1, Lcom/etermax/preguntados/ui/game/question/c;->o:Lcom/etermax/preguntados/datasource/dto/enums/SpinType;

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/SpinType;->FINAL_DUEL:Lcom/etermax/preguntados/datasource/dto/enums/SpinType;

    if-eq v0, v1, :cond_0

    .line 810
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/e;->g:Ljava/util/List;

    invoke-virtual {p1}, Lcom/etermax/preguntados/ui/game/question/c;->getView()Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/etermax/i;->power_up_button_swap_question:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/etermax/i;->power_up_image:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 812
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/etermax/preguntados/ui/game/question/e;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 792
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/e;->g:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .prologue
    .line 850
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/e;->a:Lcom/etermax/preguntados/ui/game/question/c;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/game/question/c;->f(Lcom/etermax/preguntados/ui/game/question/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/ui/game/question/d;

    invoke-interface {v0}, Lcom/etermax/preguntados/ui/game/question/d;->d()V

    .line 851
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/e;->a:Lcom/etermax/preguntados/ui/game/question/c;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/game/question/c;->d:Lcom/etermax/preguntados/g/a;

    sget v1, Lcom/etermax/preguntados/g/a;->i:I

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/g/a;->a(I)V

    .line 852
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/e;->c:Landroid/widget/TextView;

    const-string v1, "0\'"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 853
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/e;->d:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 854
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/e;->a:Lcom/etermax/preguntados/ui/game/question/c;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/game/question/c;->c:Lcom/etermax/preguntados/ui/game/a/a;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/etermax/preguntados/ui/game/a/a;->b(J)V

    .line 855
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/e;->a:Lcom/etermax/preguntados/ui/game/question/c;

    sget v1, Lcom/etermax/i;->answer_time_up_textview:I

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/etermax/preguntados/ui/game/question/c;->a(Lcom/etermax/preguntados/ui/game/question/c;ILjava/lang/Integer;)V

    .line 856
    return-void
.end method

.method public onTick(J)V
    .locals 6
    .parameter

    .prologue
    const/16 v5, 0xa

    const/4 v0, 0x0

    .line 816
    long-to-double v1, p1

    const-wide v3, 0x408f400000000000L

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 817
    iget v2, p0, Lcom/etermax/preguntados/ui/game/question/e;->b:I

    if-eq v2, v1, :cond_0

    .line 818
    iput v1, p0, Lcom/etermax/preguntados/ui/game/question/e;->b:I

    .line 819
    if-gt v1, v5, :cond_1

    .line 820
    iget-object v2, p0, Lcom/etermax/preguntados/ui/game/question/e;->a:Lcom/etermax/preguntados/ui/game/question/c;

    iget-object v2, v2, Lcom/etermax/preguntados/ui/game/question/c;->d:Lcom/etermax/preguntados/g/a;

    sget v3, Lcom/etermax/preguntados/g/a;->h:I

    invoke-virtual {v2, v3}, Lcom/etermax/preguntados/g/a;->a(I)V

    .line 821
    iget-object v2, p0, Lcom/etermax/preguntados/ui/game/question/e;->f:Landroid/view/View;

    invoke-static {}, Lcom/etermax/preguntados/ui/a/c;->a()Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 822
    iget-object v2, p0, Lcom/etermax/preguntados/ui/game/question/e;->a:Lcom/etermax/preguntados/ui/game/question/c;

    iget-object v2, v2, Lcom/etermax/preguntados/ui/game/question/c;->s:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    if-gt v1, v5, :cond_0

    .line 823
    iget-object v2, p0, Lcom/etermax/preguntados/ui/game/question/e;->g:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {}, Lcom/etermax/preguntados/ui/a/c;->a()Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 838
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/e;->c:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 839
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/e;->d:Landroid/widget/ProgressBar;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 840
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/e;->a:Lcom/etermax/preguntados/ui/game/question/c;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/game/question/c;->c:Lcom/etermax/preguntados/ui/game/a/a;

    invoke-virtual {v0, p1, p2}, Lcom/etermax/preguntados/ui/game/a/a;->b(J)V

    .line 841
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/e;->a:Lcom/etermax/preguntados/ui/game/question/c;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/game/question/c;->l:Lcom/etermax/preguntados/datasource/dto/enums/GameType;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/e;->a:Lcom/etermax/preguntados/ui/game/question/c;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/game/question/c;->l:Lcom/etermax/preguntados/datasource/dto/enums/GameType;

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/GameType;->DUEL_GAME:Lcom/etermax/preguntados/datasource/dto/enums/GameType;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/e;->a:Lcom/etermax/preguntados/ui/game/question/c;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/game/question/c;->c:Lcom/etermax/preguntados/ui/game/a/a;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/game/a/a;->x()Lcom/etermax/preguntados/ui/game/a/c;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 842
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/e;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/e;->a:Lcom/etermax/preguntados/ui/game/question/c;

    iget-object v2, p0, Lcom/etermax/preguntados/ui/game/question/e;->a:Lcom/etermax/preguntados/ui/game/question/c;

    iget-object v2, v2, Lcom/etermax/preguntados/ui/game/question/c;->c:Lcom/etermax/preguntados/ui/game/a/a;

    invoke-virtual {v2}, Lcom/etermax/preguntados/ui/game/a/a;->x()Lcom/etermax/preguntados/ui/game/a/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/etermax/preguntados/ui/game/a/c;->h()J

    move-result-wide v2

    iget-object v4, p0, Lcom/etermax/preguntados/ui/game/question/e;->a:Lcom/etermax/preguntados/ui/game/question/c;

    iget-object v4, v4, Lcom/etermax/preguntados/ui/game/question/c;->c:Lcom/etermax/preguntados/ui/game/a/a;

    invoke-virtual {v4}, Lcom/etermax/preguntados/ui/game/a/a;->a()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-static {v1, v2, v3}, Lcom/etermax/preguntados/ui/game/question/c;->a(Lcom/etermax/preguntados/ui/game/question/c;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 846
    :goto_0
    return-void

    .line 825
    :cond_1
    rem-int/lit8 v2, v1, 0x5

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/etermax/preguntados/ui/game/question/e;->a:Lcom/etermax/preguntados/ui/game/question/c;

    iget-object v2, v2, Lcom/etermax/preguntados/ui/game/question/c;->s:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 826
    :goto_1
    iget-object v2, p0, Lcom/etermax/preguntados/ui/game/question/e;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 828
    iget-object v2, p0, Lcom/etermax/preguntados/ui/game/question/e;->a:Lcom/etermax/preguntados/ui/game/question/c;

    invoke-static {v2}, Lcom/etermax/preguntados/ui/game/question/c;->e(Lcom/etermax/preguntados/ui/game/question/c;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/etermax/preguntados/ui/game/question/e$1;

    invoke-direct {v3, p0, v0}, Lcom/etermax/preguntados/ui/game/question/e$1;-><init>(Lcom/etermax/preguntados/ui/game/question/e;I)V

    mul-int/lit16 v4, v0, 0x12c

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 826
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 844
    :cond_2
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/e;->e:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
