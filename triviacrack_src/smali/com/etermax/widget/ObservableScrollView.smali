.class public Lcom/etermax/widget/ObservableScrollView;
.super Landroid/widget/ScrollView;
.source "SourceFile"


# instance fields
.field private a:Lcom/etermax/widget/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    return-void
.end method


# virtual methods
.method protected onScrollChanged(IIII)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 24
    iget-object v0, p0, Lcom/etermax/widget/ObservableScrollView;->a:Lcom/etermax/widget/g;

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/etermax/widget/ObservableScrollView;->a:Lcom/etermax/widget/g;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/etermax/widget/g;->a(IIII)V

    .line 27
    :cond_0
    return-void
.end method

.method public setCallbacks(Lcom/etermax/widget/g;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/etermax/widget/ObservableScrollView;->a:Lcom/etermax/widget/g;

    .line 31
    return-void
.end method
