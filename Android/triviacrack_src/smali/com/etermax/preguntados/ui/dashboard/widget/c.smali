.class public Lcom/etermax/preguntados/ui/dashboard/widget/c;
.super Lcom/etermax/preguntados/ui/dashboard/widget/a;
.source "SourceFile"


# instance fields
.field private b:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/etermax/preguntados/ui/dashboard/h;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lcom/etermax/preguntados/ui/dashboard/widget/a;-><init>(Landroid/content/Context;Lcom/etermax/preguntados/ui/dashboard/h;)V

    .line 15
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 24
    sget v0, Lcom/etermax/i;->container:I

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/dashboard/widget/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/widget/c;->b:Landroid/view/View;

    .line 25
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 29
    return-void
.end method

.method public getClickAction()V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/widget/c;->a:Lcom/etermax/preguntados/ui/dashboard/h;

    invoke-interface {v0}, Lcom/etermax/preguntados/ui/dashboard/h;->B()V

    .line 34
    return-void
.end method

.method public getLayoutResourceId()I
    .locals 1

    .prologue
    .line 19
    sget v0, Lcom/etermax/k;->button_tv_show_layout:I

    return v0
.end method
