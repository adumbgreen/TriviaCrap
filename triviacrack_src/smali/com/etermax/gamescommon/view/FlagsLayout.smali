.class public Lcom/etermax/gamescommon/view/FlagsLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "DefaultLocale"
    }
.end annotation


# instance fields
.field a:Lcom/etermax/gamescommon/login/datasource/a;

.field b:Lcom/etermax/gamescommon/e;

.field protected c:Lcom/etermax/gamescommon/view/d;

.field protected d:Landroid/widget/ImageView;

.field protected e:Landroid/widget/TextView;

.field protected f:Landroid/widget/ViewSwitcher;

.field protected g:Landroid/view/View;

.field private h:Ljava/lang/String;

.field private i:Landroid/widget/ImageView;

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/etermax/gamescommon/view/a;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/etermax/gamescommon/view/a;",
            ">;"
        }
    .end annotation
.end field

.field private l:Landroid/content/Context;

.field private m:I

.field private n:Lcom/etermax/gamescommon/view/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 72
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    iput v2, p0, Lcom/etermax/gamescommon/view/FlagsLayout;->m:I

    .line 74
    sget-object v0, Lcom/etermax/q;->FlagsLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 75
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/etermax/gamescommon/view/FlagsLayout;->m:I

    .line 76
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 78
    invoke-direct {p0, p1}, Lcom/etermax/gamescommon/view/FlagsLayout;->a(Landroid/content/Context;)V

    .line 79
    return-void
.end method

