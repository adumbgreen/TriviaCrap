.class public Lcom/etermax/preguntados/sharing/k;
.super Lcom/etermax/preguntados/sharing/ShareView;
.source "SourceFile"


# instance fields
.field a:Lcom/etermax/preguntados/c/a/b;

.field protected b:Landroid/widget/ImageView;

.field protected c:Landroid/widget/LinearLayout;

.field protected d:Landroid/widget/TextView;

.field protected e:Landroid/widget/Button;

.field protected f:Landroid/widget/Button;

.field protected g:Landroid/widget/Button;

.field protected h:Landroid/widget/Button;

.field protected i:Landroid/widget/ImageView;

.field protected j:Landroid/widget/LinearLayout;

.field protected k:Landroid/widget/TextView;

.field private o:Lcom/etermax/preguntados/sharing/p;

.field private p:Lcom/etermax/preguntados/ui/game/duelmode/g;

.field private q:Lcom/etermax/preguntados/e/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/etermax/preguntados/datasource/dto/QuestionDTO;Lcom/etermax/preguntados/c/a/b;Lcom/etermax/preguntados/ui/game/duelmode/g;Lcom/etermax/preguntados/e/c;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/sharing/ShareView;-><init>(Landroid/content/Context;)V

    .line 61
    iput-object p2, p0, Lcom/etermax/preguntados/sharing/k;->o:Lcom/etermax/preguntados/sharing/p;

    .line 62
    iput-object p3, p0, Lcom/etermax/preguntados/sharing/k;->a:Lcom/etermax/preguntados/c/a/b;

    .line 63
    iput-object p4, p0, Lcom/etermax/preguntados/sharing/k;->p:Lcom/etermax/preguntados/ui/game/duelmode/g;

    .line 64
    iput-object p5, p0, Lcom/etermax/preguntados/sharing/k;->q:Lcom/etermax/preguntados/e/c;

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/etermax/preguntados/sharing/p;Lcom/etermax/preguntados/c/a/b;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/sharing/ShareView;-><init>(Landroid/content/Context;)V

    .line 69
    iput-object p2, p0, Lcom/etermax/preguntados/sharing/k;->o:Lcom/etermax/preguntados/sharing/p;

    .line 70
    sget-object v0, Lcom/etermax/preguntados/ui/game/duelmode/g;->a:Lcom/etermax/preguntados/ui/game/duelmode/g;

    iput-object v0, p0, Lcom/etermax/preguntados/sharing/k;->p:Lcom/etermax/preguntados/ui/game/duelmode/g;

    .line 71
    iput-object p3, p0, Lcom/etermax/preguntados/sharing/k;->a:Lcom/etermax/preguntados/c/a/b;

    .line 73
    return-void
.end method

.method private a(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter

    .prologue
    .line 105
    iget-object v0, p0, Lcom/etermax/preguntados/sharing/k;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 106
    iget-object v0, p0, Lcom/etermax/preguntados/sharing/k;->j:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 107
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/etermax/preguntados/sharing/k;->b()V

    .line 82
    return-void
.end method

.method public b()V
    .locals 5

    .prologue
    .line 86
    iget-object v0, p0, Lcom/etermax/preguntados/sharing/k;->o:Lcom/etermax/preguntados/sharing/p;

    invoke-interface {v0}, Lcom/etermax/preguntados/sharing/p;->getAnswers()Ljava/util/List;

    move-result-object v1

    .line 88
    iget-object v0, p0, Lcom/etermax/preguntados/sharing/k;->b:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/etermax/preguntados/sharing/k;->a:Lcom/etermax/preguntados/c/a/b;

    iget-object v3, p0, Lcom/etermax/preguntados/sharing/k;->o:Lcom/etermax/preguntados/sharing/p;

    invoke-interface {v3}, Lcom/etermax/preguntados/sharing/p;->getCategory()Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/etermax/preguntados/c/a/b;->b(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 89
    iget-object v0, p0, Lcom/etermax/preguntados/sharing/k;->c:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/etermax/preguntados/sharing/k;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/etermax/preguntados/sharing/k;->a:Lcom/etermax/preguntados/c/a/b;

    iget-object v4, p0, Lcom/etermax/preguntados/sharing/k;->o:Lcom/etermax/preguntados/sharing/p;

    invoke-interface {v4}, Lcom/etermax/preguntados/sharing/p;->getCategory()Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/etermax/preguntados/c/a/b;->a(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)Lcom/etermax/preguntados/c/a/g;

    move-result-object v3

    invoke-interface {v3}, Lcom/etermax/preguntados/c/a/g;->getHeaderColorResource()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 91
    iget-object v0, p0, Lcom/etermax/preguntados/sharing/k;->o:Lcom/etermax/preguntados/sharing/p;

    invoke-interface {v0}, Lcom/etermax/preguntados/sharing/p;->getQuestionType()Lcom/etermax/preguntados/datasource/dto/enums/QuestionType;

    move-result-object v0

    sget-object v2, Lcom/etermax/preguntados/datasource/dto/enums/QuestionType;->IMAGE:Lcom/etermax/preguntados/datasource/dto/enums/QuestionType;

    if-ne v0, v2, :cond_0

    .line 92
    iget-object v0, p0, Lcom/etermax/preguntados/sharing/k;->q:Lcom/etermax/preguntados/e/c;

    iget-object v2, p0, Lcom/etermax/preguntados/sharing/k;->o:Lcom/etermax/preguntados/sharing/p;

    invoke-interface {v2}, Lcom/etermax/preguntados/sharing/p;->getId()I

    move-result v2

    int-to-long v2, v2

    iget-object v4, p0, Lcom/etermax/preguntados/sharing/k;->o:Lcom/etermax/preguntados/sharing/p;

    invoke-interface {v4}, Lcom/etermax/preguntados/sharing/p;->getCategory()Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/etermax/preguntados/e/c;->a(JLcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 93
    invoke-direct {p0, v0}, Lcom/etermax/preguntados/sharing/k;->a(Landroid/graphics/Bitmap;)V

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/sharing/k;->d:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/etermax/preguntados/sharing/k;->o:Lcom/etermax/preguntados/sharing/p;

    invoke-interface {v2}, Lcom/etermax/preguntados/sharing/p;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v2, p0, Lcom/etermax/preguntados/sharing/k;->e:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v2, p0, Lcom/etermax/preguntados/sharing/k;->f:Landroid/widget/Button;

    const/4 v0, 0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v2, p0, Lcom/etermax/preguntados/sharing/k;->g:Landroid/widget/Button;

    const/4 v0, 0x2

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v2, p0, Lcom/etermax/preguntados/sharing/k;->h:Landroid/widget/Button;

    const/4 v0, 0x3

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 102
    return-void
.end method

.method public getShareText()Ljava/lang/String;
    .locals 3

    .prologue
    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/etermax/preguntados/sharing/k;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/etermax/o;->user_answered_quiz:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/etermax/preguntados/sharing/k;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/etermax/o;->landing_url:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
