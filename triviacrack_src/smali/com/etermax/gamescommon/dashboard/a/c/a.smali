.class public Lcom/etermax/gamescommon/dashboard/a/c/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/gamescommon/dashboard/a/a/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/etermax/gamescommon/dashboard/a/c/f;",
        ":",
        "Lcom/etermax/gamescommon/dashboard/a/b/b;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/etermax/gamescommon/dashboard/a/a/b",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected a:Lcom/etermax/gamescommon/dashboard/a/c/d;

.field private b:Lcom/etermax/gamescommon/dashboard/a/c/c;

.field private c:Lcom/etermax/gamescommon/dashboard/a/c/b;

.field private d:J

.field private e:Lcom/etermax/gamescommon/dashboard/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-direct {p0}, Lcom/etermax/gamescommon/dashboard/a/c/a;->h()V

    .line 54
    return-void
.end method

.method public constructor <init>(Lcom/etermax/gamescommon/dashboard/a/c/c;Lcom/etermax/gamescommon/dashboard/a/c/b;Lcom/etermax/gamescommon/dashboard/a/c/d;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-direct {p0}, Lcom/etermax/gamescommon/dashboard/a/c/a;->h()V

    .line 58
    iput-object p1, p0, Lcom/etermax/gamescommon/dashboard/a/c/a;->b:Lcom/etermax/gamescommon/dashboard/a/c/c;

    .line 59
    iput-object p2, p0, Lcom/etermax/gamescommon/dashboard/a/c/a;->c:Lcom/etermax/gamescommon/dashboard/a/c/b;

    .line 60
    iput-object p3, p0, Lcom/etermax/gamescommon/dashboard/a/c/a;->a:Lcom/etermax/gamescommon/dashboard/a/c/d;

    .line 61
    return-void
.end method

.method private a(I)I
    .locals 1
    .parameter

    .prologue
    .line 249
    packed-switch p1, :pswitch_data_0

    .line 254
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 250
    :pswitch_0
    sget v0, Lcom/etermax/i;->game_1:I

    goto :goto_0

    .line 251
    :pswitch_1
    sget v0, Lcom/etermax/i;->game_2:I

    goto :goto_0

    .line 252
    :pswitch_2
    sget v0, Lcom/etermax/i;->game_3:I

    goto :goto_0

    .line 253
    :pswitch_3
    sget v0, Lcom/etermax/i;->game_4:I

    goto :goto_0

    .line 249
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private a(Ljava/lang/String;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter

    .prologue
    .line 259
    new-instance v0, Lcom/etermax/gamescommon/dashboard/a/c/a$1;

    invoke-direct {v0, p0, p1}, Lcom/etermax/gamescommon/dashboard/a/c/a$1;-><init>(Lcom/etermax/gamescommon/dashboard/a/c/a;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic a(Lcom/etermax/gamescommon/dashboard/a/c/a;)Lcom/etermax/gamescommon/dashboard/a/c/b;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/etermax/gamescommon/dashboard/a/c/a;->c:Lcom/etermax/gamescommon/dashboard/a/c/b;

    return-object v0
.end method

.method static synthetic b(Lcom/etermax/gamescommon/dashboard/a/c/a;)Lcom/etermax/gamescommon/dashboard/a/c/c;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/etermax/gamescommon/dashboard/a/c/a;->b:Lcom/etermax/gamescommon/dashboard/a/c/c;

    return-object v0
.end method

.method private h()V
    .locals 1

    .prologue
    .line 64
    new-instance v0, Lcom/etermax/gamescommon/dashboard/b;

    invoke-direct {v0}, Lcom/etermax/gamescommon/dashboard/b;-><init>()V

    iput-object v0, p0, Lcom/etermax/gamescommon/dashboard/a/c/a;->e:Lcom/etermax/gamescommon/dashboard/b;

    .line 65
    return-void
.end method


# virtual methods
.method protected a(Lcom/etermax/gamescommon/language/Language;)I
    .locals 1
    .parameter

    .prologue
    .line 226
    invoke-static {p1}, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->getByCode(Lcom/etermax/gamescommon/language/Language;)Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    move-result-object v0

    .line 227
    invoke-virtual {v0}, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->getFlagResource()I

    move-result v0

    return v0
.end method

.method public a(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 102
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Lcom/etermax/gamescommon/dashboard/a/c/f;Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/content/Context;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 270
    instance-of v0, p1, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    if-eqz v0, :cond_0

    .line 271
    check-cast p1, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    invoke-virtual {p1}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->getName()Ljava/lang/String;

    move-result-object v0

    .line 280
    :goto_0
    return-object v0

    .line 273
    :cond_0
    invoke-interface {p1}, Lcom/etermax/gamescommon/dashboard/a/c/f;->isRandomOpponent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 274
    sget v0, Lcom/etermax/o;->button_random_opponent:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 277
    :cond_1
    invoke-interface {p1}, Lcom/etermax/gamescommon/dashboard/a/c/f;->getOpponent()Lcom/etermax/gamescommon/k;

    move-result-object v0

    invoke-interface {v0}, Lcom/etermax/gamescommon/k;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a(J)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-wide p1, p0, Lcom/etermax/gamescommon/dashboard/a/c/a;->d:J

    .line 73
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 145
    return-void
.end method

.method public a(Landroid/view/View;Lcom/etermax/tools/widget/a/h;)V
    .locals 2
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
    .line 151
    invoke-virtual {p2}, Lcom/etermax/tools/widget/a/h;->b()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 169
    :pswitch_0
    sget v0, Lcom/etermax/o;->finished_games:I

    move v1, v0

    .line 172
    :goto_0
    sget v0, Lcom/etermax/i;->section_text_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 173
    return-void

    .line 153
    :pswitch_1
    sget v0, Lcom/etermax/o;->suggested_opponent_plural:I

    move v1, v0

    .line 154
    goto :goto_0

    .line 156
    :pswitch_2
    sget v0, Lcom/etermax/o;->pending_approval:I

    move v1, v0

    .line 157
    goto :goto_0

    .line 159
    :pswitch_3
    sget v0, Lcom/etermax/o;->their_move:I

    move v1, v0

    .line 160
    goto :goto_0

    .line 162
    :pswitch_4
    sget v0, Lcom/etermax/o;->your_move:I

    move v1, v0

    .line 163
    goto :goto_0

    .line 165
    :pswitch_5
    sget v0, Lcom/etermax/o;->more_free_games:I

    move v1, v0

    .line 166
    goto :goto_0

    .line 151
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public a(Landroid/view/View;Ljava/lang/Boolean;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 326
    return-void
.end method

.method public a(Landroid/widget/BaseAdapter;Landroid/view/View;Lcom/etermax/gamescommon/dashboard/a/a/c;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/BaseAdapter;",
            "Landroid/view/View;",
            "Lcom/etermax/gamescommon/dashboard/a/a/c",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    const/4 v7, 0x4

    const/4 v5, 0x0

    .line 232
    invoke-virtual {p3}, Lcom/etermax/gamescommon/dashboard/a/a/c;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    move v4, v5

    .line 234
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v4, v1, :cond_1

    if-ge v4, v7, :cond_1

    .line 235
    invoke-direct {p0, v4}, Lcom/etermax/gamescommon/dashboard/a/c/a;->a(I)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 236
    sget v1, Lcom/etermax/i;->image:I

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 237
    sget v2, Lcom/etermax/i;->name:I

    invoke-virtual {v6, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 239
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/etermax/gamescommon/dashboard/a/b;

    invoke-virtual {v3}, Lcom/etermax/gamescommon/dashboard/a/b;->b()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 240
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, v7, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 241
    :cond_0
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/etermax/gamescommon/dashboard/a/b;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/dashboard/a/b;->c()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 242
    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 244
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/etermax/gamescommon/dashboard/a/b;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/dashboard/a/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/etermax/gamescommon/dashboard/a/c/a;->a(Ljava/lang/String;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_0

    .line 246
    :cond_1
    return-void
.end method

.method public a(Landroid/widget/BaseAdapter;Landroid/view/View;Lcom/etermax/tools/widget/a/g;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/BaseAdapter;",
            "Landroid/view/View;",
            "Lcom/etermax/tools/widget/a/g",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 201
    invoke-virtual {p3}, Lcom/etermax/tools/widget/a/g;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/dashboard/a/c/f;

    .line 202
    sget v1, Lcom/etermax/i;->opponent_text_view:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/etermax/gamescommon/dashboard/a/c/a;->a(Lcom/etermax/gamescommon/dashboard/a/c/f;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    sget v1, Lcom/etermax/i;->tile_left_view:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 205
    sget v2, Lcom/etermax/i;->tile_right_view:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 207
    invoke-interface {v0}, Lcom/etermax/gamescommon/dashboard/a/c/f;->isImageTileLeft()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 208
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 209
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 218
    :goto_0
    new-instance v2, Lcom/etermax/gamescommon/dashboard/a/c/e;

    invoke-interface {v0}, Lcom/etermax/gamescommon/dashboard/a/c/f;->getOpponent()Lcom/etermax/gamescommon/k;

    move-result-object v3

    invoke-interface {v3}, Lcom/etermax/gamescommon/k;->getId()Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/etermax/gamescommon/dashboard/a/c/e;-><init>(Lcom/etermax/gamescommon/dashboard/a/c/a;Ljava/lang/Long;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    iget-object v2, p0, Lcom/etermax/gamescommon/dashboard/a/c/a;->e:Lcom/etermax/gamescommon/dashboard/b;

    check-cast v1, Landroid/widget/ViewSwitcher;

    invoke-interface {v0}, Lcom/etermax/gamescommon/dashboard/a/c/f;->getOpponent()Lcom/etermax/gamescommon/k;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/etermax/gamescommon/dashboard/b;->a(Landroid/widget/ViewSwitcher;Lcom/etermax/gamescommon/k;)V

    .line 222
    sget v1, Lcom/etermax/i;->dashboard_item_flag_image:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-interface {v0}, Lcom/etermax/gamescommon/dashboard/a/c/f;->getLanguageCode()Lcom/etermax/gamescommon/language/Language;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/dashboard/a/c/a;->a(Lcom/etermax/gamescommon/language/Language;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 223
    return-void

    .line 213
    :cond_0
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 214
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    move-object v1, v2

    .line 215
    goto :goto_0
.end method

.method public a(Landroid/widget/BaseAdapter;Landroid/view/View;Lcom/etermax/tools/widget/a/i;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/BaseAdapter;",
            "Landroid/view/View;",
            "Lcom/etermax/tools/widget/a/i",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 176
    invoke-virtual {p3}, Lcom/etermax/tools/widget/a/i;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/dashboard/a/c/f;

    .line 177
    sget v1, Lcom/etermax/i;->opponent_text_view:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/etermax/gamescommon/dashboard/a/c/a;->a(Lcom/etermax/gamescommon/dashboard/a/c/f;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    sget v1, Lcom/etermax/i;->dashboard_item_text:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    move-object v2, v0

    check-cast v2, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    invoke-virtual {v2}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->getVisibleUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    sget v1, Lcom/etermax/i;->tile_left_view:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 181
    sget v1, Lcom/etermax/i;->tile_right_view:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 183
    invoke-interface {v0}, Lcom/etermax/gamescommon/dashboard/a/c/f;->isImageTileLeft()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 185
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 186
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 195
    :goto_0
    new-instance v3, Lcom/etermax/gamescommon/dashboard/a/c/e;

    move-object v1, v0

    check-cast v1, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v3, p0, v1}, Lcom/etermax/gamescommon/dashboard/a/c/e;-><init>(Lcom/etermax/gamescommon/dashboard/a/c/a;Ljava/lang/Long;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    iget-object v3, p0, Lcom/etermax/gamescommon/dashboard/a/c/a;->e:Lcom/etermax/gamescommon/dashboard/b;

    move-object v1, v2

    check-cast v1, Landroid/widget/ViewSwitcher;

    check-cast v0, Lcom/etermax/gamescommon/k;

    invoke-virtual {v3, v1, v0}, Lcom/etermax/gamescommon/dashboard/b;->a(Landroid/widget/ViewSwitcher;Lcom/etermax/gamescommon/k;)V

    .line 197
    return-void

    .line 190
    :cond_0
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 191
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    move-object v2, v1

    .line 192
    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public b(Landroid/content/Context;)Landroid/view/View;
    .locals 3
    .parameter

    .prologue
    .line 127
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/etermax/k;->suggested_item_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 142
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public c(Landroid/content/Context;)Landroid/view/View;
    .locals 3
    .parameter

    .prologue
    .line 132
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/etermax/k;->facebook_simple_item_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public c(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 331
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method public d(Landroid/content/Context;)Landroid/view/View;
    .locals 3
    .parameter

    .prologue
    .line 137
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/etermax/k;->dashboard_free_game_item_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public d(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 304
    sget v0, Lcom/etermax/i;->divider:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 305
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public e(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 92
    const/4 v0, 0x0

    return-object v0
.end method

.method public e(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 309
    sget v0, Lcom/etermax/i;->divider:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 310
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/etermax/gamescommon/dashboard/a/c/a;->a:Lcom/etermax/gamescommon/dashboard/a/c/d;

    invoke-interface {v0}, Lcom/etermax/gamescommon/dashboard/a/c/d;->k()Z

    move-result v0

    return v0
.end method

.method public f(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 97
    const/4 v0, 0x0

    return-object v0
.end method

.method protected f()Lcom/etermax/gamescommon/dashboard/b;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/etermax/gamescommon/dashboard/a/c/a;->e:Lcom/etermax/gamescommon/dashboard/b;

    return-object v0
.end method

.method public f(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 314
    sget v0, Lcom/etermax/i;->divider:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 315
    return-void
.end method

.method protected g()J
    .locals 4

    .prologue
    .line 299
    iget-wide v0, p0, Lcom/etermax/gamescommon/dashboard/a/c/a;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/etermax/gamescommon/dashboard/a/c/a;->d:J

    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_0
.end method

.method public g(Landroid/content/Context;)Landroid/view/View;
    .locals 3
    .parameter

    .prologue
    .line 117
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/etermax/k;->dashboard_section_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public g(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 319
    sget v0, Lcom/etermax/i;->divider:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 320
    return-void
.end method

.method public h(Landroid/content/Context;)Landroid/view/View;
    .locals 3
    .parameter

    .prologue
    .line 122
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/etermax/k;->dashboard_item_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