.method static synthetic a(Lcom/etermax/gamescommon/view/FlagsLayout;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/etermax/gamescommon/view/FlagsLayout;->l:Landroid/content/Context;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/etermax/gamescommon/view/FlagsLayout;->l:Landroid/content/Context;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/etermax/gamescommon/view/FlagsLayout;->j:Ljava/util/List;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/etermax/gamescommon/view/FlagsLayout;->k:Ljava/util/List;

    .line 85
    return-void
.end method

.method static synthetic a(Lcom/etermax/gamescommon/view/FlagsLayout;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/etermax/gamescommon/view/FlagsLayout;->setSelectedLocale(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/etermax/gamescommon/view/a;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 209
    iget v0, p1, Lcom/etermax/gamescommon/view/a;->d:I

    if-eqz v0, :cond_1

    .line 210
    iget v0, p1, Lcom/etermax/gamescommon/view/a;->d:I

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/view/FlagsLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 211
    iget v1, p1, Lcom/etermax/gamescommon/view/a;->c:I

    if-eqz v1, :cond_0

    .line 212
    iget v1, p1, Lcom/etermax/gamescommon/view/a;->c:I

    invoke-virtual {p0, v1}, Lcom/etermax/gamescommon/view/FlagsLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 213
    iget v2, p1, Lcom/etermax/gamescommon/view/a;->e:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 215
    :cond_0
    iget v1, p1, Lcom/etermax/gamescommon/view/a;->b:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 216
    iget-object v1, p1, Lcom/etermax/gamescommon/view/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 217
    const/16 v1, 0xa5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 219
    if-eqz p2, :cond_1

    .line 220
    new-instance v1, Lcom/etermax/gamescommon/view/FlagsLayout$2;

    invoke-direct {v1, p0}, Lcom/etermax/gamescommon/view/FlagsLayout$2;-><init>(Lcom/etermax/gamescommon/view/FlagsLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    :cond_1
    return-void
.end method

.method private b(Ljava/lang/String;)Lcom/etermax/gamescommon/view/a;
    .locals 3
    .parameter

    .prologue
    .line 305
    iget-object v0, p0, Lcom/etermax/gamescommon/view/FlagsLayout;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/view/a;

    .line 306
    iget-object v2, v0, Lcom/etermax/gamescommon/view/a;->a:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 311
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/etermax/gamescommon/view/FlagsLayout;->j:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/view/a;

    goto :goto_0
.end method

.method static synthetic b(Lcom/etermax/gamescommon/view/FlagsLayout;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/etermax/gamescommon/view/FlagsLayout;->k:Ljava/util/List;

    return-object v0
.end method

.method private c()V
    .locals 4

    .prologue
    .line 233
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 234
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 235
    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 236
    sget-object v2, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    .line 237
    sget-object v3, Lcom/etermax/gamescommon/language/Language;->EN:Lcom/etermax/gamescommon/language/Language;

    invoke-virtual {v3}, Lcom/etermax/gamescommon/language/Language;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 238
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 239
    sget-object v0, Lcom/etermax/gamescommon/language/Language;->EN_UK:Lcom/etermax/gamescommon/language/Language;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/language/Language;->name()Ljava/lang/String;

    move-result-object v0

    .line 246
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/etermax/gamescommon/view/FlagsLayout;->b:Lcom/etermax/gamescommon/e;

    sget-object v2, Lcom/etermax/gamescommon/g;->k:Lcom/etermax/gamescommon/g;

    invoke-virtual {v1, v2, v0}, Lcom/etermax/gamescommon/e;->a(Lcom/etermax/gamescommon/g;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/etermax/gamescommon/view/FlagsLayout;->setSelectedLocale(Ljava/lang/String;)V

    .line 248
    return-void

    .line 241
    :cond_1
    sget-object v2, Lcom/etermax/gamescommon/language/Language;->PT:Lcom/etermax/gamescommon/language/Language;

    invoke-virtual {v2}, Lcom/etermax/gamescommon/language/Language;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 242
    const-string v2, "BR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 243
    sget-object v0, Lcom/etermax/gamescommon/language/Language;->PT_BR:Lcom/etermax/gamescommon/language/Language;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/language/Language;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic c(Lcom/etermax/gamescommon/view/FlagsLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/etermax/gamescommon/view/FlagsLayout;->d()V

    return-void
.end method

.method private d()V
    .locals 3

    .prologue
    .line 251
    iget-object v0, p0, Lcom/etermax/gamescommon/view/FlagsLayout;->b:Lcom/etermax/gamescommon/e;

    sget-object v1, Lcom/etermax/gamescommon/g;->k:Lcom/etermax/gamescommon/g;

    iget-object v2, p0, Lcom/etermax/gamescommon/view/FlagsLayout;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/etermax/gamescommon/e;->b(Lcom/etermax/gamescommon/g;Ljava/lang/String;)V

    .line 252
    return-void
.end method

.method private setSelectedLocale(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 272
    iget-object v0, p0, Lcom/etermax/gamescommon/view/FlagsLayout;->i:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/etermax/gamescommon/view/FlagsLayout;->i:Landroid/widget/ImageView;

    const/16 v1, 0xa5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/etermax/gamescommon/view/FlagsLayout;->h:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 278
    iget-object v0, p0, Lcom/etermax/gamescommon/view/FlagsLayout;->h:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/etermax/gamescommon/view/FlagsLayout;->b(Ljava/lang/String;)Lcom/etermax/gamescommon/view/a;

    move-result-object v0

    .line 282
    :goto_0
    iget v0, v0, Lcom/etermax/gamescommon/view/a;->f:I

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/view/FlagsLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 284
    iput-object p1, p0, Lcom/etermax/gamescommon/view/FlagsLayout;->h:Ljava/lang/String;

    .line 286
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/etermax/gamescommon/language/Language;->get(Ljava/lang/String;Z)Lcom/etermax/gamescommon/language/Language;

    move-result-object v0

    .line 288
    if-nez v0, :cond_2

    .line 289
    sget-object v0, Lcom/etermax/gamescommon/language/Language;->EN:Lcom/etermax/gamescommon/language/Language;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/language/Language;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/view/FlagsLayout;->h:Ljava/lang/String;

    .line 290
    sget v0, Lcom/etermax/i;->flag_01:I

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/view/FlagsLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/etermax/gamescommon/view/FlagsLayout;->i:Landroid/widget/ImageView;

    .line 301
    :goto_1
    iget-object v0, p0, Lcom/etermax/gamescommon/view/FlagsLayout;->i:Landroid/widget/ImageView;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 302
    return-void

    .line 280
    :cond_1
    invoke-direct {p0, p1}, Lcom/etermax/gamescommon/view/FlagsLayout;->b(Ljava/lang/String;)Lcom/etermax/gamescommon/view/a;

    move-result-object v0

    goto :goto_0

    .line 292
    :cond_2
    invoke-virtual {p0, p1}, Lcom/etermax/gamescommon/view/FlagsLayout;->a(Ljava/lang/String;)I

    move-result v0

    .line 293
    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 294
    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/view/FlagsLayout;->a(I)V

    goto :goto_1

    .line 296
    :cond_3
    invoke-direct {p0, p1}, Lcom/etermax/gamescommon/view/FlagsLayout;->b(Ljava/lang/String;)Lcom/etermax/gamescommon/view/a;

    move-result-object v0

    .line 297
    iget v0, v0, Lcom/etermax/gamescommon/view/a;->d:I

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/view/FlagsLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/etermax/gamescommon/view/FlagsLayout;->i:Landroid/widget/ImageView;

    goto :goto_1
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .locals 3
    .parameter

    .prologue
    .line 320
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/etermax/gamescommon/view/FlagsLayout;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 321
    iget-object v0, p0, Lcom/etermax/gamescommon/view/FlagsLayout;->k:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/view/a;

    .line 322
    iget-object v2, v0, Lcom/etermax/gamescommon/view/a;->a:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v0, v0, Lcom/etermax/gamescommon/view/a;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    :goto_1
    return v1

    .line 320
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 326
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public a()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/etermax/gamescommon/view/FlagsLayout;->g:Landroid/view/View;

    new-instance v1, Lcom/etermax/gamescommon/view/FlagsLayout$1;

    invoke-direct {v1, p0}, Lcom/etermax/gamescommon/view/FlagsLayout$1;-><init>(Lcom/etermax/gamescommon/view/FlagsLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    return-void
.end method

.method public a(I)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 330
    iget-object v0, p0, Lcom/etermax/gamescommon/view/FlagsLayout;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/view/a;

    .line 331
    iget-object v1, p0, Lcom/etermax/gamescommon/view/FlagsLayout;->j:Ljava/util/List;

    iget-object v2, p0, Lcom/etermax/gamescommon/view/FlagsLayout;->j:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/etermax/gamescommon/view/a;

    .line 333
    iget v2, v0, Lcom/etermax/gamescommon/view/a;->d:I

    iput v2, v1, Lcom/etermax/gamescommon/view/a;->d:I

    .line 334
    iput v4, v1, Lcom/etermax/gamescommon/view/a;->c:I

    .line 336
    sget v2, Lcom/etermax/i;->flag_03:I

    iput v2, v0, Lcom/etermax/gamescommon/view/a;->d:I

    .line 337
    sget v2, Lcom/etermax/i;->flag_name_03:I

    iput v2, v0, Lcom/etermax/gamescommon/view/a;->c:I

    .line 338
    sget v2, Lcom/etermax/i;->flag_tick_03:I

    iput v2, v0, Lcom/etermax/gamescommon/view/a;->f:I

    .line 340
    iget-object v2, p0, Lcom/etermax/gamescommon/view/FlagsLayout;->j:Ljava/util/List;

    iget-object v3, p0, Lcom/etermax/gamescommon/view/FlagsLayout;->j:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 341
    iget-object v2, p0, Lcom/etermax/gamescommon/view/FlagsLayout;->k:Ljava/util/List;

    invoke-interface {v2, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 343
    iget-object v1, p0, Lcom/etermax/gamescommon/view/FlagsLayout;->d:Landroid/widget/ImageView;

    iget v2, v0, Lcom/etermax/gamescommon/view/a;->b:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 344
    iget-object v1, p0, Lcom/etermax/gamescommon/view/FlagsLayout;->d:Landroid/widget/ImageView;

    iget-object v2, v0, Lcom/etermax/gamescommon/view/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 345
    iget-object v1, p0, Lcom/etermax/gamescommon/view/FlagsLayout;->e:Landroid/widget/TextView;

    iget v0, v0, Lcom/etermax/gamescommon/view/a;->e:I

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 347
    iget-object v0, p0, Lcom/etermax/gamescommon/view/FlagsLayout;->d:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/etermax/gamescommon/view/FlagsLayout;->setSelectedLocale(Ljava/lang/String;)V

    .line 348
    invoke-direct {p0}, Lcom/etermax/gamescommon/view/FlagsLayout;->d()V

    .line 350
    iget-object v0, p0, Lcom/etermax/gamescommon/view/FlagsLayout;->c:Lcom/etermax/gamescommon/view/d;

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/etermax/gamescommon/view/FlagsLayout;->c:Lcom/etermax/gamescommon/view/d;

    iget-object v1, p0, Lcom/etermax/gamescommon/view/FlagsLayout;->k:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/view/d;->a(Ljava/util/List;)V

    .line 352
    iget-object v0, p0, Lcom/etermax/gamescommon/view/FlagsLayout;->c:Lcom/etermax/gamescommon/view/d;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/view/d;->c()V

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/etermax/gamescommon/view/FlagsLayout;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/view/a;

    .line 356
    invoke-direct {p0, v0, v4}, Lcom/etermax/gamescommon/view/FlagsLayout;->a(Lcom/etermax/gamescommon/view/a;Z)V

    goto :goto_0

    .line 359
    :cond_1
    invoke-virtual {p0}, Lcom/etermax/gamescommon/view/FlagsLayout;->b()V

    .line 360
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 265
    iget-object v0, p0, Lcom/etermax/gamescommon/view/FlagsLayout;->h:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/etermax/gamescommon/view/FlagsLayout;->b(Ljava/lang/String;)Lcom/etermax/gamescommon/view/a;

    move-result-object v0

    .line 266
    iget-object v1, p0, Lcom/etermax/gamescommon/view/FlagsLayout;->n:Lcom/etermax/gamescommon/view/c;

    iget-object v2, v0, Lcom/etermax/gamescommon/view/a;->g:Lcom/etermax/gamescommon/language/Language;

    invoke-interface {v1, v2}, Lcom/etermax/gamescommon/view/c;->b(Lcom/etermax/gamescommon/language/Language;)V

    .line 267
    iget v0, v0, Lcom/etermax/gamescommon/view/a;->f:I

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/view/FlagsLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 269
    return-void
.end method

.method public getSelectedLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/etermax/gamescommon/view/FlagsLayout;->h:Ljava/lang/String;

    return-object v0
.end method

.method public setAvailableLanguages(Ljava/util/List;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/gamescommon/language/Language;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 116
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 120
    iget-object v0, p0, Lcom/etermax/gamescommon/view/FlagsLayout;->j:Ljava/util/List;

    new-instance v1, Lcom/etermax/gamescommon/view/a;

    sget v2, Lcom/etermax/i;->flag_01:I

    sget v4, Lcom/etermax/i;->flag_name_01:I

    sget v5, Lcom/etermax/i;->flag_tick_01:I

    invoke-direct {v1, v2, v4, v5}, Lcom/etermax/gamescommon/view/a;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    iget-object v0, p0, Lcom/etermax/gamescommon/view/FlagsLayout;->j:Ljava/util/List;

    new-instance v1, Lcom/etermax/gamescommon/view/a;

    sget v2, Lcom/etermax/i;->flag_02:I

    sget v4, Lcom/etermax/i;->flag_name_02:I

    sget v5, Lcom/etermax/i;->flag_tick_02:I

    invoke-direct {v1, v2, v4, v5}, Lcom/etermax/gamescommon/view/a;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    iget-object v0, p0, Lcom/etermax/gamescommon/view/FlagsLayout;->j:Ljava/util/List;

    new-instance v1, Lcom/etermax/gamescommon/view/a;

    sget v2, Lcom/etermax/i;->flag_03:I

    sget v4, Lcom/etermax/i;->flag_name_03:I

    sget v5, Lcom/etermax/i;->flag_tick_03:I

    invoke-direct {v1, v2, v4, v5}, Lcom/etermax/gamescommon/view/a;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/etermax/gamescommon/view/FlagsLayout;->f:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0, v6}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    .line 154
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/etermax/gamescommon/view/FlagsLayout;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v0, v1

    packed-switch v0, :pswitch_data_1

    .line 157
    iget-object v0, p0, Lcom/etermax/gamescommon/view/FlagsLayout;->k:Ljava/util/List;

    new-instance v1, Lcom/etermax/gamescommon/view/a;

    sget v2, Lcom/etermax/i;->flag_more_01:I

    invoke-direct {v1, v2, v3}, Lcom/etermax/gamescommon/view/a;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    iget-object v0, p0, Lcom/etermax/gamescommon/view/FlagsLayout;->k:Ljava/util/List;

    new-instance v1, Lcom/etermax/gamescommon/view/a;

    sget v2, Lcom/etermax/i;->flag_more_02:I

    invoke-direct {v1, v2, v3}, Lcom/etermax/gamescommon/view/a;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    iget-object v0, p0, Lcom/etermax/gamescommon/view/FlagsLayout;->k:Ljava/util/List;

    new-instance v1, Lcom/etermax/gamescommon/view/a;

    sget v2, Lcom/etermax/i;->flag_more_03:I

    invoke-direct {v1, v2, v3}, Lcom/etermax/gamescommon/view/a;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    iget-object v0, p0, Lcom/etermax/gamescommon/view/FlagsLayout;->k:Ljava/util/List;

    new-instance v1, Lcom/etermax/gamescommon/view/a;

    sget v2, Lcom/etermax/i;->flag_more_04:I

    invoke-direct {v1, v2, v3}, Lcom/etermax/gamescommon/view/a;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/etermax/gamescommon/view/FlagsLayout;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/etermax/gamescommon/view/FlagsLayout;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int v1, v0, v1

    move v0, v3

    .line 185
    :goto_2
    if-ge v0, v1, :cond_0

    .line 186
    iget-object v2, p0, Lcom/etermax/gamescommon/view/FlagsLayout;->k:Ljava/util/List;

    new-instance v4, Lcom/etermax/gamescommon/view/a;

    invoke-direct {v4, v3, v3}, Lcom/etermax/gamescommon/view/a;-><init>(II)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 127
    :pswitch_1
    iget-object v0, p0, Lcom/etermax/gamescommon/view/FlagsLayout;->j:Ljava/util/List;

    new-instance v1, Lcom/etermax/gamescommon/view/a;

    sget v2, Lcom/etermax/i;->flag_01:I

    sget v4, Lcom/etermax/i;->flag_name_01:I

    sget v5, Lcom/etermax/i;->flag_tick_01:I

    invoke-direct {v1, v2, v4, v5}, Lcom/etermax/gamescommon/view/a;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    iget-object v0, p0, Lcom/etermax/gamescommon/view/FlagsLayout;->j:Ljava/util/List;

    new-instance v1, Lcom/etermax/gamescommon/view/a;

    sget v2, Lcom/etermax/i;->flag_02:I

    sget v4, Lcom/etermax/i;->flag_name_02:I

    sget v5, Lcom/etermax/i;->flag_tick_02:I

    invoke-direct {v1, v2, v4, v5}, Lcom/etermax/gamescommon/view/a;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    iget-object v0, p0, Lcom/etermax/gamescommon/view/FlagsLayout;->j:Ljava/util/List;

    new-instance v1, Lcom/etermax/gamescommon/view/a;

    sget v2, Lcom/etermax/i;->flag_03:I

    sget v4, Lcom/etermax/i;->flag_name_03:I

    sget v5, Lcom/etermax/i;->flag_tick_03:I

    invoke-direct {v1, v2, v4, v5}, Lcom/etermax/gamescommon/view/a;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    iget-object v0, p0, Lcom/etermax/gamescommon/view/FlagsLayout;->j:Ljava/util/List;

    new-instance v1, Lcom/etermax/gamescommon/view/a;

    sget v2, Lcom/etermax/i;->flag_04:I

    sget v4, Lcom/etermax/i;->flag_name_04:I

    sget v5, Lcom/etermax/i;->flag_tick_04:I

    invoke-direct {v1, v2, v4, v5}, Lcom/etermax/gamescommon/view/a;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 135
    :pswitch_2
    iget-object v0, p0, Lcom/etermax/gamescommon/view/FlagsLayout;->j:Ljava/util/List;

    new-instance v1, Lcom/etermax/gamescommon/view/a;

    sget v2, Lcom/etermax/i;->flag_01:I

    sget v4, Lcom/etermax/i;->flag_name_01:I

    sget v5, Lcom/etermax/i;->flag_tick_01:I

    invoke-direct {v1, v2, v4, v5}, Lcom/etermax/gamescommon/view/a;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    iget-object v0, p0, Lcom/etermax/gamescommon/view/FlagsLayout;->j:Ljava/util/List;

    new-instance v1, Lcom/etermax/gamescommon/view/a;

    sget v2, Lcom/etermax/i;->flag_02:I

    sget v4, Lcom/etermax/i;->flag_name_02:I

    sget v5, Lcom/etermax/i;->flag_tick_02:I

    invoke-direct {v1, v2, v4, v5}, Lcom/etermax/gamescommon/view/a;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    iget-object v0, p0, Lcom/etermax/gamescommon/view/FlagsLayout;->j:Ljava/util/List;

    new-instance v1, Lcom/etermax/gamescommon/view/a;

    sget v2, Lcom/etermax/i;->flag_03:I

    sget v4, Lcom/etermax/i;->flag_name_03:I

    sget v5, Lcom/etermax/i;->flag_tick_03:I

    invoke-direct {v1, v2, v4, v5}, Lcom/etermax/gamescommon/view/a;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 142
    :pswitch_3
    iget-object v0, p0, Lcom/etermax/gamescommon/view/FlagsLayout;->j:Ljava/util/List;

    new-instance v1, Lcom/etermax/gamescommon/view/a;

    sget v2, Lcom/etermax/i;->flag_01:I

    sget v4, Lcom/etermax/i;->flag_name_01:I

    sget v5, Lcom/etermax/i;->flag_tick_01:I

    invoke-direct {v1, v2, v4, v5}, Lcom/etermax/gamescommon/view/a;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    iget-object v0, p0, Lcom/etermax/gamescommon/view/FlagsLayout;->j:Ljava/util/List;

    new-instance v1, Lcom/etermax/gamescommon/view/a;

    sget v2, Lcom/etermax/i;->flag_02:I

    sget v4, Lcom/etermax/i;->flag_name_02:I

    sget v5, Lcom/etermax/i;->flag_tick_02:I

    invoke-direct {v1, v2, v4, v5}, Lcom/etermax/gamescommon/view/a;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 148
    :pswitch_4
    iget-object v0, p0, Lcom/etermax/gamescommon/view/FlagsLayout;->j:Ljava/util/List;

    new-instance v1, Lcom/etermax/gamescommon/view/a;

    sget v2, Lcom/etermax/i;->flag_01:I

    sget v4, Lcom/etermax/i;->flag_name_01:I

    sget v5, Lcom/etermax/i;->flag_tick_01:I

    invoke-direct {v1, v2, v4, v5}, Lcom/etermax/gamescommon/view/a;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 164
    :pswitch_5
    iget-object v0, p0, Lcom/etermax/gamescommon/view/FlagsLayout;->k:Ljava/util/List;

    new-instance v1, Lcom/etermax/gamescommon/view/a;

    sget v2, Lcom/etermax/i;->flag_more_01:I

    invoke-direct {v1, v2, v3}, Lcom/etermax/gamescommon/view/a;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    iget-object v0, p0, Lcom/etermax/gamescommon/view/FlagsLayout;->k:Ljava/util/List;

    new-instance v1, Lcom/etermax/gamescommon/view/a;

    sget v2, Lcom/etermax/i;->flag_more_02:I

    invoke-direct {v1, v2, v3}, Lcom/etermax/gamescommon/view/a;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    iget-object v0, p0, Lcom/etermax/gamescommon/view/FlagsLayout;->k:Ljava/util/List;

    new-instance v1, Lcom/etermax/gamescommon/view/a;

    sget v2, Lcom/etermax/i;->flag_more_03:I

    invoke-direct {v1, v2, v3}, Lcom/etermax/gamescommon/view/a;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 170
    :pswitch_6
    iget-object v0, p0, Lcom/etermax/gamescommon/view/FlagsLayout;->k:Ljava/util/List;

    new-instance v1, Lcom/etermax/gamescommon/view/a;

    sget v2, Lcom/etermax/i;->flag_more_01:I

    invoke-direct {v1, v2, v3}, Lcom/etermax/gamescommon/view/a;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    iget-object v0, p0, Lcom/etermax/gamescommon/view/FlagsLayout;->k:Ljava/util/List;

    new-instance v1, Lcom/etermax/gamescommon/view/a;

    sget v2, Lcom/etermax/i;->flag_more_02:I

    invoke-direct {v1, v2, v3}, Lcom/etermax/gamescommon/view/a;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 175
    :pswitch_7
    iget-object v0, p0, Lcom/etermax/gamescommon/view/FlagsLayout;->k:Ljava/util/List;

    new-instance v1, Lcom/etermax/gamescommon/view/a;

    sget v2, Lcom/etermax/i;->flag_more_01:I

    invoke-direct {v1, v2, v3}, Lcom/etermax/gamescommon/view/a;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 179
    :pswitch_8
    iget-object v0, p0, Lcom/etermax/gamescommon/view/FlagsLayout;->f:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0, v3}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    goto/16 :goto_1

    :cond_0
    move v2, v3

    .line 190
    :goto_3
    iget-object v0, p0, Lcom/etermax/gamescommon/view/FlagsLayout;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 191
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 192
    iget-object v0, p0, Lcom/etermax/gamescommon/view/FlagsLayout;->j:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/view/a;

    iget-object v4, p0, Lcom/etermax/gamescommon/view/FlagsLayout;->l:Landroid/content/Context;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/etermax/gamescommon/language/Language;

    invoke-static {v1}, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->getByCode(Lcom/etermax/gamescommon/language/Language;)Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/etermax/gamescommon/view/a;->a(Landroid/content/Context;Lcom/etermax/gamescommon/language/LanguageResourceMapper;)V

    .line 193
    iget-object v0, p0, Lcom/etermax/gamescommon/view/FlagsLayout;->j:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/view/a;

    invoke-direct {p0, v0, v6}, Lcom/etermax/gamescommon/view/FlagsLayout;->a(Lcom/etermax/gamescommon/view/a;Z)V

    .line 190
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    :cond_2
    move v1, v2

    move v2, v3

    .line 197
    :goto_4
    iget-object v0, p0, Lcom/etermax/gamescommon/view/FlagsLayout;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_4

    .line 198
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 199
    iget-object v0, p0, Lcom/etermax/gamescommon/view/FlagsLayout;->k:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/view/a;

    iget-object v5, p0, Lcom/etermax/gamescommon/view/FlagsLayout;->l:Landroid/content/Context;

    add-int/lit8 v4, v1, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/etermax/gamescommon/language/Language;

    invoke-static {v1}, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->getByCode(Lcom/etermax/gamescommon/language/Language;)Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lcom/etermax/gamescommon/view/a;->a(Landroid/content/Context;Lcom/etermax/gamescommon/language/LanguageResourceMapper;)V

    .line 200
    iget-object v0, p0, Lcom/etermax/gamescommon/view/FlagsLayout;->k:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/view/a;

    invoke-direct {p0, v0, v3}, Lcom/etermax/gamescommon/view/FlagsLayout;->a(Lcom/etermax/gamescommon/view/a;Z)V

    move v1, v4

    .line 197
    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    .line 204
    :cond_4
    invoke-direct {p0}, Lcom/etermax/gamescommon/view/FlagsLayout;->c()V

    .line 205
    invoke-virtual {p0}, Lcom/etermax/gamescommon/view/FlagsLayout;->b()V

    .line 206
    return-void

    .line 116
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 154
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public setCallback(Lcom/etermax/gamescommon/view/c;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/etermax/gamescommon/view/FlagsLayout;->n:Lcom/etermax/gamescommon/view/c;

    .line 111
    return-void
.end method
