.class public abstract Lcom/etermax/preguntados/ui/dashboard/widget/a;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field protected a:Lcom/etermax/preguntados/ui/dashboard/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/etermax/preguntados/ui/dashboard/h;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 16
    iput-object p2, p0, Lcom/etermax/preguntados/ui/dashboard/widget/a;->a:Lcom/etermax/preguntados/ui/dashboard/h;

    .line 17
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/dashboard/widget/a;->c()V

    .line 18
    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/widget/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/widget/a;->getLayoutResourceId()I

    move-result v1

    invoke-static {v0, v1, p0}, Lcom/etermax/preguntados/ui/dashboard/widget/a;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 30
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/widget/a;->a()V

    .line 31
    new-instance v0, Lcom/etermax/preguntados/ui/dashboard/widget/a$1;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/ui/dashboard/widget/a$1;-><init>(Lcom/etermax/preguntados/ui/dashboard/widget/a;)V

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/dashboard/widget/a;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract b()V
.end method

.method public abstract getClickAction()V
.end method

.method public abstract getLayoutResourceId()I
.end method
