.class public Lcom/etermax/gamescommon/view/ResponsiveScrollView;
.super Landroid/widget/ScrollView;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/Runnable;

.field private b:I

.field private c:Lcom/etermax/gamescommon/view/g;

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 10
    const/16 v0, 0x64

    iput v0, p0, Lcom/etermax/gamescommon/view/ResponsiveScrollView;->b:I

    .line 47
    iput v1, p0, Lcom/etermax/gamescommon/view/ResponsiveScrollView;->d:I

    .line 48
    iput v1, p0, Lcom/etermax/gamescommon/view/ResponsiveScrollView;->e:I

    .line 22
    new-instance v0, Lcom/etermax/gamescommon/view/ResponsiveScrollView$1;

    invoke-direct {v0, p0}, Lcom/etermax/gamescommon/view/ResponsiveScrollView$1;-><init>(Lcom/etermax/gamescommon/view/ResponsiveScrollView;)V

    iput-object v0, p0, Lcom/etermax/gamescommon/view/ResponsiveScrollView;->a:Ljava/lang/Runnable;

    .line 37
    return-void
.end method

.method static synthetic a(Lcom/etermax/gamescommon/view/ResponsiveScrollView;)Lcom/etermax/gamescommon/view/g;
    .locals 1
    .parameter

    .prologue
    .line 7
    iget-object v0, p0, Lcom/etermax/gamescommon/view/ResponsiveScrollView;->c:Lcom/etermax/gamescommon/view/g;

    return-object v0
.end method

.method static synthetic b(Lcom/etermax/gamescommon/view/ResponsiveScrollView;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 7
    iget-object v0, p0, Lcom/etermax/gamescommon/view/ResponsiveScrollView;->a:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic c(Lcom/etermax/gamescommon/view/ResponsiveScrollView;)I
    .locals 1
    .parameter

    .prologue
    .line 7
    iget v0, p0, Lcom/etermax/gamescommon/view/ResponsiveScrollView;->b:I

    return v0
.end method


# virtual methods
.method public a(II)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 50
    iput p1, p0, Lcom/etermax/gamescommon/view/ResponsiveScrollView;->d:I

    .line 51
    iput p2, p0, Lcom/etermax/gamescommon/view/ResponsiveScrollView;->e:I

    .line 52
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 56
    invoke-super/range {p0 .. p5}, Landroid/widget/ScrollView;->onLayout(ZIIII)V

    .line 58
    iget v0, p0, Lcom/etermax/gamescommon/view/ResponsiveScrollView;->d:I

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/etermax/gamescommon/view/ResponsiveScrollView;->e:I

    if-lez v0, :cond_1

    .line 59
    :cond_0
    iget v0, p0, Lcom/etermax/gamescommon/view/ResponsiveScrollView;->d:I

    iget v1, p0, Lcom/etermax/gamescommon/view/ResponsiveScrollView;->e:I

    invoke-virtual {p0, v0, v1}, Lcom/etermax/gamescommon/view/ResponsiveScrollView;->scrollTo(II)V

    .line 60
    invoke-virtual {p0, v2, v2}, Lcom/etermax/gamescommon/view/ResponsiveScrollView;->a(II)V

    .line 62
    :cond_1
    return-void
.end method

.method public setOnScrollStoppedListener(Lcom/etermax/gamescommon/view/g;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/etermax/gamescommon/view/ResponsiveScrollView;->c:Lcom/etermax/gamescommon/view/g;

    .line 41
    return-void
.end method
