.class public Lcom/etermax/gamescommon/view/GameOptionsView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/etermax/gamescommon/view/e;",
            "Lcom/etermax/gamescommon/view/GameOptionButton;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/etermax/gamescommon/view/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/etermax/gamescommon/view/GameOptionsView;->a:Ljava/util/Map;

    .line 44
    invoke-virtual {p0, p1}, Lcom/etermax/gamescommon/view/GameOptionsView;->a(Landroid/content/Context;)V

    .line 45
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/etermax/gamescommon/view/GameOptionsView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 54
    sget v0, Lcom/etermax/k;->game_options_layout:I

    invoke-static {p1, v0, p0}, Lcom/etermax/gamescommon/view/GameOptionsView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 55
    iget-object v1, p0, Lcom/etermax/gamescommon/view/GameOptionsView;->a:Ljava/util/Map;

    sget-object v2, Lcom/etermax/gamescommon/view/e;->a:Lcom/etermax/gamescommon/view/e;

    sget v0, Lcom/etermax/i;->game_option_profile:I

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/view/GameOptionsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/view/GameOptionButton;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v1, p0, Lcom/etermax/gamescommon/view/GameOptionsView;->a:Ljava/util/Map;

    sget-object v2, Lcom/etermax/gamescommon/view/e;->b:Lcom/etermax/gamescommon/view/e;

    sget v0, Lcom/etermax/i;->game_option_chat:I

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/view/GameOptionsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/view/GameOptionButton;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v1, p0, Lcom/etermax/gamescommon/view/GameOptionsView;->a:Ljava/util/Map;

    sget-object v2, Lcom/etermax/gamescommon/view/e;->c:Lcom/etermax/gamescommon/view/e;

    sget v0, Lcom/etermax/i;->game_option_poke:I

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/view/GameOptionsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/view/GameOptionButton;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v1, p0, Lcom/etermax/gamescommon/view/GameOptionsView;->a:Ljava/util/Map;

    sget-object v2, Lcom/etermax/gamescommon/view/e;->d:Lcom/etermax/gamescommon/view/e;

    sget v0, Lcom/etermax/i;->game_option_reject:I

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/view/GameOptionsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/view/GameOptionButton;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v1, p0, Lcom/etermax/gamescommon/view/GameOptionsView;->a:Ljava/util/Map;

    sget-object v2, Lcom/etermax/gamescommon/view/e;->e:Lcom/etermax/gamescommon/view/e;

    sget v0, Lcom/etermax/i;->game_option_resign:I

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/view/GameOptionsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/view/GameOptionButton;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v1, p0, Lcom/etermax/gamescommon/view/GameOptionsView;->a:Ljava/util/Map;

    sget-object v2, Lcom/etermax/gamescommon/view/e;->f:Lcom/etermax/gamescommon/view/e;

    sget v0, Lcom/etermax/i;->game_option_delete:I

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/view/GameOptionsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/view/GameOptionButton;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v1, p0, Lcom/etermax/gamescommon/view/GameOptionsView;->a:Ljava/util/Map;

    sget-object v2, Lcom/etermax/gamescommon/view/e;->g:Lcom/etermax/gamescommon/view/e;

    sget v0, Lcom/etermax/i;->game_option_rematch:I

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/view/GameOptionsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/view/GameOptionButton;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v1, p0, Lcom/etermax/gamescommon/view/GameOptionsView;->a:Ljava/util/Map;

    sget-object v2, Lcom/etermax/gamescommon/view/e;->h:Lcom/etermax/gamescommon/view/e;

    sget v0, Lcom/etermax/i;->game_option_publish:I

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/view/GameOptionsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/view/GameOptionButton;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v0, p0, Lcom/etermax/gamescommon/view/GameOptionsView;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/view/e;

    .line 65
    iget-object v2, p0, Lcom/etermax/gamescommon/view/GameOptionsView;->a:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/view/GameOptionButton;

    invoke-virtual {v0, p0}, Lcom/etermax/gamescommon/view/GameOptionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 68
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/view/GameOptionsView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 111
    iget-object v0, p0, Lcom/etermax/gamescommon/view/GameOptionsView;->b:Lcom/etermax/gamescommon/view/f;

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 114
    sget v1, Lcom/etermax/i;->game_option_profile:I

    if-ne v0, v1, :cond_1

    .line 115
    iget-object v0, p0, Lcom/etermax/gamescommon/view/GameOptionsView;->b:Lcom/etermax/gamescommon/view/f;

    invoke-interface {v0}, Lcom/etermax/gamescommon/view/f;->a()V

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    sget v1, Lcom/etermax/i;->game_option_chat:I

    if-ne v0, v1, :cond_2

    .line 117
    iget-object v0, p0, Lcom/etermax/gamescommon/view/GameOptionsView;->b:Lcom/etermax/gamescommon/view/f;

    invoke-interface {v0}, Lcom/etermax/gamescommon/view/f;->b()V

    goto :goto_0

    .line 118
    :cond_2
    sget v1, Lcom/etermax/i;->game_option_poke:I

    if-ne v0, v1, :cond_3

    .line 119
    iget-object v0, p0, Lcom/etermax/gamescommon/view/GameOptionsView;->b:Lcom/etermax/gamescommon/view/f;

    invoke-interface {v0}, Lcom/etermax/gamescommon/view/f;->c()V

    goto :goto_0

    .line 120
    :cond_3
    sget v1, Lcom/etermax/i;->game_option_reject:I

    if-ne v0, v1, :cond_4

    .line 121
    iget-object v0, p0, Lcom/etermax/gamescommon/view/GameOptionsView;->b:Lcom/etermax/gamescommon/view/f;

    invoke-interface {v0}, Lcom/etermax/gamescommon/view/f;->d()V

    goto :goto_0

    .line 122
    :cond_4
    sget v1, Lcom/etermax/i;->game_option_resign:I

    if-ne v0, v1, :cond_5

    .line 123
    iget-object v0, p0, Lcom/etermax/gamescommon/view/GameOptionsView;->b:Lcom/etermax/gamescommon/view/f;

    invoke-interface {v0}, Lcom/etermax/gamescommon/view/f;->e()V

    goto :goto_0

    .line 124
    :cond_5
    sget v1, Lcom/etermax/i;->game_option_delete:I

    if-ne v0, v1, :cond_6

    .line 125
    iget-object v0, p0, Lcom/etermax/gamescommon/view/GameOptionsView;->b:Lcom/etermax/gamescommon/view/f;

    invoke-interface {v0}, Lcom/etermax/gamescommon/view/f;->f()V

    goto :goto_0

    .line 126
    :cond_6
    sget v1, Lcom/etermax/i;->game_option_rematch:I

    if-ne v0, v1, :cond_7

    .line 127
    iget-object v0, p0, Lcom/etermax/gamescommon/view/GameOptionsView;->b:Lcom/etermax/gamescommon/view/f;

    invoke-interface {v0}, Lcom/etermax/gamescommon/view/f;->g()V

    goto :goto_0

    .line 128
    :cond_7
    sget v1, Lcom/etermax/i;->game_option_publish:I

    if-ne v0, v1, :cond_0

    .line 129
    iget-object v0, p0, Lcom/etermax/gamescommon/view/GameOptionsView;->b:Lcom/etermax/gamescommon/view/f;

    invoke-interface {v0}, Lcom/etermax/gamescommon/view/f;->h()V

    goto :goto_0
.end method
