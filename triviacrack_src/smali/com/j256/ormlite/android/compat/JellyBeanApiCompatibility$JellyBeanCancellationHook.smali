.class public Lcom/j256/ormlite/android/compat/JellyBeanApiCompatibility$JellyBeanCancellationHook;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/j256/ormlite/android/compat/ApiCompatibility$CancellationHook;


# instance fields
.field private final cancellationSignal:Landroid/os/CancellationSignal;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/j256/ormlite/android/compat/JellyBeanApiCompatibility$JellyBeanCancellationHook;->cancellationSignal:Landroid/os/CancellationSignal;

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/j256/ormlite/android/compat/JellyBeanApiCompatibility$JellyBeanCancellationHook;)Landroid/os/CancellationSignal;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/j256/ormlite/android/compat/JellyBeanApiCompatibility$JellyBeanCancellationHook;->cancellationSignal:Landroid/os/CancellationSignal;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/j256/ormlite/android/compat/JellyBeanApiCompatibility$JellyBeanCancellationHook;->cancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 42
    return-void
.end method
