.class Lcom/etermax/gamescommon/animations/v1/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/animations/v1/a;->b()V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/animations/v1/a;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/animations/v1/a;)V
    .locals 0
    .parameter

    .prologue
    .line 333
    iput-object p1, p0, Lcom/etermax/gamescommon/animations/v1/a$2;->a:Lcom/etermax/gamescommon/animations/v1/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/etermax/gamescommon/animations/v1/a$2;->a:Lcom/etermax/gamescommon/animations/v1/a;

    invoke-static {v0}, Lcom/etermax/gamescommon/animations/v1/a;->a(Lcom/etermax/gamescommon/animations/v1/a;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 337
    return-void
.end method
