.class Lcom/mdotm/android/view/MdotMActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mdotm/android/view/MdotMActivity;->h()Landroid/widget/RelativeLayout;
.end annotation


# instance fields
.field final synthetic a:Lcom/mdotm/android/view/MdotMActivity;


# direct methods
.method constructor <init>(Lcom/mdotm/android/view/MdotMActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mdotm/android/view/MdotMActivity$3;->a:Lcom/mdotm/android/view/MdotMActivity;

    .line 425
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 429
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity$3;->a:Lcom/mdotm/android/view/MdotMActivity;

    invoke-virtual {v0}, Lcom/mdotm/android/view/MdotMActivity;->onDismissScreen()V

    .line 432
    return-void
.end method
