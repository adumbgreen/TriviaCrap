.class public Lcom/etermax/preguntados/ui/profile/ProfileCategoryDetailsView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/LinearLayout;

.field private b:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/profile/ProfileCategoryDetailsView;->a()V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/profile/ProfileCategoryDetailsView;->a()V

    .line 37
    return-void
.end method

.method private a(Lcom/etermax/preguntados/ui/profile/d;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x3

    .line 79
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/ProfileCategoryDetailsView;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 80
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/ProfileCategoryDetailsView;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 87
    :goto_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/ProfileCategoryDetailsView;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/ProfileCategoryDetailsView;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ne v0, v2, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/etermax/preguntados/ui/profile/d;->b()V

    .line 88
    :cond_1
    return-void

    .line 81
    :cond_2
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/ProfileCategoryDetailsView;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcom/etermax/preguntados/ui/profile/ProfileCategoryDetailsView;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 82
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/ProfileCategoryDetailsView;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 84
    :cond_3
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/ProfileCategoryDetailsView;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method


# virtual methods
.method protected a()V
    .locals 2

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/profile/ProfileCategoryDetailsView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/etermax/k;->profile_category_details:I

    invoke-static {v0, v1, p0}, Lcom/etermax/preguntados/ui/profile/ProfileCategoryDetailsView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 41
    sget v0, Lcom/etermax/i;->categories_column_01:I

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/profile/ProfileCategoryDetailsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/profile/ProfileCategoryDetailsView;->a:Landroid/widget/LinearLayout;

    .line 42
    sget v0, Lcom/etermax/i;->categories_column_02:I

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/profile/ProfileCategoryDetailsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/profile/ProfileCategoryDetailsView;->b:Landroid/widget/LinearLayout;

    .line 43
    return-void
.end method

.method public a(Ljava/util/List;Lcom/etermax/preguntados/c/a/b;)V
    .locals 13
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/CategoryQuestionDTO;",
            ">;",
            "Lcom/etermax/preguntados/c/a/b;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 46
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/ProfileCategoryDetailsView;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 47
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/ProfileCategoryDetailsView;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 48
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 49
    invoke-virtual {p2}, Lcom/etermax/preguntados/c/a/b;->a()[Lcom/etermax/preguntados/c/a/g;

    move-result-object v6

    array-length v7, v6

    move v4, v2

    :goto_0
    if-ge v4, v7, :cond_2

    aget-object v8, v6, v4

    .line 50
    new-instance v9, Lcom/etermax/preguntados/ui/profile/d;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/profile/ProfileCategoryDetailsView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v9, v0}, Lcom/etermax/preguntados/ui/profile/d;-><init>(Landroid/content/Context;)V

    .line 54
    if-eqz p1, :cond_0

    .line 55
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v1, v2

    move v3, v2

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/CategoryQuestionDTO;

    .line 56
    invoke-interface {v8}, Lcom/etermax/preguntados/c/a/g;->getCategory()Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v11

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/CategoryQuestionDTO;->getCategory()Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v12

    if-ne v11, v12, :cond_4

    .line 57
    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/CategoryQuestionDTO;->getCorrect()I

    move-result v1

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/CategoryQuestionDTO;->getIncorrect()I

    move-result v3

    add-int/2addr v1, v3

    .line 58
    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/CategoryQuestionDTO;->getCorrect()I

    move-result v0

    mul-int/lit8 v0, v0, 0x64

    div-int/2addr v0, v1

    :goto_2
    move v3, v1

    move v1, v0

    goto :goto_1

    :cond_0
    move v1, v2

    move v3, v2

    .line 63
    :cond_1
    invoke-interface {v8}, Lcom/etermax/preguntados/c/a/g;->getTextColorResource()I

    move-result v0

    invoke-virtual {v9, v0}, Lcom/etermax/preguntados/ui/profile/d;->setPercentageTextColor(I)V

    .line 64
    invoke-interface {v8}, Lcom/etermax/preguntados/c/a/g;->getCategory()Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/etermax/preguntados/c/a/b;->d(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)Lcom/etermax/preguntados/c/a/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/etermax/preguntados/c/a/f;->a()I

    move-result v0

    invoke-virtual {v9, v0}, Lcom/etermax/preguntados/ui/profile/d;->setCharacterImage(I)V

    .line 65
    invoke-interface {v8}, Lcom/etermax/preguntados/c/a/g;->getNameResource()I

    move-result v0

    invoke-virtual {v9, v0}, Lcom/etermax/preguntados/ui/profile/d;->setCategoryTitle(I)V

    .line 66
    invoke-virtual {v9, v3}, Lcom/etermax/preguntados/ui/profile/d;->setQuantity(I)V

    .line 67
    invoke-virtual {v9, v1}, Lcom/etermax/preguntados/ui/profile/d;->setPercentage(I)V

    .line 69
    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 72
    :cond_2
    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 73
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/ui/profile/d;

    .line 74
    invoke-direct {p0, v0}, Lcom/etermax/preguntados/ui/profile/ProfileCategoryDetailsView;->a(Lcom/etermax/preguntados/ui/profile/d;)V

    goto :goto_3

    .line 76
    :cond_3
    return-void

    :cond_4
    move v0, v1

    move v1, v3

    goto :goto_2
.end method
