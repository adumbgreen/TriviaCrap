.class Lcom/etermax/gamescommon/promotion/BasePromotionFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/promotion/BasePromotionFragment;->getBuyListener(Ljava/lang/String;)Landroid/view/View$OnClickListener;
.end annotation


# instance fields
.field final synthetic this$0:Lcom/etermax/gamescommon/promotion/BasePromotionFragment;

.field final synthetic val$itemId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/promotion/BasePromotionFragment;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/etermax/gamescommon/promotion/BasePromotionFragment$2;->this$0:Lcom/etermax/gamescommon/promotion/BasePromotionFragment;

    iput-object p2, p0, Lcom/etermax/gamescommon/promotion/BasePromotionFragment$2;->val$itemId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 110
    iget-object v0, p0, Lcom/etermax/gamescommon/promotion/BasePromotionFragment$2;->this$0:Lcom/etermax/gamescommon/promotion/BasePromotionFragment;

    iget-object v1, p0, Lcom/etermax/gamescommon/promotion/BasePromotionFragment$2;->val$itemId:Ljava/lang/String;

    #calls: Lcom/etermax/gamescommon/promotion/BasePromotionFragment;->onBuyClicked(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/etermax/gamescommon/promotion/BasePromotionFragment;->access$000(Lcom/etermax/gamescommon/promotion/BasePromotionFragment;Ljava/lang/String;)V

    .line 111
    return-void
.end method
