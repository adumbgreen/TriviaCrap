.class Lcom/etermax/widget/slidingtab/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# instance fields
.field final synthetic a:Lcom/etermax/widget/slidingtab/SlidingTabLayout;

.field private b:I


# direct methods
.method private constructor <init>(Lcom/etermax/widget/slidingtab/SlidingTabLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 344
    iput-object p1, p0, Lcom/etermax/widget/slidingtab/a;->a:Lcom/etermax/widget/slidingtab/SlidingTabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/etermax/widget/slidingtab/SlidingTabLayout;Lcom/etermax/widget/slidingtab/SlidingTabLayout$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 344
    invoke-direct {p0, p1}, Lcom/etermax/widget/slidingtab/a;-><init>(Lcom/etermax/widget/slidingtab/SlidingTabLayout;)V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1
    .parameter

    .prologue
    .line 367
    iput p1, p0, Lcom/etermax/widget/slidingtab/a;->b:I

    .line 369
    iget-object v0, p0, Lcom/etermax/widget/slidingtab/a;->a:Lcom/etermax/widget/slidingtab/SlidingTabLayout;

    invoke-static {v0}, Lcom/etermax/widget/slidingtab/SlidingTabLayout;->b(Lcom/etermax/widget/slidingtab/SlidingTabLayout;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/etermax/widget/slidingtab/a;->a:Lcom/etermax/widget/slidingtab/SlidingTabLayout;

    invoke-static {v0}, Lcom/etermax/widget/slidingtab/SlidingTabLayout;->b(Lcom/etermax/widget/slidingtab/SlidingTabLayout;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 372
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 349
    iget-object v0, p0, Lcom/etermax/widget/slidingtab/a;->a:Lcom/etermax/widget/slidingtab/SlidingTabLayout;

    invoke-static {v0}, Lcom/etermax/widget/slidingtab/SlidingTabLayout;->a(Lcom/etermax/widget/slidingtab/SlidingTabLayout;)Lcom/etermax/widget/slidingtab/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/widget/slidingtab/e;->getChildCount()I

    move-result v0

    .line 350
    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    if-lt p1, v0, :cond_1

    .line 363
    :cond_0
    :goto_0
    return-void

    .line 354
    :cond_1
    iget-object v0, p0, Lcom/etermax/widget/slidingtab/a;->a:Lcom/etermax/widget/slidingtab/SlidingTabLayout;

    invoke-static {v0}, Lcom/etermax/widget/slidingtab/SlidingTabLayout;->a(Lcom/etermax/widget/slidingtab/SlidingTabLayout;)Lcom/etermax/widget/slidingtab/e;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/etermax/widget/slidingtab/e;->a(IF)V

    .line 356
    iget-object v0, p0, Lcom/etermax/widget/slidingtab/a;->a:Lcom/etermax/widget/slidingtab/SlidingTabLayout;

    invoke-static {v0}, Lcom/etermax/widget/slidingtab/SlidingTabLayout;->a(Lcom/etermax/widget/slidingtab/SlidingTabLayout;)Lcom/etermax/widget/slidingtab/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/etermax/widget/slidingtab/e;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 357
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    .line 358
    :goto_1
    iget-object v1, p0, Lcom/etermax/widget/slidingtab/a;->a:Lcom/etermax/widget/slidingtab/SlidingTabLayout;

    invoke-static {v1, p1, v0}, Lcom/etermax/widget/slidingtab/SlidingTabLayout;->a(Lcom/etermax/widget/slidingtab/SlidingTabLayout;II)V

    .line 360
    iget-object v0, p0, Lcom/etermax/widget/slidingtab/a;->a:Lcom/etermax/widget/slidingtab/SlidingTabLayout;

    invoke-static {v0}, Lcom/etermax/widget/slidingtab/SlidingTabLayout;->b(Lcom/etermax/widget/slidingtab/SlidingTabLayout;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/etermax/widget/slidingtab/a;->a:Lcom/etermax/widget/slidingtab/SlidingTabLayout;

    invoke-static {v0}, Lcom/etermax/widget/slidingtab/SlidingTabLayout;->b(Lcom/etermax/widget/slidingtab/SlidingTabLayout;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    goto :goto_0

    .line 357
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onPageSelected(I)V
    .locals 2
    .parameter

    .prologue
    .line 376
    iget v0, p0, Lcom/etermax/widget/slidingtab/a;->b:I

    if-nez v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/etermax/widget/slidingtab/a;->a:Lcom/etermax/widget/slidingtab/SlidingTabLayout;

    invoke-static {v0}, Lcom/etermax/widget/slidingtab/SlidingTabLayout;->a(Lcom/etermax/widget/slidingtab/SlidingTabLayout;)Lcom/etermax/widget/slidingtab/e;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/etermax/widget/slidingtab/e;->a(IF)V

    .line 378
    iget-object v0, p0, Lcom/etermax/widget/slidingtab/a;->a:Lcom/etermax/widget/slidingtab/SlidingTabLayout;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/etermax/widget/slidingtab/SlidingTabLayout;->a(Lcom/etermax/widget/slidingtab/SlidingTabLayout;II)V

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/etermax/widget/slidingtab/a;->a:Lcom/etermax/widget/slidingtab/SlidingTabLayout;

    invoke-static {v0}, Lcom/etermax/widget/slidingtab/SlidingTabLayout;->b(Lcom/etermax/widget/slidingtab/SlidingTabLayout;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 382
    iget-object v0, p0, Lcom/etermax/widget/slidingtab/a;->a:Lcom/etermax/widget/slidingtab/SlidingTabLayout;

    invoke-static {v0}, Lcom/etermax/widget/slidingtab/SlidingTabLayout;->b(Lcom/etermax/widget/slidingtab/SlidingTabLayout;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 385
    :cond_1
    return-void
.end method
