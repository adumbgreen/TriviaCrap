.class Lcom/etermax/widget/slidingtab/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/etermax/widget/slidingtab/SlidingTabLayout;


# direct methods
.method private constructor <init>(Lcom/etermax/widget/slidingtab/SlidingTabLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 389
    iput-object p1, p0, Lcom/etermax/widget/slidingtab/b;->a:Lcom/etermax/widget/slidingtab/SlidingTabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/etermax/widget/slidingtab/SlidingTabLayout;Lcom/etermax/widget/slidingtab/SlidingTabLayout$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 389
    invoke-direct {p0, p1}, Lcom/etermax/widget/slidingtab/b;-><init>(Lcom/etermax/widget/slidingtab/SlidingTabLayout;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 392
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/etermax/widget/slidingtab/b;->a:Lcom/etermax/widget/slidingtab/SlidingTabLayout;

    invoke-static {v2}, Lcom/etermax/widget/slidingtab/SlidingTabLayout;->a(Lcom/etermax/widget/slidingtab/SlidingTabLayout;)Lcom/etermax/widget/slidingtab/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/etermax/widget/slidingtab/e;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 393
    iget-object v2, p0, Lcom/etermax/widget/slidingtab/b;->a:Lcom/etermax/widget/slidingtab/SlidingTabLayout;

    invoke-static {v2}, Lcom/etermax/widget/slidingtab/SlidingTabLayout;->a(Lcom/etermax/widget/slidingtab/SlidingTabLayout;)Lcom/etermax/widget/slidingtab/e;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/etermax/widget/slidingtab/e;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-ne p1, v2, :cond_0

    .line 394
    iget-object v2, p0, Lcom/etermax/widget/slidingtab/b;->a:Lcom/etermax/widget/slidingtab/SlidingTabLayout;

    invoke-static {v2}, Lcom/etermax/widget/slidingtab/SlidingTabLayout;->c(Lcom/etermax/widget/slidingtab/SlidingTabLayout;)Landroid/support/v4/view/ViewPager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 395
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 392
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 397
    :cond_0
    iget-object v2, p0, Lcom/etermax/widget/slidingtab/b;->a:Lcom/etermax/widget/slidingtab/SlidingTabLayout;

    invoke-static {v2}, Lcom/etermax/widget/slidingtab/SlidingTabLayout;->a(Lcom/etermax/widget/slidingtab/SlidingTabLayout;)Lcom/etermax/widget/slidingtab/e;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/etermax/widget/slidingtab/e;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setSelected(Z)V

    goto :goto_1

    .line 400
    :cond_1
    return-void
.end method
