.class public Lcom/etermax/preguntados/ui/dashboard/widget/DashboardItemView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/preguntados/ui/dashboard/widget/f;


# instance fields
.field a:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 35
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/widget/DashboardItemView;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/widget/DashboardItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/etermax/o;->finished:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    return-void
.end method

.method public a(J)V
    .locals 2
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/widget/DashboardItemView;->a:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-static {p1, p2, v1}, Lcom/etermax/preguntados/h/c;->a(JZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    return-void
.end method
