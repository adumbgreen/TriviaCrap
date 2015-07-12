.class public Lcom/etermax/preguntados/ui/withoutcoins/WithoutCoinsItemView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# static fields
.field private static final f:[I


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/ImageView;

.field c:Landroid/widget/Button;

.field d:Lcom/etermax/gamescommon/shop/c;

.field e:Lcom/etermax/tools/j/a;

.field private g:Lcom/etermax/preguntados/ui/withoutcoins/i;

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 42
    const/4 v0, 0x5

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/etermax/h;->shop_tokens01:I

    aput v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lcom/etermax/h;->shop_tokens02:I

    aput v2, v0, v1

    const/4 v1, 0x2

    sget v2, Lcom/etermax/h;->shop_tokens03:I

    aput v2, v0, v1

    const/4 v1, 0x3

    sget v2, Lcom/etermax/h;->shop_tokens04:I

    aput v2, v0, v1

    const/4 v1, 0x4

    sget v2, Lcom/etermax/h;->shop_tokens05:I

    aput v2, v0, v1

    sput-object v0, Lcom/etermax/preguntados/ui/withoutcoins/WithoutCoinsItemView;->f:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    return-void
.end method

.method private a(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter

    .prologue
    .line 85
    iget v0, p0, Lcom/etermax/preguntados/ui/withoutcoins/WithoutCoinsItemView;->h:I

    sget-object v1, Lcom/etermax/preguntados/ui/withoutcoins/WithoutCoinsItemView;->f:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    sget-object v0, Lcom/etermax/preguntados/ui/withoutcoins/WithoutCoinsItemView;->f:[I

    iget v1, p0, Lcom/etermax/preguntados/ui/withoutcoins/WithoutCoinsItemView;->h:I

    aget v0, v0, v1

    .line 86
    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 85
    :cond_0
    sget-object v0, Lcom/etermax/preguntados/ui/withoutcoins/WithoutCoinsItemView;->f:[I

    sget-object v1, Lcom/etermax/preguntados/ui/withoutcoins/WithoutCoinsItemView;->f:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/etermax/preguntados/ui/withoutcoins/WithoutCoinsItemView;)Lcom/etermax/preguntados/ui/withoutcoins/i;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/etermax/preguntados/ui/withoutcoins/WithoutCoinsItemView;->g:Lcom/etermax/preguntados/ui/withoutcoins/i;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;I)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 90
    new-instance v0, Lcom/etermax/preguntados/ui/withoutcoins/WithoutCoinsItemView$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/etermax/preguntados/ui/withoutcoins/WithoutCoinsItemView$1;-><init>(Lcom/etermax/preguntados/ui/withoutcoins/WithoutCoinsItemView;Ljava/lang/String;I)V

    return-object v0
.end method

.method public a(Lcom/etermax/gamescommon/shop/dto/ProductDTO;)V
    .locals 4
    .parameter

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/withoutcoins/WithoutCoinsItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 75
    iget-object v1, p0, Lcom/etermax/preguntados/ui/withoutcoins/WithoutCoinsItemView;->a:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/etermax/gamescommon/shop/dto/ProductDTO;->getCoins()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/etermax/o;->coin_plural:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v1, p0, Lcom/etermax/preguntados/ui/withoutcoins/WithoutCoinsItemView;->b:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/etermax/preguntados/ui/withoutcoins/WithoutCoinsItemView;->a(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 77
    iget-object v0, p0, Lcom/etermax/preguntados/ui/withoutcoins/WithoutCoinsItemView;->c:Landroid/widget/Button;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/withoutcoins/WithoutCoinsItemView;->d:Lcom/etermax/gamescommon/shop/c;

    const-string v2, "USD "

    invoke-virtual {v1, p1, v2}, Lcom/etermax/gamescommon/shop/c;->a(Lcom/etermax/gamescommon/shop/dto/ProductDTO;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v0, p0, Lcom/etermax/preguntados/ui/withoutcoins/WithoutCoinsItemView;->d:Lcom/etermax/gamescommon/shop/c;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/shop/c;->b()Lcom/etermax/gamescommon/a;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/preguntados/ui/withoutcoins/WithoutCoinsItemView;->e:Lcom/etermax/tools/j/a;

    invoke-virtual {v1}, Lcom/etermax/tools/j/a;->c()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/etermax/gamescommon/shop/dto/ProductDTO;->getProductId(Lcom/etermax/gamescommon/a;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/etermax/gamescommon/shop/dto/ProductDTO;->getCoins()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/etermax/preguntados/ui/withoutcoins/WithoutCoinsItemView;->a(Ljava/lang/String;I)Landroid/view/View$OnClickListener;

    move-result-object v0

    .line 80
    iget-object v1, p0, Lcom/etermax/preguntados/ui/withoutcoins/WithoutCoinsItemView;->c:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object v1, p0, Lcom/etermax/preguntados/ui/withoutcoins/WithoutCoinsItemView;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    return-void
.end method

.method public setItemNumber(I)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput p1, p0, Lcom/etermax/preguntados/ui/withoutcoins/WithoutCoinsItemView;->h:I

    .line 70
    return-void
.end method

.method public setListener(Lcom/etermax/preguntados/ui/withoutcoins/i;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/etermax/preguntados/ui/withoutcoins/WithoutCoinsItemView;->g:Lcom/etermax/preguntados/ui/withoutcoins/i;

    .line 66
    return-void
.end method
