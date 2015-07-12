.class public Lcom/etermax/tools/widget/KeyboardNotificatorRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/etermax/tools/widget/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/etermax/tools/widget/KeyboardNotificatorRelativeLayout;->a:Ljava/util/ArrayList;

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/etermax/tools/widget/KeyboardNotificatorRelativeLayout;->a:Ljava/util/ArrayList;

    .line 20
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/etermax/tools/widget/KeyboardNotificatorRelativeLayout;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/tools/widget/a;

    .line 55
    invoke-interface {v0}, Lcom/etermax/tools/widget/a;->b()V

    goto :goto_0

    .line 57
    :cond_0
    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/etermax/tools/widget/KeyboardNotificatorRelativeLayout;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/tools/widget/a;

    .line 61
    invoke-interface {v0}, Lcom/etermax/tools/widget/a;->a()V

    goto :goto_0

    .line 63
    :cond_0
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 42
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 43
    invoke-virtual {p0}, Lcom/etermax/tools/widget/KeyboardNotificatorRelativeLayout;->getHeight()I

    move-result v1

    .line 45
    if-le v1, v0, :cond_1

    .line 46
    invoke-direct {p0}, Lcom/etermax/tools/widget/KeyboardNotificatorRelativeLayout;->b()V

    .line 50
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 51
    return-void

    .line 47
    :cond_1
    if-ge v1, v0, :cond_0

    .line 48
    invoke-direct {p0}, Lcom/etermax/tools/widget/KeyboardNotificatorRelativeLayout;->a()V

    goto :goto_0
.end method
