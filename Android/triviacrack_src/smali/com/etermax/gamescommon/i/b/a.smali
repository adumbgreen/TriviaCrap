.class public Lcom/etermax/gamescommon/i/b/a;
.super Lcom/etermax/tools/navigation/b;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/tools/widget/b/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/navigation/b",
        "<",
        "Lcom/etermax/gamescommon/i/b/b;",
        ">;",
        "Lcom/etermax/tools/widget/b/b;"
    }
.end annotation


# instance fields
.field private A:Landroid/widget/LinearLayout;

.field private B:Landroid/widget/RelativeLayout;

.field private C:Landroid/widget/ImageView;

.field private D:Z

.field private E:Z

.field private F:Landroid/widget/TableRow;

.field private G:Landroid/widget/TableRow;

.field private H:Landroid/widget/TableRow;

.field private I:Lcom/etermax/tools/widget/CustomFontTextView;

.field private J:Landroid/view/View$OnClickListener;

.field a:Lcom/etermax/tools/b/a;

.field b:Lcom/etermax/gamescommon/login/datasource/a;

.field c:Lcom/etermax/gamescommon/login/datasource/c;

.field d:Lcom/etermax/tools/f/a;

.field e:Lcom/etermax/gamescommon/i/a/c;

.field f:Lcom/etermax/gamescommon/login/datasource/a;

.field g:Ljava/util/Date;

.field h:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;

.field i:Lcom/etermax/tools/nationality/Nationality;

.field j:Z

.field k:Landroid/view/View$OnClickListener;

.field private l:Landroid/widget/EditText;

.field private m:Landroid/widget/EditText;

.field private n:Landroid/widget/EditText;

.field private o:Landroid/widget/EditText;

.field private p:Landroid/widget/Spinner;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/ImageView;

.field private t:Landroid/widget/ImageView;

.field private u:Landroid/graphics/drawable/BitmapDrawable;

.field private v:Landroid/view/View;

.field private w:Landroid/widget/Button;

.field private x:Landroid/widget/TextView;

.field private y:Landroid/widget/TextView;

.field private z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/etermax/tools/navigation/b;-><init>()V

    .line 182
    new-instance v0, Lcom/etermax/gamescommon/i/b/a$1;

    invoke-direct {v0, p0}, Lcom/etermax/gamescommon/i/b/a$1;-><init>(Lcom/etermax/gamescommon/i/b/a;)V

    iput-object v0, p0, Lcom/etermax/gamescommon/i/b/a;->J:Landroid/view/View$OnClickListener;

    .line 267
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/etermax/gamescommon/i/b/a;->j:Z

    .line 378
    new-instance v0, Lcom/etermax/gamescommon/i/b/a$11;

    invoke-direct {v0, p0}, Lcom/etermax/gamescommon/i/b/a$11;-><init>(Lcom/etermax/gamescommon/i/b/a;)V

    iput-object v0, p0, Lcom/etermax/gamescommon/i/b/a;->k:Landroid/view/View$OnClickListener;

    .line 701
    return-void
.end method

.method public static a(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 679
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 680
    new-instance v1, Landroid/graphics/BlurMaskFilter;

    sget-object v2, Landroid/graphics/BlurMaskFilter$Blur;->OUTER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v1, p1, v2}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 681
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 682
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 683
    return-object p0
.end method

