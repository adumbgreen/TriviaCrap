.class public Lcom/etermax/preguntados/ui/game/duelmode/adapter/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/tools/widget/a/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/etermax/tools/widget/a/e",
        "<",
        "Lcom/etermax/preguntados/datasource/dto/DuelPlayerDTO;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/etermax/preguntados/ui/game/duelmode/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/etermax/preguntados/ui/game/duelmode/h;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/etermax/preguntados/ui/game/duelmode/adapter/b;->a:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lcom/etermax/preguntados/ui/game/duelmode/adapter/b;->b:Lcom/etermax/preguntados/ui/game/duelmode/h;

    .line 37
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 40
    invoke-static {p1}, Lcom/etermax/preguntados/ui/game/duelmode/adapter/DuelModeResultsHeaderView_;->a(Landroid/content/Context;)Lcom/etermax/preguntados/ui/game/duelmode/adapter/DuelModeResultsHeaderView;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/View;Lcom/etermax/preguntados/datasource/dto/DuelPlayerDTO;Lcom/etermax/preguntados/ui/game/duelmode/adapter/g;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 229
    sget v0, Lcom/etermax/i;->item_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 230
    new-instance v1, Lcom/etermax/preguntados/ui/game/duelmode/adapter/b$1;

    invoke-direct {v1, p0, p3, p2}, Lcom/etermax/preguntados/ui/game/duelmode/adapter/b$1;-><init>(Lcom/etermax/preguntados/ui/game/duelmode/adapter/b;Lcom/etermax/preguntados/ui/game/duelmode/adapter/g;Lcom/etermax/preguntados/datasource/dto/DuelPlayerDTO;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    return-void
.end method

.method public a(Landroid/view/View;Lcom/etermax/preguntados/ui/game/duelmode/adapter/d;ZZLcom/etermax/preguntados/datasource/dto/enums/DuelGamePlayerStatus;Ljava/util/List;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/etermax/preguntados/ui/game/duelmode/adapter/d;",
            "ZZ",
            "Lcom/etermax/preguntados/datasource/dto/enums/DuelGamePlayerStatus;",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/RewardDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    sget v0, Lcom/etermax/i;->item_background:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 65
    sget v0, Lcom/etermax/i;->item_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 66
    sget v1, Lcom/etermax/i;->item_result_textview:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 67
    sget v2, Lcom/etermax/i;->item_finish_in_textview:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 68
    sget v3, Lcom/etermax/i;->item_timer_container:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 69
    sget v3, Lcom/etermax/i;->item_reward_image:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 70
    sget v4, Lcom/etermax/i;->item_timer_textview:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 72
    iget-object v7, p0, Lcom/etermax/preguntados/ui/game/duelmode/adapter/b;->b:Lcom/etermax/preguntados/ui/game/duelmode/h;

    invoke-virtual {v7}, Lcom/etermax/preguntados/ui/game/duelmode/h;->c()I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 73
    if-nez p3, :cond_0

    .line 74
    const/4 v4, 0x0

    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    .line 75
    iget-object v4, p0, Lcom/etermax/preguntados/ui/game/duelmode/adapter/b;->b:Lcom/etermax/preguntados/ui/game/duelmode/h;

    invoke-virtual {v4}, Lcom/etermax/preguntados/ui/game/duelmode/h;->f()I

    move-result v4

    .line 76
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 77
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 78
    const/16 v1, 0x8

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 79
    instance-of v1, p1, Lcom/etermax/preguntados/ui/game/duelmode/adapter/f;

    if-eqz v1, :cond_5

    .line 80
    check-cast p1, Lcom/etermax/preguntados/ui/game/duelmode/adapter/f;

    invoke-virtual {p2, p1}, Lcom/etermax/preguntados/ui/game/duelmode/adapter/d;->a(Lcom/etermax/preguntados/ui/game/duelmode/adapter/f;)V

    move v1, v4

    .line 131
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 132
    return-void

    .line 83
    :cond_0
    const/16 v5, 0x8

    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 84
    instance-of v5, p1, Lcom/etermax/preguntados/ui/game/duelmode/adapter/f;

    if-eqz v5, :cond_1

    .line 85
    check-cast p1, Lcom/etermax/preguntados/ui/game/duelmode/adapter/f;

    invoke-virtual {p2, p1}, Lcom/etermax/preguntados/ui/game/duelmode/adapter/d;->b(Lcom/etermax/preguntados/ui/game/duelmode/adapter/f;)V

    .line 87
    :cond_1
    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 88
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 89
    sget-object v2, Lcom/etermax/preguntados/ui/game/duelmode/adapter/b$4;->b:[I

    invoke-virtual {p5}, Lcom/etermax/preguntados/datasource/dto/enums/DuelGamePlayerStatus;->ordinal()I

    move-result v5

    aget v2, v2, v5

    packed-switch v2, :pswitch_data_0

    .line 126
    iget-object v2, p0, Lcom/etermax/preguntados/ui/game/duelmode/adapter/b;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/etermax/o;->finished:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/duelmode/adapter/b;->b:Lcom/etermax/preguntados/ui/game/duelmode/h;

    invoke-virtual {v1}, Lcom/etermax/preguntados/ui/game/duelmode/h;->f()I

    move-result v1

    goto :goto_0

    .line 91
    :pswitch_0
    if-eqz p4, :cond_3

    .line 92
    if-eqz p6, :cond_2

    .line 93
    const/4 v2, 0x0

    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V

    .line 94
    invoke-interface {p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    :pswitch_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/etermax/preguntados/datasource/dto/RewardDTO;

    .line 95
    sget-object v6, Lcom/etermax/preguntados/ui/game/duelmode/adapter/b$4;->a:[I

    invoke-virtual {v2}, Lcom/etermax/preguntados/datasource/dto/RewardDTO;->getType()Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$RewardType;

    move-result-object v7

    invoke-virtual {v7}, Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$RewardType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_1

    goto :goto_1

    .line 97
    :pswitch_2
    sget v6, Lcom/etermax/h;->coins_challenge:I

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 98
    invoke-virtual {v2}, Lcom/etermax/preguntados/datasource/dto/RewardDTO;->getQuantity()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 111
    :cond_2
    iget-object v2, p0, Lcom/etermax/preguntados/ui/game/duelmode/adapter/b;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/etermax/o;->you_won:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/duelmode/adapter/b;->b:Lcom/etermax/preguntados/ui/game/duelmode/h;

    invoke-virtual {v1}, Lcom/etermax/preguntados/ui/game/duelmode/h;->d()I

    move-result v1

    goto/16 :goto_0

    .line 114
    :cond_3
    iget-object v2, p0, Lcom/etermax/preguntados/ui/game/duelmode/adapter/b;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/etermax/o;->you_lost:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/DuelGamePlayerStatus;->REJECTED:Lcom/etermax/preguntados/datasource/dto/enums/DuelGamePlayerStatus;

    invoke-virtual {v1, p5}, Lcom/etermax/preguntados/datasource/dto/enums/DuelGamePlayerStatus;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 116
    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/duelmode/adapter/b;->b:Lcom/etermax/preguntados/ui/game/duelmode/h;

    invoke-virtual {v1}, Lcom/etermax/preguntados/ui/game/duelmode/h;->f()I

    move-result v1

    goto/16 :goto_0

    .line 118
    :cond_4
    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/duelmode/adapter/b;->b:Lcom/etermax/preguntados/ui/game/duelmode/h;

    invoke-virtual {v1}, Lcom/etermax/preguntados/ui/game/duelmode/h;->e()I

    move-result v1

    goto/16 :goto_0

    :cond_5
    move v1, v4

    goto/16 :goto_0

    .line 89
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 95
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public a(Landroid/view/View;Lcom/etermax/preguntados/ui/game/duelmode/adapter/g;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 239
    sget v0, Lcom/etermax/i;->item_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 240
    sget v1, Lcom/etermax/o;->play_again:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 241
    new-instance v1, Lcom/etermax/preguntados/ui/game/duelmode/adapter/b$2;

    invoke-direct {v1, p0, p2}, Lcom/etermax/preguntados/ui/game/duelmode/adapter/b$2;-><init>(Lcom/etermax/preguntados/ui/game/duelmode/adapter/b;Lcom/etermax/preguntados/ui/game/duelmode/adapter/g;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    return-void
.end method

.method public a(Landroid/view/View;Lcom/etermax/tools/widget/a/h;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/etermax/tools/widget/a/h",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 136
    sget v0, Lcom/etermax/i;->section_text_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 137
    sget v1, Lcom/etermax/i;->players_count:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 138
    invoke-virtual {p2}, Lcom/etermax/tools/widget/a/h;->b()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 146
    sget v0, Lcom/etermax/i;->section_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 149
    :goto_0
    return-void

    .line 140
    :pswitch_0
    iget-object v2, p0, Lcom/etermax/preguntados/ui/game/duelmode/adapter/b;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/etermax/o;->result_plural:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/adapter/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/etermax/o;->answers_correct:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/adapter/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/etermax/f;->new_duel_list_section:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 143
    sget v1, Lcom/etermax/i;->section_container:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 138
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Landroid/widget/BaseAdapter;Landroid/view/View;Lcom/etermax/tools/widget/a/g;)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/BaseAdapter;",
            "Landroid/view/View;",
            "Lcom/etermax/tools/widget/a/g",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/DuelPlayerDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 153
    instance-of v0, p3, Lcom/etermax/preguntados/ui/game/duelmode/adapter/c;

    if-eqz v0, :cond_1

    .line 154
    new-instance v8, Lcom/etermax/gamescommon/dashboard/b;

    invoke-direct {v8}, Lcom/etermax/gamescommon/dashboard/b;-><init>()V

    .line 155
    sget v0, Lcom/etermax/i;->item_number:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 156
    sget v1, Lcom/etermax/i;->item_image:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ViewSwitcher;

    .line 157
    sget v2, Lcom/etermax/i;->item_name:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 158
    sget v3, Lcom/etermax/i;->item_name_small:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 159
    sget v4, Lcom/etermax/i;->item_score:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 160
    sget v5, Lcom/etermax/i;->item_time:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 161
    sget v6, Lcom/etermax/i;->level:I

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 163
    invoke-virtual {p3}, Lcom/etermax/tools/widget/a/g;->c()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/etermax/preguntados/datasource/dto/DuelPlayerDTO;

    .line 165
    iget-object v9, p0, Lcom/etermax/preguntados/ui/game/duelmode/adapter/b;->a:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 166
    invoke-virtual {v7}, Lcom/etermax/preguntados/datasource/dto/DuelPlayerDTO;->isMe()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 167
    sget v10, Lcom/etermax/f;->rankings_tab_indicator:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {p2, v10}, Landroid/view/View;->setBackgroundColor(I)V

    .line 168
    sget v10, Lcom/etermax/f;->white:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 169
    sget v10, Lcom/etermax/f;->white:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 170
    sget v10, Lcom/etermax/f;->white:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 171
    sget v10, Lcom/etermax/f;->white:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 172
    sget v10, Lcom/etermax/f;->white:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 182
    :goto_0
    check-cast p3, Lcom/etermax/preguntados/ui/game/duelmode/adapter/c;

    invoke-virtual {p3}, Lcom/etermax/preguntados/ui/game/duelmode/adapter/c;->a()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    invoke-virtual {v8, v1, v7}, Lcom/etermax/gamescommon/dashboard/b;->a(Landroid/widget/ViewSwitcher;Lcom/etermax/gamescommon/k;)V

    .line 184
    const/4 v0, 0x0

    .line 185
    invoke-virtual {v7}, Lcom/etermax/preguntados/datasource/dto/DuelPlayerDTO;->getLevelData()Lcom/etermax/preguntados/datasource/dto/UserLevelDataDTO;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 186
    invoke-virtual {v7}, Lcom/etermax/preguntados/datasource/dto/DuelPlayerDTO;->getLevelData()Lcom/etermax/preguntados/datasource/dto/UserLevelDataDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/UserLevelDataDTO;->getLevel()I

    move-result v0

    const/16 v1, 0x3e7

    if-le v0, v1, :cond_3

    const-string v0, "+99"

    .line 188
    :cond_0
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 189
    const/16 v0, 0x8

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 195
    :goto_2
    invoke-virtual {v7}, Lcom/etermax/preguntados/datasource/dto/DuelPlayerDTO;->getFacebook_name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 196
    invoke-virtual {v7}, Lcom/etermax/preguntados/datasource/dto/DuelPlayerDTO;->getVisibleUsername()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    const/16 v0, 0x8

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 204
    :goto_3
    sget-object v0, Lcom/etermax/preguntados/ui/game/duelmode/adapter/b$4;->b:[I

    invoke-virtual {v7}, Lcom/etermax/preguntados/datasource/dto/DuelPlayerDTO;->getStatus()Lcom/etermax/preguntados/datasource/dto/enums/DuelGamePlayerStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/enums/DuelGamePlayerStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 226
    :cond_1
    :goto_4
    return-void

    .line 174
    :cond_2
    sget v10, Lcom/etermax/f;->white:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {p2, v10}, Landroid/view/View;->setBackgroundColor(I)V

    .line 175
    sget v10, Lcom/etermax/f;->gray:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 176
    sget v10, Lcom/etermax/f;->grayDark:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 177
    sget v10, Lcom/etermax/f;->gray:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 178
    sget v10, Lcom/etermax/f;->duel_list_score:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 179
    sget v10, Lcom/etermax/f;->grayLight:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 186
    :cond_3
    invoke-virtual {v7}, Lcom/etermax/preguntados/datasource/dto/DuelPlayerDTO;->getLevelData()Lcom/etermax/preguntados/datasource/dto/UserLevelDataDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/UserLevelDataDTO;->getLevel()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 191
    :cond_4
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 199
    :cond_5
    invoke-virtual {v7}, Lcom/etermax/preguntados/datasource/dto/DuelPlayerDTO;->getFacebook_name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    invoke-virtual {v7}, Lcom/etermax/preguntados/datasource/dto/DuelPlayerDTO;->getVisibleUsername()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 206
    :pswitch_0
    sget v0, Lcom/etermax/o;->gamescore_expired:I

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    const/16 v0, 0x8

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 210
    :pswitch_1
    invoke-virtual {v7}, Lcom/etermax/preguntados/datasource/dto/DuelPlayerDTO;->getCorrectAnswers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    invoke-virtual {v7}, Lcom/etermax/preguntados/datasource/dto/DuelPlayerDTO;->getFinishTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/etermax/preguntados/h/c;->c(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 215
    :pswitch_2
    sget v0, Lcom/etermax/o;->pending:I

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    const/16 v0, 0x8

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 219
    :pswitch_3
    sget v0, Lcom/etermax/o;->gamescore_rejected:I

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    const/16 v0, 0x8

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 204
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public b(Landroid/content/Context;)Landroid/view/View;
    .locals 3
    .parameter

    .prologue
    .line 44
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/etermax/k;->new_duel_item_button_continue_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/view/View;Lcom/etermax/preguntados/ui/game/duelmode/adapter/g;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 250
    sget v0, Lcom/etermax/i;->item_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 251
    sget v1, Lcom/etermax/o;->share:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 252
    new-instance v1, Lcom/etermax/preguntados/ui/game/duelmode/adapter/b$3;

    invoke-direct {v1, p0, p2}, Lcom/etermax/preguntados/ui/game/duelmode/adapter/b$3;-><init>(Lcom/etermax/preguntados/ui/game/duelmode/adapter/b;Lcom/etermax/preguntados/ui/game/duelmode/adapter/g;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    return-void
.end method

.method public c(Landroid/content/Context;)Landroid/view/View;
    .locals 3
    .parameter

    .prologue
    .line 48
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/etermax/k;->new_duel_item_button_share_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public d(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 267
    sget v0, Lcom/etermax/i;->item_divider:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 268
    return-void
.end method

.method public e(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 272
    sget v0, Lcom/etermax/i;->item_divider:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 273
    return-void
.end method

.method public f(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 277
    sget v0, Lcom/etermax/i;->item_divider:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 278
    return-void
.end method

.method public g(Landroid/content/Context;)Landroid/view/View;
    .locals 3
    .parameter

    .prologue
    .line 53
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/etermax/k;->new_duel_section_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public g(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 262
    sget v0, Lcom/etermax/i;->item_divider:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 263
    return-void
.end method

.method public h(Landroid/content/Context;)Landroid/view/View;
    .locals 3
    .parameter

    .prologue
    .line 58
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/etermax/k;->duel_mode_item_player_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
