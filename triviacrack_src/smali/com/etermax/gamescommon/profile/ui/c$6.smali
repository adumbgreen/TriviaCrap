.class Lcom/etermax/gamescommon/profile/ui/c$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/Filter$FilterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/profile/ui/c;->a(Ljava/lang/CharSequence;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/profile/ui/c;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/profile/ui/c;)V
    .locals 0
    .parameter

    .prologue
    .line 170
    iput-object p1, p0, Lcom/etermax/gamescommon/profile/ui/c$6;->a:Lcom/etermax/gamescommon/profile/ui/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFilterComplete(I)V
    .locals 2
    .parameter

    .prologue
    .line 174
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/c$6;->a:Lcom/etermax/gamescommon/profile/ui/c;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/etermax/gamescommon/profile/ui/c;->a(Lcom/etermax/gamescommon/profile/ui/c;Z)V

    .line 175
    return-void
.end method
