.class public Lcom/etermax/preguntados/ui/d/a;
.super Lcom/etermax/tools/navigation/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/navigation/b",
        "<",
        "Lcom/etermax/preguntados/ui/d/b;",
        ">;"
    }
.end annotation


# static fields
.field static i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field a:I

.field b:Lcom/etermax/preguntados/datasource/dto/GameDTO;

.field c:I

.field d:Lcom/etermax/preguntados/ui/d/i;

.field e:Lcom/etermax/preguntados/datasource/d;

.field f:Ljava/lang/String;

.field g:I

.field h:Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/etermax/preguntados/ui/d/a;->i:Ljava/util/Map;

    .line 54
    sget-object v0, Lcom/etermax/preguntados/ui/d/a;->i:Ljava/util/Map;

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;->EXTRA_TIME:Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;

    new-array v2, v7, [Ljava/lang/Integer;

    sget v3, Lcom/etermax/i;->power_up_button_extra_time:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    sget v3, Lcom/etermax/h;->pu_clock:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    sget v3, Lcom/etermax/h;->pu_clock_gray:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/etermax/preguntados/ui/d/a;->i:Ljava/util/Map;

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;->BOMB:Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;

    new-array v2, v8, [Ljava/lang/Integer;

    sget v3, Lcom/etermax/i;->power_up_button_bomb:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    sget v3, Lcom/etermax/h;->pu_bomb:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    sget v3, Lcom/etermax/h;->pu_bomb_gray:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    sget v3, Lcom/etermax/f;->red:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/etermax/preguntados/ui/d/a;->i:Ljava/util/Map;

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;->DOUBLE_CHANCE:Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;

    new-array v2, v8, [Ljava/lang/Integer;

    sget v3, Lcom/etermax/i;->power_up_button_double_chance:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    sget v3, Lcom/etermax/h;->pu_replay:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    sget v3, Lcom/etermax/h;->pu_replay_gray:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    sget v3, Lcom/etermax/f;->aqua:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/etermax/preguntados/ui/d/a;->i:Ljava/util/Map;

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;->SWAP_QUESTION:Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;

    new-array v2, v8, [Ljava/lang/Integer;

    sget v3, Lcom/etermax/i;->power_up_button_swap_question:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    sget v3, Lcom/etermax/h;->pu_next:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    sget v3, Lcom/etermax/h;->pu_next_gray:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    sget v3, Lcom/etermax/f;->violet:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/etermax/tools/navigation/b;-><init>()V

    .line 60
    return-void
.end method

.method private a(Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;)I
    .locals 3
    .parameter

    .prologue
    .line 178
    iget-object v0, p0, Lcom/etermax/preguntados/ui/d/a;->e:Lcom/etermax/preguntados/datasource/d;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/d;->s()Lcom/etermax/preguntados/datasource/dto/PreguntadosAppConfigDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/PreguntadosAppConfigDTO;->getPowerUps()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/PowerUpDTO;

    .line 179
    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/PowerUpDTO;->getName()Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 180
    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/PowerUpDTO;->getCost()I

    move-result v0

    .line 183
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(ILcom/etermax/preguntados/datasource/dto/GameDTO;I)Landroid/support/v4/app/Fragment;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 79
    invoke-static {}, Lcom/etermax/preguntados/ui/d/c;->h()Lcom/etermax/preguntados/ui/d/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/etermax/preguntados/ui/d/d;->b(I)Lcom/etermax/preguntados/ui/d/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/etermax/preguntados/ui/d/d;->a(Lcom/etermax/preguntados/datasource/dto/GameDTO;)Lcom/etermax/preguntados/ui/d/d;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/etermax/preguntados/ui/d/d;->a(I)Lcom/etermax/preguntados/ui/d/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/d/d;->a()Lcom/etermax/preguntados/ui/d/a;

    move-result-object v0

    .line 80
    return-object v0
.end method

.method private static a(Landroid/view/View;F)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 188
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p1, p1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 189
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 190
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 191
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 192
    return-void
.end method

.method private h()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x3f00

    .line 145
    sget-object v0, Lcom/etermax/preguntados/ui/d/a;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;

    .line 146
    sget-object v1, Lcom/etermax/preguntados/ui/d/a;->i:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 147
    invoke-direct {p0, v0}, Lcom/etermax/preguntados/ui/d/a;->a(Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;)I

    move-result v6

    .line 149
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/d/a;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/etermax/tools/widget/CustomLinearButton;

    .line 150
    sget v2, Lcom/etermax/i;->power_up_cost_textview:I

    invoke-virtual {v1, v2}, Lcom/etermax/tools/widget/CustomLinearButton;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 151
    sget v3, Lcom/etermax/i;->power_up_image:I

    invoke-virtual {v1, v3}, Lcom/etermax/tools/widget/CustomLinearButton;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 152
    sget v4, Lcom/etermax/i;->token:I

    invoke-virtual {v1, v4}, Lcom/etermax/tools/widget/CustomLinearButton;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 153
    invoke-virtual {v1, v8}, Lcom/etermax/tools/widget/CustomLinearButton;->setIs3D(Z)V

    .line 154
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v1, p0, Lcom/etermax/preguntados/ui/d/a;->h:Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    sget-object v1, Lcom/etermax/preguntados/ui/d/a;->i:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 159
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/d/a;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "arrow_start_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/etermax/preguntados/ui/d/a;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/d/a;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 160
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/d/a;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 162
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 163
    const/high16 v2, -0x3cf9

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 164
    sget-object v2, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 165
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 166
    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 169
    :cond_0
    sget-object v1, Lcom/etermax/preguntados/ui/d/a;->i:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 170
    invoke-static {v3, v7}, Lcom/etermax/preguntados/ui/d/a;->a(Landroid/view/View;F)V

    .line 171
    invoke-static {v4, v7}, Lcom/etermax/preguntados/ui/d/a;->a(Landroid/view/View;F)V

    .line 172
    invoke-static {v2, v7}, Lcom/etermax/preguntados/ui/d/a;->a(Landroid/view/View;F)V

    goto/16 :goto_0

    .line 175
    :cond_1
    return-void
.end method


# virtual methods
.method public a()Lcom/etermax/preguntados/ui/d/b;
    .locals 1

    .prologue
    .line 67
    new-instance v0, Lcom/etermax/preguntados/ui/d/a$1;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/ui/d/a$1;-><init>(Lcom/etermax/preguntados/ui/d/a;)V

    return-object v0
.end method

.method public b()V
    .locals 4

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/d/a;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->tip_textview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/d/a;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/etermax/o;->tip:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/d/a;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/etermax/o;->powerups_help_title:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x4059

    mul-double/2addr v0, v2

    double-to-int v0, v0

    rem-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/etermax/preguntados/ui/d/a;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 127
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/d/a;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "drawable"

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/d/a;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 128
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/d/a;->getView()Landroid/view/View;

    move-result-object v0

    sget v2, Lcom/etermax/i;->category_character_container:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "trivia_powerup_0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/etermax/preguntados/ui/d/a;->c:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/d/a;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "string"

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/d/a;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 132
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/d/a;->getView()Landroid/view/View;

    move-result-object v0

    sget v2, Lcom/etermax/i;->tip_title_textview:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 133
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/d/a;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/etermax/preguntados/ui/d/a;->g:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 134
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "trivia_powerup_0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/etermax/preguntados/ui/d/a;->c:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_txt_sm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 137
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/d/a;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "string"

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/d/a;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 138
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/d/a;->getView()Landroid/view/View;

    move-result-object v0

    sget v2, Lcom/etermax/i;->tip_subtitle_textview:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 139
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 141
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/d/a;->h()V

    .line 142
    return-void
.end method

.method c()V
    .locals 3

    .prologue
    .line 196
    iget v0, p0, Lcom/etermax/preguntados/ui/d/a;->a:I

    packed-switch v0, :pswitch_data_0

    .line 204
    :goto_0
    return-void

    .line 198
    :pswitch_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/d/a;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/preguntados/ui/d/b;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/d/a;->b:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    iget-object v2, p0, Lcom/etermax/preguntados/ui/d/a;->h:Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;

    invoke-interface {v0, v1, v2}, Lcom/etermax/preguntados/ui/d/b;->a(Lcom/etermax/preguntados/datasource/dto/GameDTO;Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;)V

    goto :goto_0

    .line 201
    :pswitch_1
    iget-object v0, p0, Lcom/etermax/preguntados/ui/d/a;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/preguntados/ui/d/b;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/d/a;->b:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    iget-object v2, p0, Lcom/etermax/preguntados/ui/d/a;->h:Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;

    invoke-interface {v0, v1, v2}, Lcom/etermax/preguntados/ui/d/b;->b(Lcom/etermax/preguntados/datasource/dto/GameDTO;Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;)V

    goto :goto_0

    .line 196
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method d()V
    .locals 0

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/d/a;->c()V

    .line 209
    return-void
.end method

.method e()V
    .locals 0

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/d/a;->c()V

    .line 214
    return-void
.end method

.method f()V
    .locals 0

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/d/a;->c()V

    .line 219
    return-void
.end method

.method g()V
    .locals 0

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/d/a;->c()V

    .line 224
    return-void
.end method

.method public synthetic getDummyCallbacks()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/d/a;->a()Lcom/etermax/preguntados/ui/d/b;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 85
    const-string v0, "PREGUNTADOS(onCreateView)"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTipType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/etermax/preguntados/ui/d/a;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget v0, p0, Lcom/etermax/preguntados/ui/d/a;->c:I

    packed-switch v0, :pswitch_data_0

    .line 112
    const-string v0, "power_ups_time_"

    iput-object v0, p0, Lcom/etermax/preguntados/ui/d/a;->f:Ljava/lang/String;

    .line 113
    iget-object v0, p0, Lcom/etermax/preguntados/ui/d/a;->d:Lcom/etermax/preguntados/ui/d/i;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/d/a;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/etermax/preguntados/ui/d/i;->a(Landroid/content/Context;I)V

    .line 114
    sget-object v0, Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;->EXTRA_TIME:Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/d/a;->h:Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;

    .line 115
    sget v0, Lcom/etermax/f;->tip_time:I

    iput v0, p0, Lcom/etermax/preguntados/ui/d/a;->g:I

    .line 118
    :goto_0
    sget v0, Lcom/etermax/k;->tip_fragment_layout:I

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 88
    :pswitch_0
    const-string v0, "power_ups_bomb_"

    iput-object v0, p0, Lcom/etermax/preguntados/ui/d/a;->f:Ljava/lang/String;

    .line 89
    iget-object v0, p0, Lcom/etermax/preguntados/ui/d/a;->d:Lcom/etermax/preguntados/ui/d/i;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/d/a;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/etermax/preguntados/ui/d/i;->a(Landroid/content/Context;I)V

    .line 90
    sget-object v0, Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;->BOMB:Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/d/a;->h:Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;

    .line 91
    sget v0, Lcom/etermax/f;->tip_bomb:I

    iput v0, p0, Lcom/etermax/preguntados/ui/d/a;->g:I

    goto :goto_0

    .line 94
    :pswitch_1
    const-string v0, "power_ups_time_"

    iput-object v0, p0, Lcom/etermax/preguntados/ui/d/a;->f:Ljava/lang/String;

    .line 95
    iget-object v0, p0, Lcom/etermax/preguntados/ui/d/a;->d:Lcom/etermax/preguntados/ui/d/i;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/d/a;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/etermax/preguntados/ui/d/i;->a(Landroid/content/Context;I)V

    .line 96
    sget-object v0, Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;->EXTRA_TIME:Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/d/a;->h:Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;

    .line 97
    sget v0, Lcom/etermax/f;->tip_time:I

    iput v0, p0, Lcom/etermax/preguntados/ui/d/a;->g:I

    goto :goto_0

    .line 100
    :pswitch_2
    const-string v0, "power_ups_double_"

    iput-object v0, p0, Lcom/etermax/preguntados/ui/d/a;->f:Ljava/lang/String;

    .line 101
    iget-object v0, p0, Lcom/etermax/preguntados/ui/d/a;->d:Lcom/etermax/preguntados/ui/d/i;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/d/a;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/etermax/preguntados/ui/d/i;->a(Landroid/content/Context;I)V

    .line 102
    sget-object v0, Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;->DOUBLE_CHANCE:Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/d/a;->h:Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;

    .line 103
    sget v0, Lcom/etermax/f;->tip_double:I

    iput v0, p0, Lcom/etermax/preguntados/ui/d/a;->g:I

    goto :goto_0

    .line 106
    :pswitch_3
    const-string v0, "power_ups_pass_"

    iput-object v0, p0, Lcom/etermax/preguntados/ui/d/a;->f:Ljava/lang/String;

    .line 107
    iget-object v0, p0, Lcom/etermax/preguntados/ui/d/a;->d:Lcom/etermax/preguntados/ui/d/i;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/d/a;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/etermax/preguntados/ui/d/i;->a(Landroid/content/Context;I)V

    .line 108
    sget-object v0, Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;->SWAP_QUESTION:Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/d/a;->h:Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;

    .line 109
    sget v0, Lcom/etermax/f;->tip_pass:I

    iput v0, p0, Lcom/etermax/preguntados/ui/d/a;->g:I

    goto :goto_0

    .line 86
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
