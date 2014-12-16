.class Lcom/etermax/gamescommon/h/a/h$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/gamescommon/user/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/h/a/h;->a(Landroid/widget/BaseAdapter;Landroid/view/View;Lcom/etermax/gamescommon/user/b/d;Z)V
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/BaseAdapter;

.field final synthetic b:Lcom/etermax/gamescommon/h/a/h;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/h/a/h;Landroid/widget/BaseAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/etermax/gamescommon/h/a/h$3;->b:Lcom/etermax/gamescommon/h/a/h;

    iput-object p2, p0, Lcom/etermax/gamescommon/h/a/h$3;->a:Landroid/widget/BaseAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/etermax/gamescommon/j;)V
    .locals 2
    .parameter

    .prologue
    .line 110
    iget-object v0, p0, Lcom/etermax/gamescommon/h/a/h$3;->b:Lcom/etermax/gamescommon/h/a/h;

    iget-object v0, v0, Lcom/etermax/gamescommon/h/a/h;->a:Lcom/etermax/gamescommon/h/a/f;

    iget-object v1, p0, Lcom/etermax/gamescommon/h/a/h$3;->a:Landroid/widget/BaseAdapter;

    invoke-interface {v0, v1, p1}, Lcom/etermax/gamescommon/h/a/f;->a(Landroid/widget/BaseAdapter;Lcom/etermax/gamescommon/j;)V

    .line 111
    return-void
.end method
