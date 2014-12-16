.class public Lcom/etermax/preguntados/sharing/i;
.super Lcom/etermax/preguntados/sharing/ShareView;
.source "SourceFile"

# interfaces
.implements Lcom/b/a/ap;


# instance fields
.field protected a:Lcom/etermax/preguntados/c/a/b;

.field protected b:Landroid/widget/RelativeLayout;

.field protected c:Landroid/widget/TextView;

.field protected d:Landroid/widget/TextView;

.field protected e:Landroid/widget/ViewSwitcher;

.field private f:Lcom/etermax/preguntados/datasource/dto/ProfileDTO;

.field private g:Ljava/lang/String;

.field private h:Lcom/etermax/preguntados/sharing/n;

.field private i:Ljava/util/HashMap;
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


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/etermax/preguntados/datasource/dto/ProfileDTO;Ljava/lang/String;Lcom/etermax/preguntados/sharing/n;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/sharing/ShareView;-><init>(Landroid/content/Context;)V

    .line 57
    iput-object p3, p0, Lcom/etermax/preguntados/sharing/i;->g:Ljava/lang/String;

    .line 58
    iput-object p2, p0, Lcom/etermax/preguntados/sharing/i;->f:Lcom/etermax/preguntados/datasource/dto/ProfileDTO;

    .line 59
    iput-object p4, p0, Lcom/etermax/preguntados/sharing/i;->h:Lcom/etermax/preguntados/sharing/n;

    .line 60
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/sharing/i;->i:Ljava/util/HashMap;

    .line 65
    iget-object v0, p0, Lcom/etermax/preguntados/sharing/i;->i:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/etermax/preguntados/sharing/i;->a:Lcom/etermax/preguntados/c/a/b;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/etermax/preguntados/c/a/b;->a(I)Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v1

    sget v2, Lcom/etermax/i;->category_5:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v0, p0, Lcom/etermax/preguntados/sharing/i;->i:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/etermax/preguntados/sharing/i;->a:Lcom/etermax/preguntados/c/a/b;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/etermax/preguntados/c/a/b;->a(I)Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v1

    sget v2, Lcom/etermax/i;->category_4:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v0, p0, Lcom/etermax/preguntados/sharing/i;->i:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/etermax/preguntados/sharing/i;->a:Lcom/etermax/preguntados/c/a/b;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/etermax/preguntados/c/a/b;->a(I)Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v1

    sget v2, Lcom/etermax/i;->category_3:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v0, p0, Lcom/etermax/preguntados/sharing/i;->i:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/etermax/preguntados/sharing/i;->a:Lcom/etermax/preguntados/c/a/b;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/etermax/preguntados/c/a/b;->a(I)Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v1

    sget v2, Lcom/etermax/i;->category_2:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v0, p0, Lcom/etermax/preguntados/sharing/i;->i:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/etermax/preguntados/sharing/i;->a:Lcom/etermax/preguntados/c/a/b;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/etermax/preguntados/c/a/b;->a(I)Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v1

    sget v2, Lcom/etermax/i;->category_1:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v0, p0, Lcom/etermax/preguntados/sharing/i;->i:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/etermax/preguntados/sharing/i;->a:Lcom/etermax/preguntados/c/a/b;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/etermax/preguntados/c/a/b;->a(I)Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v1

    sget v2, Lcom/etermax/i;->category_0:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    return-void
.end method

