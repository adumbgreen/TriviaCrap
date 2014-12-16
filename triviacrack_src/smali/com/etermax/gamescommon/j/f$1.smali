.class Lcom/etermax/gamescommon/j/f$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/tools/social/twitter/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/j/f;->a(Ljava/lang/Object;)Z
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/app/FragmentActivity;

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Lcom/etermax/gamescommon/j/f;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/j/f;Landroid/support/v4/app/FragmentActivity;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/etermax/gamescommon/j/f$1;->c:Lcom/etermax/gamescommon/j/f;

    iput-object p2, p0, Lcom/etermax/gamescommon/j/f$1;->a:Landroid/support/v4/app/FragmentActivity;

    iput-object p3, p0, Lcom/etermax/gamescommon/j/f$1;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/etermax/gamescommon/j/f$1;->c:Lcom/etermax/gamescommon/j/f;

    iget-object v1, p0, Lcom/etermax/gamescommon/j/f$1;->b:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/etermax/gamescommon/j/f;->a(Lcom/etermax/gamescommon/j/f;Ljava/lang/Object;)Z

    .line 56
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/etermax/gamescommon/j/f$1;->c:Lcom/etermax/gamescommon/j/f;

    iget-object v0, v0, Lcom/etermax/gamescommon/j/f;->b:Lcom/etermax/tools/social/twitter/a;

    invoke-virtual {v0}, Lcom/etermax/tools/social/twitter/a;->b()V

    .line 50
    iget-object v0, p0, Lcom/etermax/gamescommon/j/f$1;->c:Lcom/etermax/gamescommon/j/f;

    iget-object v1, p0, Lcom/etermax/gamescommon/j/f$1;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1, p1}, Lcom/etermax/gamescommon/j/f;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 51
    return-void
.end method
