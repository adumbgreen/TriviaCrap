.class Lcom/etermax/gamescommon/dashboard/a/c/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/dashboard/a/c/a;->a(Ljava/lang/String;)Landroid/view/View$OnClickListener;
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/etermax/gamescommon/dashboard/a/c/a;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/dashboard/a/c/a;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 259
    iput-object p1, p0, Lcom/etermax/gamescommon/dashboard/a/c/a$1;->b:Lcom/etermax/gamescommon/dashboard/a/c/a;

    iput-object p2, p0, Lcom/etermax/gamescommon/dashboard/a/c/a$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 263
    iget-object v0, p0, Lcom/etermax/gamescommon/dashboard/a/c/a$1;->b:Lcom/etermax/gamescommon/dashboard/a/c/a;

    invoke-static {v0}, Lcom/etermax/gamescommon/dashboard/a/c/a;->a(Lcom/etermax/gamescommon/dashboard/a/c/a;)Lcom/etermax/gamescommon/dashboard/a/c/b;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/gamescommon/dashboard/a/c/a$1;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/etermax/gamescommon/dashboard/a/c/b;->a(Ljava/lang/String;)V

    .line 264
    return-void
.end method
