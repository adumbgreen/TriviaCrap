.class final Lcom/google/android/gms/internal/bz;
.super Landroid/widget/RelativeLayout;


# instance fields
.field private final a:Lcom/google/android/gms/internal/fs;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/google/android/gms/internal/fs;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/fs;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/bz;->a:Lcom/google/android/gms/internal/fs;

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bz;->a:Lcom/google/android/gms/internal/fs;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/fs;->a(Landroid/view/MotionEvent;)V

    const/4 v0, 0x0

    return v0
.end method
