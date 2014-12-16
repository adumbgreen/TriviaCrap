.class Lcom/etermax/gamescommon/h/a/h$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/h/a/h;->a(Landroid/widget/BaseAdapter;Landroid/view/View;Lcom/etermax/gamescommon/user/b/b;)V
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
    .line 53
    iput-object p1, p0, Lcom/etermax/gamescommon/h/a/h$1;->b:Lcom/etermax/gamescommon/h/a/h;

    iput-object p2, p0, Lcom/etermax/gamescommon/h/a/h$1;->a:Landroid/widget/BaseAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/etermax/gamescommon/h/a/h$1;->b:Lcom/etermax/gamescommon/h/a/h;

    iget-object v0, v0, Lcom/etermax/gamescommon/h/a/h;->a:Lcom/etermax/gamescommon/h/a/f;

    iget-object v1, p0, Lcom/etermax/gamescommon/h/a/h$1;->a:Landroid/widget/BaseAdapter;

    invoke-interface {v0, v1}, Lcom/etermax/gamescommon/h/a/f;->a(Landroid/widget/BaseAdapter;)V

    .line 58
    return-void
.end method
