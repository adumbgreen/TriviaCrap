.class Lcom/etermax/gamescommon/dashboard/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/b/a/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/dashboard/b;->d(Landroid/widget/ViewSwitcher;Ljava/lang/String;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ViewSwitcher;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/etermax/gamescommon/dashboard/b;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/dashboard/b;Landroid/widget/ViewSwitcher;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/etermax/gamescommon/dashboard/b$1;->c:Lcom/etermax/gamescommon/dashboard/b;

    iput-object p2, p0, Lcom/etermax/gamescommon/dashboard/b$1;->a:Landroid/widget/ViewSwitcher;

    iput-object p3, p0, Lcom/etermax/gamescommon/dashboard/b$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/etermax/gamescommon/dashboard/b$1;->a:Landroid/widget/ViewSwitcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    .line 95
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 99
    iget-object v0, p0, Lcom/etermax/gamescommon/dashboard/b$1;->c:Lcom/etermax/gamescommon/dashboard/b;

    iget-object v1, p0, Lcom/etermax/gamescommon/dashboard/b$1;->a:Landroid/widget/ViewSwitcher;

    iget-object v2, p0, Lcom/etermax/gamescommon/dashboard/b$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/etermax/gamescommon/dashboard/b;->a(Landroid/widget/ViewSwitcher;Ljava/lang/String;)V

    .line 100
    return-void
.end method
