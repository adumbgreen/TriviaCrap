.class public Lcom/etermax/preguntados/ui/game/question/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/app/Fragment;Landroid/view/View;Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 17
    new-instance v1, Lcom/etermax/gamescommon/dashboard/b;

    invoke-direct {v1}, Lcom/etermax/gamescommon/dashboard/b;-><init>()V

    .line 19
    if-eqz p3, :cond_0

    .line 20
    sget v0, Lcom/etermax/i;->question_authors:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 21
    sget v0, Lcom/etermax/i;->question_container_author:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 22
    sget v0, Lcom/etermax/i;->question_switcher_author:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewSwitcher;

    .line 23
    invoke-virtual {v1, v0, p3}, Lcom/etermax/gamescommon/dashboard/b;->a(Landroid/widget/ViewSwitcher;Lcom/etermax/gamescommon/k;)V

    .line 24
    sget v2, Lcom/etermax/i;->tile_image_icon:I

    invoke-virtual {v0, v2}, Landroid/widget/ViewSwitcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/etermax/preguntados/h/g;

    invoke-direct {v2, p1, p3}, Lcom/etermax/preguntados/h/g;-><init>(Landroid/support/v4/app/Fragment;Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    invoke-virtual {p3}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->getName()Ljava/lang/String;

    move-result-object v2

    .line 26
    sget v0, Lcom/etermax/i;->question_author_name:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    :cond_0
    if-eqz p4, :cond_1

    .line 30
    sget v0, Lcom/etermax/i;->question_authors:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 31
    sget v0, Lcom/etermax/i;->question_container_translator:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 32
    sget v0, Lcom/etermax/i;->question_switcher_translator:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewSwitcher;

    .line 33
    invoke-virtual {v1, v0, p4}, Lcom/etermax/gamescommon/dashboard/b;->a(Landroid/widget/ViewSwitcher;Lcom/etermax/gamescommon/k;)V

    .line 34
    sget v1, Lcom/etermax/i;->tile_image_icon:I

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/etermax/preguntados/h/g;

    invoke-direct {v1, p1, p4}, Lcom/etermax/preguntados/h/g;-><init>(Landroid/support/v4/app/Fragment;Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    invoke-virtual {p4}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->getName()Ljava/lang/String;

    move-result-object v1

    .line 36
    sget v0, Lcom/etermax/i;->question_translator_name:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    :cond_1
    return-void
.end method
