.class Lcom/etermax/preguntados/ui/rankings/adapter/view/RankingsPlayerItemView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/rankings/adapter/view/RankingsPlayerItemView;->a(JLcom/etermax/preguntados/ui/rankings/b;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/ui/rankings/b;

.field final synthetic b:J

.field final synthetic c:Lcom/etermax/preguntados/ui/rankings/adapter/view/RankingsPlayerItemView;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/rankings/adapter/view/RankingsPlayerItemView;Lcom/etermax/preguntados/ui/rankings/b;J)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/etermax/preguntados/ui/rankings/adapter/view/RankingsPlayerItemView$1;->c:Lcom/etermax/preguntados/ui/rankings/adapter/view/RankingsPlayerItemView;

    iput-object p2, p0, Lcom/etermax/preguntados/ui/rankings/adapter/view/RankingsPlayerItemView$1;->a:Lcom/etermax/preguntados/ui/rankings/b;

    iput-wide p3, p0, Lcom/etermax/preguntados/ui/rankings/adapter/view/RankingsPlayerItemView$1;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 113
    iget-object v0, p0, Lcom/etermax/preguntados/ui/rankings/adapter/view/RankingsPlayerItemView$1;->a:Lcom/etermax/preguntados/ui/rankings/b;

    iget-wide v1, p0, Lcom/etermax/preguntados/ui/rankings/adapter/view/RankingsPlayerItemView$1;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/etermax/preguntados/ui/rankings/b;->a(Ljava/lang/Long;)V

    .line 114
    return-void
.end method
