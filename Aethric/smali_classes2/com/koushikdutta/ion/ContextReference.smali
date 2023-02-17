.class public abstract Lcom/koushikdutta/ion/ContextReference;
.super Ljava/lang/ref/WeakReference;
.source "ContextReference.java"

# interfaces
.implements Lcom/koushikdutta/ion/IonContext;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/koushikdutta/ion/ContextReference$ImageViewContextReference;,
        Lcom/koushikdutta/ion/ContextReference$SupportFragmentContextReference;,
        Lcom/koushikdutta/ion/ContextReference$FragmentContextReference;,
        Lcom/koushikdutta/ion/ContextReference$ActivityContextReference;,
        Lcom/koushikdutta/ion/ContextReference$ServiceContextReference;,
        Lcom/koushikdutta/ion/ContextReference$NormalContextReference;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/WeakReference<",
        "TT;>;",
        "Lcom/koushikdutta/ion/IonContext;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public static fromContext(Landroid/content/Context;)Lcom/koushikdutta/ion/ContextReference;
    .locals 1

    .line 165
    instance-of v0, p0, Landroid/app/Service;

    if-eqz v0, :cond_0

    .line 166
    new-instance v0, Lcom/koushikdutta/ion/ContextReference$ServiceContextReference;

    check-cast p0, Landroid/app/Service;

    invoke-direct {v0, p0}, Lcom/koushikdutta/ion/ContextReference$ServiceContextReference;-><init>(Landroid/app/Service;)V

    return-object v0

    .line 167
    :cond_0
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 168
    new-instance v0, Lcom/koushikdutta/ion/ContextReference$ActivityContextReference;

    check-cast p0, Landroid/app/Activity;

    invoke-direct {v0, p0}, Lcom/koushikdutta/ion/ContextReference$ActivityContextReference;-><init>(Landroid/app/Activity;)V

    return-object v0

    .line 170
    :cond_1
    new-instance v0, Lcom/koushikdutta/ion/ContextReference$1;

    invoke-direct {v0, p0}, Lcom/koushikdutta/ion/ContextReference$1;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
