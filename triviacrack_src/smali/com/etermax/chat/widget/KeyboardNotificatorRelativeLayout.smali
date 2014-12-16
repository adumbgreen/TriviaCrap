.class public Lcom/etermax/chat/widget/KeyboardNotificatorRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/etermax/chat/widget/a;",
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
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/etermax/chat/widget/KeyboardNotificatorRelativeLayout;->a:Ljava/util/ArrayList;

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/etermax/chat/widget/KeyboardNotificatorRelativeLayout;->a:Ljava/util/ArrayList;

    .line 21
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/etermax/chat/widget/KeyboardNotificatorRelativeLayout;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/chat/widget/a;

    .line 56
    invoke-interface {v0}, Lcom/etermax/chat/widget/a;->e()V

    goto :goto_0

    .line 58
    :cond_0
    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/etermax/chat/widget/KeyboardNotificatorRelativeLayout;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/chat/widget/a;

    .line 62
    invoke-interface {v0}, Lcom/etermax/chat/widget/a;->f_()V

    goto :goto_0

    .line 64
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/etermax/chat/widget/a;)V
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/etermax/chat/widget/KeyboardNotificatorRelativeLayout;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 43
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 44
    invoke-virtual {p0}, Lcom/etermax/chat/widget/KeyboardNotificatorRelativeLayout;->getHeight()I

    move-result v1

    .line 46
    add-int/lit8 v2, v0, 0x64

    if-le v1, v2, :cond_1

    .line 47
    invoke-direct {p0}, Lcom/etermax/chat/widget/KeyboardNotificatorRelativeLayout;->b()V

    .line 51
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 52
    return-void

    .line 48
    :cond_1
    if-ge v1, v0, :cond_0

    .line 49
    invoke-direct {p0}, Lcom/etermax/chat/widget/KeyboardNotificatorRelativeLayout;->a()V

    goto :goto_0
.end method
