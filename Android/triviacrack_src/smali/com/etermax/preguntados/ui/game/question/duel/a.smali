.class public Lcom/etermax/preguntados/ui/game/question/duel/a;
.super Lcom/etermax/tools/navigation/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/navigation/b",
        "<",
        "Lcom/etermax/preguntados/ui/game/question/duel/b;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

.field b:Lcom/etermax/preguntados/c/a/b;

.field protected c:Ljava/util/HashMap;
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

.field private d:[Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/etermax/tools/navigation/b;-><init>()V

    .line 36
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/a;->d:[Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    .line 50
    return-void
.end method

.method public static a(Lcom/etermax/preguntados/datasource/dto/GameDTO;II)Landroid/support/v4/app/Fragment;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-static {}, Lcom/etermax/preguntados/ui/game/question/duel/c;->d()Lcom/etermax/preguntados/ui/game/question/duel/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/etermax/preguntados/ui/game/question/duel/d;->a(Lcom/etermax/preguntados/datasource/dto/GameDTO;)Lcom/etermax/preguntados/ui/game/question/duel/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/game/question/duel/d;->a()Lcom/etermax/preguntados/ui/game/question/duel/a;

    move-result-object v0

    .line 46
    return-object v0
.end method

.method private a(ILcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;ILandroid/view/View;)Landroid/view/View$OnClickListener;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 126
    new-instance v0, Lcom/etermax/preguntados/ui/game/question/duel/a$2;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p2

    move v4, p3

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/etermax/preguntados/ui/game/question/duel/a$2;-><init>(Lcom/etermax/preguntados/ui/game/question/duel/a;Landroid/view/View;Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;II)V

    return-object v0
.end method

.method private a(ILcom/etermax/preguntados/datasource/dto/GameUserDTO;I)V
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 88
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/duel/a;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 89
    invoke-virtual {p2}, Lcom/etermax/preguntados/datasource/dto/GameUserDTO;->getCrowns()Ljava/util/List;

    move-result-object v7

    .line 92
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    move v6, v4

    move v0, v4

    .line 97
    :goto_0
    const/4 v2, 0x2

    if-ge v6, v2, :cond_1

    move v3, v4

    move v5, v0

    .line 98
    :goto_1
    const/4 v0, 0x3

    if-ge v3, v0, :cond_0

    .line 101
    add-int/lit8 v0, v8, -0x1

    if-le v5, v0, :cond_2

    .line 120
    :cond_0
    add-int/lit8 v0, v8, -0x1

    if-le v5, v0, :cond_3

    .line 123
    :cond_1
    return-void

    .line 105
    :cond_2
    iget-object v2, p0, Lcom/etermax/preguntados/ui/game/question/duel/a;->b:Lcom/etermax/preguntados/c/a/b;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    invoke-virtual {v2, v0}, Lcom/etermax/preguntados/c/a/b;->d(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)Lcom/etermax/preguntados/c/a/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/etermax/preguntados/c/a/f;->a()I

    move-result v9

    move-object v0, v1

    .line 106
    check-cast v0, Landroid/widget/LinearLayout;

    add-int/lit8 v2, v6, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    move-object v0, v1

    .line 109
    check-cast v0, Landroid/widget/LinearLayout;

    add-int/lit8 v2, v6, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/etermax/tools/widget/CustomLinearButton;

    .line 110
    invoke-virtual {v0, v4}, Lcom/etermax/tools/widget/CustomLinearButton;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 113
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    invoke-direct {p0, p3, v2, p3, v1}, Lcom/etermax/preguntados/ui/game/question/duel/a;->a(ILcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;ILandroid/view/View;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/etermax/tools/widget/CustomLinearButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object v2, p0, Lcom/etermax/preguntados/ui/game/question/duel/a;->c:Ljava/util/HashMap;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/etermax/tools/widget/CustomLinearButton;->setTag(Ljava/lang/Object;)V

    .line 117
    add-int/lit8 v2, v5, 0x1

    .line 98
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v5, v2

    goto :goto_1

    .line 97
    :cond_3
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    move v0, v5

    goto :goto_0
.end method

.method static synthetic a(Lcom/etermax/preguntados/ui/game/question/duel/a;)[Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/a;->d:[Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/etermax/preguntados/ui/game/question/duel/b;
    .locals 1

    .prologue
    .line 56
    new-instance v0, Lcom/etermax/preguntados/ui/game/question/duel/a$1;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/ui/game/question/duel/a$1;-><init>(Lcom/etermax/preguntados/ui/game/question/duel/a;)V

    return-object v0
.end method

.method b()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/a;->c:Ljava/util/HashMap;

    .line 67
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/a;->c:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/duel/a;->b:Lcom/etermax/preguntados/c/a/b;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/etermax/preguntados/c/a/b;->a(I)Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v1

    sget v2, Lcom/etermax/i;->category_crown_button_01:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/a;->c:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/duel/a;->b:Lcom/etermax/preguntados/c/a/b;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/etermax/preguntados/c/a/b;->a(I)Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v1

    sget v2, Lcom/etermax/i;->category_crown_button_02:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/a;->c:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/duel/a;->b:Lcom/etermax/preguntados/c/a/b;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/etermax/preguntados/c/a/b;->a(I)Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v1

    sget v2, Lcom/etermax/i;->category_crown_button_03:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/a;->c:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/duel/a;->b:Lcom/etermax/preguntados/c/a/b;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/etermax/preguntados/c/a/b;->a(I)Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v1

    sget v2, Lcom/etermax/i;->category_crown_button_04:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/a;->c:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/duel/a;->b:Lcom/etermax/preguntados/c/a/b;

    invoke-virtual {v1, v4}, Lcom/etermax/preguntados/c/a/b;->a(I)Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v1

    sget v2, Lcom/etermax/i;->category_crown_button_05:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/a;->c:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/duel/a;->b:Lcom/etermax/preguntados/c/a/b;

    invoke-virtual {v1, v3}, Lcom/etermax/preguntados/c/a/b;->a(I)Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v1

    sget v2, Lcom/etermax/i;->category_crown_button_06:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget v0, Lcom/etermax/o;->trivia_challenge:I

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/game/question/duel/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 75
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/duel/a;->getView()Landroid/view/View;

    move-result-object v0

    sget v2, Lcom/etermax/i;->category_duel_crown_header_text_view:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    sget v0, Lcom/etermax/i;->duel_my_crowns_container:I

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/duel/a;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getMyPlayerInfo()Lcom/etermax/preguntados/datasource/dto/GameUserDTO;

    move-result-object v1

    invoke-direct {p0, v0, v1, v3}, Lcom/etermax/preguntados/ui/game/question/duel/a;->a(ILcom/etermax/preguntados/datasource/dto/GameUserDTO;I)V

    .line 78
    sget v0, Lcom/etermax/i;->duel_opponent_crowns_container:I

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/duel/a;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getOpponentPlayerInfo()Lcom/etermax/preguntados/datasource/dto/GameUserDTO;

    move-result-object v1

    invoke-direct {p0, v0, v1, v4}, Lcom/etermax/preguntados/ui/game/question/duel/a;->a(ILcom/etermax/preguntados/datasource/dto/GameUserDTO;I)V

    .line 79
    return-void
.end method

.method c()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 156
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/a;->d:[Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    aget-object v0, v0, v2

    if-nez v0, :cond_0

    .line 157
    sget v0, Lcom/etermax/o;->attention:I

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/game/question/duel/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/etermax/o;->trivia_challenge_character_title:I

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/game/question/duel/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/etermax/o;->accept:I

    invoke-virtual {p0, v2}, Lcom/etermax/preguntados/ui/game/question/duel/a;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v4}, Lcom/etermax/tools/widget/b/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/etermax/tools/widget/b/c;

    move-result-object v0

    .line 162
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/duel/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/etermax/tools/widget/b/c;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 175
    :goto_0
    return-void

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/a;->d:[Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    aget-object v0, v0, v3

    if-nez v0, :cond_1

    .line 165
    sget v0, Lcom/etermax/o;->attention:I

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/game/question/duel/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/etermax/o;->trivia_challenge_character_title:I

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/game/question/duel/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/etermax/o;->accept:I

    invoke-virtual {p0, v2}, Lcom/etermax/preguntados/ui/game/question/duel/a;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v4}, Lcom/etermax/tools/widget/b/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/etermax/tools/widget/b/c;

    move-result-object v0

    .line 170
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/duel/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/etermax/tools/widget/b/c;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/duel/a;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/preguntados/ui/game/question/duel/b;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/question/duel/a;->d:[Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/etermax/preguntados/ui/game/question/duel/a;->d:[Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    aget-object v2, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/etermax/preguntados/ui/game/question/duel/b;->a(Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)V

    goto :goto_0
.end method

.method public synthetic getDummyCallbacks()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/question/duel/a;->a()Lcom/etermax/preguntados/ui/game/question/duel/b;

    move-result-object v0

    return-object v0
.end method