.method public a(Landroid/graphics/Bitmap;Lcom/b/a/ae;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 115
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/etermax/preguntados/sharing/i;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 116
    iget-object v1, p0, Lcom/etermax/preguntados/sharing/i;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 117
    iget-object v0, p0, Lcom/etermax/preguntados/sharing/i;->h:Lcom/etermax/preguntados/sharing/n;

    invoke-interface {v0}, Lcom/etermax/preguntados/sharing/n;->b()V

    .line 118
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/CategoryQuestionDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 92
    iget-object v0, p0, Lcom/etermax/preguntados/sharing/i;->a:Lcom/etermax/preguntados/c/a/b;

    invoke-virtual {v0}, Lcom/etermax/preguntados/c/a/b;->a()[Lcom/etermax/preguntados/c/a/g;

    move-result-object v4

    array-length v5, v4

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v6, v4, v3

    .line 96
    if-eqz p1, :cond_0

    .line 97
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v1, v2

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/CategoryQuestionDTO;

    .line 98
    invoke-interface {v6}, Lcom/etermax/preguntados/c/a/g;->getCategory()Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v8

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/CategoryQuestionDTO;->getCategory()Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v9

    if-ne v8, v9, :cond_3

    .line 99
    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/CategoryQuestionDTO;->getCorrect()I

    move-result v1

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/CategoryQuestionDTO;->getIncorrect()I

    move-result v8

    add-int/2addr v1, v8

    .line 100
    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/CategoryQuestionDTO;->getCorrect()I

    move-result v0

    mul-int/lit8 v0, v0, 0x64

    div-int/2addr v0, v1

    :goto_2
    move v1, v0

    goto :goto_1

    :cond_0
    move v1, v2

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/etermax/preguntados/sharing/i;->i:Ljava/util/HashMap;

    invoke-interface {v6}, Lcom/etermax/preguntados/c/a/g;->getCategory()Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 105
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/sharing/i;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 106
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "%"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 108
    :cond_2
    return-void

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method public b()V
    .locals 0

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/etermax/preguntados/sharing/i;->c()V

    .line 76
    return-void
.end method

.method public b(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter

    .prologue
    .line 111
    return-void
.end method

.method public c()V
    .locals 4

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/etermax/preguntados/sharing/i;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/aa;->a(Landroid/content/Context;)Lcom/b/a/aa;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/preguntados/sharing/i;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/b/a/aa;->a(Ljava/lang/String;)Lcom/b/a/ak;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/ak;->a(Lcom/b/a/ap;)V

    .line 81
    iget-object v0, p0, Lcom/etermax/preguntados/sharing/i;->f:Lcom/etermax/preguntados/datasource/dto/ProfileDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/ProfileDTO;->getStatistics()Lcom/etermax/preguntados/datasource/dto/ProfileStatisticsDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/ProfileStatisticsDTO;->getCategory_question()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/sharing/i;->a(Ljava/util/List;)V

    .line 83
    iget-object v0, p0, Lcom/etermax/preguntados/sharing/i;->l:Lcom/etermax/gamescommon/dashboard/b;

    iget-object v1, p0, Lcom/etermax/preguntados/sharing/i;->e:Landroid/widget/ViewSwitcher;

    iget-object v2, p0, Lcom/etermax/preguntados/sharing/i;->m:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v2}, Lcom/etermax/gamescommon/login/datasource/a;->j()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/etermax/preguntados/sharing/i;->m:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v3}, Lcom/etermax/gamescommon/login/datasource/a;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/etermax/gamescommon/dashboard/b;->a(Landroid/widget/ViewSwitcher;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lcom/etermax/preguntados/sharing/i;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/etermax/preguntados/sharing/i;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/etermax/preguntados/sharing/i;->m:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v2}, Lcom/etermax/gamescommon/login/datasource/a;->n()Lcom/etermax/tools/nationality/Nationality;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/etermax/tools/nationality/NationalityManager;->getNameResource(Landroid/content/Context;Lcom/etermax/tools/nationality/Nationality;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 85
    iget-object v0, p0, Lcom/etermax/preguntados/sharing/i;->m:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/a;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/etermax/preguntados/sharing/i;->m:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v2}, Lcom/etermax/gamescommon/login/datasource/a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    :goto_0
    iget-object v2, p0, Lcom/etermax/preguntados/sharing/i;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v0, p0, Lcom/etermax/preguntados/sharing/i;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/sharing/i;->m:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/a;->k()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 130
    if-ne p0, p1, :cond_1

    .line 142
    :cond_0
    :goto_0
    return v0

    .line 132
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 133
    goto :goto_0

    .line 134
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 135
    goto :goto_0

    .line 136
    :cond_3
    check-cast p1, Lcom/etermax/preguntados/sharing/i;

    .line 137
    iget-object v2, p0, Lcom/etermax/preguntados/sharing/i;->f:Lcom/etermax/preguntados/datasource/dto/ProfileDTO;

    if-nez v2, :cond_4

    .line 138
    iget-object v2, p1, Lcom/etermax/preguntados/sharing/i;->f:Lcom/etermax/preguntados/datasource/dto/ProfileDTO;

    if-eqz v2, :cond_0

    move v0, v1

    .line 139
    goto :goto_0

    .line 140
    :cond_4
    iget-object v2, p0, Lcom/etermax/preguntados/sharing/i;->f:Lcom/etermax/preguntados/datasource/dto/ProfileDTO;

    iget-object v3, p1, Lcom/etermax/preguntados/sharing/i;->f:Lcom/etermax/preguntados/datasource/dto/ProfileDTO;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 141
    goto :goto_0
.end method

.method public getShareText()Ljava/lang/String;
    .locals 6

    .prologue
    .line 147
    iget-object v0, p0, Lcom/etermax/preguntados/sharing/i;->m:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/a;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/preguntados/sharing/i;->m:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/login/datasource/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 148
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/etermax/preguntados/sharing/i;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/etermax/o;->user_share_profile:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/etermax/preguntados/sharing/i;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/etermax/o;->landing_url:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/sharing/i;->m:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/a;->k()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 122
    .line 124
    iget-object v0, p0, Lcom/etermax/preguntados/sharing/i;->f:Lcom/etermax/preguntados/datasource/dto/ProfileDTO;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 125
    return v0

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/sharing/i;->f:Lcom/etermax/preguntados/datasource/dto/ProfileDTO;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method
