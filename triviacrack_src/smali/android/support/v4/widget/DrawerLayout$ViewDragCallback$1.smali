.class Landroid/support/v4/widget/DrawerLayout$ViewDragCallback$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;)V
    .locals 0
    .parameter

    .prologue
    .line 1380
    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback$1;->this$1:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1382
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback$1;->this$1:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    #calls: Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->peekDrawer()V
    invoke-static {v0}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->access$000(Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;)V

    .line 1383
    return-void
.end method
