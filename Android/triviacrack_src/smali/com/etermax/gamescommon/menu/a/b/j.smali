.class public Lcom/etermax/gamescommon/menu/a/b/j;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field protected a:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 20
    return-void
.end method


# virtual methods
.method public a(Lcom/etermax/gamescommon/menu/a/o;)V
    .locals 2
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/b/j;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/etermax/gamescommon/menu/a/o;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 24
    return-void
.end method