.method static synthetic a(Lcom/etermax/gamescommon/i/b/a;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/etermax/gamescommon/i/b/a;->u:Landroid/graphics/drawable/BitmapDrawable;

    return-object p1
.end method

.method public static a()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 119
    new-instance v0, Lcom/etermax/gamescommon/i/b/f;

    invoke-direct {v0}, Lcom/etermax/gamescommon/i/b/f;-><init>()V

    return-object v0
.end method

.method static synthetic a(Lcom/etermax/gamescommon/i/b/a;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a;->mCallbacks:Ljava/lang/Object;

    return-object v0
.end method

.method private a(Landroid/widget/EditText;)V
    .locals 1
    .parameter

    .prologue
    .line 411
    new-instance v0, Lcom/etermax/gamescommon/i/b/a$12;

    invoke-direct {v0, p0}, Lcom/etermax/gamescommon/i/b/a$12;-><init>(Lcom/etermax/gamescommon/i/b/a;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 426
    return-void
.end method

.method private a(Lcom/etermax/gamescommon/b/av;)V
    .locals 1
    .parameter

    .prologue
    .line 659
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a;->d:Lcom/etermax/tools/f/a;

    if-eqz v0, :cond_0

    .line 660
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a;->d:Lcom/etermax/tools/f/a;

    invoke-virtual {v0, p1}, Lcom/etermax/tools/f/a;->a(Lcom/etermax/tools/f/a/a;)V

    .line 662
    :cond_0
    return-void
.end method

.method private a(Lcom/etermax/gamescommon/b/c;)V
    .locals 1
    .parameter

    .prologue
    .line 665
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a;->d:Lcom/etermax/tools/f/a;

    if-eqz v0, :cond_0

    .line 666
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a;->d:Lcom/etermax/tools/f/a;

    invoke-virtual {v0, p1}, Lcom/etermax/tools/f/a;->a(Lcom/etermax/tools/f/a/a;)V

    .line 668
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/etermax/gamescommon/i/b/a;Lcom/etermax/gamescommon/b/av;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/etermax/gamescommon/i/b/a;->a(Lcom/etermax/gamescommon/b/av;)V

    return-void
.end method

.method static synthetic a(Lcom/etermax/gamescommon/i/b/a;Lcom/etermax/gamescommon/b/c;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/etermax/gamescommon/i/b/a;->a(Lcom/etermax/gamescommon/b/c;)V

    return-void
.end method

.method static synthetic a(Lcom/etermax/gamescommon/i/b/a;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/etermax/gamescommon/i/b/a;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 543
    invoke-virtual {p0}, Lcom/etermax/gamescommon/i/b/a;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/etermax/o;->loading:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 544
    new-instance v1, Lcom/etermax/gamescommon/i/b/a$3;

    invoke-direct {v1, p0, v0, p1}, Lcom/etermax/gamescommon/i/b/a$3;-><init>(Lcom/etermax/gamescommon/i/b/a;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lcom/etermax/gamescommon/i/b/a$3;->a(Ljava/lang/Object;)Z

    .line 565
    return-void
.end method

.method static synthetic a(Lcom/etermax/gamescommon/i/b/a;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/etermax/gamescommon/i/b/a;->E:Z

    return p1
.end method

.method private b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 671
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a;->d:Lcom/etermax/tools/f/a;

    if-eqz v0, :cond_0

    .line 672
    new-instance v0, Lcom/etermax/gamescommon/b/x;

    invoke-direct {v0}, Lcom/etermax/gamescommon/b/x;-><init>()V

    .line 673
    invoke-virtual {v0, p1}, Lcom/etermax/gamescommon/b/x;->a(Ljava/lang/String;)V

    .line 674
    iget-object v1, p0, Lcom/etermax/gamescommon/i/b/a;->d:Lcom/etermax/tools/f/a;

    invoke-virtual {v1, v0}, Lcom/etermax/tools/f/a;->a(Lcom/etermax/tools/f/a/a;)V

    .line 676
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/etermax/gamescommon/i/b/a;)Z
    .locals 1
    .parameter

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/etermax/gamescommon/i/b/a;->n()Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/etermax/gamescommon/i/b/a;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/etermax/gamescommon/i/b/a;->D:Z

    return p1
.end method

.method static synthetic c(Lcom/etermax/gamescommon/i/b/a;)V
    .locals 0
    .parameter

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/etermax/gamescommon/i/b/a;->p()V

    return-void
.end method

.method static synthetic d(Lcom/etermax/gamescommon/i/b/a;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a;->mCallbacks:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic e(Lcom/etermax/gamescommon/i/b/a;)V
    .locals 0
    .parameter

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/etermax/gamescommon/i/b/a;->q()V

    return-void
.end method

.method static synthetic f(Lcom/etermax/gamescommon/i/b/a;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a;->u:Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method static synthetic g(Lcom/etermax/gamescommon/i/b/a;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a;->s:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic h(Lcom/etermax/gamescommon/i/b/a;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a;->t:Landroid/widget/ImageView;

    return-object v0
.end method

.method private h()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 164
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a;->y:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 165
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a;->B:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 166
    return-void
.end method

.method static synthetic i(Lcom/etermax/gamescommon/i/b/a;)Landroid/widget/Spinner;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a;->p:Landroid/widget/Spinner;

    return-object v0
.end method

.method private i()V
    .locals 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a;->h:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a;->p:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a;->p:Landroid/widget/Spinner;

    new-instance v1, Lcom/etermax/gamescommon/i/b/a$8;

    invoke-direct {v1, p0}, Lcom/etermax/gamescommon/i/b/a$8;-><init>(Lcom/etermax/gamescommon/i/b/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 289
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a;->F:Landroid/widget/TableRow;

    new-instance v1, Lcom/etermax/gamescommon/i/b/a$9;

    invoke-direct {v1, p0}, Lcom/etermax/gamescommon/i/b/a$9;-><init>(Lcom/etermax/gamescommon/i/b/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/TableRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 304
    return-void
.end method

.method static synthetic j(Lcom/etermax/gamescommon/i/b/a;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a;->v:Landroid/view/View;

    return-object v0
.end method

.method private j()V
    .locals 8

    .prologue
    .line 307
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 308
    invoke-static {}, Lcom/etermax/tools/nationality/Nationality;->values()[Lcom/etermax/tools/nationality/Nationality;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 310
    :try_start_0
    new-instance v5, Lcom/etermax/gamescommon/i/b/c;

    invoke-virtual {p0}, Lcom/etermax/gamescommon/i/b/a;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v4}, Lcom/etermax/tools/nationality/NationalityManager;->getName(Landroid/content/Context;Lcom/etermax/tools/nationality/Nationality;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p0, v4, v6}, Lcom/etermax/gamescommon/i/b/c;-><init>(Lcom/etermax/gamescommon/i/b/a;Lcom/etermax/tools/nationality/Nationality;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 311
    :catch_0
    move-exception v5

    .line 312
    const-string v5, "NATIONALITY"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception loading country name for iso code "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/etermax/tools/nationality/Nationality;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/etermax/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a;->H:Landroid/widget/TableRow;

    new-instance v2, Lcom/etermax/gamescommon/i/b/a$10;

    invoke-direct {v2, p0, v1}, Lcom/etermax/gamescommon/i/b/a$10;-><init>(Lcom/etermax/gamescommon/i/b/a;Ljava/util/List;)V

    invoke-virtual {v0, v2}, Landroid/widget/TableRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 335
    return-void
.end method

.method static synthetic k(Lcom/etermax/gamescommon/i/b/a;)Lcom/etermax/tools/widget/CustomFontTextView;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a;->I:Lcom/etermax/tools/widget/CustomFontTextView;

    return-object v0
.end method

.method private k()V
    .locals 2

    .prologue
    .line 338
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a;->f:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/a;->n()Lcom/etermax/tools/nationality/Nationality;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/i/b/a;->i:Lcom/etermax/tools/nationality/Nationality;

    .line 339
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a;->i:Lcom/etermax/tools/nationality/Nationality;

    if-eqz v0, :cond_0

    .line 340
    invoke-virtual {p0}, Lcom/etermax/gamescommon/i/b/a;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/gamescommon/i/b/a;->i:Lcom/etermax/tools/nationality/Nationality;

    invoke-static {v0, v1}, Lcom/etermax/tools/nationality/NationalityManager;->getNameResource(Landroid/content/Context;Lcom/etermax/tools/nationality/Nationality;)I

    move-result v0

    .line 341
    if-lez v0, :cond_0

    .line 342
    iget-object v1, p0, Lcom/etermax/gamescommon/i/b/a;->r:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 345
    :cond_0
    return-void
.end method

.method static synthetic l(Lcom/etermax/gamescommon/i/b/a;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a;->r:Landroid/widget/TextView;

    return-object v0
.end method

.method private l()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 349
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a;->b:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/a;->o()Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/i/b/a;->h:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;

    .line 350
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a;->h:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;

    sget-object v1, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;->MALE:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;

    if-ne v0, v1, :cond_0

    .line 351
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a;->p:Landroid/widget/Spinner;

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 352
    iget-object v1, p0, Lcom/etermax/gamescommon/i/b/a;->p:Landroid/widget/Spinner;

    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a;->p:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    new-instance v2, Lcom/etermax/gamescommon/i/b/d;

    sget-object v3, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;->MALE:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;

    invoke-direct {v2, p0, v3}, Lcom/etermax/gamescommon/i/b/d;-><init>(Lcom/etermax/gamescommon/i/b/a;Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;)V

    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 353
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a;->I:Lcom/etermax/tools/widget/CustomFontTextView;

    invoke-virtual {v0, v5}, Lcom/etermax/tools/widget/CustomFontTextView;->setVisibility(I)V

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a;->h:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;

    sget-object v1, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;->FEMALE:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;

    if-ne v0, v1, :cond_1

    .line 356
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a;->p:Landroid/widget/Spinner;

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 357
    iget-object v1, p0, Lcom/etermax/gamescommon/i/b/a;->p:Landroid/widget/Spinner;

    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a;->p:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    new-instance v2, Lcom/etermax/gamescommon/i/b/d;

    sget-object v3, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;->FEMALE:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;

    invoke-direct {v2, p0, v3}, Lcom/etermax/gamescommon/i/b/d;-><init>(Lcom/etermax/gamescommon/i/b/a;Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;)V

    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 358
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a;->I:Lcom/etermax/tools/widget/CustomFontTextView;

    invoke-virtual {v0, v5}, Lcom/etermax/tools/widget/CustomFontTextView;->setVisibility(I)V

    .line 360
    :cond_1
    return-void
.end method

.method static synthetic m(Lcom/etermax/gamescommon/i/b/a;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a;->q:Landroid/widget/TextView;

    return-object v0
.end method

.method private m()V
    .locals 2

    .prologue
    .line 364
    :try_start_0
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a;->b:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/a;->p()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/i/b/a;->g:Ljava/util/Date;

    .line 365
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/text/SimpleDateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/gamescommon/i/b/a;->g:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 366
    iget-object v1, p0, Lcom/etermax/gamescommon/i/b/a;->q:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    :goto_0
    return-void

    .line 367
    :catch_0
    move-exception v0

    .line 368
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a;->q:Landroid/widget/TextView;

    const-string v1, "..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic n(Lcom/etermax/gamescommon/i/b/a;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a;->mCallbacks:Ljava/lang/Object;

    return-object v0
.end method

.method private n()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/high16 v5, -0x100

    .line 429
    .line 430
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a;->n:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a;->n:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x6

    if-ge v0, v2, :cond_5

    .line 431
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a;->n:Landroid/widget/EditText;

    sget v2, Lcom/etermax/o;->error_password_length:I

    invoke-virtual {p0, v2}, Lcom/etermax/gamescommon/i/b/a;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v5}, Lcom/etermax/a/b;->a(Landroid/widget/EditText;Ljava/lang/String;I)V

    move v0, v1

    .line 437
    :goto_0
    iget-object v2, p0, Lcom/etermax/gamescommon/i/b/a;->l:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 438
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 439
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a;->l:Landroid/widget/EditText;

    sget v3, Lcom/etermax/o;->error_username_required:I

    invoke-virtual {p0, v3}, Lcom/etermax/gamescommon/i/b/a;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v5}, Lcom/etermax/a/b;->a(Landroid/widget/EditText;Ljava/lang/String;I)V

    move v0, v1

    .line 442
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x3

    if-lt v3, v4, :cond_1

    iget-object v3, p0, Lcom/etermax/gamescommon/i/b/a;->l:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x28

    if-le v3, v4, :cond_2

    .line 443
    :cond_1
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a;->l:Landroid/widget/EditText;

    sget v3, Lcom/etermax/o;->error_invalid_username_length:I

    invoke-virtual {p0, v3}, Lcom/etermax/gamescommon/i/b/a;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v5}, Lcom/etermax/a/b;->a(Landroid/widget/EditText;Ljava/lang/String;I)V

    move v0, v1

    .line 446
    :cond_2
    invoke-static {v2}, Lcom/etermax/a/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 447
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a;->l:Landroid/widget/EditText;

    sget v2, Lcom/etermax/o;->error_invalid_username_format:I

    invoke-virtual {p0, v2}, Lcom/etermax/gamescommon/i/b/a;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v5}, Lcom/etermax/a/b;->a(Landroid/widget/EditText;Ljava/lang/String;I)V

    move v0, v1

    .line 450
    :cond_3
    iget-object v2, p0, Lcom/etermax/gamescommon/i/b/a;->m:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 451
    iget-object v3, p0, Lcom/etermax/gamescommon/i/b/a;->b:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v3}, Lcom/etermax/gamescommon/login/datasource/a;->r()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    .line 452
    invoke-static {v2}, Lcom/etermax/a/b;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 453
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a;->m:Landroid/widget/EditText;

    sget v2, Lcom/etermax/o;->error_invalid_email:I

    invoke-virtual {p0, v2}, Lcom/etermax/gamescommon/i/b/a;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v5}, Lcom/etermax/a/b;->a(Landroid/widget/EditText;Ljava/lang/String;I)V

    move v0, v1

    .line 457
    :cond_4
    return v0

    .line 432
    :cond_5
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a;->n:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/etermax/gamescommon/i/b/a;->o:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 433
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a;->o:Landroid/widget/EditText;

    sget v2, Lcom/etermax/o;->error_passwords_not_match:I

    invoke-virtual {p0, v2}, Lcom/etermax/gamescommon/i/b/a;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v5}, Lcom/etermax/a/b;->a(Landroid/widget/EditText;Ljava/lang/String;I)V

    move v0, v1

    goto/16 :goto_0

    .line 435
    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private o()V
    .locals 2

    .prologue
    .line 461
    new-instance v0, Lcom/etermax/gamescommon/i/b/a$13;

    sget v1, Lcom/etermax/o;->loading:I

    invoke-virtual {p0, v1}, Lcom/etermax/gamescommon/i/b/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/etermax/gamescommon/i/b/a$13;-><init>(Lcom/etermax/gamescommon/i/b/a;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/etermax/gamescommon/i/b/a$13;->a(Ljava/lang/Object;)Z

    .line 478
    return-void
.end method

.method static synthetic o(Lcom/etermax/gamescommon/i/b/a;)V
    .locals 0
    .parameter

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/etermax/gamescommon/i/b/a;->h()V

    return-void
.end method

.method static synthetic p(Lcom/etermax/gamescommon/i/b/a;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a;->l:Landroid/widget/EditText;

    return-object v0
.end method

.method private p()V
    .locals 2

    .prologue
    .line 481
    invoke-virtual {p0}, Lcom/etermax/gamescommon/i/b/a;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/etermax/o;->loading:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 482
    new-instance v1, Lcom/etermax/gamescommon/i/b/a$2;

    invoke-direct {v1, p0, v0}, Lcom/etermax/gamescommon/i/b/a$2;-><init>(Lcom/etermax/gamescommon/i/b/a;Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lcom/etermax/gamescommon/i/b/a$2;->a(Ljava/lang/Object;)Z

    .line 540
    return-void
.end method

.method static synthetic q(Lcom/etermax/gamescommon/i/b/a;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a;->n:Landroid/widget/EditText;

    return-object v0
.end method

.method private q()V
    .locals 4

    .prologue
    .line 568
    sget v0, Lcom/etermax/o;->unlink:I

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/i/b/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/etermax/o;->dialog_fb_unlink:I

    invoke-virtual {p0, v1}, Lcom/etermax/gamescommon/i/b/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/etermax/o;->yes:I

    invoke-virtual {p0, v2}, Lcom/etermax/gamescommon/i/b/a;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/etermax/o;->no:I

    invoke-virtual {p0, v3}, Lcom/etermax/gamescommon/i/b/a;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/etermax/tools/widget/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/etermax/tools/widget/b/a;

    move-result-object v0

    .line 570
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/etermax/tools/widget/b/a;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 571
    invoke-virtual {p0}, Lcom/etermax/gamescommon/i/b/a;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "unlink_facebook_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/etermax/tools/widget/b/a;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 572
    return-void
.end method

.method static synthetic r(Lcom/etermax/gamescommon/i/b/a;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a;->m:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic s(Lcom/etermax/gamescommon/i/b/a;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a;->mCallbacks:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic t(Lcom/etermax/gamescommon/i/b/a;)Z
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/etermax/gamescommon/i/b/a;->D:Z

    return v0
.end method

.method static synthetic u(Lcom/etermax/gamescommon/i/b/a;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a;->mCallbacks:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic v(Lcom/etermax/gamescommon/i/b/a;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a;->mCallbacks:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic w(Lcom/etermax/gamescommon/i/b/a;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a;->mCallbacks:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 586
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/gamescommon/i/b/b;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/etermax/gamescommon/i/b/b;->a(I)V

    .line 587
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 170
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a;->f:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/a;->j()Ljava/lang/String;

    move-result-object v1

    .line 171
    if-eqz v1, :cond_0

    .line 172
    invoke-virtual {p0}, Lcom/etermax/gamescommon/i/b/a;->getView()Landroid/view/View;

    move-result-object v0

    sget v2, Lcom/etermax/i;->facebook_image:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/etermax/gamescommon/i/b/a;->C:Landroid/widget/ImageView;

    .line 173
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a;->C:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    invoke-static {v1, v0}, Lcom/etermax/gamescommon/user/c;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 174
    invoke-virtual {p0}, Lcom/etermax/gamescommon/i/b/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/b/a/aa;->a(Landroid/content/Context;)Lcom/b/a/aa;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/b/a/aa;->a(Ljava/lang/String;)Lcom/b/a/ak;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/ak;->b()Lcom/b/a/ak;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/gamescommon/i/b/a;->C:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/b/a/ak;->a(Landroid/widget/ImageView;)V

    .line 176
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a;->z:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/etermax/gamescommon/i/b/a;->f:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/login/datasource/a;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    :goto_0
    return-void

    .line 178
    :cond_0
    invoke-direct {p0}, Lcom/etermax/gamescommon/i/b/a;->h()V

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 193
    iget-boolean v0, p0, Lcom/etermax/gamescommon/i/b/a;->E:Z

    return v0
.end method

.method d()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 199
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a;->l:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/etermax/gamescommon/i/b/a;->b:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/login/datasource/a;->g()Ljava/lang/String;

    move-result-object v1

    const-string v2, "@"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 200
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a;->m:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/etermax/gamescommon/i/b/a;->b:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/login/datasource/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 201
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a;->w:Landroid/widget/Button;

    new-instance v1, Lcom/etermax/gamescommon/i/b/a$6;

    invoke-direct {v1, p0}, Lcom/etermax/gamescommon/i/b/a$6;-><init>(Lcom/etermax/gamescommon/i/b/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a;->v:Landroid/view/View;

    iget-object v1, p0, Lcom/etermax/gamescommon/i/b/a;->J:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a;->v:Landroid/view/View;

    new-instance v1, Lcom/etermax/gamescommon/i/b/a$7;

    invoke-direct {v1, p0}, Lcom/etermax/gamescommon/i/b/a$7;-><init>(Lcom/etermax/gamescommon/i/b/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 237
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a;->b:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/a;->j()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 238
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a;->w:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 239
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a;->y:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 244
    :goto_0
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a;->b:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/a;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a;->x:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 246
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a;->A:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 247
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a;->m:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a;->l:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/etermax/gamescommon/i/b/a;->a(Landroid/widget/EditText;)V

    .line 250
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a;->n:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/etermax/gamescommon/i/b/a;->a(Landroid/widget/EditText;)V

    .line 251
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a;->o:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/etermax/gamescommon/i/b/a;->a(Landroid/widget/EditText;)V

    .line 252
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a;->m:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/etermax/gamescommon/i/b/a;->a(Landroid/widget/EditText;)V

    .line 254
    invoke-direct {p0}, Lcom/etermax/gamescommon/i/b/a;->m()V

    .line 256
    invoke-direct {p0}, Lcom/etermax/gamescommon/i/b/a;->l()V

    .line 258
    invoke-direct {p0}, Lcom/etermax/gamescommon/i/b/a;->k()V

    .line 260
    invoke-virtual {p0}, Lcom/etermax/gamescommon/i/b/a;->e()V

    .line 262
    invoke-direct {p0}, Lcom/etermax/gamescommon/i/b/a;->i()V

    .line 264
    invoke-direct {p0}, Lcom/etermax/gamescommon/i/b/a;->j()V

    .line 265
    return-void

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a;->w:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 242
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a;->y:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public e()V
    .locals 2

    .prologue
    .line 373
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a;->q:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/etermax/gamescommon/i/b/a;->k:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 374
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a;->G:Landroid/widget/TableRow;

    iget-object v1, p0, Lcom/etermax/gamescommon/i/b/a;->k:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TableRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 376
    return-void
.end method

.method public f()V
    .locals 3

    .prologue
    .line 590
    invoke-static {p0}, Lcom/etermax/gamescommon/i/b/e;->a(Lcom/etermax/gamescommon/i/b/a;)Lcom/etermax/gamescommon/i/b/e;

    move-result-object v0

    .line 591
    invoke-virtual {p0}, Lcom/etermax/gamescommon/i/b/a;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "save_changes"

    invoke-virtual {v0, v1, v2}, Lcom/etermax/gamescommon/i/b/e;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 592
    return-void
.end method

.method public g()Lcom/etermax/gamescommon/i/b/b;
    .locals 1

    .prologue
    .line 642
    new-instance v0, Lcom/etermax/gamescommon/i/b/a$4;

    invoke-direct {v0, p0}, Lcom/etermax/gamescommon/i/b/a$4;-><init>(Lcom/etermax/gamescommon/i/b/a;)V

    return-object v0
.end method

.method public synthetic getDummyCallbacks()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/etermax/gamescommon/i/b/a;->g()Lcom/etermax/gamescommon/i/b/b;

    move-result-object v0

    return-object v0
.end method

.method public onAccept(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 576
    if-eqz p1, :cond_0

    const-string v0, "password_accept_cancel_dialog"

    const-string v1, "dialog_tag"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 577
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a;->e:Lcom/etermax/gamescommon/i/a/c;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/i/a/c;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/etermax/gamescommon/i/b/a;->a(Ljava/lang/String;)V

    .line 582
    :goto_0
    return-void

    .line 579
    :cond_0
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/gamescommon/i/b/b;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/etermax/gamescommon/i/b/b;->a(I)V

    .line 580
    invoke-direct {p0}, Lcom/etermax/gamescommon/i/b/a;->o()V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 124
    sget v0, Lcom/etermax/k;->user_account_fragment:I

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 125
    sget v0, Lcom/etermax/i;->save_button:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/i/b/a;->v:Landroid/view/View;

    .line 126
    sget v0, Lcom/etermax/i;->input_username:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/etermax/gamescommon/i/b/a;->l:Landroid/widget/EditText;

    .line 127
    sget v0, Lcom/etermax/i;->input_email:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/etermax/gamescommon/i/b/a;->m:Landroid/widget/EditText;

    .line 128
    sget v0, Lcom/etermax/i;->change_password_title:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/etermax/gamescommon/i/b/a;->x:Landroid/widget/TextView;

    .line 129
    sget v0, Lcom/etermax/i;->change_password_table:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/etermax/gamescommon/i/b/a;->A:Landroid/widget/LinearLayout;

    .line 130
    sget v0, Lcom/etermax/i;->input_password:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/etermax/gamescommon/i/b/a;->n:Landroid/widget/EditText;

    .line 131
    sget v0, Lcom/etermax/i;->input_confirm:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/etermax/gamescommon/i/b/a;->o:Landroid/widget/EditText;

    .line 132
    sget v0, Lcom/etermax/i;->input_age:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/etermax/gamescommon/i/b/a;->q:Landroid/widget/TextView;

    .line 133
    sget v0, Lcom/etermax/i;->input_nationality:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/etermax/gamescommon/i/b/a;->r:Landroid/widget/TextView;

    .line 134
    sget v0, Lcom/etermax/i;->facebook_table:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/etermax/gamescommon/i/b/a;->B:Landroid/widget/RelativeLayout;

    .line 135
    sget v0, Lcom/etermax/i;->facebook_unlink_button:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/etermax/gamescommon/i/b/a;->w:Landroid/widget/Button;

    .line 136
    sget v0, Lcom/etermax/i;->facebook_title:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/etermax/gamescommon/i/b/a;->y:Landroid/widget/TextView;

    .line 137
    sget v0, Lcom/etermax/i;->facebook_name:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/etermax/gamescommon/i/b/a;->z:Landroid/widget/TextView;

    .line 138
    sget v0, Lcom/etermax/i;->btn_save:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/etermax/gamescommon/i/b/a;->s:Landroid/widget/ImageView;

    .line 139
    sget v0, Lcom/etermax/i;->btn_bloomed_save:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/etermax/gamescommon/i/b/a;->t:Landroid/widget/ImageView;

    .line 140
    sget v0, Lcom/etermax/i;->rowGender:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableRow;

    iput-object v0, p0, Lcom/etermax/gamescommon/i/b/a;->F:Landroid/widget/TableRow;

    .line 141
    sget v0, Lcom/etermax/i;->rowDate:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableRow;

    iput-object v0, p0, Lcom/etermax/gamescommon/i/b/a;->G:Landroid/widget/TableRow;

    .line 142
    sget v0, Lcom/etermax/i;->rowNationality:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableRow;

    iput-object v0, p0, Lcom/etermax/gamescommon/i/b/a;->H:Landroid/widget/TableRow;

    .line 143
    sget v0, Lcom/etermax/i;->txtGenderPlaceholder:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/etermax/tools/widget/CustomFontTextView;

    iput-object v0, p0, Lcom/etermax/gamescommon/i/b/a;->I:Lcom/etermax/tools/widget/CustomFontTextView;

    .line 144
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a;->v:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 145
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a;->b:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/a;->f()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a;->l:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 147
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a;->n:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 148
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a;->o:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a;->m:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 152
    sget v0, Lcom/etermax/i;->input_gender_s:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/etermax/gamescommon/i/b/a;->p:Landroid/widget/Spinner;

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 154
    new-instance v2, Lcom/etermax/gamescommon/i/b/d;

    sget-object v3, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;->MALE:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;

    invoke-direct {v2, p0, v3}, Lcom/etermax/gamescommon/i/b/d;-><init>(Lcom/etermax/gamescommon/i/b/a;Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    new-instance v2, Lcom/etermax/gamescommon/i/b/d;

    sget-object v3, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;->FEMALE:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;

    invoke-direct {v2, p0, v3}, Lcom/etermax/gamescommon/i/b/d;-><init>(Lcom/etermax/gamescommon/i/b/a;Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    new-instance v2, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/etermax/gamescommon/i/b/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    sget v4, Lcom/etermax/k;->gender_spinner_item:I

    invoke-direct {v2, v3, v4, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 157
    const v0, 0x1090009

    invoke-virtual {v2, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 158
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a;->p:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 160
    return-object v1
.end method
