.class Lcom/mdotm/android/view/MdotMActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mdotm/android/view/MdotMActivity;->g()Landroid/widget/RelativeLayout;
.end annotation


# instance fields
.field final synthetic a:Lcom/mdotm/android/view/MdotMActivity;


# direct methods
.method constructor <init>(Lcom/mdotm/android/view/MdotMActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mdotm/android/view/MdotMActivity$2;->a:Lcom/mdotm/android/view/MdotMActivity;

    .line 371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 375
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 376
    if-ne v0, v1, :cond_0

    .line 377
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity$2;->a:Lcom/mdotm/android/view/MdotMActivity;

    invoke-static {v0}, Lcom/mdotm/android/view/MdotMActivity;->c(Lcom/mdotm/android/view/MdotMActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity$2;->a:Lcom/mdotm/android/view/MdotMActivity;

    invoke-static {v0, v1}, Lcom/mdotm/android/view/MdotMActivity;->a(Lcom/mdotm/android/view/MdotMActivity;Z)V

    .line 379
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity$2;->a:Lcom/mdotm/android/view/MdotMActivity;

    invoke-virtual {v0}, Lcom/mdotm/android/view/MdotMActivity;->a()V

    .line 382
    :cond_0
    return v1
.end method
